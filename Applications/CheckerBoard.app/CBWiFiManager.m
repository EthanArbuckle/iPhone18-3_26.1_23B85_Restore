@interface CBWiFiManager
+ (CBWiFiManager)sharedInstance;
- (BOOL)attemptingToAssociateToCurrentNetworkByIndex:(int64_t)a3;
- (BOOL)isAssociatedToNetwork;
- (CBWiFiManager)init;
- (NSString)currentNetworkSSID;
- (id)_associationParametersFromScanResult:(id)a3 withPassword:(id)a4;
- (id)scanParametersWithSSID:(id)a3 isHidden:(BOOL)a4;
- (void)_associateToEncryptedNetworkWithScanResult:(id)a3 password:(id)a4 isHidden:(BOOL)a5;
- (void)_associateToHiddenUnencryptedNetwork:(id)a3;
- (void)_associateToNetworkWithScanResult:(id)a3;
- (void)_associateToUnencryptedNetwork:(id)a3;
- (void)_attemptReconnect;
- (void)_deregisterWiFiNotifications;
- (void)_forceWiFiOnIfNecessary;
- (void)_handleCWInterfaceEvent:(id)a3;
- (void)_performDirectedScanIncludingHidden:(BOOL)a3 AndAssociateToNetworkWithName:(id)a4 password:(id)a5;
- (void)_postDidAssociateToEncryptedNetworkNotificationWithError:(id)a3;
- (void)_postDidAssociateToOpenNetworkNotificationWithError:(id)a3;
- (void)_powerStateDidChange;
- (void)_registerWiFiNotifications;
- (void)_resolveReconnectingStatus;
- (void)_restartWiFiNetworkScan;
- (void)_savePendingInfoWithScanResult:(id)a3 password:(id)a4 isHidden:(BOOL)a5;
- (void)_setTimeForNextScan:(double)a3;
- (void)_sortWiFiScanResultsAlphabetically:(id)a3;
- (void)_startWiFiNetworkScan;
- (void)_stopWiFiNetworkScan;
- (void)_updateForAssociationChange;
- (void)_updateSignalStrength;
- (void)_updateSignalStrengthFromRawRSSI:(int)a3 andScaledRSSI:(float)a4;
- (void)_wifiScanCompleted:(id)a3;
- (void)associateToHiddenUnencryptedNetworkWithName:(id)a3;
- (void)associateToNetworkByIndex:(int64_t)a3;
- (void)dealloc;
- (void)setAttemptsNetworkReconnect:(BOOL)a3;
- (void)setPowered:(BOOL)a3;
- (void)startWiFiNetworkScanRequestFrom:(id)a3;
- (void)stopWiFiNetworkScanRequestFrom:(id)a3;
- (void)updateWiFiState;
@end

@implementation CBWiFiManager

+ (CBWiFiManager)sharedInstance
{
  if (qword_1000923F8 != -1)
  {
    sub_1000476B4();
  }

  v3 = qword_1000923F0;

  return v3;
}

- (CBWiFiManager)init
{
  v14.receiver = self;
  v14.super_class = CBWiFiManager;
  v2 = [(CBWiFiManager *)&v14 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up Wi-Fi manager…", v13, 2u);
    }

    v4 = objc_alloc_init(NSMutableSet);
    wifiScanRequestors = v2->_wifiScanRequestors;
    v2->_wifiScanRequestors = v4;

    v2->_reconnecting = 0;
    lastGoodNetwork = v2->_lastGoodNetwork;
    v2->_lastGoodNetwork = 0;

    pendingLastGoodNetwork = v2->_pendingLastGoodNetwork;
    v2->_pendingLastGoodNetwork = 0;

    v2->_networkReconnectEnabled = 1;
    v8 = objc_alloc_init(CWFInterface);
    cwInterface = v2->_cwInterface;
    v2->_cwInterface = v8;

    [(CWFInterface *)v2->_cwInterface activate];
    [(CBWiFiManager *)v2 _registerWiFiNotifications];
    v10 = dispatch_semaphore_create(1);
    networkScanSemaphore = v2->_networkScanSemaphore;
    v2->_networkScanSemaphore = v10;
  }

  return v2;
}

- (void)dealloc
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc was called", buf, 2u);
  }

  [(CBWiFiManager *)self _stopWiFiNetworkScan];
  [(CBWiFiManager *)self _deregisterWiFiNotifications];
  v4 = [(CBWiFiManager *)self cwInterface];
  [v4 invalidate];

  v5.receiver = self;
  v5.super_class = CBWiFiManager;
  [(CBWiFiManager *)&v5 dealloc];
}

- (void)_deregisterWiFiNotifications
{
  v3 = [(CBWiFiManager *)self cwInterface];

  if (v3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deregistering Wi-Fi notifications…", v6, 2u);
    }

    v5 = [(CBWiFiManager *)self cwInterface];
    [v5 stopMonitoringAllEvents];
  }
}

- (void)_registerWiFiNotifications
{
  v3 = [(CBWiFiManager *)self cwInterface];

  if (v3)
  {
    objc_initWeak(&location, self);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10002518C;
    v34[3] = &unk_10007E1E8;
    objc_copyWeak(&v35, &location);
    v4 = [(CBWiFiManager *)self cwInterface];
    [v4 setEventHandler:v34];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000251E8;
    v32[3] = &unk_10007D668;
    objc_copyWeak(&v33, &location);
    v5 = [(CBWiFiManager *)self cwInterface];
    [v5 setInvalidationHandler:v32];

    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registering for Wi-Fi notifications…", buf, 2u);
    }

    v7 = [(CBWiFiManager *)self cwInterface];
    v30 = 0;
    [v7 startMonitoringEventType:10 error:&v30];
    v8 = v30;

    v9 = [(CBWiFiManager *)self cwInterface];
    v29 = v8;
    [v9 startMonitoringEventType:11 error:&v29];
    v10 = v29;

    v11 = [(CBWiFiManager *)self cwInterface];
    v28 = v10;
    [v11 startMonitoringEventType:18 error:&v28];
    v12 = v28;

    v13 = [(CBWiFiManager *)self cwInterface];
    v27 = v12;
    [v13 startMonitoringEventType:24 error:&v27];
    v14 = v27;

    v15 = [(CBWiFiManager *)self cwInterface];
    v26 = v14;
    [v15 startMonitoringEventType:1 error:&v26];
    v16 = v26;

    v17 = [(CBWiFiManager *)self cwInterface];
    v25 = v16;
    [v17 startMonitoringEventType:6 error:&v25];
    v18 = v25;

    v19 = [(CBWiFiManager *)self cwInterface];
    v24 = v18;
    [v19 startMonitoringEventType:7 error:&v24];
    v20 = v24;

    v21 = [(CBWiFiManager *)self cwInterface];
    v23 = v20;
    [v21 startMonitoringEventType:2 error:&v23];
    v22 = v23;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }
}

- (void)_handleCWInterfaceEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = CheckerBoardLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 > 9)
  {
    if (v5 > 17)
    {
      if (v5 != 18)
      {
        if (v5 == 24)
        {
          if (v7)
          {
            v8 = [(CBWiFiManager *)self cwInterface];
            v21 = 67109120;
            LODWORD(v22[0]) = [v8 reachabilityFlags];
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WiFi Reachability has changes %u", &v21, 8u);
            goto LABEL_25;
          }

LABEL_38:

          [(CBWiFiManager *)self updateWiFiState];
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (!v7)
      {
        goto LABEL_38;
      }

      LOWORD(v21) = 0;
      v10 = "Wifi network service changed";
    }

    else if (v5 == 10)
    {
      if (!v7)
      {
        goto LABEL_38;
      }

      LOWORD(v21) = 0;
      v10 = "WiFi available callback triggered";
    }

    else
    {
      if (v5 != 11)
      {
        goto LABEL_39;
      }

      if (!v7)
      {
        goto LABEL_38;
      }

      LOWORD(v21) = 0;
      v10 = "Device attachment callback triggered";
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, &v21, 2u);
    goto LABEL_38;
  }

  if (v5 > 5)
  {
    if (v5 == 6)
    {
      if (v7)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Extended link changed", &v21, 2u);
      }

      v6 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(CBWiFiManager *)self cwInterface];
        v18 = [v17 cachedLinkDownStatus];
        v21 = 138412290;
        v22[0] = v18;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WiFi link status set to %@", &v21, 0xCu);
      }

      goto LABEL_41;
    }

    if (v5 == 7)
    {
      if (v7)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Link quality changed", &v21, 2u);
      }

      v11 = 0.0;
      if ([(CBWiFiManager *)self isAssociatedToNetwork])
      {
        v12 = [(CBWiFiManager *)self cwInterface];

        if (v12)
        {
          v13 = CheckerBoardLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating signal strength…", &v21, 2u);
          }

          v14 = [(CBWiFiManager *)self cwInterface];
          v15 = [v14 currentScanResult];
          v12 = [v15 RSSI];

          WFScaleRSSI();
          v11 = v16;
        }
      }

      else
      {
        v12 = 0;
      }

      v19 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 67109376;
        LODWORD(v22[0]) = v12;
        WORD2(v22[0]) = 2048;
        *(v22 + 6) = v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Raw RSSI %d, Scaled RSSI %f", &v21, 0x12u);
      }

      *&v20 = v11;
      [(CBWiFiManager *)self _updateSignalStrengthFromRawRSSI:v12 andScaledRSSI:v20];
      goto LABEL_46;
    }

LABEL_39:
    if (v7)
    {
      v21 = 134217984;
      v22[0] = [v4 type];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unhandled CWFEvent %ld", &v21, 0xCu);
    }

LABEL_41:

    goto LABEL_46;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      if (v7)
      {
        v8 = [(CBWiFiManager *)self cwInterface];
        v9 = [v8 networkName];
        v21 = 138412290;
        v22[0] = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WiFi SSID has changed: %@", &v21, 0xCu);

LABEL_25:
        goto LABEL_38;
      }

      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device power callback triggered", &v21, 2u);
  }

  [(CBWiFiManager *)self _powerStateDidChange];
LABEL_46:
}

- (NSString)currentNetworkSSID
{
  v2 = [(CBWiFiManager *)self cwInterface];
  v3 = [v2 currentScanResult];
  v4 = [v3 networkName];

  return v4;
}

- (void)updateWiFiState
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating Wi-Fi state…", v4, 2u);
  }

  [(CBWiFiManager *)self _updateForAssociationChange];
  [(CBWiFiManager *)self _updateSignalStrength];
}

- (void)_updateForAssociationChange
{
  if ([(CBWiFiManager *)self isAssociatedToNetwork])
  {
    if ([(CBWiFiManager *)self reconnecting])
    {

      [(CBWiFiManager *)self _resolveReconnectingStatus];
    }

    else
    {
      v10 = [(CBWiFiManager *)self pendingLastGoodNetwork];
      if (v10)
      {
        v20 = v10;
        v11 = [(CBWiFiManager *)self pendingLastGoodNetwork];
        v12 = [v11 scanResult];
        v13 = [v12 networkName];
        v14 = [(CBWiFiManager *)self currentNetworkSSID];
        if ([v13 isEqualToString:v14])
        {
          v15 = [(CBWiFiManager *)self cwInterface];
          v16 = [v15 reachabilityFlags];

          if ((v16 & 2) != 0)
          {
            v17 = CheckerBoardLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [(CBWiFiManager *)self currentNetworkSSID];
              *buf = 138412290;
              v23 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating last known good network to %@", buf, 0xCu);
            }

            v19 = [(CBWiFiManager *)self pendingLastGoodNetwork];
            [(CBWiFiManager *)self setLastGoodNetwork:v19];

            [(CBWiFiManager *)self setPendingLastGoodNetwork:0];
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v3 = [(CBWiFiManager *)self lastGoodNetwork];
    if (v3)
    {
      v4 = v3;
      v5 = [(CBWiFiManager *)self reconnecting];

      if ((v5 & 1) == 0)
      {
        v6 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(CBWiFiManager *)self lastGoodNetwork];
          v8 = [v7 scanResult];
          v9 = [v8 networkName];
          *buf = 138412290;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beginning attempt to reconnect to network %@", buf, 0xCu);
        }

        [(CBWiFiManager *)self setReconnecting:1];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100025B80;
        block[3] = &unk_10007D540;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

- (void)_resolveReconnectingStatus
{
  if ([(CBWiFiManager *)self isAssociatedToNetwork]&& [(CBWiFiManager *)self reconnecting])
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending attempt to reconnect to network", v6, 2u);
    }

    v4 = [(CBWiFiManager *)self reconnectTimer];

    if (v4)
    {
      v5 = [(CBWiFiManager *)self reconnectTimer];
      [v5 invalidate];

      [(CBWiFiManager *)self setReconnectTimer:0];
    }

    [(CBWiFiManager *)self stopWiFiNetworkScanRequestFrom:self];
    [(CBWiFiManager *)self setReconnecting:0];
  }
}

- (BOOL)isAssociatedToNetwork
{
  v2 = [(CBWiFiManager *)self cwInterface];
  v3 = [v2 currentScanResult];
  v4 = v3 != 0;

  return v4;
}

- (void)_sortWiFiScanResultsAlphabetically:(id)a3
{
  v3 = a3;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sorting Wi-Fi scan results…", v5, 2u);
  }

  [v3 sortWithOptions:16 usingComparator:&stru_10007E228];
}

- (void)_forceWiFiOnIfNecessary
{
  v3 = [(CBWiFiManager *)self isWiFiPoweredOn];
  v4 = CheckerBoardLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi is on post Wi-Fi being ready for us", v6, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi is off post Wi-Fi being ready for us. Forcing it on now…", buf, 2u);
    }

    [(CBWiFiManager *)self setPowered:1];
  }
}

- (void)setPowered:(BOOL)a3
{
  v3 = a3;
  v5 = [(CBWiFiManager *)self cwInterface];

  if (v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v12) = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting Wi-Fi power state to %d", buf, 8u);
    }

    v7 = [(CBWiFiManager *)self cwInterface];
    v10 = 0;
    [v7 setPower:v3 error:&v10];
    v8 = v10;

    if (v8)
    {
      v9 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wifi power-on caused an error: %@", buf, 0xCu);
      }
    }

    else
    {
      [(CBWiFiManager *)self _powerStateDidChange];
    }
  }
}

- (void)_powerStateDidChange
{
  v3 = [(CBWiFiManager *)self cwInterface];

  if (v3)
  {
    v4 = [(CBWiFiManager *)self cwInterface];
    -[CBWiFiManager setWifiPoweredOn:](self, "setWifiPoweredOn:", [v4 powerOn]);

    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = [(CBWiFiManager *)self isWiFiPoweredOn];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi power state changed to %d", v7, 8u);
    }

    [(CBWiFiManager *)self updateWiFiState];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"CBWiFiPowerStateDidChangeNotification" object:0];
  }
}

- (id)scanParametersWithSSID:(id)a3 isHidden:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(CWFScanParameters);
  [v6 setIncludeHiddenNetworks:v4];
  [v6 setMinimumRSSI:-80];
  if (v5)
  {
    [v6 setSSID:v5];
  }

  [v6 setMergeScanResults:1];
  v7 = [NSSet setWithArray:&off_1000813C0];
  [v6 setIncludeProperties:v7];

  return v6;
}

- (void)startWiFiNetworkScanRequestFrom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CBWiFiManager *)self wifiScanRequestors];
    v6 = [v5 count];

    v7 = CheckerBoardLogHandleForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFi scan requested by %@, but it is not the first.", &v12, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "First WiFi scan request from %@. Beginning WiFi scan", &v12, 0xCu);
      }

      [(CBWiFiManager *)self _startWiFiNetworkScan];
    }

    v10 = [(CBWiFiManager *)self wifiScanRequestors];
    v11 = [v10 containsObject:v4];

    if (v11)
    {
      v9 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ is already known to be a WiFi scan requestor", &v12, 0xCu);
      }
    }

    else
    {
      v9 = [(CBWiFiManager *)self wifiScanRequestors];
      [v9 addObject:v4];
    }
  }

  else
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100047708();
    }
  }
}

- (void)_startWiFiNetworkScan
{
  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026528;
  block[3] = &unk_10007D780;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)stopWiFiNetworkScanRequestFrom:(id)a3
{
  v4 = a3;
  if (v4 && (-[CBWiFiManager wifiScanRequestors](self, "wifiScanRequestors"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v4], v5, v6))
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFi scan requestor %@ no longer needs WiFi scan.", &v13, 0xCu);
    }

    v8 = [(CBWiFiManager *)self wifiScanRequestors];
    [v8 removeObject:v4];

    v9 = [(CBWiFiManager *)self wifiScanRequestors];
    v10 = [v9 count];

    if (!v10)
    {
      v11 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Count of requestors for WiFi scan is now zero. Stopping WiFi scan.", &v13, 2u);
      }

      [(CBWiFiManager *)self _stopWiFiNetworkScan];
    }
  }

  else
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000477B4();
    }
  }
}

- (void)_stopWiFiNetworkScan
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3 = [(CBWiFiManager *)self cwInterface];

  if (v3)
  {
    v4 = [(CBWiFiManager *)self cwInterface];
    v5 = [(CBWiFiManager *)self cwInterface];
    v6 = [v5 requestParameters];
    v7 = [v6 UUID];
    v12 = 0;
    [v4 cancelRequestsWithUUID:v7 error:&v12];
  }

  v8 = [(CBWiFiManager *)self scanTimer];

  if (v8)
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Invalidating scan timer…", v11, 2u);
    }

    v10 = [(CBWiFiManager *)self scanTimer];
    [v10 invalidate];

    [(CBWiFiManager *)self setScanTimer:0];
  }
}

- (void)_restartWiFiNetworkScan
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting network scan…", v4, 2u);
  }

  [(CBWiFiManager *)self _stopWiFiNetworkScan];
  [(CBWiFiManager *)self updateWiFiState];
  [(CBWiFiManager *)self performSelector:"_startWiFiNetworkScan" withObject:0 afterDelay:0.3];
}

- (void)_wifiScanCompleted:(id)a3
{
  v4 = a3;
  [(CBWiFiManager *)self updateWiFiState];
  v5 = [NSMutableArray arrayWithArray:v4];

  [(CBWiFiManager *)self setFilteredWiFiScanResults:v5];
  v6 = [(CBWiFiManager *)self filteredWiFiScanResults];
  [(CBWiFiManager *)self _sortWiFiScanResultsAlphabetically:v6];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"CBWiFiNetworkScanCompletedNotification" object:0];

  [(CBWiFiManager *)self setScanning:0];

  [(CBWiFiManager *)self _setTimeForNextScan:8.0];
}

- (void)_setTimeForNextScan:(double)a3
{
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing next scan in %f seconds", buf, 0xCu);
  }

  if ([(CBWiFiManager *)self scanning])
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device is already scanning for networks", buf, 2u);
    }
  }

  else
  {
    v7 = [(CBWiFiManager *)self scanTimer];

    if (v7)
    {
      v8 = [(CBWiFiManager *)self scanTimer];
      [v8 invalidate];
    }

    v9 = [(CBWiFiManager *)self filteredWiFiScanResults];
    v10 = [v9 copy];
    [(CBWiFiManager *)self setPreviousScanFilteredWiFiScanResults:v10];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026DD0;
    v11[3] = &unk_10007E278;
    v11[4] = self;
    *&v11[5] = a3;
    dispatch_sync(&_dispatch_main_q, v11);
  }
}

- (BOOL)attemptingToAssociateToCurrentNetworkByIndex:(int64_t)a3
{
  v5 = [(CBWiFiManager *)self filteredWiFiScanResults];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 networkName];
  v8 = [(CBWiFiManager *)self currentNetworkSSID];
  v9 = [v7 isEqualToString:v8];

  return v9;
}

- (void)associateToNetworkByIndex:(int64_t)a3
{
  v5 = [(CBWiFiManager *)self filteredWiFiScanResults];
  v6 = [v5 objectAtIndexedSubscript:a3];

  [(CBWiFiManager *)self _associateToNetworkWithScanResult:v6];
}

- (id)_associationParametersFromScanResult:(id)a3 withPassword:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CWFAssocParameters);
  [v7 setScanResult:v6];

  [v7 setRememberUponSuccessfulAssociation:1];
  if (v5)
  {
    [v7 setPassword:v5];
  }

  return v7;
}

- (void)associateToHiddenUnencryptedNetworkWithName:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to associate to network with a directed scan", v6, 2u);
  }

  [(CBWiFiManager *)self _performDirectedScanIncludingHidden:1 AndAssociateToNetworkWithName:v4 password:0];
}

- (void)_performDirectedScanIncludingHidden:(BOOL)a3 AndAssociateToNetworkWithName:(id)a4 password:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to associate to network with hidden scan (%d)…", &buf, 8u);
  }

  v11 = +[NSNotificationCenter defaultCenter];
  v12 = v11;
  if (v9)
  {
    v13 = @"CBWiFiManagerWillAssociateToEncryptedNetworkNotification";
  }

  else
  {
    v13 = @"CBWiFiManagerWillAssociateToOpenNetworkNotification";
  }

  [v11 postNotificationName:v13 object:0 userInfo:&__NSDictionary0__struct];

  objc_initWeak(&buf, self);
  v14 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027264;
  block[3] = &unk_10007E2C8;
  objc_copyWeak(&v20, &buf);
  block[4] = self;
  v18 = v8;
  v21 = v6;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  dispatch_async(v14, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&buf);
}

- (void)_associateToNetworkWithScanResult:(id)a3
{
  v4 = a3;
  v5 = [v4 requiresPassword];
  v6 = +[NSNotificationCenter defaultCenter];
  if (v5)
  {
    v11 = @"CBNetworkInfoKey";
    v12 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [v6 postNotificationName:@"CBWiFiManagerWillAssociateToEncryptedNetworkNotification" object:0 userInfo:v7];
  }

  else
  {
    v9 = @"CBNetworkInfoKey";
    v10 = v4;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v6 postNotificationName:@"CBWiFiManagerWillAssociateToOpenNetworkNotification" object:0 userInfo:v8];

    [(CBWiFiManager *)self _associateToUnencryptedNetwork:v4];
    v6 = v4;
  }
}

- (void)_savePendingInfoWithScanResult:(id)a3 password:(id)a4 isHidden:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  if (![(CBWiFiManager *)self reconnecting])
  {
    v9 = objc_alloc_init(CBWiFiNetworkInfo);
    [(CBWiFiManager *)self setPendingLastGoodNetwork:v9];

    v10 = [(CBWiFiManager *)self pendingLastGoodNetwork];
    [v10 setScanResult:v13];

    v11 = [(CBWiFiManager *)self pendingLastGoodNetwork];
    [v11 setPassword:v8];

    v12 = [(CBWiFiManager *)self pendingLastGoodNetwork];
    [v12 setIsHidden:v5];

    [(CBWiFiManager *)self setLastGoodNetwork:0];
  }
}

- (void)_associateToEncryptedNetworkWithScanResult:(id)a3 password:(id)a4 isHidden:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CBWiFiManager *)self cwInterface];

  if (v10)
  {
    v11 = CheckerBoardLogHandleForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        LOWORD(buf[0]) = 0;
        v13 = "Attempting to associate to network with password…";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      }
    }

    else if (v12)
    {
      LOWORD(buf[0]) = 0;
      v13 = "Attempting to associate to network with no password…";
      goto LABEL_7;
    }

    [(CBWiFiManager *)self _savePendingInfoWithScanResult:v8 password:v9 isHidden:v5];
    v14 = [(CBWiFiManager *)self _associationParametersFromScanResult:v8 withPassword:v9];
    objc_initWeak(buf, self);
    v15 = [(CBWiFiManager *)self cwInterface];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100027BA8;
    v16[3] = &unk_10007E2F0;
    objc_copyWeak(&v17, buf);
    [v15 associateWithParameters:v14 reply:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

- (void)_associateToUnencryptedNetwork:(id)a3
{
  v4 = a3;
  v5 = [(CBWiFiManager *)self cwInterface];

  if (v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Begin unencrypted network association…", buf, 2u);
    }

    [(CBWiFiManager *)self _savePendingInfoWithScanResult:v4 password:0 isHidden:0];
    v7 = [(CBWiFiManager *)self _associationParametersFromScanResult:v4 withPassword:0];
    objc_initWeak(buf, self);
    v8 = [(CBWiFiManager *)self cwInterface];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100027DA8;
    v9[3] = &unk_10007E2F0;
    objc_copyWeak(&v10, buf);
    [v8 associateWithParameters:v7 reply:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)_associateToHiddenUnencryptedNetwork:(id)a3
{
  v4 = a3;
  v5 = [(CBWiFiManager *)self cwInterface];

  if (v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Begin hidden unencrypted network association…", buf, 2u);
    }

    [(CBWiFiManager *)self _savePendingInfoWithScanResult:v4 password:0 isHidden:1];
    v7 = [(CBWiFiManager *)self _associationParametersFromScanResult:v4 withPassword:0];
    objc_initWeak(buf, self);
    v8 = [(CBWiFiManager *)self cwInterface];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100027FA8;
    v9[3] = &unk_10007E2F0;
    objc_copyWeak(&v10, buf);
    [v8 associateWithParameters:v7 reply:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)setAttemptsNetworkReconnect:(BOOL)a3
{
  v3 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network reconnect enabled: %d", v6, 8u);
  }

  [(CBWiFiManager *)self setNetworkReconnectEnabled:v3];
}

- (void)_attemptReconnect
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 67109120;
    LODWORD(v31) = [(CBWiFiManager *)self reconnecting];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempt to reconnect called, reconnecting: %d", &v30, 8u);
  }

  if ([(CBWiFiManager *)self reconnecting])
  {
    v4 = [(CBWiFiManager *)self lastGoodNetwork];

    if (v4)
    {
      v5 = [(CBWiFiManager *)self attemptsNetworkReconnect];
      v6 = CheckerBoardLogHandleForCategory();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          v8 = [(CBWiFiManager *)self lastGoodNetwork];
          v9 = [v8 scanResult];
          v10 = [v9 networkName];
          v11 = [(CBWiFiManager *)self lastGoodNetwork];
          v12 = [v11 password];
          v13 = [(CBWiFiManager *)self lastGoodNetwork];
          v14 = [v13 scanResult];
          v15 = [v14 requiresPassword];
          v30 = 138412802;
          v31 = v10;
          v32 = 1024;
          v33 = v12 != 0;
          v34 = 1024;
          v35 = v15;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect to network with SSID: (%@) Password: (%d) Security: (%d)", &v30, 0x18u);
        }

        v16 = [(CBWiFiManager *)self lastGoodNetwork];
        v17 = [v16 password];

        v18 = [(CBWiFiManager *)self lastGoodNetwork];
        v6 = v18;
        if (v17)
        {
          v19 = [v18 isHidden];

          v6 = [(CBWiFiManager *)self lastGoodNetwork];
          v20 = [v6 scanResult];
          v21 = [v20 networkName];
          v22 = [(CBWiFiManager *)self lastGoodNetwork];
          v23 = [v22 password];
          if (v19)
          {
            [(CBWiFiManager *)self associateToHiddenEncryptedNetworkWithName:v21 password:v23];
          }

          else
          {
            [(CBWiFiManager *)self associateToEncryptedNetworkWithName:v21 password:v23];
          }
        }

        else
        {
          v20 = [v18 scanResult];
          v21 = [v20 networkName];
          [(CBWiFiManager *)self associateToHiddenUnencryptedNetworkWithName:v21];
        }
      }

      else if (v7)
      {
        v27 = [(CBWiFiManager *)self lastGoodNetwork];
        v28 = [v27 scanResult];
        v29 = [v28 networkName];
        v30 = 138412290;
        v31 = v29;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network reconnect is disabled. Not attempting to reconnect to network with SSID: (%@)", &v30, 0xCu);
      }

      return;
    }

    v24 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100047940();
    }

    [(CBWiFiManager *)self setReconnecting:0];
  }

  v25 = [(CBWiFiManager *)self reconnectTimer];

  if (v25)
  {
    v26 = [(CBWiFiManager *)self reconnectTimer];
    [v26 invalidate];

    [(CBWiFiManager *)self setReconnectTimer:0];
  }
}

- (void)_updateSignalStrength
{
  v3 = 0.0;
  if ([(CBWiFiManager *)self isAssociatedToNetwork])
  {
    v4 = [(CBWiFiManager *)self cwInterface];

    if (v4)
    {
      v5 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating signal strength…", v11, 2u);
      }

      v6 = [(CBWiFiManager *)self cwInterface];
      v7 = [v6 currentScanResult];
      v4 = [v7 RSSI];

      WFScaleRSSI();
      v3 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = v4;
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating signal strength with raw RSSI %d and scaled RSSI %f", v11, 0x12u);
  }

  *&v10 = v3;
  [(CBWiFiManager *)self _updateSignalStrengthFromRawRSSI:v4 andScaledRSSI:v10];
}

- (void)_updateSignalStrengthFromRawRSSI:(int)a3 andScaledRSSI:(float)a4
{
  v4 = *&a3;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating signal strength from raw RSSI and scaled RSSI…", v10, 2u);
  }

  if ([(CBWiFiManager *)self isAssociatedToNetwork])
  {
    v7 = WFSignalBarsFromScaledRSSI();
  }

  else
  {
    v4 = 0;
    v7 = 0;
  }

  v8 = [(CBWiFiManager *)self signalStrengthBars]!= v7 || [(CBWiFiManager *)self signalStrengthRSSI]!= v4;
  [(CBWiFiManager *)self setSignalStrengthBars:v7];
  [(CBWiFiManager *)self setSignalStrengthRSSI:v4];
  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = v8;
    v11 = 1024;
    v12 = v7;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Signal changed (%d) to bars (%d) and RSSI (%d)…", v10, 0x14u);
  }

  if (v8)
  {
    dispatch_sync(&_dispatch_main_q, &stru_10007E310);
  }
}

- (void)_postDidAssociateToEncryptedNetworkNotificationWithError:(id)a3
{
  v3 = a3;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Posting DidAssociateToEncryptedNetwork notification", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000288F8;
  block[3] = &unk_10007D540;
  v7 = v3;
  v5 = v3;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)_postDidAssociateToOpenNetworkNotificationWithError:(id)a3
{
  v3 = a3;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Posting DidAssociateToOpenNetwork notification", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028A6C;
  block[3] = &unk_10007D540;
  v7 = v3;
  v5 = v3;
  dispatch_sync(&_dispatch_main_q, block);
}

@end
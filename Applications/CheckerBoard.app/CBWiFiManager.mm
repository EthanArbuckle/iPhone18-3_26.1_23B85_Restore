@interface CBWiFiManager
+ (CBWiFiManager)sharedInstance;
- (BOOL)attemptingToAssociateToCurrentNetworkByIndex:(int64_t)index;
- (BOOL)isAssociatedToNetwork;
- (CBWiFiManager)init;
- (NSString)currentNetworkSSID;
- (id)_associationParametersFromScanResult:(id)result withPassword:(id)password;
- (id)scanParametersWithSSID:(id)d isHidden:(BOOL)hidden;
- (void)_associateToEncryptedNetworkWithScanResult:(id)result password:(id)password isHidden:(BOOL)hidden;
- (void)_associateToHiddenUnencryptedNetwork:(id)network;
- (void)_associateToNetworkWithScanResult:(id)result;
- (void)_associateToUnencryptedNetwork:(id)network;
- (void)_attemptReconnect;
- (void)_deregisterWiFiNotifications;
- (void)_forceWiFiOnIfNecessary;
- (void)_handleCWInterfaceEvent:(id)event;
- (void)_performDirectedScanIncludingHidden:(BOOL)hidden AndAssociateToNetworkWithName:(id)name password:(id)password;
- (void)_postDidAssociateToEncryptedNetworkNotificationWithError:(id)error;
- (void)_postDidAssociateToOpenNetworkNotificationWithError:(id)error;
- (void)_powerStateDidChange;
- (void)_registerWiFiNotifications;
- (void)_resolveReconnectingStatus;
- (void)_restartWiFiNetworkScan;
- (void)_savePendingInfoWithScanResult:(id)result password:(id)password isHidden:(BOOL)hidden;
- (void)_setTimeForNextScan:(double)scan;
- (void)_sortWiFiScanResultsAlphabetically:(id)alphabetically;
- (void)_startWiFiNetworkScan;
- (void)_stopWiFiNetworkScan;
- (void)_updateForAssociationChange;
- (void)_updateSignalStrength;
- (void)_updateSignalStrengthFromRawRSSI:(int)i andScaledRSSI:(float)sI;
- (void)_wifiScanCompleted:(id)completed;
- (void)associateToHiddenUnencryptedNetworkWithName:(id)name;
- (void)associateToNetworkByIndex:(int64_t)index;
- (void)dealloc;
- (void)setAttemptsNetworkReconnect:(BOOL)reconnect;
- (void)setPowered:(BOOL)powered;
- (void)startWiFiNetworkScanRequestFrom:(id)from;
- (void)stopWiFiNetworkScanRequestFrom:(id)from;
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
  cwInterface = [(CBWiFiManager *)self cwInterface];
  [cwInterface invalidate];

  v5.receiver = self;
  v5.super_class = CBWiFiManager;
  [(CBWiFiManager *)&v5 dealloc];
}

- (void)_deregisterWiFiNotifications
{
  cwInterface = [(CBWiFiManager *)self cwInterface];

  if (cwInterface)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deregistering Wi-Fi notifications…", v6, 2u);
    }

    cwInterface2 = [(CBWiFiManager *)self cwInterface];
    [cwInterface2 stopMonitoringAllEvents];
  }
}

- (void)_registerWiFiNotifications
{
  cwInterface = [(CBWiFiManager *)self cwInterface];

  if (cwInterface)
  {
    objc_initWeak(&location, self);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10002518C;
    v34[3] = &unk_10007E1E8;
    objc_copyWeak(&v35, &location);
    cwInterface2 = [(CBWiFiManager *)self cwInterface];
    [cwInterface2 setEventHandler:v34];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000251E8;
    v32[3] = &unk_10007D668;
    objc_copyWeak(&v33, &location);
    cwInterface3 = [(CBWiFiManager *)self cwInterface];
    [cwInterface3 setInvalidationHandler:v32];

    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registering for Wi-Fi notifications…", buf, 2u);
    }

    cwInterface4 = [(CBWiFiManager *)self cwInterface];
    v30 = 0;
    [cwInterface4 startMonitoringEventType:10 error:&v30];
    v8 = v30;

    cwInterface5 = [(CBWiFiManager *)self cwInterface];
    v29 = v8;
    [cwInterface5 startMonitoringEventType:11 error:&v29];
    v10 = v29;

    cwInterface6 = [(CBWiFiManager *)self cwInterface];
    v28 = v10;
    [cwInterface6 startMonitoringEventType:18 error:&v28];
    v12 = v28;

    cwInterface7 = [(CBWiFiManager *)self cwInterface];
    v27 = v12;
    [cwInterface7 startMonitoringEventType:24 error:&v27];
    v14 = v27;

    cwInterface8 = [(CBWiFiManager *)self cwInterface];
    v26 = v14;
    [cwInterface8 startMonitoringEventType:1 error:&v26];
    v16 = v26;

    cwInterface9 = [(CBWiFiManager *)self cwInterface];
    v25 = v16;
    [cwInterface9 startMonitoringEventType:6 error:&v25];
    v18 = v25;

    cwInterface10 = [(CBWiFiManager *)self cwInterface];
    v24 = v18;
    [cwInterface10 startMonitoringEventType:7 error:&v24];
    v20 = v24;

    cwInterface11 = [(CBWiFiManager *)self cwInterface];
    v23 = v20;
    [cwInterface11 startMonitoringEventType:2 error:&v23];
    v22 = v23;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }
}

- (void)_handleCWInterfaceEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  v6 = CheckerBoardLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (type > 9)
  {
    if (type > 17)
    {
      if (type != 18)
      {
        if (type == 24)
        {
          if (v7)
          {
            cwInterface = [(CBWiFiManager *)self cwInterface];
            v21 = 67109120;
            LODWORD(v22[0]) = [cwInterface reachabilityFlags];
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

    else if (type == 10)
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
      if (type != 11)
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

  if (type > 5)
  {
    if (type == 6)
    {
      if (v7)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Extended link changed", &v21, 2u);
      }

      v6 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        cwInterface2 = [(CBWiFiManager *)self cwInterface];
        cachedLinkDownStatus = [cwInterface2 cachedLinkDownStatus];
        v21 = 138412290;
        v22[0] = cachedLinkDownStatus;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WiFi link status set to %@", &v21, 0xCu);
      }

      goto LABEL_41;
    }

    if (type == 7)
    {
      if (v7)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Link quality changed", &v21, 2u);
      }

      v11 = 0.0;
      if ([(CBWiFiManager *)self isAssociatedToNetwork])
      {
        cwInterface3 = [(CBWiFiManager *)self cwInterface];

        if (cwInterface3)
        {
          v13 = CheckerBoardLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating signal strength…", &v21, 2u);
          }

          cwInterface4 = [(CBWiFiManager *)self cwInterface];
          currentScanResult = [cwInterface4 currentScanResult];
          cwInterface3 = [currentScanResult RSSI];

          WFScaleRSSI();
          v11 = v16;
        }
      }

      else
      {
        cwInterface3 = 0;
      }

      v19 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 67109376;
        LODWORD(v22[0]) = cwInterface3;
        WORD2(v22[0]) = 2048;
        *(v22 + 6) = v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Raw RSSI %d, Scaled RSSI %f", &v21, 0x12u);
      }

      *&v20 = v11;
      [(CBWiFiManager *)self _updateSignalStrengthFromRawRSSI:cwInterface3 andScaledRSSI:v20];
      goto LABEL_46;
    }

LABEL_39:
    if (v7)
    {
      v21 = 134217984;
      v22[0] = [eventCopy type];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unhandled CWFEvent %ld", &v21, 0xCu);
    }

LABEL_41:

    goto LABEL_46;
  }

  if (type != 1)
  {
    if (type == 2)
    {
      if (v7)
      {
        cwInterface = [(CBWiFiManager *)self cwInterface];
        networkName = [cwInterface networkName];
        v21 = 138412290;
        v22[0] = networkName;
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
  cwInterface = [(CBWiFiManager *)self cwInterface];
  currentScanResult = [cwInterface currentScanResult];
  networkName = [currentScanResult networkName];

  return networkName;
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
      pendingLastGoodNetwork = [(CBWiFiManager *)self pendingLastGoodNetwork];
      if (pendingLastGoodNetwork)
      {
        v20 = pendingLastGoodNetwork;
        pendingLastGoodNetwork2 = [(CBWiFiManager *)self pendingLastGoodNetwork];
        scanResult = [pendingLastGoodNetwork2 scanResult];
        networkName = [scanResult networkName];
        currentNetworkSSID = [(CBWiFiManager *)self currentNetworkSSID];
        if ([networkName isEqualToString:currentNetworkSSID])
        {
          cwInterface = [(CBWiFiManager *)self cwInterface];
          reachabilityFlags = [cwInterface reachabilityFlags];

          if ((reachabilityFlags & 2) != 0)
          {
            v17 = CheckerBoardLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              currentNetworkSSID2 = [(CBWiFiManager *)self currentNetworkSSID];
              *buf = 138412290;
              v23 = currentNetworkSSID2;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating last known good network to %@", buf, 0xCu);
            }

            pendingLastGoodNetwork3 = [(CBWiFiManager *)self pendingLastGoodNetwork];
            [(CBWiFiManager *)self setLastGoodNetwork:pendingLastGoodNetwork3];

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
    lastGoodNetwork = [(CBWiFiManager *)self lastGoodNetwork];
    if (lastGoodNetwork)
    {
      v4 = lastGoodNetwork;
      reconnecting = [(CBWiFiManager *)self reconnecting];

      if ((reconnecting & 1) == 0)
      {
        v6 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          lastGoodNetwork2 = [(CBWiFiManager *)self lastGoodNetwork];
          scanResult2 = [lastGoodNetwork2 scanResult];
          networkName2 = [scanResult2 networkName];
          *buf = 138412290;
          v23 = networkName2;
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

    reconnectTimer = [(CBWiFiManager *)self reconnectTimer];

    if (reconnectTimer)
    {
      reconnectTimer2 = [(CBWiFiManager *)self reconnectTimer];
      [reconnectTimer2 invalidate];

      [(CBWiFiManager *)self setReconnectTimer:0];
    }

    [(CBWiFiManager *)self stopWiFiNetworkScanRequestFrom:self];
    [(CBWiFiManager *)self setReconnecting:0];
  }
}

- (BOOL)isAssociatedToNetwork
{
  cwInterface = [(CBWiFiManager *)self cwInterface];
  currentScanResult = [cwInterface currentScanResult];
  v4 = currentScanResult != 0;

  return v4;
}

- (void)_sortWiFiScanResultsAlphabetically:(id)alphabetically
{
  alphabeticallyCopy = alphabetically;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sorting Wi-Fi scan results…", v5, 2u);
  }

  [alphabeticallyCopy sortWithOptions:16 usingComparator:&stru_10007E228];
}

- (void)_forceWiFiOnIfNecessary
{
  isWiFiPoweredOn = [(CBWiFiManager *)self isWiFiPoweredOn];
  v4 = CheckerBoardLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isWiFiPoweredOn)
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

- (void)setPowered:(BOOL)powered
{
  poweredCopy = powered;
  cwInterface = [(CBWiFiManager *)self cwInterface];

  if (cwInterface)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v12) = poweredCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting Wi-Fi power state to %d", buf, 8u);
    }

    cwInterface2 = [(CBWiFiManager *)self cwInterface];
    v10 = 0;
    [cwInterface2 setPower:poweredCopy error:&v10];
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
  cwInterface = [(CBWiFiManager *)self cwInterface];

  if (cwInterface)
  {
    cwInterface2 = [(CBWiFiManager *)self cwInterface];
    -[CBWiFiManager setWifiPoweredOn:](self, "setWifiPoweredOn:", [cwInterface2 powerOn]);

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

- (id)scanParametersWithSSID:(id)d isHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  dCopy = d;
  v6 = objc_alloc_init(CWFScanParameters);
  [v6 setIncludeHiddenNetworks:hiddenCopy];
  [v6 setMinimumRSSI:-80];
  if (dCopy)
  {
    [v6 setSSID:dCopy];
  }

  [v6 setMergeScanResults:1];
  v7 = [NSSet setWithArray:&off_1000813C0];
  [v6 setIncludeProperties:v7];

  return v6;
}

- (void)startWiFiNetworkScanRequestFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    wifiScanRequestors = [(CBWiFiManager *)self wifiScanRequestors];
    v6 = [wifiScanRequestors count];

    v7 = CheckerBoardLogHandleForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v12 = 138412290;
        v13 = fromCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFi scan requested by %@, but it is not the first.", &v12, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        v12 = 138412290;
        v13 = fromCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "First WiFi scan request from %@. Beginning WiFi scan", &v12, 0xCu);
      }

      [(CBWiFiManager *)self _startWiFiNetworkScan];
    }

    wifiScanRequestors2 = [(CBWiFiManager *)self wifiScanRequestors];
    v11 = [wifiScanRequestors2 containsObject:fromCopy];

    if (v11)
    {
      wifiScanRequestors3 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(wifiScanRequestors3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = fromCopy;
        _os_log_impl(&_mh_execute_header, wifiScanRequestors3, OS_LOG_TYPE_DEFAULT, "%@ is already known to be a WiFi scan requestor", &v12, 0xCu);
      }
    }

    else
    {
      wifiScanRequestors3 = [(CBWiFiManager *)self wifiScanRequestors];
      [wifiScanRequestors3 addObject:fromCopy];
    }
  }

  else
  {
    wifiScanRequestors3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(wifiScanRequestors3, OS_LOG_TYPE_ERROR))
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

- (void)stopWiFiNetworkScanRequestFrom:(id)from
{
  fromCopy = from;
  if (fromCopy && (-[CBWiFiManager wifiScanRequestors](self, "wifiScanRequestors"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:fromCopy], v5, v6))
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = fromCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFi scan requestor %@ no longer needs WiFi scan.", &v13, 0xCu);
    }

    wifiScanRequestors = [(CBWiFiManager *)self wifiScanRequestors];
    [wifiScanRequestors removeObject:fromCopy];

    wifiScanRequestors2 = [(CBWiFiManager *)self wifiScanRequestors];
    v10 = [wifiScanRequestors2 count];

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
  cwInterface = [(CBWiFiManager *)self cwInterface];

  if (cwInterface)
  {
    cwInterface2 = [(CBWiFiManager *)self cwInterface];
    cwInterface3 = [(CBWiFiManager *)self cwInterface];
    requestParameters = [cwInterface3 requestParameters];
    uUID = [requestParameters UUID];
    v12 = 0;
    [cwInterface2 cancelRequestsWithUUID:uUID error:&v12];
  }

  scanTimer = [(CBWiFiManager *)self scanTimer];

  if (scanTimer)
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Invalidating scan timer…", v11, 2u);
    }

    scanTimer2 = [(CBWiFiManager *)self scanTimer];
    [scanTimer2 invalidate];

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

- (void)_wifiScanCompleted:(id)completed
{
  completedCopy = completed;
  [(CBWiFiManager *)self updateWiFiState];
  v5 = [NSMutableArray arrayWithArray:completedCopy];

  [(CBWiFiManager *)self setFilteredWiFiScanResults:v5];
  filteredWiFiScanResults = [(CBWiFiManager *)self filteredWiFiScanResults];
  [(CBWiFiManager *)self _sortWiFiScanResultsAlphabetically:filteredWiFiScanResults];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"CBWiFiNetworkScanCompletedNotification" object:0];

  [(CBWiFiManager *)self setScanning:0];

  [(CBWiFiManager *)self _setTimeForNextScan:8.0];
}

- (void)_setTimeForNextScan:(double)scan
{
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    scanCopy = scan;
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
    scanTimer = [(CBWiFiManager *)self scanTimer];

    if (scanTimer)
    {
      scanTimer2 = [(CBWiFiManager *)self scanTimer];
      [scanTimer2 invalidate];
    }

    filteredWiFiScanResults = [(CBWiFiManager *)self filteredWiFiScanResults];
    v10 = [filteredWiFiScanResults copy];
    [(CBWiFiManager *)self setPreviousScanFilteredWiFiScanResults:v10];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026DD0;
    v11[3] = &unk_10007E278;
    v11[4] = self;
    *&v11[5] = scan;
    dispatch_sync(&_dispatch_main_q, v11);
  }
}

- (BOOL)attemptingToAssociateToCurrentNetworkByIndex:(int64_t)index
{
  filteredWiFiScanResults = [(CBWiFiManager *)self filteredWiFiScanResults];
  v6 = [filteredWiFiScanResults objectAtIndexedSubscript:index];

  networkName = [v6 networkName];
  currentNetworkSSID = [(CBWiFiManager *)self currentNetworkSSID];
  v9 = [networkName isEqualToString:currentNetworkSSID];

  return v9;
}

- (void)associateToNetworkByIndex:(int64_t)index
{
  filteredWiFiScanResults = [(CBWiFiManager *)self filteredWiFiScanResults];
  v6 = [filteredWiFiScanResults objectAtIndexedSubscript:index];

  [(CBWiFiManager *)self _associateToNetworkWithScanResult:v6];
}

- (id)_associationParametersFromScanResult:(id)result withPassword:(id)password
{
  passwordCopy = password;
  resultCopy = result;
  v7 = objc_alloc_init(CWFAssocParameters);
  [v7 setScanResult:resultCopy];

  [v7 setRememberUponSuccessfulAssociation:1];
  if (passwordCopy)
  {
    [v7 setPassword:passwordCopy];
  }

  return v7;
}

- (void)associateToHiddenUnencryptedNetworkWithName:(id)name
{
  nameCopy = name;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to associate to network with a directed scan", v6, 2u);
  }

  [(CBWiFiManager *)self _performDirectedScanIncludingHidden:1 AndAssociateToNetworkWithName:nameCopy password:0];
}

- (void)_performDirectedScanIncludingHidden:(BOOL)hidden AndAssociateToNetworkWithName:(id)name password:(id)password
{
  hiddenCopy = hidden;
  nameCopy = name;
  passwordCopy = password;
  v10 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = hiddenCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to associate to network with hidden scan (%d)…", &buf, 8u);
  }

  v11 = +[NSNotificationCenter defaultCenter];
  v12 = v11;
  if (passwordCopy)
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
  v18 = nameCopy;
  v21 = hiddenCopy;
  v19 = passwordCopy;
  v15 = passwordCopy;
  v16 = nameCopy;
  dispatch_async(v14, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&buf);
}

- (void)_associateToNetworkWithScanResult:(id)result
{
  resultCopy = result;
  requiresPassword = [resultCopy requiresPassword];
  v6 = +[NSNotificationCenter defaultCenter];
  if (requiresPassword)
  {
    v11 = @"CBNetworkInfoKey";
    v12 = resultCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [v6 postNotificationName:@"CBWiFiManagerWillAssociateToEncryptedNetworkNotification" object:0 userInfo:v7];
  }

  else
  {
    v9 = @"CBNetworkInfoKey";
    v10 = resultCopy;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v6 postNotificationName:@"CBWiFiManagerWillAssociateToOpenNetworkNotification" object:0 userInfo:v8];

    [(CBWiFiManager *)self _associateToUnencryptedNetwork:resultCopy];
    v6 = resultCopy;
  }
}

- (void)_savePendingInfoWithScanResult:(id)result password:(id)password isHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  resultCopy = result;
  passwordCopy = password;
  if (![(CBWiFiManager *)self reconnecting])
  {
    v9 = objc_alloc_init(CBWiFiNetworkInfo);
    [(CBWiFiManager *)self setPendingLastGoodNetwork:v9];

    pendingLastGoodNetwork = [(CBWiFiManager *)self pendingLastGoodNetwork];
    [pendingLastGoodNetwork setScanResult:resultCopy];

    pendingLastGoodNetwork2 = [(CBWiFiManager *)self pendingLastGoodNetwork];
    [pendingLastGoodNetwork2 setPassword:passwordCopy];

    pendingLastGoodNetwork3 = [(CBWiFiManager *)self pendingLastGoodNetwork];
    [pendingLastGoodNetwork3 setIsHidden:hiddenCopy];

    [(CBWiFiManager *)self setLastGoodNetwork:0];
  }
}

- (void)_associateToEncryptedNetworkWithScanResult:(id)result password:(id)password isHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  resultCopy = result;
  passwordCopy = password;
  cwInterface = [(CBWiFiManager *)self cwInterface];

  if (cwInterface)
  {
    v11 = CheckerBoardLogHandleForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (passwordCopy)
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

    [(CBWiFiManager *)self _savePendingInfoWithScanResult:resultCopy password:passwordCopy isHidden:hiddenCopy];
    v14 = [(CBWiFiManager *)self _associationParametersFromScanResult:resultCopy withPassword:passwordCopy];
    objc_initWeak(buf, self);
    cwInterface2 = [(CBWiFiManager *)self cwInterface];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100027BA8;
    v16[3] = &unk_10007E2F0;
    objc_copyWeak(&v17, buf);
    [cwInterface2 associateWithParameters:v14 reply:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

- (void)_associateToUnencryptedNetwork:(id)network
{
  networkCopy = network;
  cwInterface = [(CBWiFiManager *)self cwInterface];

  if (cwInterface)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Begin unencrypted network association…", buf, 2u);
    }

    [(CBWiFiManager *)self _savePendingInfoWithScanResult:networkCopy password:0 isHidden:0];
    v7 = [(CBWiFiManager *)self _associationParametersFromScanResult:networkCopy withPassword:0];
    objc_initWeak(buf, self);
    cwInterface2 = [(CBWiFiManager *)self cwInterface];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100027DA8;
    v9[3] = &unk_10007E2F0;
    objc_copyWeak(&v10, buf);
    [cwInterface2 associateWithParameters:v7 reply:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)_associateToHiddenUnencryptedNetwork:(id)network
{
  networkCopy = network;
  cwInterface = [(CBWiFiManager *)self cwInterface];

  if (cwInterface)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Begin hidden unencrypted network association…", buf, 2u);
    }

    [(CBWiFiManager *)self _savePendingInfoWithScanResult:networkCopy password:0 isHidden:1];
    v7 = [(CBWiFiManager *)self _associationParametersFromScanResult:networkCopy withPassword:0];
    objc_initWeak(buf, self);
    cwInterface2 = [(CBWiFiManager *)self cwInterface];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100027FA8;
    v9[3] = &unk_10007E2F0;
    objc_copyWeak(&v10, buf);
    [cwInterface2 associateWithParameters:v7 reply:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)setAttemptsNetworkReconnect:(BOOL)reconnect
{
  reconnectCopy = reconnect;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = reconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network reconnect enabled: %d", v6, 8u);
  }

  [(CBWiFiManager *)self setNetworkReconnectEnabled:reconnectCopy];
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
    lastGoodNetwork = [(CBWiFiManager *)self lastGoodNetwork];

    if (lastGoodNetwork)
    {
      attemptsNetworkReconnect = [(CBWiFiManager *)self attemptsNetworkReconnect];
      lastGoodNetwork7 = CheckerBoardLogHandleForCategory();
      v7 = os_log_type_enabled(lastGoodNetwork7, OS_LOG_TYPE_DEFAULT);
      if (attemptsNetworkReconnect)
      {
        if (v7)
        {
          lastGoodNetwork2 = [(CBWiFiManager *)self lastGoodNetwork];
          scanResult = [lastGoodNetwork2 scanResult];
          networkName = [scanResult networkName];
          lastGoodNetwork3 = [(CBWiFiManager *)self lastGoodNetwork];
          password = [lastGoodNetwork3 password];
          lastGoodNetwork4 = [(CBWiFiManager *)self lastGoodNetwork];
          scanResult2 = [lastGoodNetwork4 scanResult];
          requiresPassword = [scanResult2 requiresPassword];
          v30 = 138412802;
          v31 = networkName;
          v32 = 1024;
          v33 = password != 0;
          v34 = 1024;
          v35 = requiresPassword;
          _os_log_impl(&_mh_execute_header, lastGoodNetwork7, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect to network with SSID: (%@) Password: (%d) Security: (%d)", &v30, 0x18u);
        }

        lastGoodNetwork5 = [(CBWiFiManager *)self lastGoodNetwork];
        password2 = [lastGoodNetwork5 password];

        lastGoodNetwork6 = [(CBWiFiManager *)self lastGoodNetwork];
        lastGoodNetwork7 = lastGoodNetwork6;
        if (password2)
        {
          isHidden = [lastGoodNetwork6 isHidden];

          lastGoodNetwork7 = [(CBWiFiManager *)self lastGoodNetwork];
          scanResult3 = [lastGoodNetwork7 scanResult];
          networkName2 = [scanResult3 networkName];
          lastGoodNetwork8 = [(CBWiFiManager *)self lastGoodNetwork];
          password3 = [lastGoodNetwork8 password];
          if (isHidden)
          {
            [(CBWiFiManager *)self associateToHiddenEncryptedNetworkWithName:networkName2 password:password3];
          }

          else
          {
            [(CBWiFiManager *)self associateToEncryptedNetworkWithName:networkName2 password:password3];
          }
        }

        else
        {
          scanResult3 = [lastGoodNetwork6 scanResult];
          networkName2 = [scanResult3 networkName];
          [(CBWiFiManager *)self associateToHiddenUnencryptedNetworkWithName:networkName2];
        }
      }

      else if (v7)
      {
        lastGoodNetwork9 = [(CBWiFiManager *)self lastGoodNetwork];
        scanResult4 = [lastGoodNetwork9 scanResult];
        networkName3 = [scanResult4 networkName];
        v30 = 138412290;
        v31 = networkName3;
        _os_log_impl(&_mh_execute_header, lastGoodNetwork7, OS_LOG_TYPE_DEFAULT, "Network reconnect is disabled. Not attempting to reconnect to network with SSID: (%@)", &v30, 0xCu);
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

  reconnectTimer = [(CBWiFiManager *)self reconnectTimer];

  if (reconnectTimer)
  {
    reconnectTimer2 = [(CBWiFiManager *)self reconnectTimer];
    [reconnectTimer2 invalidate];

    [(CBWiFiManager *)self setReconnectTimer:0];
  }
}

- (void)_updateSignalStrength
{
  v3 = 0.0;
  if ([(CBWiFiManager *)self isAssociatedToNetwork])
  {
    cwInterface = [(CBWiFiManager *)self cwInterface];

    if (cwInterface)
    {
      v5 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating signal strength…", v11, 2u);
      }

      cwInterface2 = [(CBWiFiManager *)self cwInterface];
      currentScanResult = [cwInterface2 currentScanResult];
      cwInterface = [currentScanResult RSSI];

      WFScaleRSSI();
      v3 = v8;
    }
  }

  else
  {
    cwInterface = 0;
  }

  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = cwInterface;
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating signal strength with raw RSSI %d and scaled RSSI %f", v11, 0x12u);
  }

  *&v10 = v3;
  [(CBWiFiManager *)self _updateSignalStrengthFromRawRSSI:cwInterface andScaledRSSI:v10];
}

- (void)_updateSignalStrengthFromRawRSSI:(int)i andScaledRSSI:(float)sI
{
  v4 = *&i;
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

- (void)_postDidAssociateToEncryptedNetworkNotificationWithError:(id)error
{
  errorCopy = error;
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
  v7 = errorCopy;
  v5 = errorCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)_postDidAssociateToOpenNetworkNotificationWithError:(id)error
{
  errorCopy = error;
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
  v7 = errorCopy;
  v5 = errorCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

@end
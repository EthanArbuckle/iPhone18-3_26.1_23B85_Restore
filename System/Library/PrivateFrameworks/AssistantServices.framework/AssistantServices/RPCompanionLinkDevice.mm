@interface RPCompanionLinkDevice
- (BOOL)checkIfHomeHubDeviceIsLookingForItsHubWithLocalDevice:(id)device;
- (BOOL)checkIfHubIsLookingForAHomeHubDeviceItIsHostingWithLocalDevice:(id)device;
- (BOOL)hasAnyDiscoveryFlags;
- (BOOL)hasIOS;
- (BOOL)hasValidDiscoveryTypeForLocalDevice:(id)device;
- (BOOL)hasWatchOS;
- (BOOL)isCompanionLinkDeviceAnAudioAccessory;
- (BOOL)isGuestDevice;
- (BOOL)isMeDevice;
- (BOOL)willUseProxyCommunicationWithLocalDevice:(id)device;
- (id)_ad_siriSharedData;
- (id)_ad_siriSharedDataProtobuf;
- (id)getAceDiscoveryType;
- (int)getHALDiscoveryType;
@end

@implementation RPCompanionLinkDevice

- (id)_ad_siriSharedData
{
  _ad_siriSharedDataProtobuf = [(RPCompanionLinkDevice *)self _ad_siriSharedDataProtobuf];
  _ad_data = [_ad_siriSharedDataProtobuf _ad_data];

  return _ad_data;
}

- (id)_ad_siriSharedDataProtobuf
{
  siriInfo = [(RPCompanionLinkDevice *)self siriInfo];
  v3 = [siriInfo objectForKey:@"sharedDataProtoBuf"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[_ADPBDeviceSetDataRequest alloc] initWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasAnyDiscoveryFlags
{
  statusFlags = [(RPCompanionLinkDevice *)self statusFlags];
  if (statusFlags)
  {
    if ([(RPCompanionLinkDevice *)self isDiscoveredOverInfraWifi]|| [(RPCompanionLinkDevice *)self isDiscoveredOverWifiP2P])
    {
      LOBYTE(statusFlags) = 1;
    }

    else
    {

      LOBYTE(statusFlags) = [(RPCompanionLinkDevice *)self isDiscoveredOverBLE];
    }
  }

  return statusFlags;
}

- (id)getAceDiscoveryType
{
  if ([(RPCompanionLinkDevice *)self isDiscoveredOverInfraWifi])
  {
    v3 = &SARemoteDeviceDiscoveryModeInfraWifiValue;
  }

  else if ([(RPCompanionLinkDevice *)self isDiscoveredOverWifiP2P])
  {
    v3 = &SARemoteDeviceDiscoveryModeWifiP2PValue;
  }

  else
  {
    isDiscoveredOverBLE = [(RPCompanionLinkDevice *)self isDiscoveredOverBLE];
    v3 = &SARemoteDeviceDiscoveryModeUnknownValue;
    if (isDiscoveredOverBLE)
    {
      v3 = &SARemoteDeviceDiscoveryModeBluetoothValue;
    }
  }

  v5 = *v3;

  return v5;
}

- (BOOL)willUseProxyCommunicationWithLocalDevice:(id)device
{
  deviceCopy = device;
  v5 = [(RPCompanionLinkDevice *)self checkIfHomeHubDeviceIsLookingForItsHubWithLocalDevice:deviceCopy];
  v6 = [(RPCompanionLinkDevice *)self checkIfHubIsLookingForAHomeHubDeviceItIsHostingWithLocalDevice:deviceCopy];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = @"NO";
    v12 = "[RPCompanionLinkDevice(AssistantAdditions) willUseProxyCommunicationWithLocalDevice:]";
    if (v5)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = 136315650;
    v14 = v10;
    v13 = 2112;
    if (v6)
    {
      v9 = @"YES";
    }

    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s isHomeHubDeviceLookingForItsHub: %@, isHubLookingForADeviceItIsHosting: %@", &v11, 0x20u);
  }

  return (v5 | v6) & 1;
}

- (int)getHALDiscoveryType
{
  if ([(RPCompanionLinkDevice *)self isDiscoveredOverInfraWifi])
  {
    return 1;
  }

  if ([(RPCompanionLinkDevice *)self isDiscoveredOverWifiP2P])
  {
    return 2;
  }

  if ([(RPCompanionLinkDevice *)self isDiscoveredOverBLE])
  {
    return 3;
  }

  return 0;
}

- (BOOL)hasWatchOS
{
  model = [(RPCompanionLinkDevice *)self model];
  v3 = [model hasPrefix:@"Watch"];

  return v3;
}

- (BOOL)hasIOS
{
  model = [(RPCompanionLinkDevice *)self model];
  if ([model hasPrefix:@"iPhone"])
  {
    v4 = 1;
  }

  else
  {
    model2 = [(RPCompanionLinkDevice *)self model];
    v4 = [model2 hasPrefix:@"iPad"];
  }

  return v4;
}

- (BOOL)isMeDevice
{
  LODWORD(v3) = [(RPCompanionLinkDevice *)self isOwner];
  if (v3)
  {
    return ([(RPCompanionLinkDevice *)self statusFlags]>> 7) & 1;
  }

  return v3;
}

- (BOOL)checkIfHubIsLookingForAHomeHubDeviceItIsHostingWithLocalDevice:(id)device
{
  deviceCopy = device;
  if ([(RPCompanionLinkDevice *)self isCompanionLinkDeviceAProxyHost])
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315138;
      v16 = "[RPCompanionLinkDevice(AssistantAdditions) checkIfHubIsLookingForAHomeHubDeviceItIsHostingWithLocalDevice:]";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Target Device has ProxyHost status flag. Return true if local device is HomePod/HHDevice and target device is Sidekick.", &v15, 0xCu);
    }

    isCompanionLinkDeviceAnAudioAccessory = [deviceCopy isCompanionLinkDeviceAnAudioAccessory];
    isCompanionLinkHomeHubDevice = [deviceCopy isCompanionLinkHomeHubDevice];
    isCompanionLinkHomeHubDevice2 = [(RPCompanionLinkDevice *)self isCompanionLinkHomeHubDevice];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v12 = @"NO";
      if (isCompanionLinkDeviceAnAudioAccessory)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v15 = 136315906;
      v16 = "[RPCompanionLinkDevice(AssistantAdditions) checkIfHubIsLookingForAHomeHubDeviceItIsHostingWithLocalDevice:]";
      if (isCompanionLinkHomeHubDevice)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v18 = v13;
      v17 = 2112;
      v19 = 2112;
      v20 = v14;
      if (isCompanionLinkHomeHubDevice2)
      {
        v12 = @"YES";
      }

      v21 = 2112;
      v22 = v12;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s isLocalDeviceAnAudioAccessory: %@, isLocalDeviceHomeHubDevice: %@, isTargetDeviceHomeHubDevice: %@", &v15, 0x2Au);
    }

    v10 = (isCompanionLinkDeviceAnAudioAccessory | isCompanionLinkHomeHubDevice) & isCompanionLinkHomeHubDevice2;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)checkIfHomeHubDeviceIsLookingForItsHubWithLocalDevice:(id)device
{
  deviceCopy = device;
  if ([(RPCompanionLinkDevice *)self hasAnyDiscoveryFlags])
  {
    v5 = 0;
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[RPCompanionLinkDevice(AssistantAdditions) checkIfHomeHubDeviceIsLookingForItsHubWithLocalDevice:]";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Device does not have any discovery status flags. Return true if local device is sidekick and target device is homehub. ", &v13, 0xCu);
    }

    isCompanionLinkHomeHubDevice = [deviceCopy isCompanionLinkHomeHubDevice];
    isCompanionLinkDeviceAnAudioAccessory = [(RPCompanionLinkDevice *)self isCompanionLinkDeviceAnAudioAccessory];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      v14 = "[RPCompanionLinkDevice(AssistantAdditions) checkIfHomeHubDeviceIsLookingForItsHubWithLocalDevice:]";
      if (isCompanionLinkHomeHubDevice)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = 136315650;
      v16 = v12;
      v15 = 2112;
      if (isCompanionLinkDeviceAnAudioAccessory)
      {
        v11 = @"YES";
      }

      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s isLocalDeviceHomeHubDevice: %@, isTargetDeviceAnAudioAccessory: %@.", &v13, 0x20u);
    }

    v5 = isCompanionLinkHomeHubDevice & isCompanionLinkDeviceAnAudioAccessory;
  }

  return v5;
}

- (BOOL)hasValidDiscoveryTypeForLocalDevice:(id)device
{
  deviceCopy = device;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v25 = "[RPCompanionLinkDevice(AssistantAdditions) hasValidDiscoveryTypeForLocalDevice:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  if ((+[AFFeatureFlags isForceBLEDiscoveryForCompanionLinkEnabled]& 1) != 0)
  {
    v6 = [(RPCompanionLinkDevice *)self willUseProxyCommunicationWithLocalDevice:deviceCopy];
    isDiscoveredOverInfraWifi = [(RPCompanionLinkDevice *)self isDiscoveredOverInfraWifi];
    v8 = +[AFFeatureFlags isAWDLFallbackForPersonalRequestsEnabled];
    if ([deviceCopy isCompanionLinkHomeHubDevice])
    {
      v9 = 0;
    }

    else
    {
      v9 = ![(RPCompanionLinkDevice *)self isCompanionLinkHomeHubDevice];
    }

    if ([(RPCompanionLinkDevice *)self hasIOS])
    {
      [(RPCompanionLinkDevice *)self operatingSystemVersion];
      if (v23)
      {
        [(RPCompanionLinkDevice *)self operatingSystemVersion];
        v12 = v22 > 17;
LABEL_16:
        v14 = [(RPCompanionLinkDevice *)self isDiscoveredOverWifiP2P]& v8 & v9 & v12;
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v17 = @"NO";
          if (v6)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          *buf = 136316418;
          v25 = "[RPCompanionLinkDevice(AssistantAdditions) hasValidDiscoveryTypeForLocalDevice:]";
          if (isDiscoveredOverInfraWifi)
          {
            v19 = @"YES";
          }

          else
          {
            v19 = @"NO";
          }

          v26 = 2112;
          v27 = v18;
          if (v14)
          {
            v20 = @"YES";
          }

          else
          {
            v20 = @"NO";
          }

          v28 = 2112;
          v29 = v19;
          if (v8)
          {
            v21 = @"YES";
          }

          else
          {
            v21 = @"NO";
          }

          v30 = 2112;
          v31 = v20;
          if (v12)
          {
            v17 = @"YES";
          }

          v32 = 2112;
          v33 = v21;
          v34 = 2112;
          v35 = v17;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s willUseProxyCommunicationWithLocalDevice: %@, isDeviceDiscoveredOverInfraWifi: %@, shouldAllowAWDLFallback: %@, isAWDLFallbackForPersonalRequestsEnabled: %@, meetMinIOSVersion: %@", buf, 0x3Eu);
        }

        v11 = v6 | isDiscoveredOverInfraWifi | v14;
        goto LABEL_18;
      }

      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v25 = "[RPCompanionLinkDevice(AssistantAdditions) hasValidDiscoveryTypeForLocalDevice:]";
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s operating system is missing, likely a secondary user. Proceed the request to handle error later.", buf, 0xCu);
      }
    }

    v12 = 1;
    goto LABEL_16;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v25 = "[RPCompanionLinkDevice(AssistantAdditions) hasValidDiscoveryTypeForLocalDevice:]";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s BLE discovery is disabled, discovery type is valid.", buf, 0xCu);
  }

  v11 = 1;
LABEL_18:

  return v11 & 1;
}

- (BOOL)isGuestDevice
{
  idsDeviceIdentifier = [(RPCompanionLinkDevice *)self idsDeviceIdentifier];
  v3 = [idsDeviceIdentifier length] == 0;

  return v3;
}

- (BOOL)isCompanionLinkDeviceAnAudioAccessory
{
  model = [(RPCompanionLinkDevice *)self model];
  v3 = [model hasPrefix:@"AudioAccessory"];

  return v3;
}

@end
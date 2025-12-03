@interface ADBluetoothManager
+ (id)sharedInstance;
- (id)_init;
- (id)deviceWithAddress:(id)address;
- (id)deviceWithRecordingInfo:(id)info;
- (void)prewarmDeviceWithIdentifier:(id)identifier;
@end

@implementation ADBluetoothManager

+ (id)sharedInstance
{
  if (qword_100590B00 != -1)
  {
    dispatch_once(&qword_100590B00, &stru_10051D4E8);
  }

  v3 = qword_100590AF8;

  return v3;
}

- (id)deviceWithAddress:(id)address
{
  addressCopy = address;
  v5 = [[NSUUID alloc] initWithUUIDString:addressCopy];
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADBluetoothManager deviceWithAddress:]";
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s This SPI should not be called with a CBUUID: %@", &v11, 0x16u);
    }

    v7 = [(ADBluetoothManager *)self deviceWithUID:v5];
  }

  else
  {
    v8 = addressCopy;
    if ([v8 length] >= 0x12)
    {
      v9 = [v8 substringToIndex:17];

      v8 = v9;
    }

    v7 = [(ADCoreBluetoothV2DeviceSource *)self->_cbDataSource deviceWithAddress:v8];
  }

  return v7;
}

- (id)deviceWithRecordingInfo:(id)info
{
  infoCopy = info;
  source = [infoCopy source];
  v6 = [source isEqualToString:SASStartSpeechAudioSourceBluetoothDoAPDeviceValue];

  if (v6)
  {
    deviceInfo = [infoCopy deviceInfo];
    remoteDeviceUID = [deviceInfo remoteDeviceUID];

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315394;
      v18 = "[ADBluetoothManager deviceWithRecordingInfo:]";
      v19 = 2112;
      v20 = remoteDeviceUID;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Recording DoAP Headset with Bluetooth UID: %@", &v17, 0x16u);
      if (remoteDeviceUID)
      {
        goto LABEL_4;
      }
    }

    else if (remoteDeviceUID)
    {
LABEL_4:
      v10 = [(ADBluetoothManager *)self deviceWithUID:remoteDeviceUID];
LABEL_9:
      v13 = v10;

      goto LABEL_12;
    }
  }

  else
  {
    headsetAddress = [infoCopy headsetAddress];

    if (headsetAddress)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v15 = v12;
        headsetAddress2 = [infoCopy headsetAddress];
        v17 = 136315394;
        v18 = "[ADBluetoothManager deviceWithRecordingInfo:]";
        v19 = 2112;
        v20 = headsetAddress2;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Recording Headset with Bluetooth Address: %@", &v17, 0x16u);
      }

      remoteDeviceUID = [infoCopy headsetAddress];
      v10 = [(ADBluetoothManager *)self deviceWithAddress:remoteDeviceUID];
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)prewarmDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = identifierCopy;
    v5 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
    if (v5)
    {
      [(ADBluetoothManager *)self deviceWithUID:v5];
    }

    else
    {
      [(ADBluetoothManager *)self deviceWithAddress:v7];
    }
    v6 = ;
    [v6 prewarm];

    identifierCopy = v7;
  }
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = ADBluetoothManager;
  v2 = [(ADBluetoothManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(ADMobileBluetoothDeviceDataSource);
    mbDataSource = v2->_mbDataSource;
    v2->_mbDataSource = v3;

    v5 = objc_alloc_init(ADCoreBluetoothV2DeviceSource);
    cbDataSource = v2->_cbDataSource;
    v2->_cbDataSource = v5;
  }

  return v2;
}

@end
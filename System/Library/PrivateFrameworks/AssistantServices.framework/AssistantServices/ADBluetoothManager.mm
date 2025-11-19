@interface ADBluetoothManager
+ (id)sharedInstance;
- (id)_init;
- (id)deviceWithAddress:(id)a3;
- (id)deviceWithRecordingInfo:(id)a3;
- (void)prewarmDeviceWithIdentifier:(id)a3;
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

- (id)deviceWithAddress:(id)a3
{
  v4 = a3;
  v5 = [[NSUUID alloc] initWithUUIDString:v4];
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
    v8 = v4;
    if ([v8 length] >= 0x12)
    {
      v9 = [v8 substringToIndex:17];

      v8 = v9;
    }

    v7 = [(ADCoreBluetoothV2DeviceSource *)self->_cbDataSource deviceWithAddress:v8];
  }

  return v7;
}

- (id)deviceWithRecordingInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 source];
  v6 = [v5 isEqualToString:SASStartSpeechAudioSourceBluetoothDoAPDeviceValue];

  if (v6)
  {
    v7 = [v4 deviceInfo];
    v8 = [v7 remoteDeviceUID];

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315394;
      v18 = "[ADBluetoothManager deviceWithRecordingInfo:]";
      v19 = 2112;
      v20 = v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Recording DoAP Headset with Bluetooth UID: %@", &v17, 0x16u);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else if (v8)
    {
LABEL_4:
      v10 = [(ADBluetoothManager *)self deviceWithUID:v8];
LABEL_9:
      v13 = v10;

      goto LABEL_12;
    }
  }

  else
  {
    v11 = [v4 headsetAddress];

    if (v11)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v15 = v12;
        v16 = [v4 headsetAddress];
        v17 = 136315394;
        v18 = "[ADBluetoothManager deviceWithRecordingInfo:]";
        v19 = 2112;
        v20 = v16;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Recording Headset with Bluetooth Address: %@", &v17, 0x16u);
      }

      v8 = [v4 headsetAddress];
      v10 = [(ADBluetoothManager *)self deviceWithAddress:v8];
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)prewarmDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [[NSUUID alloc] initWithUUIDString:v4];
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

    v4 = v7;
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
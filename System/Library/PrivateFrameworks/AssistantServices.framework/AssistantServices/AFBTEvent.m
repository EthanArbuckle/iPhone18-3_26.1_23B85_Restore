@interface AFBTEvent
- (AFBTEvent)initWithMetadata:(id)a3;
@end

@implementation AFBTEvent

- (AFBTEvent)initWithMetadata:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = AFBTEvent;
  v5 = [(AFBTEvent *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kAFBTEventDeviceTypeKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 objectForKeyedSubscript:@"kAFBTEventAddressKey"];
    address = v5->_address;
    v5->_address = v8;

    v10 = [v4 objectForKeyedSubscript:@"kAFBTEventNameKey"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 objectForKeyedSubscript:@"kAFBTEventProductIdKey"];
    productID = v5->_productID;
    v5->_productID = v12;

    v14 = [v4 objectForKeyedSubscript:@"kAFBTEventProductIdKey"];
    v5->_hasProductID = v14 != 0;

    v15 = [v4 objectForKeyedSubscript:@"kAFBTEventStartingKey"];
    v5->_starting = [v15 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:@"kAFBTEventStartingKey"];
    v5->_hasStarting = v16 != 0;

    v5->_deviceType = v7;
    v17 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneCaseKey"];
    batteryLevelHeadphoneCase = v5->_batteryLevelHeadphoneCase;
    v5->_batteryLevelHeadphoneCase = v17;

    v19 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneRightKey"];
    batteryLevelHeadphoneRight = v5->_batteryLevelHeadphoneRight;
    v5->_batteryLevelHeadphoneRight = v19;

    v21 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneLeftKey"];
    batteryLevelHeadphoneLeft = v5->_batteryLevelHeadphoneLeft;
    v5->_batteryLevelHeadphoneLeft = v21;

    v23 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelAppleAudioDeviceKey"];
    v5->_appleAudioDevice = [v23 BOOLValue];

    v24 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelUserWearingKey"];
    v5->_userWearing = [v24 BOOLValue];

    v25 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneRightKey"];
    v5->_hasBatteryLevelHeadphoneRight = v25 != 0;

    v26 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneLeftKey"];
    v5->_hasBatteryLevelHeadphoneLeft = v26 != 0;

    v27 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelAppleAudioDeviceKey"];
    v5->_hasAppleAudioDevice = v27 != 0;

    v28 = [v4 objectForKeyedSubscript:@"kAFBTEventBatteryLevelUserWearingKey"];
    v5->_hasUserWearing = v28 != 0;
  }

  return v5;
}

@end
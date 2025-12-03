@interface AFBTEvent
- (AFBTEvent)initWithMetadata:(id)metadata;
@end

@implementation AFBTEvent

- (AFBTEvent)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v30.receiver = self;
  v30.super_class = AFBTEvent;
  v5 = [(AFBTEvent *)&v30 init];
  if (v5)
  {
    v6 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventDeviceTypeKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v8 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventAddressKey"];
    address = v5->_address;
    v5->_address = v8;

    v10 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventNameKey"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventProductIdKey"];
    productID = v5->_productID;
    v5->_productID = v12;

    v14 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventProductIdKey"];
    v5->_hasProductID = v14 != 0;

    v15 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventStartingKey"];
    v5->_starting = [v15 BOOLValue];

    v16 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventStartingKey"];
    v5->_hasStarting = v16 != 0;

    v5->_deviceType = integerValue;
    v17 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneCaseKey"];
    batteryLevelHeadphoneCase = v5->_batteryLevelHeadphoneCase;
    v5->_batteryLevelHeadphoneCase = v17;

    v19 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneRightKey"];
    batteryLevelHeadphoneRight = v5->_batteryLevelHeadphoneRight;
    v5->_batteryLevelHeadphoneRight = v19;

    v21 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneLeftKey"];
    batteryLevelHeadphoneLeft = v5->_batteryLevelHeadphoneLeft;
    v5->_batteryLevelHeadphoneLeft = v21;

    v23 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelAppleAudioDeviceKey"];
    v5->_appleAudioDevice = [v23 BOOLValue];

    v24 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelUserWearingKey"];
    v5->_userWearing = [v24 BOOLValue];

    v25 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneRightKey"];
    v5->_hasBatteryLevelHeadphoneRight = v25 != 0;

    v26 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelHeadphoneLeftKey"];
    v5->_hasBatteryLevelHeadphoneLeft = v26 != 0;

    v27 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelAppleAudioDeviceKey"];
    v5->_hasAppleAudioDevice = v27 != 0;

    v28 = [metadataCopy objectForKeyedSubscript:@"kAFBTEventBatteryLevelUserWearingKey"];
    v5->_hasUserWearing = v28 != 0;
  }

  return v5;
}

@end
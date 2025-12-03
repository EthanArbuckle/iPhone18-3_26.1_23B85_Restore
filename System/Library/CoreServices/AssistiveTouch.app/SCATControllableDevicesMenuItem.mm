@interface SCATControllableDevicesMenuItem
- (SCATControllableDevicesMenuItem)initWithIdentifier:(id)identifier delegate:(id)delegate searchResult:(id)result;
- (id)_imageNameForDeviceType:(id)type;
@end

@implementation SCATControllableDevicesMenuItem

- (SCATControllableDevicesMenuItem)initWithIdentifier:(id)identifier delegate:(id)delegate searchResult:(id)result
{
  resultCopy = result;
  delegateCopy = delegate;
  identifierCopy = identifier;
  name = [resultCopy name];
  deviceType = [resultCopy deviceType];
  v13 = [(SCATControllableDevicesMenuItem *)self _imageNameForDeviceType:deviceType];
  v17.receiver = self;
  v17.super_class = SCATControllableDevicesMenuItem;
  v16 = 1;
  v14 = [(SCATModernMenuItem *)&v17 initWithIdentifier:identifierCopy delegate:delegateCopy title:name imageName:v13 activateBehavior:2 allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v16 activateHandler:0 updateHandler:0];

  if (v14)
  {
    [(SCATControllableDevicesMenuItem *)v14 setSearchResult:resultCopy];
  }

  return v14;
}

- (id)_imageNameForDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:AXSSDeviceTypeMac])
  {
    v4 = @"SCATIcon_interdevice_mac";
  }

  else if ([typeCopy isEqualToString:AXSSDeviceTypePhone])
  {
    v4 = @"SCATIcon_interdevice_iphone";
  }

  else if ([typeCopy isEqualToString:AXSSDeviceTypePad])
  {
    v4 = @"SCATIcon_interdevice_ipad";
  }

  else if ([typeCopy isEqualToString:AXSSDeviceTypeAppleTV])
  {
    v4 = @"SCATIcon_interdevice_appletv";
  }

  else
  {
    v4 = @"SCATIcon_gestures_favorites";
  }

  return v4;
}

@end
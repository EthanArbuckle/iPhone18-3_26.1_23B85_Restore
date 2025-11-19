@interface SCATControllableDevicesMenuItem
- (SCATControllableDevicesMenuItem)initWithIdentifier:(id)a3 delegate:(id)a4 searchResult:(id)a5;
- (id)_imageNameForDeviceType:(id)a3;
@end

@implementation SCATControllableDevicesMenuItem

- (SCATControllableDevicesMenuItem)initWithIdentifier:(id)a3 delegate:(id)a4 searchResult:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 name];
  v12 = [v8 deviceType];
  v13 = [(SCATControllableDevicesMenuItem *)self _imageNameForDeviceType:v12];
  v17.receiver = self;
  v17.super_class = SCATControllableDevicesMenuItem;
  v16 = 1;
  v14 = [(SCATModernMenuItem *)&v17 initWithIdentifier:v10 delegate:v9 title:v11 imageName:v13 activateBehavior:2 allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v16 activateHandler:0 updateHandler:0];

  if (v14)
  {
    [(SCATControllableDevicesMenuItem *)v14 setSearchResult:v8];
  }

  return v14;
}

- (id)_imageNameForDeviceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:AXSSDeviceTypeMac])
  {
    v4 = @"SCATIcon_interdevice_mac";
  }

  else if ([v3 isEqualToString:AXSSDeviceTypePhone])
  {
    v4 = @"SCATIcon_interdevice_iphone";
  }

  else if ([v3 isEqualToString:AXSSDeviceTypePad])
  {
    v4 = @"SCATIcon_interdevice_ipad";
  }

  else if ([v3 isEqualToString:AXSSDeviceTypeAppleTV])
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
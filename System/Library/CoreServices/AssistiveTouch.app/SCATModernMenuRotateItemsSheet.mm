@interface SCATModernMenuRotateItemsSheet
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuRotateItemsSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  currentOrientation = [v3 currentOrientation];

  v5 = +[NSMutableArray array];
  if ((currentOrientation == 1 || (sub_100042B24(@"ORIENTATION-PORTRAIT"), v6 = objc_claimAutoreleasedReturnValue(), +[NSString sc_deviceIconNameForIdentifier:](NSString, "sc_deviceIconNameForIdentifier:", @"device_rotatePortrait"), v7 = objc_claimAutoreleasedReturnValue(), +[SCATModernMenuItem itemWithIdentifier:delegate:title:imageName:activateBehavior:](SCATModernMenuItem, "itemWithIdentifier:delegate:title:imageName:activateBehavior:", @"device_rotatePortrait", self, v6, v7, 0), v8 = objc_claimAutoreleasedReturnValue(), [v5 addObject:v8], v8, v7, v6, currentOrientation != 3)) && (sub_100042B24(@"ORIENTATION-LANDSCAPE-LEFT"), v9 = objc_claimAutoreleasedReturnValue(), +[NSString sc_deviceIconNameForIdentifier:](NSString, "sc_deviceIconNameForIdentifier:", @"device_rotateLeft"), v10 = objc_claimAutoreleasedReturnValue(), +[SCATModernMenuItem itemWithIdentifier:delegate:title:imageName:activateBehavior:](SCATModernMenuItem, "itemWithIdentifier:delegate:title:imageName:activateBehavior:", @"device_rotateLeft", self, v9, v10, 0), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "addObject:", v11), v11, v10, v9, currentOrientation == 4) || (sub_100042B24(@"ORIENTATION-LANDSCAPE-RIGHT"), v12 = objc_claimAutoreleasedReturnValue(), +[NSString sc_deviceIconNameForIdentifier:](NSString, "sc_deviceIconNameForIdentifier:", @"device_rotateRight"), v13 = objc_claimAutoreleasedReturnValue(), +[SCATModernMenuItem itemWithIdentifier:delegate:title:imageName:activateBehavior:](SCATModernMenuItem, "itemWithIdentifier:delegate:title:imageName:activateBehavior:", @"device_rotateRight", self, v12, v13, 0), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "addObject:", v14), v14, v13, v12, currentOrientation != 2))
  {
    v15 = sub_100042B24(@"ORIENTATION-UPSIDE-DOWN");
    v16 = [NSString sc_deviceIconNameForIdentifier:@"device_rotateUpsideDown"];
    v17 = [SCATModernMenuItem itemWithIdentifier:@"device_rotateUpsideDown" delegate:self title:v15 imageName:v16 activateBehavior:0];
    [v5 addObject:v17];
  }

  return v5;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"device_rotateLeft"])
  {
    v6 = +[AXPISystemActionHelper sharedInstance];
    [v6 rotateLeft];
  }

  else if ([identifier isEqualToString:@"device_rotateRight"])
  {
    v6 = +[AXPISystemActionHelper sharedInstance];
    [v6 rotateRight];
  }

  else if ([identifier isEqualToString:@"device_rotatePortrait"])
  {
    v6 = +[AXPISystemActionHelper sharedInstance];
    [v6 rotatePortrait];
  }

  else
  {
    if (![identifier isEqualToString:@"device_rotateUpsideDown"])
    {
      v7.receiver = self;
      v7.super_class = SCATModernMenuRotateItemsSheet;
      [(SCATModernMenuSheet *)&v7 menuItemWasActivated:activatedCopy];
      goto LABEL_10;
    }

    v6 = +[AXPISystemActionHelper sharedInstance];
    [v6 rotateUpsideDown];
  }

LABEL_10:
}

@end
@interface MapsMenuBuilder
+ (id)addMenu;
+ (id)applicationMenu;
+ (id)currentLocationSubMenu;
+ (id)debugMenu;
+ (id)disabledAddMenu;
+ (id)dropPinKeyCommand;
+ (id)editMenu;
+ (id)fileMenuEnd;
+ (id)fileMenuStart;
+ (id)filePrintKeyCommand;
+ (id)findSubMenu;
+ (id)mapModeSubMenu;
+ (id)mapModeSubMenuCommands;
+ (id)performanceTestsMenu;
+ (id)preferencesMenuCommand;
+ (id)sendToDeviceAndShareMenuWithSendToDeviceEnabled:(BOOL)a3;
+ (id)undoRedoMenu;
+ (id)userProfileMenu;
+ (id)visibleAttributesSubMenu;
+ (id)zoomSubMenu;
+ (id)zoomSubMenuCommands;
+ (void)buildMenuWithBuilder:(id)a3 sendToDeviceEnabled:(BOOL)a4;
@end

@implementation MapsMenuBuilder

+ (id)sendToDeviceAndShareMenuWithSendToDeviceEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"MENU_SHARING_DISABLED_KEY"];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[Menu] Share" value:@"localized string not found" table:0];
    v9 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v6 = [UICommand commandWithTitle:v8 image:v9 action:"_share:" propertyList:UICommandTagShare];
  }

  v10 = +[NSMutableArray array];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[Menu] Send to Device" value:@"localized string not found" table:0];

  if (v3 && [v10 count])
  {
    v13 = [v10 copy];
    v14 = [UIMenu menuWithTitle:v12 image:0 identifier:0 options:0 children:v13];
  }

  else
  {
    v14 = [UIAction actionWithTitle:v12 image:0 identifier:0 handler:&stru_10162D818];
    [v14 setAttributes:1];
  }

  v20 = v14;
  v15 = [NSArray arrayWithObjects:&v20 count:1];
  if (v6)
  {
    v19[0] = v6;
    v19[1] = v14;
    v16 = [NSArray arrayWithObjects:v19 count:2];

    v15 = v16;
  }

  v17 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:@"SendToDeviceAndShareSubMenuIdentifier" options:1 children:v15];

  return v17;
}

+ (id)disabledAddMenu
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Add New Place To" value:@"localized string not found" table:0];
  v4 = [UIAction actionWithTitle:v3 image:0 identifier:0 handler:&stru_10162D7D8];

  [v4 setAttributes:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Menu] Create New Guide" value:@"localized string not found" table:0];

  v7 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:&stru_10162D7F8];
  [v7 setAttributes:1];
  v11[0] = v4;
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [UIMenu menuWithTitle:&stru_1016631F0 children:v8];

  return v9;
}

+ (id)addMenu
{
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"[Menu] Pinned";
  }

  else
  {
    v5 = @"[Menu] Favorites";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  v34 = v6;
  v33 = [UICommand commandWithTitle:v6 image:0 action:"presentAddToFavorites" propertyList:0];
  v7 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = +[CollectionManager sharedManager];
  v9 = [v8 currentCollectionsForToolbarMenu];

  v10 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [v14 title];

        if (v15)
        {
          v16 = [v14 title];
          v17 = [v14 identifier];
          v18 = [UICommand commandWithTitle:v16 image:0 action:"presentAddToCollection:" propertyList:v17];

          [v7 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v11);
  }

  v19 = [v7 copy];
  v32 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"[Menu] Add New Place To" value:@"localized string not found" table:0];
  v41[0] = v33;
  v41[1] = v32;
  v22 = [NSArray arrayWithObjects:v41 count:2];
  v23 = [UIMenu menuWithTitle:v21 children:v22];

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"[Menu] Create New Guide" value:@"localized string not found" table:0];

  v26 = [UICommand commandWithTitle:v25 image:0 action:"presentAddNewCollection" propertyList:0];
  v40 = v26;
  v27 = [NSArray arrayWithObjects:&v40 count:1];
  v28 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v27];

  v39[0] = v23;
  v39[1] = v28;
  v29 = [NSArray arrayWithObjects:v39 count:2];
  v30 = [UIMenu menuWithTitle:&stru_1016631F0 children:v29];

  return v30;
}

+ (id)debugMenu
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Debug Menu…" value:@"localized string not found" table:0];
  v4 = [UIKeyCommand commandWithTitle:v3 image:0 action:"presentMapsDebugControllerIfEnabled" input:@" modifierFlags:" propertyList:1572864, 0];

  v5 = [UICommand commandWithTitle:@"Disable Menu Sharing" image:0 action:"toggleDisableMenuSharing" propertyList:0];
  v6 = +[NSUserDefaults standardUserDefaults];
  [v5 setState:{objc_msgSend(v6, "BOOLForKey:", @"MENU_SHARING_DISABLED_KEY"}];

  v7 = [UICommand commandWithTitle:@"Enable Sidebar Selection" image:0 action:"toggleSidebarSelection" propertyList:0];
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 objectForKey:@"SIDEBAR_SELECTION_ENABLED_KEY"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 1;
  }

  [v7 setState:v10];
  v11 = [UICommand commandWithTitle:@"Scrolling Opens Placecard" image:0 action:"toggleScrollingOpensPlacecard" propertyList:0];
  v12 = +[NSUserDefaults standardUserDefaults];
  [v11 setState:{objc_msgSend(v12, "BOOLForKey:", @"SCROLLING_OPENS_PLACECARD_KEY_ROTATED"}];

  v27[0] = v5;
  v27[1] = v7;
  v27[2] = v11;
  v13 = [NSArray arrayWithObjects:v27 count:3];
  v14 = [UIMenu menuWithTitle:@"Maps Catalyst Defaults" image:0 identifier:0 options:0 children:v13];

  v26 = v14;
  v15 = [NSArray arrayWithObjects:&v26 count:1];
  v16 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v15];

  v17 = +[UIScreen mainScreen];
  v18 = sub_10000FA08(v17);

  if (v18 == 5)
  {
    v25[0] = v4;
    v25[1] = v16;
    v19 = [a1 performanceTestsMenu];
    v25[2] = v19;
    v20 = [NSArray arrayWithObjects:v25 count:3];
    v21 = [UIMenu menuWithTitle:@"Debug" children:v20];
  }

  else
  {
    v24[0] = v4;
    v24[1] = v16;
    v19 = [NSArray arrayWithObjects:v24 count:2];
    v21 = [UIMenu menuWithTitle:@"Debug" children:v19];
  }

  return v21;
}

+ (id)performanceTestsMenu
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.Maps"];
  v3 = [v2 pathForResource:@"testDefinitions" ofType:@"plist"];

  v16 = v3;
  v4 = [[NSMutableArray alloc] initWithContentsOfFile:v3];
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"testName"];
        if ([v12 length])
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1008C5AB0;
          v17[3] = &unk_10163C178;
          v18 = v12;
          v19 = v11;
          v13 = [UIAction actionWithTitle:v18 image:0 identifier:0 handler:v17];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = [UIMenu menuWithTitle:@"Performance Tests" children:v5];

  return v14;
}

+ (id)visibleAttributesSubMenu
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Show Scale" value:@"localized string not found" table:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Menu] Hide Scale" value:@"localized string not found" table:0];
  v6 = [UICommand _maps_commandWithEnableFeatureTitle:v3 disableFeatureTitle:v5 imageName:@"base.unit" action:"toggleMapScale"];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Menu] Show Traffic" value:@"localized string not found" table:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"[Menu] Hide Traffic" value:@"localized string not found" table:0];
  v11 = [UICommand _maps_commandWithEnableFeatureTitle:v8 disableFeatureTitle:v10 imageName:@"car.2" action:"toggleTraffic"];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Menu] Show Labels" value:@"localized string not found" table:0];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[Menu] Hide Labels" value:@"localized string not found" table:0];
  v16 = [UICommand _maps_commandWithEnableFeatureTitle:v13 disableFeatureTitle:v15 imageName:@"textformat.characters" action:"toggleLabels"];

  v20[0] = v6;
  v20[1] = v11;
  v20[2] = v16;
  v17 = [NSArray arrayWithObjects:v20 count:3];
  v18 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:@"VisibleAttributesSubMenuIdentifier" options:1 children:v17];

  return v18;
}

+ (id)currentLocationSubMenu
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Go to Current Location" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"location"];
  v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"centerMapToUserLocation" input:@"l" modifierFlags:0x100000 propertyList:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[Menu] Show Directions" value:@"localized string not found" table:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Menu] Hide Directons" value:@"localized string not found" table:0];
  v10 = [UIKeyCommand _maps_commandWithEnableFeatureTitle:v7 disableFeatureTitle:v9 imageName:@"arrow.trianglehead.turn.up.right.diamond" action:"toggleDirections" input:@"r" modifierFlags:0x100000];

  v14[0] = v5;
  v14[1] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:2];
  v12 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:@"CurrentLocationSubMenuIdentifier" options:1 children:v11];

  return v12;
}

+ (id)zoomSubMenu
{
  v2 = [a1 zoomSubMenuCommands];
  v3 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:@"ZoomSubMenuIdentifier" options:1 children:v2];

  return v3;
}

+ (id)zoomSubMenuCommands
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Default Zoom" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"arrow.up.left.and.down.right.magnifyingglass"];
  v29 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"defaultZoom" input:@"0" modifierFlags:0x100000 propertyList:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Menu] Zoom In" value:@"localized string not found" table:0];
  v7 = [UIImage systemImageNamed:@"plus.magnifyingglass"];
  v28 = [UIKeyCommand commandWithTitle:v6 image:v7 action:"zoomIn" input:@"+" modifierFlags:0x100000 propertyList:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Menu] Zoom Out" value:@"localized string not found" table:0];
  v10 = [UIImage systemImageNamed:@"minus.magnifyingglass"];
  v11 = [UIKeyCommand commandWithTitle:v9 image:v10 action:"zoomOut" input:@"-" modifierFlags:0x100000 propertyList:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Menu] Snap to North" value:@"localized string not found" table:0];
  v14 = [UIImage systemImageNamed:@"location.north.line"];
  v15 = [UIKeyCommand commandWithTitle:v13 image:v14 action:"snapToNorth" input:UIKeyInputUpArrow modifierFlags:1179648 propertyList:0];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"[Menu] Show 3D Map" value:@"localized string not found" table:0];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"[Menu] Hide 3D Map" value:@"localized string not found" table:0];
  v20 = [UIKeyCommand _maps_commandWithEnableFeatureTitle:v17 disableFeatureTitle:v19 imageName:@"view.3d" action:"select3dMode" input:@"d" modifierFlags:0x100000];

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"[Menu] Show Look Around" value:@"localized string not found" table:0];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"[Menu] Hide Look Around" value:@"localized string not found" table:0];
  v25 = [UIKeyCommand _maps_commandWithEnableFeatureTitle:v22 disableFeatureTitle:v24 imageName:@"binoculars" action:"selectLookAroundMode" input:@"k" modifierFlags:0x100000];

  v30[0] = v29;
  v30[1] = v28;
  v30[2] = v11;
  v30[3] = v15;
  v30[4] = v20;
  v30[5] = v25;
  v26 = [NSArray arrayWithObjects:v30 count:6];

  return v26;
}

+ (id)mapModeSubMenu
{
  v2 = [a1 mapModeSubMenuCommands];
  v3 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:@"MapModeSubMenuIdentifier" options:1 children:v2];

  return v3;
}

+ (id)mapModeSubMenuCommands
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Explore Map" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"map"];
  v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"switchMapMode:" input:@"1" modifierFlags:0x100000 propertyList:&off_1016E76A0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Switch to Explore" value:@"localized string not found" table:0];
  [v5 setDiscoverabilityTitle:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Menu] Driving" value:@"localized string not found" table:0];
  v10 = [UIImage systemImageNamed:@"car"];
  v11 = [UIKeyCommand commandWithTitle:v9 image:v10 action:"switchMapMode:" input:@"2" modifierFlags:0x100000 propertyList:&off_1016E76D0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Switch to Driving" value:@"localized string not found" table:0];
  [v11 setDiscoverabilityTitle:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[Menu] Transit" value:@"localized string not found" table:0];
  v16 = [UIImage systemImageNamed:@"tram"];
  v17 = [UIKeyCommand commandWithTitle:v15 image:v16 action:"switchMapMode:" input:@"3" modifierFlags:0x100000 propertyList:&off_1016E76E8];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Switch to Transit" value:@"localized string not found" table:0];
  [v17 setDiscoverabilityTitle:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"[Menu] Satellite" value:@"localized string not found" table:0];
  v22 = [UIImage systemImageNamed:@"globe.americas"];
  v23 = [UIKeyCommand commandWithTitle:v21 image:v22 action:"switchMapMode:" input:@"4" modifierFlags:0x100000 propertyList:&off_1016E76B8];

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"Switch to Satellite" value:@"localized string not found" table:0];
  [v23 setDiscoverabilityTitle:v25];

  v28[0] = v5;
  v28[1] = v11;
  v28[2] = v17;
  v28[3] = v23;
  v26 = [NSArray arrayWithObjects:v28 count:4];

  return v26;
}

+ (id)findSubMenu
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Find" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"magnifyingglass"];
  v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"find:" input:@"f" modifierFlags:0x100000 propertyList:0];

  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:UIMenuFind options:1 children:v6];

  return v7;
}

+ (id)undoRedoMenu
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Undo" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"arrow.uturn.backward"];
  v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"undo:" input:@"z" modifierFlags:0x100000 propertyList:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[Menu] Redo" value:@"localized string not found" table:0];
  v8 = [UIImage systemImageNamed:@"arrow.uturn.forward"];
  v9 = [UIKeyCommand commandWithTitle:v7 image:v8 action:"redo:" input:@"z" modifierFlags:1179648 propertyList:0];

  v13[0] = v5;
  v13[1] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:2];
  v11 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v10];

  return v11;
}

+ (id)editMenu
{
  v2 = [a1 dropPinKeyCommand];
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"[Menu] Remove Marked Location";
  }

  else
  {
    v6 = @"[Menu] Remove Pin";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

  v8 = [UIImage systemImageNamed:@"mappin.slash"];
  v9 = [UICommand commandWithTitle:v7 image:v8 action:"removeDroppedPin" propertyList:0];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"[Menu] Delete Stop" value:@"localized string not found" table:0];
  v12 = [UIImage systemImageNamed:@"trash"];
  v13 = [UICommand commandWithTitle:v11 image:v12 action:"deleteStop" propertyList:0];

  v17[0] = v2;
  v17[1] = v9;
  v17[2] = v13;
  v14 = [NSArray arrayWithObjects:v17 count:3];
  v15 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v14];

  return v15;
}

+ (id)dropPinKeyCommand
{
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"[Menu] Mark Location";
  }

  else
  {
    v5 = @"[Menu] Drop Pin";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  v7 = [UIImage systemImageNamed:@"mappin"];
  v8 = [UIKeyCommand commandWithTitle:v6 image:v7 action:"createCustomSearchResultForDroppedPinAtCenterPoint" input:@"d" modifierFlags:1179648 propertyList:0];

  return v8;
}

+ (id)fileMenuEnd
{
  v2 = [a1 filePrintKeyCommand];
  v6 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v3];

  return v4;
}

+ (id)filePrintKeyCommand
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Print…" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"printer"];
  v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"printCurrentState" input:@"P" modifierFlags:0x100000 propertyList:0];

  return v5;
}

+ (id)fileMenuStart
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] New Window" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"macwindow.badge.plus"];
  v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"requestNewWindow:" input:@"N" modifierFlags:0x100000 propertyList:0];

  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v6];

  return v7;
}

+ (id)applicationMenu
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Report an Issue…" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"exclamationmark.bubble"];
  v5 = [UICommand commandWithTitle:v3 image:v4 action:"presentRAP" propertyList:0];

  LODWORD(v2) = GEOConfigGetBOOL();
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v2)
  {
    v8 = @"[Menu] Report Something Missing";
  }

  else
  {
    v8 = @"[Menu] Add to Maps…";
  }

  v9 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];

  v10 = [UIImage _systemImageNamed:@"pin.point.of.interest.badge.plus"];
  v11 = [UICommand commandWithTitle:v9 image:v10 action:"presentAddAMissingPlace" propertyList:0];

  v12 = +[NSArray array];
  if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0)
  {
    v24[0] = v5;
    v24[1] = v11;
    v13 = [NSArray arrayWithObjects:v24 count:2];
    v14 = [v12 arrayByAddingObjectsFromArray:v13];

    v12 = v14;
  }

  v15 = +[GEOPlatform sharedPlatform];
  v16 = [v15 isInternalInstall];

  if (v16)
  {
    v17 = [UIImage systemImageNamed:@"ant"];
    v18 = [UICommand commandWithTitle:@"File a Radar…" image:v17 action:"presentRadar" propertyList:0];

    v19 = [v12 arrayByAddingObject:v18];

    v20 = [UIImage _systemImageNamed:@"apple.diagnostics"];
    v21 = [UICommand commandWithTitle:@"Collect Radar attachments…" image:v20 action:"collectRadarAttachments" propertyList:0];

    v12 = [v19 arrayByAddingObject:v21];
  }

  if ([v12 count])
  {
    v22 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v12];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)userProfileMenu
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Open Profile…" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"person.crop.circle"];
  v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"openUserProfile" input:@"a" modifierFlags:1572864 propertyList:0];

  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v6];

  return v7;
}

+ (id)preferencesMenuCommand
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Menu] Settings…" value:@"localized string not found" table:0];
  v4 = [UIImage systemImageNamed:@"gear"];
  v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"presentPreferences" input:@" modifierFlags:" propertyList:0x100000, 0];

  return v5;
}

+ (void)buildMenuWithBuilder:(id)a3 sendToDeviceEnabled:(BOOL)a4
{
  v4 = a4;
  v24 = a3;
  v5 = +[UIScreen mainScreen];
  v6 = sub_10000FA08(v5);

  if (v6 == 5)
  {
    [v24 replaceChildrenOfMenuForIdentifier:UIMenuPreferences fromChildrenBlock:&stru_10162D7B8];
  }

  v7 = +[MapsMenuBuilder applicationMenu];
  v8 = [v7 children];
  v9 = [v8 count];

  if (v9)
  {
    [v24 insertSiblingMenu:v7 afterMenuForIdentifier:UIMenuPreferences];
  }

  v10 = +[MapsMenuBuilder userProfileMenu];
  [v24 insertSiblingMenu:v10 afterMenuForIdentifier:UIMenuPreferences];

  [v24 removeMenuForIdentifier:UIMenuNewItem];
  [v24 removeMenuForIdentifier:UIMenuOpenRecent];
  [v24 removeMenuForIdentifier:UIMenuPrint];
  v11 = +[MapsMenuBuilder fileMenuStart];
  [v24 insertChildMenu:v11 atStartOfMenuForIdentifier:UIMenuFile];

  v12 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:v4];
  [v24 insertSiblingMenu:v12 afterMenuForIdentifier:UIMenuClose];

  v13 = +[MapsMenuBuilder fileMenuEnd];
  [v24 insertSiblingMenu:v13 afterMenuForIdentifier:@"SendToDeviceAndShareSubMenuIdentifier"];

  v14 = +[MapsMenuBuilder editMenu];
  [v24 insertSiblingMenu:v14 afterMenuForIdentifier:UIMenuStandardEdit];

  v15 = +[MapsMenuBuilder findSubMenu];
  [v24 replaceMenuForIdentifier:UIMenuFind withMenu:v15];

  [v24 removeMenuForIdentifier:UIMenuSubstitutions];
  [v24 removeMenuForIdentifier:UIMenuTransformations];
  [v24 removeMenuForIdentifier:UIMenuUndoRedo];
  v16 = +[MapsMenuBuilder undoRedoMenu];
  [v24 insertChildMenu:v16 atStartOfMenuForIdentifier:UIMenuEdit];

  [v24 removeMenuForIdentifier:UIMenuFormat];
  [v24 removeMenuForIdentifier:UIMenuToolbar];
  [v24 removeMenuForIdentifier:UIMenuTextSize];
  v17 = +[MapsMenuBuilder mapModeSubMenu];
  [v24 insertChildMenu:v17 atStartOfMenuForIdentifier:UIMenuView];

  v18 = +[MapsMenuBuilder visibleAttributesSubMenu];
  [v24 insertSiblingMenu:v18 afterMenuForIdentifier:@"MapModeSubMenuIdentifier"];

  v19 = +[MapsMenuBuilder zoomSubMenu];
  [v24 insertSiblingMenu:v19 afterMenuForIdentifier:@"VisibleAttributesSubMenuIdentifier"];

  v20 = +[MapsMenuBuilder currentLocationSubMenu];
  [v24 insertSiblingMenu:v20 afterMenuForIdentifier:@"ZoomSubMenuIdentifier"];

  v21 = +[UIScreen mainScreen];
  v22 = sub_10000FA08(v21);

  if (v22 == 1)
  {
    [v24 removeMenuForIdentifier:UIMenuSidebar];
  }

  if (sub_10078A958())
  {
    v23 = +[MapsMenuBuilder debugMenu];
    [v24 insertSiblingMenu:v23 afterMenuForIdentifier:UIMenuHelp];
  }
}

@end
@interface SCATModernMenuItemSettingsFactory
+ (id)_stringForGroupEnabled:(BOOL)enabled;
+ (id)_stringForSoundEnabled:(BOOL)enabled;
+ (id)_stringForSpeechEnabled:(BOOL)enabled;
+ (id)itemDetailsForItem:(id)item menu:(id)menu;
+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate;
+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate;
+ (id)updateBlockForIdentifier:(id)identifier;
@end

@implementation SCATModernMenuItemSettingsFactory

+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate
{
  itemCopy = item;
  menuCopy = menu;
  delegateCopy = delegate;
  v11 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [self itemDetailsForItem:itemCopy menu:{menuCopy, 0}];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [self menuItemWithItemDictionary:*(*(&v19 + 1) + 8 * i) menu:menuCopy delegate:delegateCopy];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)itemDetailsForItem:(id)item menu:(id)menu
{
  itemCopy = item;
  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemSettingsSpeedUpDown])
  {
    v28[0] = @"settings_decreaseScanSpeed";
    v27[0] = @"identifier";
    v27[1] = @"title";
    v6 = sub_100042B24(@"Settings-Slow-Down");
    v27[2] = @"activateBehavior";
    v28[1] = v6;
    v28[2] = &off_1001E5250;
    v7 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
    v29[0] = v7;
    v26[0] = @"settings_increaseScanSpeed";
    v25[0] = @"identifier";
    v25[1] = @"title";
    v8 = sub_100042B24(@"Settings-Speed-Up");
    v25[2] = @"activateBehavior";
    v26[1] = v8;
    v26[2] = &off_1001E5250;
    v9 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    v29[1] = v9;
    v10 = [NSArray arrayWithObjects:v29 count:2];

LABEL_12:
    goto LABEL_13;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemSettingsMoveMenu])
  {
    v23[0] = @"settings_move";
    v22[0] = @"identifier";
    v22[1] = @"title";
    v6 = sub_100042B24(@"Settings-Move");
    v22[2] = @"activateBehavior";
    v23[1] = v6;
    v23[2] = &off_1001E5250;
    v7 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    v24 = v7;
    v10 = [NSArray arrayWithObjects:&v24 count:1];
LABEL_13:

    goto LABEL_14;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemSettingsSpeechOnOff])
  {
    v20[0] = @"settings_speech";
    v19[0] = @"identifier";
    v19[1] = @"title";
    v6 = +[AXSettings sharedInstance];
    v7 = [self _stringForSpeechEnabled:{objc_msgSend(v6, "assistiveTouchScannerSpeechEnabled")}];
    v19[2] = @"activateBehavior";
    v20[1] = v7;
    v20[2] = &off_1001E5250;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    v21 = v8;
    v11 = &v21;
LABEL_11:
    v10 = [NSArray arrayWithObjects:v11 count:1];
    goto LABEL_12;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemSettingsSoundOnOff])
  {
    v17[0] = @"settings_sound";
    v16[0] = @"identifier";
    v16[1] = @"title";
    v6 = +[AXSettings sharedInstance];
    v7 = [self _stringForSoundEnabled:{objc_msgSend(v6, "assistiveTouchScannerSoundEnabled")}];
    v16[2] = @"activateBehavior";
    v17[1] = v7;
    v17[2] = &off_1001E5250;
    v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v18 = v8;
    v11 = &v18;
    goto LABEL_11;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemSettingsGroupsOnOff])
  {
    v14[0] = @"settings_groupElements";
    v13[0] = @"identifier";
    v13[1] = @"title";
    v6 = +[AXSettings sharedInstance];
    v7 = [self _stringForGroupEnabled:{objc_msgSend(v6, "assistiveTouchGroupElementsEnabled")}];
    v13[2] = @"activateBehavior";
    v14[1] = v7;
    v14[2] = &off_1001E5250;
    v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    v15 = v8;
    v11 = &v15;
    goto LABEL_11;
  }

  _AXAssert();
  v10 = 0;
LABEL_14:

  return v10;
}

+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate
{
  delegateCopy = delegate;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKey:@"identifier"];
  v9 = [dictionaryCopy objectForKey:@"title"];
  v10 = [dictionaryCopy objectForKey:@"imageName"];
  v11 = [dictionaryCopy objectForKey:@"activateBehavior"];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v12 = [dictionaryCopy objectForKey:@"guidedAccess"];
  bOOLValue = [v12 BOOLValue];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"assistiveAccess"];

  bOOLValue2 = bOOLValue;
  if (v14)
  {
    bOOLValue2 = [v14 BOOLValue];
  }

  if ([v8 isEqualToString:@"settings_increaseScanSpeed"])
  {
    v16 = &stru_1001D49E8;
  }

  else if ([v8 isEqualToString:@"settings_decreaseScanSpeed"])
  {
    v16 = &stru_1001D4A08;
  }

  else if ([v8 isEqualToString:@"settings_move"])
  {
    v16 = &stru_1001D4A28;
  }

  else if ([v8 isEqualToString:@"settings_speech"])
  {
    v16 = &stru_1001D4A48;
  }

  else if ([v8 isEqualToString:@"settings_sound"])
  {
    v16 = &stru_1001D4A68;
  }

  else if ([v8 isEqualToString:@"settings_groupElements"])
  {
    v16 = &stru_1001D4A88;
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_class() updateBlockForIdentifier:v8];
  LOBYTE(v20) = bOOLValue2;
  v18 = [SCATModernMenuItem itemWithIdentifier:v8 delegate:delegateCopy title:v9 imageName:v10 activateBehavior:unsignedIntegerValue allowedWithGuidedAccess:bOOLValue allowedWithAssistiveAccess:v20 activateHandler:v16 updateHandler:v17];

  return v18;
}

+ (id)_stringForSpeechEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = @"Settings-Speech-On";
  }

  else
  {
    v3 = @"Settings-Speech-Off";
  }

  v4 = sub_100042B24(v3);

  return v4;
}

+ (id)_stringForSoundEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = @"Settings-Sound-On";
  }

  else
  {
    v3 = @"Settings-Sound-Off";
  }

  v4 = sub_100042B24(v3);

  return v4;
}

+ (id)_stringForGroupEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = @"Settings-Grouping-On";
  }

  else
  {
    v3 = @"Settings-Grouping-Off";
  }

  v4 = sub_100042B24(v3);

  return v4;
}

+ (id)updateBlockForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"settings_speech"])
  {
    v5 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v6 = sub_100042140;
LABEL_7:
    v5[2] = v6;
    v5[3] = &unk_1001D4AA8;
    v5[4] = self;
    v7 = objc_retainBlock(v5);
    goto LABEL_8;
  }

  if ([identifierCopy isEqualToString:@"settings_sound"])
  {
    v5 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v6 = sub_1000421E0;
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"settings_groupElements"])
  {
    v5 = v9;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v6 = sub_100042280;
    goto LABEL_7;
  }

  v7 = &stru_1001D4AC8;
LABEL_8:

  return v7;
}

@end
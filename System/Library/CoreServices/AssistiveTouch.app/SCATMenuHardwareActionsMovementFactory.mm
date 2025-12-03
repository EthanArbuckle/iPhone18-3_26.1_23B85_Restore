@interface SCATMenuHardwareActionsMovementFactory
+ (id)_locStringForHardwareActionString:(id)string;
+ (id)_menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate hardwareActionString:(id)string;
+ (id)_systemImageNameForHardwareActionString:(id)string;
+ (id)menuItemsForCustomHardwareActions:(id)actions menu:(id)menu delegate:(id)delegate;
+ (id)menuItemsForHardwareRotateCrownGestureWithMenu:(id)menu delegate:(id)delegate;
@end

@implementation SCATMenuHardwareActionsMovementFactory

+ (id)menuItemsForCustomHardwareActions:(id)actions menu:(id)menu delegate:(id)delegate
{
  actionsCopy = actions;
  menuCopy = menu;
  delegateCopy = delegate;
  if ([actionsCopy count])
  {
    v11 = objc_alloc_init(NSMutableArray);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = actionsCopy;
    v12 = actionsCopy;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = @"rotateCrown";
      v31 = *v33;
      v28 = v11;
      do
      {
        v16 = 0;
        v29 = v14;
        do
        {
          if (*v33 != v31)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * v16);
          if (([v17 hasPrefix:v15] & 1) != 0 || objc_msgSend(v17, "hasPrefix:", @"turnCrown"))
          {
            v18 = [self menuItemsForHardwareRotateCrownGestureWithMenu:menuCopy delegate:delegateCopy];
            [v11 addObjectsFromArray:v18];
          }

          else
          {
            v18 = [self _locStringForHardwareActionString:v17];
            v36[0] = @"identifier";
            v30 = [NSString stringWithFormat:@"%@%@", @"hardwareAction_", v17];
            v37[0] = v30;
            v37[1] = v18;
            v36[1] = @"title";
            v36[2] = @"imageName";
            [self _systemImageNameForHardwareActionString:v17];
            v19 = delegateCopy;
            v21 = v20 = menuCopy;
            v36[3] = @"activateBehavior";
            v37[2] = v21;
            v37[3] = &off_1001E5220;
            [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
            v22 = v15;
            v24 = v23 = v12;
            v25 = [self _menuItemWithItemDictionary:v24 menu:v20 delegate:v19 hardwareActionString:v17];

            v12 = v23;
            v15 = v22;
            v14 = v29;

            menuCopy = v20;
            delegateCopy = v19;
            v11 = v28;

            [v28 addObject:v25];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v14);
    }

    actionsCopy = v27;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

+ (id)menuItemsForHardwareRotateCrownGestureWithMenu:(id)menu delegate:(id)delegate
{
  v20[0] = @"identifier";
  delegateCopy = delegate;
  menuCopy = menu;
  v17 = [NSString stringWithFormat:@"%@%@", @"hardwareAction_", @"rotateCrownClockwise"];
  v21[0] = v17;
  v20[1] = @"title";
  v8 = sub_100042B24(@"Next");
  v21[1] = v8;
  v21[2] = @"digitalcrown.horizontal.arrow.clockwise.fill";
  v20[2] = @"imageName";
  v20[3] = @"activateBehavior";
  v21[3] = &off_1001E5238;
  v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  v10 = [self _menuItemWithItemDictionary:v9 menu:menuCopy delegate:delegateCopy hardwareActionString:0];
  v22[0] = v10;
  v18[0] = @"identifier";
  v11 = [NSString stringWithFormat:@"%@%@", @"hardwareAction_", @"kSCATMenuItemIDRotateCounterclockwise"];
  v19[0] = v11;
  v18[1] = @"title";
  v12 = sub_100042B24(@"Previous");
  v19[1] = v12;
  v19[2] = @"digitalcrown.horizontal.arrow.counterclockwise.fill";
  v18[2] = @"imageName";
  v18[3] = @"activateBehavior";
  v19[3] = &off_1001E5238;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  v14 = [self _menuItemWithItemDictionary:v13 menu:menuCopy delegate:delegateCopy hardwareActionString:0];

  v22[1] = v14;
  v15 = [NSArray arrayWithObjects:v22 count:2];

  return v15;
}

+ (id)_menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate hardwareActionString:(id)string
{
  delegateCopy = delegate;
  stringCopy = string;
  dictionaryCopy = dictionary;
  v11 = [dictionaryCopy objectForKey:@"identifier"];
  v12 = [dictionaryCopy objectForKey:@"title"];
  v13 = [dictionaryCopy objectForKey:@"imageName"];
  v14 = [dictionaryCopy objectForKey:@"activateBehavior"];

  unsignedIntegerValue = [v14 unsignedIntegerValue];
  if ([v11 containsString:@"rotateCrownClockwise"])
  {
    v16 = &stru_1001D4980;
  }

  else if ([v11 containsString:@"kSCATMenuItemIDRotateCounterclockwise"])
  {
    v16 = &stru_1001D49A0;
  }

  else
  {
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100041270;
    v23 = &unk_1001D49C8;
    v24 = stringCopy;
    v16 = objc_retainBlock(&v20);
  }

  LOBYTE(v19) = 0;
  v17 = [SCATModernMenuItem itemWithIdentifier:v11 delegate:delegateCopy title:v12 imageName:v13 activateBehavior:unsignedIntegerValue allowedWithGuidedAccess:0 allowedWithAssistiveAccess:v19 activateHandler:v16 updateHandler:0, v20, v21, v22, v23];

  return v17;
}

+ (id)_locStringForHardwareActionString:(id)string
{
  stringCopy = string;
  v4 = sub_100042B24(stringCopy);
  if (![v4 isEqualToString:stringCopy])
  {
    v6 = v4;
LABEL_12:
    v7 = v6;
    goto LABEL_13;
  }

  if ([stringCopy hasPrefix:@"pressCrown"])
  {
    v5 = @"pressCrown";
LABEL_11:
    v6 = sub_100042B24(v5);
    goto LABEL_12;
  }

  if ([stringCopy hasPrefix:@"doublePressCrown"])
  {
    v5 = @"doublePressCrown";
    goto LABEL_11;
  }

  if ([stringCopy hasPrefix:@"pressTopButton"])
  {
    v5 = @"pressTopButton";
    goto LABEL_11;
  }

  if ([stringCopy hasPrefix:@"triplePressLock"])
  {
    v5 = @"triplePressLock";
    goto LABEL_11;
  }

  v7 = &stru_1001DB590;
LABEL_13:

  return v7;
}

+ (id)_systemImageNameForHardwareActionString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"pressCrown"] & 1) != 0 || (objc_msgSend(stringCopy, "hasPrefix:", @"doublePressCrown"))
  {
    v4 = @"digitalcrown.horizontal.press.fill";
  }

  else
  {
    v4 = @"button.horizontal.top.press.fill";
    if (([stringCopy hasPrefix:@"pressTopButton"] & 1) == 0 && !objc_msgSend(stringCopy, "hasPrefix:", @"triplePressLock"))
    {
      v4 = &stru_1001DB590;
    }
  }

  return v4;
}

@end
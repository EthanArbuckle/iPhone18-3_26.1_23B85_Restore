@interface SCATModernMenuItemGesturesFactory
+ (id)_fingerItemStringForNumberOfFingers:(unint64_t)fingers;
+ (id)_imageNameForNumberOfFingers:(unint64_t)fingers;
+ (id)itemDetailsForItem:(id)item menu:(id)menu;
+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate;
+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate;
+ (id)updateBlockForIdentifier:(id)identifier;
@end

@implementation SCATModernMenuItemGesturesFactory

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
  menuCopy = menu;
  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesTap])
  {
    v50[0] = @"gestures_tap";
    v49[0] = @"identifier";
    v49[1] = @"title";
    pointPicker = sub_100042B24(@"TAP");
    v49[2] = @"activateBehavior";
    v50[1] = pointPicker;
    v50[2] = &off_1001E55F8;
    v8 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];
    v51 = v8;
    v9 = &v51;
LABEL_5:
    v10 = [NSArray arrayWithObjects:v9 count:1];
LABEL_6:

    goto LABEL_7;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesTapAndHold])
  {
    v47[0] = @"gestures_tapAndHold";
    v46[0] = @"identifier";
    v46[1] = @"title";
    pointPicker = sub_100042B24(@"TAP_AND_HOLD");
    v46[2] = @"activateBehavior";
    v47[1] = pointPicker;
    v47[2] = &off_1001E5610;
    v8 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:3];
    v48 = v8;
    v9 = &v48;
    goto LABEL_5;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesForceTouch])
  {
    if (AXForceTouchAvailableAndEnabled())
    {
      v44[0] = @"gestures_forceTouch";
      v43[0] = @"identifier";
      v43[1] = @"title";
      pointPicker = sub_100042B24(@"FORCE_TOUCH");
      v44[1] = pointPicker;
      v44[2] = @"SCATIcon_gestures_3dtouch";
      v43[2] = @"imageName";
      v43[3] = @"activateBehavior";
      v44[3] = &off_1001E55F8;
      v8 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
      v45 = v8;
      v9 = &v45;
      goto LABEL_5;
    }
  }

  else
  {
    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesFlick])
    {
      v41[0] = @"gestures_flick";
      v40[0] = @"identifier";
      v40[1] = @"title";
      pointPicker = sub_100042B24(@"FlickMenu");
      v40[2] = @"activateBehavior";
      v41[1] = pointPicker;
      v41[2] = &off_1001E5610;
      v8 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
      v42 = v8;
      v9 = &v42;
      goto LABEL_5;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesPan])
    {
      v38[0] = @"gestures_pan";
      v37[0] = @"identifier";
      v37[1] = @"title";
      pointPicker = sub_100042B24(@"PanMenu");
      v37[2] = @"activateBehavior";
      v38[1] = pointPicker;
      v38[2] = &off_1001E5610;
      v8 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
      v39 = v8;
      v9 = &v39;
      goto LABEL_5;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesPinch])
    {
      v35[0] = @"gestures_pinch";
      v34[0] = @"identifier";
      v34[1] = @"title";
      pointPicker = sub_100042B24(@"PinchMenu");
      v35[1] = pointPicker;
      v35[2] = @"SCATIcon_gestures_pinchIn";
      v34[2] = @"imageName";
      v34[3] = @"activateBehavior";
      v35[3] = &off_1001E5610;
      v8 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
      v36 = v8;
      v9 = &v36;
      goto LABEL_5;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesDrag])
    {
      v32[0] = @"gestures_dragAndDrop";
      v31[0] = @"identifier";
      v31[1] = @"title";
      pointPicker = sub_100042B24(@"DRAG_AND_DROP");
      v32[1] = pointPicker;
      v32[2] = @"SCATIcon_gestures_drag";
      v31[2] = @"imageName";
      v31[3] = @"activateBehavior";
      v32[3] = &off_1001E55F8;
      v8 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
      v33 = v8;
      v9 = &v33;
      goto LABEL_5;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesHoldAndDrag])
    {
      v29[0] = @"gestures_holdAndDrag";
      v28[0] = @"identifier";
      v28[1] = @"title";
      pointPicker = sub_100042B24(@"HOLD_AND_DRAG");
      v29[1] = pointPicker;
      v29[2] = @"SCATIcon_gestures_holdAndDrag";
      v28[2] = @"imageName";
      v28[3] = @"activateBehavior";
      v29[3] = &off_1001E55F8;
      v8 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
      v30 = v8;
      v9 = &v30;
      goto LABEL_5;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesActiveHoldAndDrag])
    {
      pointPicker = [menuCopy pointPicker];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26[0] = @"gestures_activeHoldAndDrag";
        v25[0] = @"identifier";
        v25[1] = @"title";
        v8 = sub_100042B24(@"ACTIVE_DRAG");
        v26[1] = v8;
        v26[2] = @"SCATIcon_gestures_directTouch";
        v25[2] = @"imageName";
        v25[3] = @"activateBehavior";
        v26[3] = &off_1001E55F8;
        v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
        v27 = v12;
        v10 = [NSArray arrayWithObjects:&v27 count:1];

        goto LABEL_6;
      }
    }

    else
    {
      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesDoubleTap])
      {
        v23[0] = @"gestures_doubleTap";
        v22[0] = @"identifier";
        v22[1] = @"title";
        pointPicker = sub_100042B24(@"DOUBLE_TAP");
        v22[2] = @"activateBehavior";
        v23[1] = pointPicker;
        v23[2] = &off_1001E55F8;
        v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
        v24 = v8;
        v9 = &v24;
        goto LABEL_5;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesFreehand])
      {
        v20[0] = @"freehand";
        v19[0] = @"identifier";
        v19[1] = @"title";
        pointPicker = sub_100042B24(@"DrawingGesture");
        v19[2] = @"activateBehavior";
        v20[1] = pointPicker;
        v20[2] = &off_1001E5610;
        v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
        v21 = v8;
        v9 = &v21;
        goto LABEL_5;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesFingers])
      {
        v17[0] = @"gestures_fingers1";
        v16[0] = @"identifier";
        v16[1] = @"title";
        pointPicker = sub_100042B24(@"FingersMenu");
        v16[2] = @"activateBehavior";
        v17[1] = pointPicker;
        v17[2] = &off_1001E5610;
        v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
        v18 = v8;
        v9 = &v18;
        goto LABEL_5;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemGesturesSaved])
      {
        v14[0] = @"gestures_favorites";
        v13[0] = @"identifier";
        v13[1] = @"title";
        pointPicker = sub_100042B24(@"CustomGesturesMenu");
        v13[2] = @"activateBehavior";
        v14[1] = pointPicker;
        v14[2] = &off_1001E5610;
        v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
        v15 = v8;
        v9 = &v15;
        goto LABEL_5;
      }

      _AXAssert();
    }
  }

  v10 = 0;
LABEL_7:

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
  if ([v8 isEqualToString:@"gestures_tap"])
  {
    v13 = &stru_1001D6A18;
  }

  else if ([v8 isEqualToString:@"gestures_tapAndHold"])
  {
    v13 = &stru_1001D6A58;
  }

  else if ([v8 isEqualToString:@"gestures_flick"])
  {
    v13 = &stru_1001D6A78;
  }

  else if ([v8 isEqualToString:@"gestures_pan"])
  {
    v13 = &stru_1001D6A98;
  }

  else if ([v8 isEqualToString:@"gestures_pinch"])
  {
    v13 = &stru_1001D6AB8;
  }

  else if ([v8 isEqualToString:@"gestures_dragAndDrop"])
  {
    v13 = &stru_1001D6AD8;
  }

  else if ([v8 isEqualToString:@"gestures_fingers1"])
  {
    v13 = &stru_1001D6AF8;
  }

  else if ([v8 isEqualToString:@"gestures_doubleTap"])
  {
    v13 = &stru_1001D6B18;
  }

  else if ([v8 isEqualToString:@"gestures_holdAndDrag"])
  {
    v13 = &stru_1001D6B38;
  }

  else if ([v8 isEqualToString:@"gestures_activeHoldAndDrag"])
  {
    v13 = &stru_1001D6B58;
  }

  else if ([v8 isEqualToString:@"gestures_favorites"])
  {
    v13 = &stru_1001D6B78;
  }

  else if ([v8 isEqualToString:@"freehand"])
  {
    v13 = &stru_1001D6B98;
  }

  else if ([v8 isEqual:@"gestures_forceTouch"])
  {
    v13 = &stru_1001D6BB8;
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_class() updateBlockForIdentifier:v8];
  LOBYTE(v17) = 1;
  v15 = [SCATModernMenuItem itemWithIdentifier:v8 delegate:delegateCopy title:v9 imageName:v10 activateBehavior:unsignedIntegerValue allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v17 activateHandler:v13 updateHandler:v14];

  return v15;
}

+ (id)updateBlockForIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"gestures_fingers1"])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B23EC;
    v6[3] = &unk_1001D4AA8;
    v6[4] = self;
    v4 = objc_retainBlock(v6);
  }

  else
  {
    v4 = &stru_1001D6BD8;
  }

  return v4;
}

+ (id)_fingerItemStringForNumberOfFingers:(unint64_t)fingers
{
  v3 = sub_100042B24(@"FingersFormat");
  v4 = AXFormatInteger();
  v5 = [NSString stringWithFormat:v3, v4];

  return v5;
}

+ (id)_imageNameForNumberOfFingers:(unint64_t)fingers
{
  if (fingers - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1001D6BF8[fingers - 1];
  }
}

@end
@interface SCATModernMenuCustomGesturesSheet
- (BOOL)shouldUpdateMenuItem:(id)item;
- (SCATMenuCustomGestureItemsViewDelegate)delegate;
- (SCATModernMenuCustomGesturesSheet)initWithType:(int)type menu:(id)menu;
- (id)makeMenuItemsIfNeeded;
- (void)_loadGestures;
- (void)menuItemWasActivated:(id)activated;
- (void)sheetWillAppear:(BOOL)appear;
@end

@implementation SCATModernMenuCustomGesturesSheet

- (SCATModernMenuCustomGesturesSheet)initWithType:(int)type menu:(id)menu
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuCustomGesturesSheet;
  result = [(SCATModernMenuSheet *)&v6 initWithMenu:menu];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (void)sheetWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuCustomGesturesSheet;
  [(SCATModernMenuSheet *)&v6 sheetWillAppear:appear];
  [(SCATModernMenuCustomGesturesSheet *)self _loadGestures];
  [(SCATModernMenuSheet *)self invalidateMenuItems];
  menu = [(SCATModernMenuSheet *)self menu];
  menuVisualProvider = [menu menuVisualProvider];
  [menuVisualProvider reloadMenuVisuals];
}

- (id)makeMenuItemsIfNeeded
{
  v3 = [(NSMutableArray *)self->_gestures count];
  v26 = [NSMutableArray arrayWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [(NSMutableArray *)self->_gestures objectAtIndex:i];
      v6 = self->_type == 1;
      name = [v5 name];
      if ([v5 hasLocalizableName])
      {
        v8 = sub_100042B24(name);

        name = v8;
      }

      v9 = 2 * v6;
      v10 = [@"gestures_replay" stringByAppendingFormat:@"%lu", i];
      v11 = [SCATModernMenuItem itemWithIdentifier:v10 delegate:self title:name imageName:0 activateBehavior:v9];

      [v11 setCustomGesture:v5];
      [v26 addObject:v11];
    }
  }

  if (!self->_type)
  {
    v12 = sub_100042B24(@"ADD_IN_SETTINGS");
    LOBYTE(v25) = 0;
    v13 = [SCATModernMenuItem itemWithIdentifier:@"gestures_create" delegate:self title:v12 imageName:0 activateBehavior:2 allowedWithGuidedAccess:0 allowedWithAssistiveAccess:v25];
    [v26 addObject:v13];

    v14 = +[AXSettings sharedInstance];
    assistiveTouchRecentGestures = [v14 assistiveTouchRecentGestures];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = assistiveTouchRecentGestures;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    v18 = v16;
    if (v17)
    {
      v19 = v17;
      v20 = 0;
      v21 = *v28;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v20 |= [(NSMutableArray *)self->_gestures containsObject:*(*(&v27 + 1) + 8 * j)]^ 1;
        }

        v19 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      v18 = sub_100042B24(@"ADD_RECENT");
      v23 = [SCATModernMenuItem itemWithIdentifier:@"gestures_addRecent" delegate:self title:v18 imageName:0 activateBehavior:2];
      [v26 addObject:v23];
    }

LABEL_17:
  }

  return v26;
}

- (BOOL)shouldUpdateMenuItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = [identifier hasPrefix:@"gestures_replay"];
  if (v6)
  {
    delegate = [(SCATModernMenuCustomGesturesSheet *)self delegate];
    v8 = [delegate contextForCustomGestureItemsViewController:self];

    customGesture = [itemCopy customGesture];
    +[SCATModernMenuItem imageSize];
    v11 = v10;
    v13 = v12;
    [v8 frame];
    v15 = v14;
    v17 = v16;
    v18 = customGesture;
    v19 = +[UIScreen mainScreen];
    [v19 scale];
    v21 = v20;
    v58.width = v11;
    v58.height = v13;
    UIGraphicsBeginImageContextWithOptions(v58, 0, v21);

    CurrentContext = UIGraphicsGetCurrentContext();
    if (CurrentContext)
    {
      v23 = CurrentContext;
      v49 = itemCopy;
      v48 = v6;
      v46 = v8;
      v47 = identifier;
      if ([v18 shouldPerformAtOriginalLocation])
      {
        v24 = +[SCATStyleProvider sharedStyleProvider];
        scannerBlueColor = [v24 scannerBlueColor];
        cGColor = [scannerBlueColor CGColor];
      }

      else
      {
        v24 = +[UIColor whiteColor];
        cGColor = [v24 CGColor];
      }

      CGContextSetStrokeColorWithColor(v23, cGColor);
      CGContextSetLineWidth(v23, 5.0);
      v28 = +[NSMutableSet set];
      numberOfEvents = [v18 numberOfEvents];
      if (numberOfEvents)
      {
        for (i = 0; i != numberOfEvents; ++i)
        {
          v31 = [v18 fingerIdentifiersAtEventIndex:i];
          [v28 addObjectsFromArray:v31];
        }
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v28;
      v52 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v52)
      {
        v32 = v11 / v15;
        v51 = *v54;
        v33 = v13 / v17;
        do
        {
          for (j = 0; j != v52; j = j + 1)
          {
            if (*v54 != v51)
            {
              objc_enumerationMutation(obj);
            }

            if (numberOfEvents)
            {
              v35 = 0;
              LOBYTE(v36) = 0;
              v37 = *(*(&v53 + 1) + 8 * j);
              do
              {
                v38 = v36;
                v39 = [v18 fingerIdentifiersAtEventIndex:v35];
                v36 = [v39 containsObject:v37];

                if (v36)
                {
                  [v18 pointForFingerIdentifier:v37 atEventIndex:v35];
                  v42 = v32 * v40;
                  v43 = v33 * v41;
                  if (v38)
                  {
                    CGContextAddLineToPoint(v23, v32 * v40, v33 * v41);
                  }

                  else
                  {
                    v44 = [UIBezierPath bezierPathWithArcCenter:1 radius:v32 * v40 startAngle:v33 * v41 endAngle:5.0 clockwise:0.0, 6.28318531];
                    [v44 setLineWidth:2.0];
                    [v44 stroke];
                    CGContextBeginPath(v23);
                    CGContextMoveToPoint(v23, v42, v43);
                  }
                }

                else if (v38)
                {
                  CGContextStrokePath(v23);
                }

                ++v35;
              }

              while (numberOfEvents != v35);
              if (v36)
              {
                CGContextStrokePath(v23);
              }
            }
          }

          v52 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v52);
      }

      v27 = UIGraphicsGetImageFromCurrentImageContext();

      itemCopy = v49;
      LOBYTE(v6) = v48;
      v8 = v46;
      identifier = v47;
    }

    else
    {
      v27 = 0;
    }

    UIGraphicsEndImageContext();

    [itemCopy setImage:v27];
  }

  return v6 ^ 1;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier hasPrefix:@"gestures_replay"] && (objc_msgSend(identifier, "substringFromIndex:", objc_msgSend(@"gestures_replay", "length")), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "integerValue"), v6, v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    delegate = [(SCATModernMenuCustomGesturesSheet *)self delegate];
    v10 = [(NSMutableArray *)self->_gestures objectAtIndexedSubscript:v7];
    [delegate customGestureItemsViewController:self didChooseGesture:v10];
  }

  else
  {
    if ([identifier isEqualToString:@"gestures_addRecent"])
    {
      delegate2 = [(SCATModernMenuCustomGesturesSheet *)self delegate];
      [delegate2 didChooseAddRecentInCustomGestureItemsViewController:self];
    }

    else
    {
      if (![identifier isEqualToString:@"gestures_create"])
      {
        v11.receiver = self;
        v11.super_class = SCATModernMenuCustomGesturesSheet;
        [(SCATModernMenuSheet *)&v11 menuItemWasActivated:activatedCopy];
        goto LABEL_10;
      }

      delegate2 = [(SCATModernMenuCustomGesturesSheet *)self delegate];
      [delegate2 didChooseCreateInCustomGestureItemsViewController:self];
    }
  }

LABEL_10:
}

- (void)_loadGestures
{
  v3 = +[AXSettings sharedInstance];
  v4 = v3;
  type = self->_type;
  if (!type)
  {
    assistiveTouchSavedGestures = [v3 assistiveTouchSavedGestures];
    goto LABEL_5;
  }

  if (type == 1)
  {
    assistiveTouchSavedGestures = [v3 assistiveTouchRecentGestures];
LABEL_5:
    v7 = assistiveTouchSavedGestures;
    v8 = [assistiveTouchSavedGestures mutableCopy];
    gestures = self->_gestures;
    self->_gestures = v8;

    goto LABEL_7;
  }

  v15 = self->_type;
  _AXAssert();
LABEL_7:
  if (self->_type == 1)
  {
    assistiveTouchSavedGestures2 = [v4 assistiveTouchSavedGestures];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [assistiveTouchSavedGestures2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(assistiveTouchSavedGestures2);
          }

          [(NSMutableArray *)self->_gestures removeObject:*(*(&v16 + 1) + 8 * i), v15];
        }

        v12 = [assistiveTouchSavedGestures2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (SCATMenuCustomGestureItemsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
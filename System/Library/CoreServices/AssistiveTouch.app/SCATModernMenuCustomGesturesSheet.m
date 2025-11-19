@interface SCATModernMenuCustomGesturesSheet
- (BOOL)shouldUpdateMenuItem:(id)a3;
- (SCATMenuCustomGestureItemsViewDelegate)delegate;
- (SCATModernMenuCustomGesturesSheet)initWithType:(int)a3 menu:(id)a4;
- (id)makeMenuItemsIfNeeded;
- (void)_loadGestures;
- (void)menuItemWasActivated:(id)a3;
- (void)sheetWillAppear:(BOOL)a3;
@end

@implementation SCATModernMenuCustomGesturesSheet

- (SCATModernMenuCustomGesturesSheet)initWithType:(int)a3 menu:(id)a4
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuCustomGesturesSheet;
  result = [(SCATModernMenuSheet *)&v6 initWithMenu:a4];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (void)sheetWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuCustomGesturesSheet;
  [(SCATModernMenuSheet *)&v6 sheetWillAppear:a3];
  [(SCATModernMenuCustomGesturesSheet *)self _loadGestures];
  [(SCATModernMenuSheet *)self invalidateMenuItems];
  v4 = [(SCATModernMenuSheet *)self menu];
  v5 = [v4 menuVisualProvider];
  [v5 reloadMenuVisuals];
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
      v7 = [v5 name];
      if ([v5 hasLocalizableName])
      {
        v8 = sub_100042B24(v7);

        v7 = v8;
      }

      v9 = 2 * v6;
      v10 = [@"gestures_replay" stringByAppendingFormat:@"%lu", i];
      v11 = [SCATModernMenuItem itemWithIdentifier:v10 delegate:self title:v7 imageName:0 activateBehavior:v9];

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
    v15 = [v14 assistiveTouchRecentGestures];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v15;
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

- (BOOL)shouldUpdateMenuItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 hasPrefix:@"gestures_replay"];
  if (v6)
  {
    v7 = [(SCATModernMenuCustomGesturesSheet *)self delegate];
    v8 = [v7 contextForCustomGestureItemsViewController:self];

    v9 = [v4 customGesture];
    +[SCATModernMenuItem imageSize];
    v11 = v10;
    v13 = v12;
    [v8 frame];
    v15 = v14;
    v17 = v16;
    v18 = v9;
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
      v49 = v4;
      v48 = v6;
      v46 = v8;
      v47 = v5;
      if ([v18 shouldPerformAtOriginalLocation])
      {
        v24 = +[SCATStyleProvider sharedStyleProvider];
        v25 = [v24 scannerBlueColor];
        v26 = [v25 CGColor];
      }

      else
      {
        v24 = +[UIColor whiteColor];
        v26 = [v24 CGColor];
      }

      CGContextSetStrokeColorWithColor(v23, v26);
      CGContextSetLineWidth(v23, 5.0);
      v28 = +[NSMutableSet set];
      v29 = [v18 numberOfEvents];
      if (v29)
      {
        for (i = 0; i != v29; ++i)
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

            if (v29)
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

              while (v29 != v35);
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

      v4 = v49;
      LOBYTE(v6) = v48;
      v8 = v46;
      v5 = v47;
    }

    else
    {
      v27 = 0;
    }

    UIGraphicsEndImageContext();

    [v4 setImage:v27];
  }

  return v6 ^ 1;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 hasPrefix:@"gestures_replay"] && (objc_msgSend(v5, "substringFromIndex:", objc_msgSend(@"gestures_replay", "length")), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "integerValue"), v6, v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [(SCATModernMenuCustomGesturesSheet *)self delegate];
    v10 = [(NSMutableArray *)self->_gestures objectAtIndexedSubscript:v7];
    [v9 customGestureItemsViewController:self didChooseGesture:v10];
  }

  else
  {
    if ([v5 isEqualToString:@"gestures_addRecent"])
    {
      v8 = [(SCATModernMenuCustomGesturesSheet *)self delegate];
      [v8 didChooseAddRecentInCustomGestureItemsViewController:self];
    }

    else
    {
      if (![v5 isEqualToString:@"gestures_create"])
      {
        v11.receiver = self;
        v11.super_class = SCATModernMenuCustomGesturesSheet;
        [(SCATModernMenuSheet *)&v11 menuItemWasActivated:v4];
        goto LABEL_10;
      }

      v8 = [(SCATModernMenuCustomGesturesSheet *)self delegate];
      [v8 didChooseCreateInCustomGestureItemsViewController:self];
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
    v6 = [v3 assistiveTouchSavedGestures];
    goto LABEL_5;
  }

  if (type == 1)
  {
    v6 = [v3 assistiveTouchRecentGestures];
LABEL_5:
    v7 = v6;
    v8 = [v6 mutableCopy];
    gestures = self->_gestures;
    self->_gestures = v8;

    goto LABEL_7;
  }

  v15 = self->_type;
  _AXAssert();
LABEL_7:
  if (self->_type == 1)
  {
    v10 = [v4 assistiveTouchSavedGestures];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v10);
          }

          [(NSMutableArray *)self->_gestures removeObject:*(*(&v16 + 1) + 8 * i), v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
@interface SwipeOptionsController
- (BOOL)_shouldReverseLayoutDirection;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_baseSwipeValues;
- (id)_diagramSpecifierWithSwipeDirection:(unint64_t)a3;
- (id)_rightSwipeValues;
- (id)_titlesForSwipeValues:(id)a3;
- (id)leftSwipeAction:(id)a3;
- (id)rightSwipeAction:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_configureSwipeDiagramInCell:(id)a3 atIndexPath:(id)a4;
- (void)_removeImageViewsFromCell:(id)a3;
- (void)setRightSwipeAction:(id)a3 withSpecifier:(id)a4;
@end

@implementation SwipeOptionsController

- (BOOL)_shouldReverseLayoutDirection
{
  v2 = +[UIView _enableRTL];
  if (v2)
  {
    LOBYTE(v2) = [UIApp userInterfaceLayoutDirection] == &dword_0 + 1;
  }

  return v2;
}

- (id)_diagramSpecifierWithSwipeDirection:(unint64_t)a3
{
  v4 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  [v4 setProperty:v5 forKey:@"kSwipeDirection"];

  return v4;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(SwipeOptionsController *)self _shouldReverseLayoutDirection];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v5)
    {
      [v6 localizedStringForKey:@"SWIPE_RIGHT" value:&stru_3D2B0 table:@"Preferences"];
    }

    else
    {
      [v6 localizedStringForKey:@"SWIPE_LEFT" value:&stru_3D2B0 table:@"Preferences"];
    }
    v8 = ;
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setLeftSwipeAction:withSpecifier:" get:"leftSwipeAction:" detail:objc_opt_class() cell:2 edit:0];

    [v9 setProperty:&off_3F9C0 forKey:@"kSwipeDirection"];
    if (v5)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = [NSNumber numberWithUnsignedInteger:v10];
    [v9 setProperty:v11 forKey:@"kLocalizedSwipeDirection"];

    v12 = [(SwipeOptionsController *)self _leftSwipeValues];
    v13 = [(SwipeOptionsController *)self _leftSwipeValues];
    v14 = [(SwipeOptionsController *)self _titlesForSwipeValues:v13];
    [v9 setValues:v12 titles:v14];

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    if (v5)
    {
      [v15 localizedStringForKey:@"SWIPE_LEFT" value:&stru_3D2B0 table:@"Preferences"];
    }

    else
    {
      [v15 localizedStringForKey:@"SWIPE_RIGHT" value:&stru_3D2B0 table:@"Preferences"];
    }
    v16 = ;
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setRightSwipeAction:withSpecifier:" get:"rightSwipeAction:" detail:objc_opt_class() cell:2 edit:0];

    [v17 setProperty:&off_3F9D8 forKey:@"kSwipeDirection"];
    if (v5)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = [NSNumber numberWithUnsignedInteger:v18];
    [v17 setProperty:v19 forKey:@"kLocalizedSwipeDirection"];

    v20 = [(SwipeOptionsController *)self _rightSwipeValues];
    v21 = [(SwipeOptionsController *)self _rightSwipeValues];
    v22 = [(SwipeOptionsController *)self _titlesForSwipeValues:v21];
    [v17 setValues:v20 titles:v22];

    v23 = [PSSpecifier groupSpecifierWithID:0];
    v30[0] = v23;
    v24 = [(SwipeOptionsController *)self _diagramSpecifierWithSwipeDirection:1];
    v30[1] = v24;
    v30[2] = v9;
    v25 = [PSSpecifier groupSpecifierWithID:0];
    v30[3] = v25;
    v26 = [(SwipeOptionsController *)self _diagramSpecifierWithSwipeDirection:2];
    v30[4] = v26;
    v30[5] = v17;
    v27 = [NSArray arrayWithObjects:v30 count:6];
    v28 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v27;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row])
  {
    v11.receiver = self;
    v11.super_class = SwipeOptionsController;
    [(SwipeOptionsController *)&v11 tableView:v6 heightForRowAtIndexPath:v7];
    v9 = v8;
  }

  else
  {
    v9 = 124.0;
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = SwipeOptionsController;
  v7 = [(SwipeOptionsController *)&v9 tableView:a3 cellForRowAtIndexPath:v6];
  if ([v6 row])
  {
    [(SwipeOptionsController *)self _removeImageViewsFromCell:v7];
  }

  else
  {
    [(SwipeOptionsController *)self _configureSwipeDiagramInCell:v7 atIndexPath:v6];
  }

  return v7;
}

- (void)_configureSwipeDiagramInCell:(id)a3 atIndexPath:(id)a4
{
  v29 = a3;
  v4 = [v29 contentView];
  v5 = [v4 subviews];
  [v5 makeObjectsPerformSelector:"removeFromSuperview"];

  v6 = [v29 specifier];
  v7 = [v6 propertyForKey:@"kSwipeDirection"];
  v8 = [v7 integerValue];

  v9 = @"left";
  if (v8 == &dword_0 + 2)
  {
    v9 = @"right";
  }

  v10 = v9;
  v27 = [NSString stringWithFormat:@"swipe-%@-gray-part.png", v10];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [UIImage imageNamed:v27 inBundle:v11];
  v13 = [v12 imageWithRenderingMode:2];
  v28 = [v13 imageFlippedForRightToLeftLayoutDirection];

  v14 = [[UIImageView alloc] initWithImage:v28];
  [v14 setAutoresizingMask:18];
  [v14 setContentMode:4];
  v15 = [v29 contentView];
  [v15 bounds];
  [v14 setFrame:?];

  [v14 setTag:5];
  v16 = [UIColor colorWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
  [v14 setTintColor:v16];

  v17 = [v29 contentView];
  [v17 addSubview:v14];

  v18 = [NSString stringWithFormat:@"swipe-%@-blue-part.png", v10];
  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [UIImage imageNamed:v18 inBundle:v19];
  v21 = [v20 imageWithRenderingMode:2];
  v22 = [v21 imageFlippedForRightToLeftLayoutDirection];

  v23 = [[UIImageView alloc] initWithImage:v22];
  [v23 setAutoresizingMask:18];
  [v23 setContentMode:4];
  v24 = [v29 contentView];
  [v24 bounds];
  [v23 setFrame:?];

  v25 = +[UIColor mailInteractiveColor];
  [v23 setTintColor:v25];

  [v23 setTag:5];
  v26 = [v29 contentView];
  [v26 addSubview:v23];
}

- (void)_removeImageViewsFromCell:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 contentView];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 tag] == &dword_4 + 1)
        {
          [v8 removeFromSuperview];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)leftSwipeAction:(id)a3
{
  v3 = sub_1EA74(@"RightEdgeSwipeAction");
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"SwipeActionFlag";
  }

  v6 = v5;

  return v5;
}

- (id)rightSwipeAction:(id)a3
{
  v3 = sub_1EA74(@"LeftEdgeSwipeAction");
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"SwipeActionRead";
  }

  v6 = v5;

  return v5;
}

- (void)setRightSwipeAction:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  sub_1EB10(@"LeftEdgeSwipeAction", v5);
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 notifyMobileMailSwipeRightActionChanged];
}

- (id)_baseSwipeValues
{
  v5[0] = @"SwipeActionNone";
  v5[1] = @"SwipeActionRead";
  v5[2] = @"SwipeActionFlag";
  v5[3] = @"SwipeActionMove";
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)_rightSwipeValues
{
  v2 = [(SwipeOptionsController *)self _baseSwipeValues];
  [v2 addObject:@"SwipeActionAlternateDestructiveAction"];

  return v2;
}

- (id)_titlesForSwipeValues:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = +[IndividualSwipeOptionController swipeActionsAndTitles];
        v11 = [v10 objectForKey:v9];
        [v4 addObject:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

@end
@interface AXUISettingsTouchAccommodationsAllowSwipeGesturesController
- (id)_allowsSwipesToBypass:(id)a3;
- (id)_minimumDistanceSpecifiers;
- (id)_specifierWithName:(id)a3 minimumDistance:(double)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_setAllowsSwipesToBypass:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AXUISettingsTouchAccommodationsAllowSwipeGesturesController

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    v7 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_FOOTER_TEXT");
    [v6 setProperty:v7 forKey:*MEMORY[0x1E69C5900]];

    [v5 addObject:v6];
    v8 = MEMORY[0x1E69C5748];
    v9 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel__setAllowsSwipesToBypass_specifier_ get:sel__allowsSwipesToBypass_ detail:0 cell:6 edit:0];

    [v10 setProperty:@"AllowSwipeGestures" forKey:*MEMORY[0x1E69C5918]];
    [v5 addObject:v10];
    if ([(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self touchAccommodationsAllowsSwipeGesturesToBypass])
    {
      v11 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _minimumDistanceSpecifiers];
      [v5 addObjectsFromArray:v11];
    }

    v12 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_setAllowsSwipesToBypass:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self setTouchAccommodationsAllowsSwipeGesturesToBypass:v5];
  v6 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self minimumDistanceSpecifiers];
  if (v6)
  {
    v7 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self minimumDistanceSpecifiers];
    v8 = [v7 firstObject];
    v9 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self containsSpecifier:v8];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v5)
  {
    v10 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _minimumDistanceSpecifiers];
    v11 = v10;
    if (v5)
    {
      [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self insertContiguousSpecifiers:v10 afterSpecifierID:@"AllowSwipeGestures" animated:1];
    }

    else
    {
      [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self removeContiguousSpecifiers:v10 animated:1];
    }
  }
}

- (id)_allowsSwipesToBypass:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self touchAccommodationsAllowsSwipeGesturesToBypass];

  return [v3 numberWithBool:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = AXUISettingsTouchAccommodationsAllowSwipeGesturesController;
  v6 = a4;
  v7 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self specifierAtIndexPath:v6, v14.receiver, v14.super_class];

  v9 = [v8 propertyForKey:@"MinimumDistance"];
  [v9 doubleValue];
  v11 = v10;

  [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self touchAccommodationsSwipeGestureMinimumDistance];
  [v7 setChecked:{vabdd_f64(v12, v11) < 2.22044605e-16}];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = AXUISettingsTouchAccommodationsAllowSwipeGesturesController;
  v6 = a4;
  [(AXUISettingsSetupCapableListController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self specifierAtIndexPath:v6, v11.receiver, v11.super_class];
  v8 = [v7 propertyForKey:@"MinimumDistance"];
  [v8 doubleValue];
  v10 = v9;

  [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self setTouchAccommodationsSwipeGestureMinimumDistance:v10];
  [(AXUISettingsBaseListController *)self updateTableCheckedSelection:v6];
}

- (id)_specifierWithName:(id)a3 minimumDistance:(double)a4
{
  v5 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:a3 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v5 setProperty:v6 forKey:@"MinimumDistance"];

  return v5;
}

- (id)_minimumDistanceSpecifiers
{
  v3 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self minimumDistanceSpecifiers];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = MEMORY[0x1E69C5748];
    v6 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE");
    v7 = [v5 groupSpecifierWithName:v6];

    v8 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_FOOTER_TEXT");
    [v7 setProperty:v8 forKey:*MEMORY[0x1E69C5900]];

    [v4 addObject:v7];
    v9 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_1X");
    v10 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v9 minimumDistance:10.0];
    [v4 addObject:v10];

    v11 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_2X");
    v12 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v11 minimumDistance:20.0];
    [v4 addObject:v12];

    v13 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_4X");
    v14 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v13 minimumDistance:40.0];
    [v4 addObject:v14];

    v15 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_6X");
    v16 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v15 minimumDistance:60.0];
    [v4 addObject:v16];

    v17 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_8X");
    v18 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v17 minimumDistance:80.0];
    [v4 addObject:v18];

    [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self setMinimumDistanceSpecifiers:v4];
  }

  return [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self minimumDistanceSpecifiers];
}

@end
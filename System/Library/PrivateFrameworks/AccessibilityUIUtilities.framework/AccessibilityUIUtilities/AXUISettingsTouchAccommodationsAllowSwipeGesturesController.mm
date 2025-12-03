@interface AXUISettingsTouchAccommodationsAllowSwipeGesturesController
- (id)_allowsSwipesToBypass:(id)bypass;
- (id)_minimumDistanceSpecifiers;
- (id)_specifierWithName:(id)name minimumDistance:(double)distance;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_setAllowsSwipesToBypass:(id)bypass specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AXUISettingsTouchAccommodationsAllowSwipeGesturesController

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    v7 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_FOOTER_TEXT");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x1E69C5900]];

    [array addObject:emptyGroupSpecifier];
    v8 = MEMORY[0x1E69C5748];
    v9 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel__setAllowsSwipesToBypass_specifier_ get:sel__allowsSwipesToBypass_ detail:0 cell:6 edit:0];

    [v10 setProperty:@"AllowSwipeGestures" forKey:*MEMORY[0x1E69C5918]];
    [array addObject:v10];
    if ([(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self touchAccommodationsAllowsSwipeGesturesToBypass])
    {
      _minimumDistanceSpecifiers = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _minimumDistanceSpecifiers];
      [array addObjectsFromArray:_minimumDistanceSpecifiers];
    }

    v12 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_setAllowsSwipesToBypass:(id)bypass specifier:(id)specifier
{
  bOOLValue = [bypass BOOLValue];
  [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self setTouchAccommodationsAllowsSwipeGesturesToBypass:bOOLValue];
  minimumDistanceSpecifiers = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self minimumDistanceSpecifiers];
  if (minimumDistanceSpecifiers)
  {
    minimumDistanceSpecifiers2 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self minimumDistanceSpecifiers];
    firstObject = [minimumDistanceSpecifiers2 firstObject];
    v9 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self containsSpecifier:firstObject];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != bOOLValue)
  {
    _minimumDistanceSpecifiers = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _minimumDistanceSpecifiers];
    v11 = _minimumDistanceSpecifiers;
    if (bOOLValue)
    {
      [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self insertContiguousSpecifiers:_minimumDistanceSpecifiers afterSpecifierID:@"AllowSwipeGestures" animated:1];
    }

    else
    {
      [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self removeContiguousSpecifiers:_minimumDistanceSpecifiers animated:1];
    }
  }
}

- (id)_allowsSwipesToBypass:(id)bypass
{
  v3 = MEMORY[0x1E696AD98];
  touchAccommodationsAllowsSwipeGesturesToBypass = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self touchAccommodationsAllowsSwipeGesturesToBypass];

  return [v3 numberWithBool:touchAccommodationsAllowsSwipeGesturesToBypass];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = AXUISettingsTouchAccommodationsAllowSwipeGesturesController;
  pathCopy = path;
  v7 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self specifierAtIndexPath:pathCopy, v14.receiver, v14.super_class];

  v9 = [v8 propertyForKey:@"MinimumDistance"];
  [v9 doubleValue];
  v11 = v10;

  [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self touchAccommodationsSwipeGestureMinimumDistance];
  [v7 setChecked:{vabdd_f64(v12, v11) < 2.22044605e-16}];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = AXUISettingsTouchAccommodationsAllowSwipeGesturesController;
  pathCopy = path;
  [(AXUISettingsSetupCapableListController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self specifierAtIndexPath:pathCopy, v11.receiver, v11.super_class];
  v8 = [v7 propertyForKey:@"MinimumDistance"];
  [v8 doubleValue];
  v10 = v9;

  [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self setTouchAccommodationsSwipeGestureMinimumDistance:v10];
  [(AXUISettingsBaseListController *)self updateTableCheckedSelection:pathCopy];
}

- (id)_specifierWithName:(id)name minimumDistance:(double)distance
{
  v5 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:name target:0 set:0 get:0 detail:0 cell:3 edit:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:distance];
  [v5 setProperty:v6 forKey:@"MinimumDistance"];

  return v5;
}

- (id)_minimumDistanceSpecifiers
{
  minimumDistanceSpecifiers = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self minimumDistanceSpecifiers];

  if (!minimumDistanceSpecifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = MEMORY[0x1E69C5748];
    v6 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE");
    v7 = [v5 groupSpecifierWithName:v6];

    v8 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_FOOTER_TEXT");
    [v7 setProperty:v8 forKey:*MEMORY[0x1E69C5900]];

    [array addObject:v7];
    v9 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_1X");
    v10 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v9 minimumDistance:10.0];
    [array addObject:v10];

    v11 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_2X");
    v12 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v11 minimumDistance:20.0];
    [array addObject:v12];

    v13 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_4X");
    v14 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v13 minimumDistance:40.0];
    [array addObject:v14];

    v15 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_6X");
    v16 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v15 minimumDistance:60.0];
    [array addObject:v16];

    v17 = AXUILocalizedStringForKey(@"ALLOW_SWIPE_GESTURES_MINIMUM_DISTANCE_8X");
    v18 = [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self _specifierWithName:v17 minimumDistance:80.0];
    [array addObject:v18];

    [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self setMinimumDistanceSpecifiers:array];
  }

  return [(AXUISettingsTouchAccommodationsAllowSwipeGesturesController *)self minimumDistanceSpecifiers];
}

@end
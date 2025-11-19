@interface SideButtonController
- (double)_sideButtonDoubleTapInterval;
- (double)_sideClickSpeedFromSpecifierKey:(id)a3;
- (id)_vibrationPattern;
- (id)specifiers;
- (void)_flashSelectedRow;
- (void)_updateCheckedStatusForCell:(id)a3;
- (void)_vibrateSelectedRow;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SideButtonController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.isa + v3))
  {
    v4 = [(SideButtonController *)self loadSpecifiersFromPlistName:@"SideButtonSettings" target:self];
    v5 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v4;

    if (AXActivePairedDeviceIsLighthouseOrLater())
    {
      v6 = settingsLocString(@"BUTTON_CLICK_TITLE", @"SideButtonSettings");
      [(SideButtonController *)self setTitle:v6];

      v7 = [*(&self->super.super.super.super.super.super.isa + v3) specifierForID:@"CLICK_SPEED_GROUP_CELL"];
      v8 = settingsLocString(@"BUTTON_CLICK_INSTRUCTIONS", @"SideButtonSettings");
      [v7 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];
    }
  }

  v9 = *(&self->super.super.super.super.super.super.isa + v3);

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = SideButtonController;
  [(SideButtonController *)&v29 tableView:v6 didSelectRowAtIndexPath:v7];
  v28.receiver = self;
  v28.super_class = SideButtonController;
  v8 = [(SideButtonController *)&v28 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = [v9 propertyForKey:*MEMORY[0x277D3FFF0]];
  [(SideButtonController *)self _sideClickSpeedFromSpecifierKey:v10];
  v12 = v11;

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v13 forKey:@"SideButtonDoubleTapInterval"];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v6 visibleCells];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(SideButtonController *)self _updateCheckedStatusForCell:*(*(&v24 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v16);
  }

  [v8 setChecked:1];
  [(SideButtonController *)self setSelectedIndexPath:v7];
  AudioServicesStopSystemSound();
  v19 = [(SideButtonController *)self vibrationTimer];
  [v19 invalidate];

  v20 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__vibrateSelectedRow selector:0 userInfo:0 repeats:0.649999976];
  [(SideButtonController *)self setVibrationTimer:v20];

  [(SideButtonController *)self setFlashCount:0];
  v21 = [(SideButtonController *)self flashTimer];
  [v21 invalidate];

  v22 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__flashSelectedRow selector:0 userInfo:0 repeats:0.699999988];
  [(SideButtonController *)self setFlashTimer:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateCheckedStatusForCell:(id)a3
{
  v9 = a3;
  v4 = [v9 specifier];
  v5 = [v4 propertyForKey:*MEMORY[0x277D3FFF0]];
  [(SideButtonController *)self _sideClickSpeedFromSpecifierKey:v5];
  v7 = v6;

  [(SideButtonController *)self _sideButtonDoubleTapInterval];
  [v9 setChecked:{vabdd_f64(v7, v8) < 0.00999999978}];
}

- (double)_sideButtonDoubleTapInterval
{
  v2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v2 doubleForKey:@"SideButtonDoubleTapInterval"];
  v4 = v3;

  result = *MEMORY[0x277CE6898];
  if (v4 >= *MEMORY[0x277CE6898])
  {
    return v4;
  }

  return result;
}

- (double)_sideClickSpeedFromSpecifierKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"sideClickSpeedSlowest"])
  {
    v4 = MEMORY[0x277CE68A8];
  }

  else if ([v3 isEqualToString:@"sideClickSpeedSlow"])
  {
    v4 = MEMORY[0x277CE68A0];
  }

  else
  {
    if (([v3 isEqualToString:@"sideClickSpeedDefault"] & 1) == 0)
    {
      _AXAssert();
    }

    v4 = MEMORY[0x277CE6898];
  }

  v5 = *v4;

  return v5;
}

- (id)_vibrationPattern
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  [(SideButtonController *)self _sideButtonDoubleTapInterval];
  v3 = MEMORY[0x277CE6898];
  v5 = (v4 - *MEMORY[0x277CE6898] * 0.5) * 1000.0;
  *&v5 = v5;
  v6 = [v2 numberWithFloat:v5];
  v7 = *v3 * 1000.0 * 0.5;
  *&v7 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v14[0] = @"Intensity";
  v14[1] = @"VibePattern";
  v15[0] = &unk_284E7E420;
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = v8;
  v13[2] = MEMORY[0x277CBEC28];
  v13[3] = v6;
  v13[4] = MEMORY[0x277CBEC38];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_flashSelectedRow
{
  v7 = [(SideButtonController *)self table];
  v3 = [(SideButtonController *)self selectedIndexPath];
  [v7 selectRowAtIndexPath:v3 animated:0 scrollPosition:0];
  [v7 deselectRowAtIndexPath:v3 animated:0];
  [(SideButtonController *)self setFlashCount:[(SideButtonController *)self flashCount]+ 1];
  v4 = [(SideButtonController *)self flashTimer];
  [v4 invalidate];

  if ([(SideButtonController *)self flashCount]> 1)
  {
    [(SideButtonController *)self setFlashTimer:0];
  }

  else
  {
    v5 = MEMORY[0x277CBEBB8];
    [(SideButtonController *)self _sideButtonDoubleTapInterval];
    v6 = [v5 scheduledTimerWithTimeInterval:self target:sel__flashSelectedRow selector:0 userInfo:0 repeats:?];
    [(SideButtonController *)self setFlashTimer:v6];
  }
}

- (void)_vibrateSelectedRow
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBA658];
  v2 = [(SideButtonController *)self _vibrationPattern];
  v5[0] = v2;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  AudioServicesPlaySystemSoundWithOptions();

  v3 = *MEMORY[0x277D85DE8];
}

@end
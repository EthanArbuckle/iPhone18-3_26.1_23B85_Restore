@interface CCUIOrientationLockModule
- (CCUIOrientationLockModule)initWithSystemAgent:(id)a3;
- (id)glyphPackageDescription;
- (id)glyphState;
- (id)selectedValueText;
- (id)title;
- (id)valueText;
- (void)_observeSystemNotifications;
- (void)_unobserveSystemNotifications;
- (void)_updateState;
- (void)dealloc;
- (void)setSelected:(BOOL)a3;
@end

@implementation CCUIOrientationLockModule

- (CCUIOrientationLockModule)initWithSystemAgent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCUIOrientationLockModule;
  v6 = [(CCUIOrientationLockModule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemAgent, a3);
    [(CCUIOrientationLockModule *)v7 _observeSystemNotifications];
  }

  return v7;
}

- (void)dealloc
{
  [(CCUIOrientationLockModule *)self _unobserveSystemNotifications];
  v3.receiver = self;
  v3.super_class = CCUIOrientationLockModule;
  [(CCUIOrientationLockModule *)&v3 dealloc];
}

- (id)title
{
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ORIENTATION_LOCK_ORIENTATION" value:&stru_2A23F0058 table:0];

  return v3;
}

- (id)valueText
{
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ORIENTATION_LOCK_UNLOCKED" value:&stru_2A23F0058 table:0];

  return v3;
}

- (id)selectedValueText
{
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ORIENTATION_LOCK_LOCKED" value:&stru_2A23F0058 table:0];

  return v3;
}

- (id)glyphPackageDescription
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = @"OrientationLock";
  if (v2)
  {
    v3 = @"OrientationLock_IC";
  }

  v4 = MEMORY[0x29EDC0CA0];
  v5 = MEMORY[0x29EDB9F48];
  v6 = v3;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v4 descriptionForPackageNamed:v6 inBundle:v7];

  return v8;
}

- (id)glyphState
{
  if ([(CCUIToggleModule *)self appearsSelected])
  {
    return @"locked";
  }

  else
  {
    return @"unlocked";
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(CCUIOrientationLockModule *)self isSelected]!= a3)
  {
    systemAgent = self->_systemAgent;
    if (v3)
    {
      [(CCUIControlCenterSystemAgent *)systemAgent lockOrientation];
      v6 = [MEMORY[0x29EDC7A58] currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v7 == 1)
      {
        v8 = @"CONTROL_CENTER_STATUS_ORIENTATION_LOCK_ON";
      }

      else
      {
        v8 = @"CONTROL_CENTER_STATUS_PORTAIT_ORIENTATION_LOCK_ON";
      }

      v9 = 1;
    }

    else
    {
      [(CCUIControlCenterSystemAgent *)systemAgent unlockOrientation];
      v10 = [MEMORY[0x29EDC7A58] currentDevice];
      v11 = [v10 userInterfaceIdiom];

      if (v11 == 1)
      {
        v8 = @"CONTROL_CENTER_STATUS_ORIENTATION_LOCK_OFF";
      }

      else
      {
        v8 = @"CONTROL_CENTER_STATUS_PORTAIT_ORIENTATION_LOCK_OFF";
      }

      v9 = 2;
    }

    v12 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v15 = [v12 localizedStringForKey:v8 value:&stru_2A23F0058 table:0];

    v13 = [(CCUIToggleModule *)self contentModuleContext];
    v14 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v15 type:v9];
    [v13 enqueueStatusUpdate:v14];
  }
}

- (void)_observeSystemNotifications
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__updateState name:*MEMORY[0x29EDC6D10] object:0];

  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 addObserver:self selector:sel__updateForDarkerSystemColorsChange name:*MEMORY[0x29EDC7EB0] object:0];
}

- (void)_unobserveSystemNotifications
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self];
}

- (void)_updateState
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9DB2F8;
  block[3] = &unk_29F33DA18;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

@end
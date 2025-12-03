@interface AXKeyboardsController
- (AXKeyboardsController)init;
- (id)fullKeyboardAccessEnabled:(id)enabled;
- (id)hoverTextTypingEnabled:(id)enabled;
- (id)keyRepeatEnabled:(id)enabled;
- (id)lowercaseString:(id)string;
- (id)slowKeysEnabled:(id)enabled;
- (id)specifiers;
- (id)stickyKeysEnabled:(id)enabled;
- (void)setLowerCase:(id)case specifier:(id)specifier;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXKeyboardsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    if (AXHasCapability())
    {
      v6 = +[PSSpecifier emptyGroupSpecifier];
      v7 = settingsLocString(@"HOVER_TYPING_FOOTER", @"Accessibility");
      [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

      [v5 addObject:v6];
      v8 = settingsLocString(@"HOVER_TYPING", @"Accessibility");
      v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"hoverTextTypingEnabled:" detail:objc_opt_class() cell:2 edit:0];

      [v9 setProperty:@"HOVER_TYPING" forKey:PSIDKey];
      [v5 addObject:v9];
    }

    v10 = [(AXKeyboardsController *)self loadSpecifiersFromPlistName:@"KeyboardsSettings" target:self];
    [v5 axSafelyAddObjectsFromArray:v10];

    if ([v5 count])
    {
      v11 = [v5 indexOfSpecifierWithID:@"HARDWARE_KEYBOARDS"];
      v12 = [v5 objectAtIndex:v11];
      v13 = AXLocStringKeyForModel();
      v14 = settingsLocString(v13, @"FullKeyboardAccessSettings");
      v15 = PSFooterTextGroupKey;
      [v12 setProperty:v14 forKey:PSFooterTextGroupKey];

      [v12 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];
      v16 = settingsLocString(@"FULL_KEYBOARD_ACCESS", @"FullKeyboardAccessSettings");
      v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:"fullKeyboardAccessEnabled:" detail:objc_opt_class() cell:2 edit:0];

      [v17 setProperty:@"FULL_KEYBOARD_ACCESS" forKey:PSIDKey];
      [v5 insertObject:v17 atIndex:v11 + 1];
      v18 = +[PSSpecifier emptyGroupSpecifier];
      v19 = settingsLocString(@"HARDWARE_KEYBOARDS_FOOTER", @"KeyboardsSettings");
      [v18 setProperty:v19 forKey:v15];

      [v5 insertObject:v18 atIndex:v11 + 2];
    }

    v20 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (AXKeyboardsController)init
{
  v13.receiver = self;
  v13.super_class = AXKeyboardsController;
  v2 = [(AXKeyboardsController *)&v13 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = __29__AXKeyboardsController_init__block_invoke;
    v10 = &unk_255388;
    objc_copyWeak(&v11, &location);
    v4 = objc_loadWeakRetained(&location);
    [v3 registerUpdateBlock:&v7 forRetrieveSelector:"stickyKeysEnabled" withListener:v4];

    objc_destroyWeak(&v11);
    v5 = [NSNotificationCenter defaultCenter:v7];
    [v5 addObserver:v2 selector:"_preferencesDidChange" name:kAXSFullKeyboardAccessEnabledNotification object:0];

    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__AXKeyboardsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _preferencesDidChange];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXKeyboardsController;
  [(AXKeyboardsController *)&v4 viewWillAppear:appear];
  [(AXKeyboardsController *)self reloadSpecifiers];
}

- (void)setLowerCase:(id)case specifier:(id)specifier
{
  bOOLValue = [case BOOLValue];

  __AXSSetLowercaseKeyboardDisplayEnabled(bOOLValue);
}

- (id)lowercaseString:(id)string
{
  v3 = _AXSLowercaseKeyboardDisplayEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)keyRepeatEnabled:(id)enabled
{
  if (_AXSKeyRepeatEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)stickyKeysEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 stickyKeysEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (id)slowKeysEnabled:(id)enabled
{
  if (_AXSSlowKeysEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)fullKeyboardAccessEnabled:(id)enabled
{
  if (_AXSFullKeyboardAccessEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)hoverTextTypingEnabled:(id)enabled
{
  if (_AXSHoverTextTypingEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

@end
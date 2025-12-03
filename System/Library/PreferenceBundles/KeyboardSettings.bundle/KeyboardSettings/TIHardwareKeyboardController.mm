@interface TIHardwareKeyboardController
+ (id)IOHIDKeyboardLanguageToCapsLockKeyLabel;
- (BOOL)isTrackingBrightnessSlider;
- (BOOL)shouldShowGlobeKeyPreference;
- (TIHardwareKeyboardController)init;
- (id)capsLockSwitchSpecifiersFromModes:(id)modes;
- (id)getBrightness:(id)brightness;
- (id)getCurrentKeyboardType;
- (id)globeAsEmojiSpecifiers;
- (id)globeKeyPreference:(id)preference;
- (id)keyboardBrightnessSpecifiers;
- (id)keyboardTypeRemapSpecifiers;
- (id)modifierRemapSpecifiers;
- (id)newSpecifiers;
- (id)readPreferenceControllerValue:(id)value;
- (id)readRomanCapsLockPreferenceValue:(id)value;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)hardwareKeyboardAvailabilityChanged;
- (void)setBrightness:(id)brightness specifier:(id)specifier;
- (void)setPreferenceControllerValue:(id)value forSpecifier:(id)specifier;
- (void)setRomanCapsLockPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)toggledGlobeKey:(id)key specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation TIHardwareKeyboardController

+ (id)IOHIDKeyboardLanguageToCapsLockKeyLabel
{
  if (qword_569F8 != -1)
  {
    sub_2CB14();
  }

  return qword_569F0;
}

- (TIHardwareKeyboardController)init
{
  v7.receiver = self;
  v7.super_class = TIHardwareKeyboardController;
  v2 = [(TIHardwareKeyboardController *)&v7 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1DDD4, [NSString stringWithUTF8String:kGSEventHardwareKeyboardAvailabilityChangedNotification], 0, 0);
    v4 = objc_alloc_init(KeyboardBrightnessClient);
    v2->_keyboardBrightnessClient = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1DDEC;
    v6[3] = &unk_49648;
    v6[4] = v2;
    [(KeyboardBrightnessClient *)v4 registerNotificationForKeys:&off_4D760 keyboardID:kKBIDDefault block:v6];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"appWillResignActive:" object:UIApplicationWillResignActiveNotification, 0];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"appWillEnterForeground:" object:UIApplicationWillEnterForegroundNotification, 0];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [NSString stringWithUTF8String:kGSEventHardwareKeyboardAvailabilityChangedNotification], 0);
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIApplicationWillEnterForegroundNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIApplicationWillResignActiveNotification, 0];
  [(KeyboardBrightnessClient *)self->_keyboardBrightnessClient unregisterKeyboardNotificationBlock];

  v4.receiver = self;
  v4.super_class = TIHardwareKeyboardController;
  [(TIHardwareKeyboardController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    title = [(TIHardwareKeyboardController *)self title];
    *&self->PSListController_opaque[v3] = [(TIHardwareKeyboardController *)self newSpecifiers];
    [(TIHardwareKeyboardController *)self setTitle:title];
    return *&self->PSListController_opaque[v3];
  }

  return result;
}

- (id)newSpecifiers
{
  v3 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v34 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  selfCopy = self;
  v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v5 = +[NSMutableSet set];
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
  v33 = v5;
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    v31 = PSIDKey;
    v10 = PSCellClassKey;
    v11 = TIInputModePropertiesSupportsLiveConversionKey;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v3);
        }

        if ([v6 identifierIsValidSystemInputMode:*(*(&v43 + 1) + 8 * i)])
        {
          NormalizedIdentifier = UIKeyboardInputModeGetNormalizedIdentifier();
          if (![v5 member:NormalizedIdentifier])
          {
            [v5 addObject:NormalizedIdentifier];
            if ([UIKeyboardGetSupportedHardwareKeyboardsForInputMode() count])
            {
              v14 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
              [v14 setProperty:NormalizedIdentifier forKey:v31];
              [v14 setProperty:objc_opt_class() forKey:v10];
              v15 = v14;
              v5 = v33;
              [v34 addObject:v15];
            }

            if ([objc_msgSend(TIGetInputModeProperties() objectForKeyedSubscript:{v11), "BOOLValue"}])
            {
              [(NSMutableArray *)v30 addObject:NormalizedIdentifier];
            }
          }
        }
      }

      v8 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v8);
  }

  v16 = [PSSpecifier groupSpecifierWithID:@"HWKeyboardSettings"];
  [v16 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PERIOD_SHORTCUT_DESCRIPTION_HWKB", &stru_49C80, @"Keyboard", PSFooterTextGroupKey}];
  [v34 addObject:v16];
  v32 = selfCopy;
  separateHWKeyboardSpecifiers = [(TIHardwareKeyboardController *)selfCopy separateHWKeyboardSpecifiers];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = [separateHWKeyboardSpecifiers countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(separateHWKeyboardSpecifiers);
        }

        [*(*(&v39 + 1) + 8 * j) setName:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v39 + 1) + 8 * j), "name"), &stru_49C80, @"Keyboard"}];
      }

      v19 = [separateHWKeyboardSpecifiers countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v19);
  }

  v22 = v34;
  [v34 addObjectsFromArray:separateHWKeyboardSpecifiers];
  if ([(NSMutableArray *)v30 count])
  {
    v23 = [PSSpecifier groupSpecifierWithID:@"LIVE_CONVERSION"];
    [v23 setName:{+[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v30, 0, 0)}];
    [v34 addObject:v23];
    v24 = [(TIHardwareKeyboardController *)v32 loadSpecifiersFromPlistName:@"Preferences_HWLiveConversion" target:v32];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v36;
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v35 + 1) + 8 * k) setName:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v35 + 1) + 8 * k), "name"), &stru_49C80, @"Keyboard"}];
        }

        v26 = [v24 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v26);
    }

    v22 = v34;
    [v34 addObjectsFromArray:v24];
  }

  if ([(TIHardwareKeyboardController *)v32 shouldShowGlobeKeyPreference])
  {
    [v22 addObjectsFromArray:{-[TIHardwareKeyboardController globeAsEmojiSpecifiers](v32, "globeAsEmojiSpecifiers")}];
  }

  [v22 addObjectsFromArray:{-[TIHardwareKeyboardController capsLockSwitchSpecifiersFromModes:](v32, "capsLockSwitchSpecifiersFromModes:", v33)}];
  [v22 addObjectsFromArray:{-[TIHardwareKeyboardController keyboardBrightnessSpecifiers](v32, "keyboardBrightnessSpecifiers")}];
  [v22 addObjectsFromArray:{-[TIHardwareKeyboardController modifierRemapSpecifiers](v32, "modifierRemapSpecifiers")}];
  if ((BKSHIDKeyboardWantsStandardTypeOverride() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"KeyboardTypeCustomization", @"com.apple.keyboard.preferences", 0))
  {
    [v22 addObjectsFromArray:{-[TIHardwareKeyboardController keyboardTypeRemapSpecifiers](v32, "keyboardTypeRemapSpecifiers")}];
  }

  return v22;
}

- (id)capsLockSwitchSpecifiersFromModes:(id)modes
{
  v5 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [modes countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v37;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(modes);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if (UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable())
        {
          ++v9;
        }

        else
        {
          v8 += UIKeyboardLayoutSupportsASCIIToggleKey();
        }
      }

      v7 = [modes countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
    if (v9 && v8)
    {
      HardwareKeyboardLanguage = BKSHIDServicesGetHardwareKeyboardLanguage();
      HasLanguageSwitchLabel = BKSHIDServicesCapsLockKeyHasLanguageSwitchLabel();
      if ([HardwareKeyboardLanguage length] && ((HasLanguageSwitchLabel & 1) != 0 || objc_msgSend(HardwareKeyboardLanguage, "isEqualToString:", @"Simplified Chinese Keyboard")))
      {
        v15 = [objc_msgSend(objc_opt_class() "IOHIDKeyboardLanguageToCapsLockKeyLabel")];
      }

      else
      {
        v15 = 0;
      }

      v31 = [PSSpecifier groupSpecifierWithID:@"HWKeyboardCapsLockSwitch"];
      if (v9 >= 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = v9;
      }

      v17 = [v15 length];
      v18 = [NSBundle bundleForClass:objc_opt_class()];
      if (v17)
      {
        v19 = [NSString stringWithFormat:[(NSBundle *)v18 localizedStringForKey:@"LANGUAGE_SWITCH_LATIN_TITLE" value:&stru_49C80 table:@"Keyboard"], v15];
        v20 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:[NSString stringWithFormat:@"LANGUAGE_SWITCH_LATIN_DESCRIPTION_%lu", v16], &stru_49C80, @"Keyboard"];
        if (v9 == 1)
        {
          [0 hasPrefix:@"%2$@"];
          v29 = v15;
          v30 = TUIKeyboardDisplayNameFromIdentifierForContext();
        }

        else
        {
          v29 = v15;
        }

        v22 = [NSString stringWithFormat:v20, v29, v30];
      }

      else
      {
        v19 = [(NSBundle *)v18 localizedStringForKey:@"CAPS_LOCK_LATIN_TITLE" value:&stru_49C80 table:@"Keyboard"];
        v21 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:[NSString stringWithFormat:@"CAPS_LOCK_LATIN_DESCRIPTION_%lu", v16], &stru_49C80, @"Keyboard"];
        if (v9 != 1)
        {
LABEL_29:
          [v31 setProperty:v21 forKey:PSFooterTextGroupKey];
          [v5 addObject:v31];
          v23 = [(TIHardwareKeyboardController *)self loadSpecifiersFromPlistName:@"Preferences_HWCapsLock" target:self];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v33;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v33 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                [*(*(&v32 + 1) + 8 * j) setName:v19];
              }

              v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v25);
          }

          [v5 addObjectsFromArray:v23];
          return v5;
        }

        [0 hasPrefix:@"%@"];
        v22 = [NSString stringWithFormat:v21, TUIKeyboardDisplayNameFromIdentifierForContext(), v30];
      }

      v21 = v22;
      goto LABEL_29;
    }
  }

  return v5;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TIHardwareKeyboardController;
  [(TIHardwareKeyboardController *)&v3 viewDidLoad];
  [(TIHardwareKeyboardController *)self setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Hardware Keyboard", &stru_49C80, @"Keyboard"]];
}

- (id)readPreferenceControllerValue:(id)value
{
  v3 = [value propertyForKey:PSKeyNameKey];
  v4 = +[TIPreferencesController sharedPreferencesController];

  return [v4 valueForPreferenceKey:v3];
}

- (void)setPreferenceControllerValue:(id)value forSpecifier:(id)specifier
{
  v5 = [specifier propertyForKey:PSKeyNameKey];
  v6 = +[TIPreferencesController sharedPreferencesController];

  [v6 setValue:value forPreferenceKey:v5];
}

- (id)readRomanCapsLockPreferenceValue:(id)value
{
  v3 = [+[UIKeyboardImpl isCapsLockSwitchEnabled:value]];

  return [NSNumber numberWithBool:v3];
}

- (void)setRomanCapsLockPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:value];
  v6 = TIHWKeyboardCapsLockRomanSwitchPreference;

  [v5 setValue:value forPreferenceKey:v6];
}

- (id)keyboardBrightnessSpecifiers
{
  v3 = +[NSMutableArray array];
  if ([-[KeyboardBrightnessClient copyKeyboardBacklightIDs](self->_keyboardBrightnessClient "copyKeyboardBacklightIDs")])
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"Keyboard Brightness Group" name:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Keyboard Brightness", &stru_49C80, @"Keyboard"]];
    [v4 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARD_BRIGHTNESS_DESCRIPTION", &stru_49C80, @"Keyboard", PSFooterTextGroupKey}];
    [v3 addObject:v4];
    v5 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Keyboard Brightness" target:&stru_49C80 set:@"Keyboard"] get:self detail:"setBrightness:specifier:" cell:"getBrightness:" edit:0, 5, 0];
    [v5 setObject:@"Keyboard Brightness" forKeyedSubscript:PSIDKey];
    v6 = [+[UIImage systemImageNamed:](UIImage imageWithTintColor:@"light.min") renderingMode:"imageWithTintColor:renderingMode:", +[UIColor secondaryLabelColor], 1];
    [v5 setObject:v6 forKeyedSubscript:PSSliderLeftImageKey];
    v7 = [+[UIImage systemImageNamed:](UIImage imageWithTintColor:@"light.max") renderingMode:"imageWithTintColor:renderingMode:", +[UIColor secondaryLabelColor], 1];
    [v5 setObject:v7 forKeyedSubscript:PSSliderRightImageKey];
    [v5 setObject:&off_4DC10 forKeyedSubscript:PSControlMinimumKey];
    [v5 setObject:&off_4DC20 forKeyedSubscript:PSControlMaximumKey];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:PSSliderIsContinuous];
    v8 = [NSNumber numberWithInt:[(KeyboardBrightnessClient *)self->_keyboardBrightnessClient isBacklightSaturatedOnKeyboard:kKBIDDefault]^ 1];
    [v5 setObject:v8 forKeyedSubscript:PSEnabledKey];
    [v3 addObject:v5];
  }

  return v3;
}

- (void)setBrightness:(id)brightness specifier:(id)specifier
{
  v6 = [(TIHardwareKeyboardController *)self isTrackingBrightnessSlider:brightness];
  keyboardBrightnessClient = self->_keyboardBrightnessClient;
  v8 = objc_opt_respondsToSelector();
  v9 = self->_keyboardBrightnessClient;
  [brightness floatValue];
  if (v8)
  {
    v12 = kKBIDDefault;

    [(KeyboardBrightnessClient *)v9 setBrightness:0 fadeSpeed:v6 ^ 1 commit:v12 forKeyboard:?];
  }

  else
  {
    v13 = kKBIDDefault;

    [(KeyboardBrightnessClient *)v9 setBrightness:v13 forKeyboard:v10, v11];
  }
}

- (id)getBrightness:(id)brightness
{
  [(KeyboardBrightnessClient *)self->_keyboardBrightnessClient brightnessForKeyboard:kKBIDDefault];
  *&v3 = fminf(*&v3, 1.0);
  if (*&v3 < 0.0)
  {
    *&v3 = 0.0;
  }

  return [NSNumber numberWithFloat:v3];
}

- (BOOL)isTrackingBrightnessSlider
{
  v2 = [(TIHardwareKeyboardController *)self specifierForID:@"Keyboard Brightness"];
  v3 = [objc_msgSend(v2 propertyForKey:{PSTableCellKey), "control"}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v3 isTracking];
}

- (id)globeAsEmojiSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"Globe as Emoji group"];
  [v3 addObject:v4];
  v5 = [PSSpecifier preferenceSpecifierNamed:[NSString stringWithFormat:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"GLOBE_AS_EMOJI_KEY" target:&stru_49C80 set:@"Keyboard"] get:@"<globe>"] detail:self cell:"toggledGlobeKey:specifier:" edit:"globeKeyPreference:", 0, 6, 0];
  [v5 setProperty:TIHWKeyboardGlobeAsEmojiKeyPreference forKey:PSIDKey];
  [v4 setProperty:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"GLOBE_AS_EMOJI_KEY_FOOTER", &stru_49C80, @"Keyboard", @"<globe>", PSFooterTextGroupKey}];
  [v3 addObject:v5];
  return v3;
}

- (id)globeKeyPreference:(id)preference
{
  v4 = +[TIPreferencesController sharedPreferencesController];
  v5 = [v4 valueForPreferenceKey:TIHWKeyboardGlobeAsEmojiKeyPreference];
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = [(TIHardwareKeyboardController *)self defaultValueForGlobeAsEmojiKey];
  }

  return [NSNumber numberWithBool:bOOLValue];
}

- (void)toggledGlobeKey:(id)key specifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:key];
  v6 = TIHWKeyboardGlobeAsEmojiKeyPreference;

  [v5 setValue:key forPreferenceKey:v6];
}

- (BOOL)shouldShowGlobeKeyPreference
{
  if ((-[UIDevice userInterfaceIdiom](+[UIDevice currentDevice](UIDevice, "currentDevice"), "userInterfaceIdiom") & 0xFFFFFFFFFFFFFFFBLL) != 1 || [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")] < 3)
  {
    return 0;
  }

  v2 = +[UIKeyboardInputModeController sharedInputModeController];

  return [v2 containsEmojiInputMode];
}

- (id)modifierRemapSpecifiers
{
  v3 = +[NSMutableArray array];
  [v3 addObject:{+[PSSpecifier groupSpecifierWithID:](PSSpecifier, "groupSpecifierWithID:", @"Modifier Keys"}];
  v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"MODIFIER_KEYS", &stru_49C80, @"Keyboard"];
  [v3 addObject:{+[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v4, self, 0, 0, objc_opt_class(), 2, 0)}];
  return v3;
}

- (id)keyboardTypeRemapSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"Keyboard Type"];
  [v3 addObject:v4];
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Keyboard Type", &stru_49C80, @"Keyboard"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"getCurrentKeyboardType" detail:objc_opt_class() cell:2 edit:0];
  [v4 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARD_TYPE_FOOTER_TEXT", &stru_49C80, @"Keyboard", PSFooterTextGroupKey}];
  [v3 addObject:v6];
  return v3;
}

- (id)getCurrentKeyboardType
{
  DeviceProperties = BKSHIDKeyboardGetDeviceProperties();
  standardType = [DeviceProperties standardType];
  result = &stru_49C80;
  if (standardType <= 0)
  {
    if (standardType != -1)
    {
      if (standardType)
      {
        return result;
      }

      return @"ANSI";
    }

    if ([DeviceProperties countryCode] != 15)
    {
      return @"ANSI";
    }

    return @"JIS";
  }

  if (standardType == 1)
  {
    return @"ISO";
  }

  if (standardType == 2)
  {
    return @"JIS";
  }

  return result;
}

- (void)hardwareKeyboardAvailabilityChanged
{
  if (GSEventIsHardwareKeyboardAttached())
  {
    if (![(TIHardwareKeyboardController *)self specifierForID:@"Keyboard Brightness Group"])
    {
      [(TIHardwareKeyboardController *)self addSpecifiersFromArray:[(TIHardwareKeyboardController *)self keyboardBrightnessSpecifiers] animated:1];
    }

    if (![(TIHardwareKeyboardController *)self specifierForID:@"Modifier Keys"])
    {
      [(TIHardwareKeyboardController *)self addSpecifiersFromArray:[(TIHardwareKeyboardController *)self modifierRemapSpecifiers] animated:1];
    }

    if (![(TIHardwareKeyboardController *)self specifierForID:@"Keyboard Type"]&& ((BKSHIDKeyboardWantsStandardTypeOverride() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"KeyboardTypeCustomization", @"com.apple.keyboard.preferences", 0)))
    {
      keyboardTypeRemapSpecifiers = [(TIHardwareKeyboardController *)self keyboardTypeRemapSpecifiers];

      [(TIHardwareKeyboardController *)self addSpecifiersFromArray:keyboardTypeRemapSpecifiers animated:1];
    }
  }

  else
  {
    [(TIHardwareKeyboardController *)self removeSpecifierID:@"Keyboard Brightness Group" animated:1];
    [(TIHardwareKeyboardController *)self removeSpecifierID:@"Modifier Keys" animated:1];

    [(TIHardwareKeyboardController *)self removeSpecifierID:@"Keyboard Type" animated:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = TIHardwareKeyboardController;
  v7 = [TIHardwareKeyboardController tableView:"tableView:cellForRowAtIndexPath:" cellForRowAtIndexPath:?];
  v8 = [(TIHardwareKeyboardController *)self specifierAtIndexPath:path];
  v9 = [v8 propertyForKey:PSIDKey];
  if ([v9 isEqualToString:TIHWKeyboardGlobeAsEmojiKeyPreference])
  {
    v10 = [objc_msgSend(v8 "name")];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v10;
      v13 = v11;
      v7 = [view dequeueReusableCellWithIdentifier:@"GlobeSwitchCell"];
      if (!v7)
      {
        v7 = [[PSCustomControlTableCell alloc] initWithStyle:0 reuseIdentifier:@"GlobeSwitchCell"];
      }

      [(PSCustomControlTableCell *)v7 setSpecifier:v8];
      [(PSCustomControlTableCell *)v7 refreshCellContentsWithSpecifier:v8 inRange:v12 withAttributedString:v13, [TIKeyboardListController attributedStringForSymbolName:@"globe"]];
    }
  }

  return v7;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  textLabel = [objc_msgSend(footerView textLabel];
  v7 = [textLabel rangeOfString:@"<globe>"];
  if (textLabel)
  {
    v9 = v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v8;
      v11 = [[NSMutableAttributedString alloc] initWithString:textLabel];
      [v11 replaceCharactersInRange:v9 withAttributedString:{v10, +[TIKeyboardListController attributedStringForSymbolName:](TIKeyboardListController, "attributedStringForSymbolName:", @"globe"}];
      [objc_msgSend(footerView "textLabel")];
    }
  }
}

@end
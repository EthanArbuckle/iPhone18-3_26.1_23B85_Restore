@interface TIPreferencesControllerAccessibility__UIKit__TextInput
+ (void)_accessibilityPerformValidations:(id)a3;
- (TIPreferencesControllerAccessibility__UIKit__TextInput)init;
- (double)_accessibilityUpdateMouseKeysSetting;
- (id)_accessibilityMouseKeysEnabled;
- (id)valueForPreferenceKey:(id)a3;
- (void)_accessibilitySetMouseKeysEnabled:(uint64_t)a1;
@end

@implementation TIPreferencesControllerAccessibility__UIKit__TextInput

- (id)_accessibilityMouseKeysEnabled
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__TIPreferencesController___accessibilityMouseKeysEnabled);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetMouseKeysEnabled:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"TIPreferencesController" hasInstanceMethod:@"valueForPreferenceKey:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (TIPreferencesControllerAccessibility__UIKit__TextInput)init
{
  v13 = a2;
  v14 = 0;
  v12.receiver = self;
  v12.super_class = TIPreferencesControllerAccessibility__UIKit__TextInput;
  v14 = [(TIPreferencesControllerAccessibility__UIKit__TextInput *)&v12 init];
  objc_storeStrong(&v14, v14);
  objc_initWeak(&from, v14);
  v4 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __62__TIPreferencesControllerAccessibility__UIKit__TextInput_init__block_invoke;
  v9 = &unk_29F30CDC0;
  objc_copyWeak(v10, &from);
  [v4 registerUpdateBlock:&v5 forRetrieveSelector:sel_assistiveTouchMouseKeysEnabled withListener:v14];
  MEMORY[0x29EDC9740](v4);
  objc_destroyWeak(v10);
  v3 = MEMORY[0x29EDC9748](v14);
  objc_destroyWeak(&from);
  objc_storeStrong(&v14, 0);
  return v3;
}

- (double)_accessibilityUpdateMouseKeysSetting
{
  if (a1)
  {
    v2 = MEMORY[0x29EDBA070];
    v4 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v3 = [v2 numberWithBool:{objc_msgSend(v4, "assistiveTouchMouseKeysEnabled")}];
    [(TIPreferencesControllerAccessibility__UIKit__TextInput *)a1 _accessibilitySetMouseKeysEnabled:v3];
    MEMORY[0x29EDC9740](v3);
    *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  return result;
}

- (id)valueForPreferenceKey:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  if (_AXSAssistiveTouchEnabled())
  {
    v7 = [(TIPreferencesControllerAccessibility__UIKit__TextInput *)v10 _accessibilityMouseKeysEnabled];
    if (!v7)
    {
      [(TIPreferencesControllerAccessibility__UIKit__TextInput *)v10 _accessibilityUpdateMouseKeysSetting];
      v7 = [(TIPreferencesControllerAccessibility__UIKit__TextInput *)v10 _accessibilityMouseKeysEnabled];
      MEMORY[0x29EDC9740](0);
    }

    v8 = [v7 BOOLValue];
    objc_storeStrong(&v7, 0);
  }

  v8 &= 1u;
  if ([location[0] isEqualToString:*MEMORY[0x29EDC70F8]] & 1) != 0 && (_AXSAssistiveTouchScannerEnabled() || (v8))
  {
    v11 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8EA8]);
    v6 = 1;
  }

  else
  {
    v5.receiver = v10;
    v5.super_class = TIPreferencesControllerAccessibility__UIKit__TextInput;
    v11 = [(TIPreferencesControllerAccessibility__UIKit__TextInput *)&v5 valueForPreferenceKey:location[0]];
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

@end
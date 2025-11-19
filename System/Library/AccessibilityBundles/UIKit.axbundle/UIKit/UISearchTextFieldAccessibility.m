@interface UISearchTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)a3 replacementString:(id)a4 delegateCares:(BOOL *)a5;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setClearButtonImage:(id)a3 forState:(unint64_t)a4;
@end

@implementation UISearchTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = "@";
  v4 = @"UISearchTextField";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:{"^B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_setClearButtonImage:forState:" withFullSignature:{"v", v3, "Q", 0}];
  [location[0] validateClass:v4 hasInstanceVariable:@"_customClearButtons" withType:"NSMutableDictionary"];
  objc_storeStrong(v6, v5);
}

- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)a3 replacementString:(id)a4 delegateCares:(BOOL *)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  v9.receiver = v14;
  v9.super_class = UISearchTextFieldAccessibility;
  v10 = [(UISearchTextFieldAccessibility *)&v9 _delegateShouldChangeCharactersInTextStorageRanges:location[0] replacementString:v12 delegateCares:a5];
  if ((v10 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

  v6 = v10;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = UISearchTextFieldAccessibility;
  [(UISearchTextFieldAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  memset(__b, 0, sizeof(__b));
  v8 = [(UISearchTextFieldAccessibility *)v15 safeDictionaryForKey:@"_customClearButtons"];
  obj = [v8 allValues];
  v10 = [obj countByEnumeratingWithState:__b objects:v16 count:{16, MEMORY[0x29EDC9740](v8).n128_f64[0]}];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      v3 = UIKitAccessibilityLocalizedString();
      [v12 setAccessibilityLabel:?];
      *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:{16, v2}];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
}

- (void)_setClearButtonImage:(id)a3 forState:(unint64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  v6.receiver = v9;
  v6.super_class = UISearchTextFieldAccessibility;
  [(UISearchTextFieldAccessibility *)&v6 _setClearButtonImage:location[0] forState:a4];
  v5 = UIKitAccessibilityLocalizedString();
  [location[0] setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);
}

@end
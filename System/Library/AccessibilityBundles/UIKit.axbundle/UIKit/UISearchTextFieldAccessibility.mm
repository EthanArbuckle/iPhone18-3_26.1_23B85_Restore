@interface UISearchTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)ranges replacementString:(id)string delegateCares:(BOOL *)cares;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setClearButtonImage:(id)image forState:(unint64_t)state;
@end

@implementation UISearchTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  v4 = @"UISearchTextField";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:{"^B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_setClearButtonImage:forState:" withFullSignature:{"v", v3, "Q", 0}];
  [location[0] validateClass:v4 hasInstanceVariable:@"_customClearButtons" withType:"NSMutableDictionary"];
  objc_storeStrong(v6, v5);
}

- (BOOL)_delegateShouldChangeCharactersInTextStorageRanges:(id)ranges replacementString:(id)string delegateCares:(BOOL *)cares
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ranges);
  v12 = 0;
  objc_storeStrong(&v12, string);
  caresCopy = cares;
  v9.receiver = selfCopy;
  v9.super_class = UISearchTextFieldAccessibility;
  v10 = [(UISearchTextFieldAccessibility *)&v9 _delegateShouldChangeCharactersInTextStorageRanges:location[0] replacementString:v12 delegateCares:cares];
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
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = UISearchTextFieldAccessibility;
  [(UISearchTextFieldAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  memset(__b, 0, sizeof(__b));
  v8 = [(UISearchTextFieldAccessibility *)selfCopy safeDictionaryForKey:@"_customClearButtons"];
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

- (void)_setClearButtonImage:(id)image forState:(unint64_t)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  stateCopy = state;
  v6.receiver = selfCopy;
  v6.super_class = UISearchTextFieldAccessibility;
  [(UISearchTextFieldAccessibility *)&v6 _setClearButtonImage:location[0] forState:state];
  v5 = UIKitAccessibilityLocalizedString();
  [location[0] setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);
}

@end
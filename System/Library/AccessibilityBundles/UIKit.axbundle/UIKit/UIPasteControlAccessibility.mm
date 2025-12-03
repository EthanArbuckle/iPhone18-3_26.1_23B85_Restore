@interface UIPasteControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation UIPasteControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIPasteControl" hasInstanceMethod:@"_secureName" withFullSignature:{"I", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  location[1] = a2;
  mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  location[0] = [preferredLocalizations firstObject];
  MEMORY[0x29EDC9740](preferredLocalizations);
  *&v2 = MEMORY[0x29EDC9740](mainBundle).n128_u64[0];
  if (location[0])
  {
    [(UIPasteControlAccessibility *)selfCopy safeUnsignedIntForKey:@"_secureName", v2];
    mainBundle2 = [MEMORY[0x29EDB9F48] mainBundle];
    preferredLocalizations2 = [mainBundle2 preferredLocalizations];
    firstObject = [preferredLocalizations2 firstObject];
    v12 = UISLocalizedStringForSecureName();
    MEMORY[0x29EDC9740](firstObject);
    MEMORY[0x29EDC9740](preferredLocalizations2);
    MEMORY[0x29EDC9740](mainBundle2);
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v12;

  return v3;
}

@end
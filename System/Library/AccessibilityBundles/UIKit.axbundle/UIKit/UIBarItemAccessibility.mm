@interface UIBarItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityLocalizationBundleID;
- (id)accessibilityLocalizationBundlePath;
- (id)accessibilityLocalizedStringKey;
- (id)accessibilityLocalizedStringTableName;
@end

@implementation UIBarItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIBarButtonItem" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v7[1] = a2;
  v6.receiver = self;
  v6.super_class = UIBarItemAccessibility;
  v7[0] = [(UIBarItemAccessibility *)&v6 accessibilityLabel];
  if (!v7[0])
  {
    v2 = [(UIBarItemAccessibility *)selfCopy safeValueForKey:@"title"];
    v3 = v7[0];
    v7[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v5 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(v7, 0);

  return v5;
}

- (id)accessibilityLocalizedStringKey
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UIBarItemAccessibility *)self safeValueForKey:@"title"];
  _accessibilityAttributedLocalizedString = [v6[0] _accessibilityAttributedLocalizedString];
  v4 = [_accessibilityAttributedLocalizedString safeValueForKey:@"UIAccessibilityTokenLocalizedStringKey"];
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

- (id)accessibilityLocalizationBundleID
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UIBarItemAccessibility *)self safeValueForKey:@"title"];
  _accessibilityAttributedLocalizedString = [v6[0] _accessibilityAttributedLocalizedString];
  v4 = [_accessibilityAttributedLocalizedString safeValueForKey:@"UIAccessibilityTokenLocalizedStringBundleID"];
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

- (id)accessibilityLocalizationBundlePath
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UIBarItemAccessibility *)self safeValueForKey:@"title"];
  _accessibilityAttributedLocalizedString = [v6[0] _accessibilityAttributedLocalizedString];
  v4 = [_accessibilityAttributedLocalizedString safeValueForKey:@"UIAccessibilityTokenLocalizationBundlePath"];
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

- (id)accessibilityLocalizedStringTableName
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UIBarItemAccessibility *)self safeValueForKey:@"title"];
  _accessibilityAttributedLocalizedString = [v6[0] _accessibilityAttributedLocalizedString];
  v4 = [_accessibilityAttributedLocalizedString safeValueForKey:@"UIAccessibilityTokenLocalizedStringTableName"];
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

@end
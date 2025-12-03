@interface UIPreviewActionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIPreviewActionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIPreviewAction" hasInstanceMethod:@"copyWithZone:" withFullSignature:{"@", "^{_NSZone=}", 0}];
  objc_storeStrong(v4, obj);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v10 = a2;
  zoneCopy = zone;
  v7.receiver = self;
  v7.super_class = UIPreviewActionAccessibility;
  v8 = [(UIPreviewActionAccessibility *)&v7 copyWithZone:zone];
  accessibilityLabel = [(UIPreviewActionAccessibility *)selfCopy accessibilityLabel];
  if (accessibilityLabel)
  {
    v5 = [accessibilityLabel copyWithZone:zoneCopy];
    [v8 setAccessibilityLabel:v5];
    objc_storeStrong(&v5, 0);
  }

  v4 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&accessibilityLabel, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

@end
@interface _UIContentViewLabelConfigurationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation _UIContentViewLabelConfigurationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIContentViewLabelConfiguration" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

@end
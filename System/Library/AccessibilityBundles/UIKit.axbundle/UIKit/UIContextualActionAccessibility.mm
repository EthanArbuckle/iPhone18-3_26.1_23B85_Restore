@interface UIContextualActionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation UIContextualActionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIContextualAction" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIContextualActionAccessibility *)self accessibilityUserDefinedLabel];
  if (location[0])
  {
    v6 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v6 = [(UIContextualActionAccessibility *)selfCopy _accessibilityStringForLabelKeyValues:@"title"];
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

@end
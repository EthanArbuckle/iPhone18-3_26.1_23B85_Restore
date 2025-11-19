@interface TextComponentAccessibility
- (id)accessibilityLabel;
@end

@implementation TextComponentAccessibility

- (id)accessibilityLabel
{
  v2 = [(TextComponentAccessibility *)self safeSwiftValueForKey:@"label"];
  v3 = __UIAXStringForVariables();

  return v3;
}

@end
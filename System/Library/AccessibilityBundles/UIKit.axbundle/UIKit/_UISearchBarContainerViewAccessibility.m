@interface _UISearchBarContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (int64_t)accessibilityContainerType;
@end

@implementation _UISearchBarContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (int64_t)accessibilityContainerType
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(_UISearchBarContainerViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_60];
  if ([location[0] _accessibilityViewIsVisible])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4;
}

@end
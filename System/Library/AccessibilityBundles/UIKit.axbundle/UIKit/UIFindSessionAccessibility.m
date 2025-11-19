@interface UIFindSessionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityElementForFindSessionResult;
@end

@implementation UIFindSessionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityElementForFindSessionResult
{
  location[2] = self;
  location[1] = a2;
  location[0] = MEMORY[0x29EDC9748](self);
  if ([location[0] resultCount] <= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [location[0] searchableResponder];
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

@end
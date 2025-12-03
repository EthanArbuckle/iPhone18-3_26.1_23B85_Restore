@interface UIFindSessionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityElementForFindSessionResult;
@end

@implementation UIFindSessionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityElementForFindSessionResult
{
  location[2] = self;
  location[1] = a2;
  location[0] = MEMORY[0x29EDC9748](self);
  if ([location[0] resultCount] <= 0)
  {
    searchableResponder = 0;
  }

  else
  {
    searchableResponder = [location[0] searchableResponder];
  }

  objc_storeStrong(location, 0);
  v2 = searchableResponder;

  return v2;
}

@end
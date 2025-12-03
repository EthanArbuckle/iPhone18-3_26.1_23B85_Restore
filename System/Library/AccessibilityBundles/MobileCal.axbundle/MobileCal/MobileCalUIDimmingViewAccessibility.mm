@interface MobileCalUIDimmingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation MobileCalUIDimmingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LargeWeekViewController"];
  [validationsCopy validateClass:@"UIDimmingView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v13.receiver = self;
  v13.super_class = MobileCalUIDimmingViewAccessibility;
  _accessibilityObscuredScreenAllowedViews = [(MobileCalUIDimmingViewAccessibility *)&v13 _accessibilityObscuredScreenAllowedViews];
  v4 = [_accessibilityObscuredScreenAllowedViews mutableCopy];

  v5 = [(MobileCalUIDimmingViewAccessibility *)self safeValueForKey:@"delegate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [v5 delegate];
    NSClassFromString(&cfstr_Largeweekviewc_0.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v4 count];
      if (v8 - 1 >= 0)
      {
        v9 = v8;
        do
        {
          v10 = [v4 objectAtIndexedSubscript:--v9];
          objc_opt_class();
          v11 = objc_opt_isKindOfClass();

          if (v11)
          {
            [v4 removeObjectAtIndex:v9];
          }
        }

        while (v9 > 0);
      }
    }
  }

  return v4;
}

@end
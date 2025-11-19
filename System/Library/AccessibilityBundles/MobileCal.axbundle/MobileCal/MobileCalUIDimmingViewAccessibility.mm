@interface MobileCalUIDimmingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation MobileCalUIDimmingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LargeWeekViewController"];
  [v3 validateClass:@"UIDimmingView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v13.receiver = self;
  v13.super_class = MobileCalUIDimmingViewAccessibility;
  v3 = [(MobileCalUIDimmingViewAccessibility *)&v13 _accessibilityObscuredScreenAllowedViews];
  v4 = [v3 mutableCopy];

  v5 = [(MobileCalUIDimmingViewAccessibility *)self safeValueForKey:@"delegate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 delegate];
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
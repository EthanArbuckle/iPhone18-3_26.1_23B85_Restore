@interface EKEventCalendarDetailItemAccessibility
- (id)cellForSubitemAtIndex:(unint64_t)a3 withTraitCollection:(id)a4;
@end

@implementation EKEventCalendarDetailItemAccessibility

- (id)cellForSubitemAtIndex:(unint64_t)a3 withTraitCollection:(id)a4
{
  v6 = a4;
  v14 = 0;
  objc_opt_class();
  v13.receiver = self;
  v13.super_class = EKEventCalendarDetailItemAccessibility;
  v7 = [(EKEventCalendarDetailItemAccessibility *)&v13 cellForSubitemAtIndex:a3 withTraitCollection:v6];
  v8 = __UIAccessibilityCastAsClass();

  if (v14 == 1)
  {
    abort();
  }

  v9 = [v8 detailTextLabel];
  v10 = [v9 text];
  v11 = [v8 detailTextLabel];
  [v11 setAccessibilityLabel:v10];

  return v8;
}

@end
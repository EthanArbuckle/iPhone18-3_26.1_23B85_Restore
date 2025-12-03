@interface EKEventCalendarDetailItemAccessibility
- (id)cellForSubitemAtIndex:(unint64_t)index withTraitCollection:(id)collection;
@end

@implementation EKEventCalendarDetailItemAccessibility

- (id)cellForSubitemAtIndex:(unint64_t)index withTraitCollection:(id)collection
{
  collectionCopy = collection;
  v14 = 0;
  objc_opt_class();
  v13.receiver = self;
  v13.super_class = EKEventCalendarDetailItemAccessibility;
  v7 = [(EKEventCalendarDetailItemAccessibility *)&v13 cellForSubitemAtIndex:index withTraitCollection:collectionCopy];
  v8 = __UIAccessibilityCastAsClass();

  if (v14 == 1)
  {
    abort();
  }

  detailTextLabel = [v8 detailTextLabel];
  text = [detailTextLabel text];
  detailTextLabel2 = [v8 detailTextLabel];
  [detailTextLabel2 setAccessibilityLabel:text];

  return v8;
}

@end
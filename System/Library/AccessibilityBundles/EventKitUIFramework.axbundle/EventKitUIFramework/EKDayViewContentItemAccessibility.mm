@interface EKDayViewContentItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateOccurrenceView;
- (void)setUnPinnedViewFrame:(CGRect)frame;
@end

@implementation EKDayViewContentItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayViewContentItem" hasInstanceMethod:@"setUnPinnedViewFrame:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"EKDayViewContentItem" hasInstanceMethod:@"unPinnedViewFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"EKDayViewContentItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
}

- (void)_axAnnotateOccurrenceView
{
  v3 = [(EKDayViewContentItemAccessibility *)self safeValueForKey:@"unPinnedViewFrame"];
  v4 = v3;
  if (v3)
  {
    [v3 CGRectValue];
    if (!CGRectIsNull(v7))
    {
      objc_opt_class();
      v5 = [(EKDayViewContentItemAccessibility *)self safeValueForKey:@"view"];
      v6 = __UIAccessibilityCastAsSafeCategory();

      [v6 _axSetRealFrameInSuperview:v4];
    }
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = EKDayViewContentItemAccessibility;
  [(EKDayViewContentItemAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(EKDayViewContentItemAccessibility *)self _axAnnotateOccurrenceView];
}

- (void)setUnPinnedViewFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = EKDayViewContentItemAccessibility;
  [(EKDayViewContentItemAccessibility *)&v4 setUnPinnedViewFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(EKDayViewContentItemAccessibility *)self _axAnnotateOccurrenceView];
}

@end
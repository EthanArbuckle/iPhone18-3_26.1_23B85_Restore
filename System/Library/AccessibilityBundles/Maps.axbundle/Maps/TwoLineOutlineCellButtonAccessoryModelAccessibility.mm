@interface TwoLineOutlineCellButtonAccessoryModelAccessibility
- (int64_t)visibility;
@end

@implementation TwoLineOutlineCellButtonAccessoryModelAccessibility

- (int64_t)visibility
{
  if (_AXSCommandAndControlEnabled())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TwoLineOutlineCellButtonAccessoryModelAccessibility;
  return [(TwoLineOutlineCellButtonAccessoryModelAccessibility *)&v4 visibility];
}

@end
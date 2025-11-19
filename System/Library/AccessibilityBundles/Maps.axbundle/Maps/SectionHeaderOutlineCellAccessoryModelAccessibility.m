@interface SectionHeaderOutlineCellAccessoryModelAccessibility
- (int64_t)visibility;
@end

@implementation SectionHeaderOutlineCellAccessoryModelAccessibility

- (int64_t)visibility
{
  if (_AXSCommandAndControlEnabled())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SectionHeaderOutlineCellAccessoryModelAccessibility;
  return [(SectionHeaderOutlineCellAccessoryModelAccessibility *)&v4 visibility];
}

@end
@interface _TVStackViewFlowLayoutAccessibility
- (BOOL)_accessibilitySortCollectionViewLogically;
@end

@implementation _TVStackViewFlowLayoutAccessibility

- (BOOL)_accessibilitySortCollectionViewLogically
{
  if ([(_TVStackViewFlowLayoutAccessibility *)self safeIntegerForKey:@"supplementaryCellSection"]> 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = _TVStackViewFlowLayoutAccessibility;
  return [(_TVStackViewFlowLayoutAccessibility *)&v4 _accessibilitySortCollectionViewLogically];
}

@end
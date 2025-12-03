@interface WStackRowCellAccessibility
- (void)_addLabel:(id)label;
@end

@implementation WStackRowCellAccessibility

- (void)_addLabel:(id)label
{
  v4.receiver = self;
  v4.super_class = WStackRowCellAccessibility;
  labelCopy = label;
  [(WStackRowCellAccessibility *)&v4 _addLabel:labelCopy];
  [labelCopy setIsAccessibilityElement:{0, v4.receiver, v4.super_class}];
}

@end
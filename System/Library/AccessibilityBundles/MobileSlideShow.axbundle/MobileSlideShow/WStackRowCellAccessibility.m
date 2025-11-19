@interface WStackRowCellAccessibility
- (void)_addLabel:(id)a3;
@end

@implementation WStackRowCellAccessibility

- (void)_addLabel:(id)a3
{
  v4.receiver = self;
  v4.super_class = WStackRowCellAccessibility;
  v3 = a3;
  [(WStackRowCellAccessibility *)&v4 _addLabel:v3];
  [v3 setIsAccessibilityElement:{0, v4.receiver, v4.super_class}];
}

@end
@interface SUUIToolbarControllerAccessibility
- (id)_barButtonItemWithButtonElement:(id)a3;
@end

@implementation SUUIToolbarControllerAccessibility

- (id)_barButtonItemWithButtonElement:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIToolbarControllerAccessibility;
  v3 = a3;
  v4 = [(SUUIToolbarControllerAccessibility *)&v6 _barButtonItemWithButtonElement:v3];
  NSLog(&cfstr_ItemLu.isa, v4, v3, [v3 safeIntegerForKey:@"elementType"]);

  return v4;
}

@end
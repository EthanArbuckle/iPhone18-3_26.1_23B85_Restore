@interface SUUIToolbarControllerAccessibility
- (id)_barButtonItemWithButtonElement:(id)element;
@end

@implementation SUUIToolbarControllerAccessibility

- (id)_barButtonItemWithButtonElement:(id)element
{
  v6.receiver = self;
  v6.super_class = SUUIToolbarControllerAccessibility;
  elementCopy = element;
  v4 = [(SUUIToolbarControllerAccessibility *)&v6 _barButtonItemWithButtonElement:elementCopy];
  NSLog(&cfstr_ItemLu.isa, v4, elementCopy, [elementCopy safeIntegerForKey:@"elementType"]);

  return v4;
}

@end
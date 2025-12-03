@interface UIWebFormSelectPeripheralAccessibility
+ (id)createPeripheralWithDOMHTMLSelectElement:(id)element;
@end

@implementation UIWebFormSelectPeripheralAccessibility

+ (id)createPeripheralWithDOMHTMLSelectElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v5.receiver = selfCopy;
  v5.super_class = &OBJC_METACLASS___UIWebFormSelectPeripheralAccessibility;
  v6 = objc_msgSendSuper2(&v5, sel_createPeripheralWithDOMHTMLSelectElement_, location[0]);
  MEMORY[0x29ED3DFA0](0);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end
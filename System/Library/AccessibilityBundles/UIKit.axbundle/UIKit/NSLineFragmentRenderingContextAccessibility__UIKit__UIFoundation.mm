@interface NSLineFragmentRenderingContextAccessibility__UIKit__UIFoundation
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)drawAtPoint:(CGPoint)point inContext:(CGContext *)context;
@end

@implementation NSLineFragmentRenderingContextAccessibility__UIKit__UIFoundation

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"NSLineFragmentRenderingContext";
  [location[0] validateClass:"{CGPoint=dd}" hasInstanceMethod:"^{CGContext=}" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"imageBounds" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  objc_storeStrong(v5, obj);
}

- (void)drawAtPoint:(CGPoint)point inContext:(CGContext *)context
{
  pointCopy = point;
  selfCopy = self;
  v19 = a2;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = NSLineFragmentRenderingContextAccessibility__UIKit__UIFoundation;
  [(NSLineFragmentRenderingContextAccessibility__UIKit__UIFoundation *)&v17 drawAtPoint:context inContext:point.x, point.y];
  v15 = 0;
  objc_opt_class();
  v8 = [(NSLineFragmentRenderingContextAccessibility__UIKit__UIFoundation *)selfCopy _accessibilityValueForKey:@"AXStringToBeRenderedByContext"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16 = v13;
  [(NSLineFragmentRenderingContextAccessibility__UIKit__UIFoundation *)selfCopy safeCGRectForKey:@"imageBounds"];
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  if (contextCopy && [v16 length])
  {
    [MEMORY[0x29EDBDE10] addLabel:v16 boundingRect:contextCopy withContext:{v9, v10, v11, v12}];
  }

  objc_storeStrong(&v16, 0);
}

@end
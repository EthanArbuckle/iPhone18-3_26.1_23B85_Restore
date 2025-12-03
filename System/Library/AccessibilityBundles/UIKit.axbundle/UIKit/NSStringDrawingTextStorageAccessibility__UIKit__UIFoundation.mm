@interface NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)drawTextContainer:(id)container range:(_NSRange)range withRect:(CGRect)rect graphicsContext:(CGContext *)context baselineMode:(BOOL)mode scrollable:(BOOL)scrollable padding:(double)padding;
@end

@implementation NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"NSStringDrawingTextStorage";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"NSConcreteNotifyingMutableAttributedString" isKindOfClass:@"NSAttributedString"];
  [location[0] validateClass:@"NSStringDrawingTextStorage" hasInstanceMethod:@"drawTextContainer:range:withRect:graphicsContext:baselineMode:scrollable:padding:" withFullSignature:{"v", "@", "{_NSRange=QQ}", "{CGRect={CGPoint=dd}{CGSize=dd}}", "^{CGContext=}", "B", "B", "d", 0}];
  objc_storeStrong(v5, v4);
}

- (void)drawTextContainer:(id)container range:(_NSRange)range withRect:(CGRect)rect graphicsContext:(CGContext *)context baselineMode:(BOOL)mode scrollable:(BOOL)scrollable padding:(double)padding
{
  rangeCopy = range;
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, container);
  contextCopy = context;
  modeCopy = mode;
  scrollableCopy = scrollable;
  paddingCopy = padding;
  v19.receiver = selfCopy;
  v19.super_class = NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation;
  [(NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation *)&v19 drawTextContainer:location[0] range:rangeCopy.location withRect:rangeCopy.length graphicsContext:context baselineMode:mode scrollable:scrollable padding:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height, padding];
  v17 = 0;
  objc_opt_class();
  v14 = [(NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation *)selfCopy safeValueForKey:@"_contents"];
  v16 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v14);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  string = [v15 string];
  *&v9 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  if ([string length])
  {
    [MEMORY[0x29EDBDE10] addLabel:string boundingRect:contextCopy withContext:{rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height}];
  }

  objc_storeStrong(&string, 0);
  objc_storeStrong(location, 0);
}

@end
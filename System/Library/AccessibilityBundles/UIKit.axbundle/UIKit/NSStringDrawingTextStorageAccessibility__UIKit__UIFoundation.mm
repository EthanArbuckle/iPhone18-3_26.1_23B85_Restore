@interface NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)drawTextContainer:(id)a3 range:(_NSRange)a4 withRect:(CGRect)a5 graphicsContext:(CGContext *)a6 baselineMode:(BOOL)a7 scrollable:(BOOL)a8 padding:(double)a9;
@end

@implementation NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"NSStringDrawingTextStorage";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"NSConcreteNotifyingMutableAttributedString" isKindOfClass:@"NSAttributedString"];
  [location[0] validateClass:@"NSStringDrawingTextStorage" hasInstanceMethod:@"drawTextContainer:range:withRect:graphicsContext:baselineMode:scrollable:padding:" withFullSignature:{"v", "@", "{_NSRange=QQ}", "{CGRect={CGPoint=dd}{CGSize=dd}}", "^{CGContext=}", "B", "B", "d", 0}];
  objc_storeStrong(v5, v4);
}

- (void)drawTextContainer:(id)a3 range:(_NSRange)a4 withRect:(CGRect)a5 graphicsContext:(CGContext *)a6 baselineMode:(BOOL)a7 scrollable:(BOOL)a8 padding:(double)a9
{
  v27 = a4;
  v26 = a5;
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v20 = a9;
  v19.receiver = v25;
  v19.super_class = NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation;
  [(NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation *)&v19 drawTextContainer:location[0] range:v27.location withRect:v27.length graphicsContext:a6 baselineMode:a7 scrollable:a8 padding:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height, a9];
  v17 = 0;
  objc_opt_class();
  v14 = [(NSStringDrawingTextStorageAccessibility__UIKit__UIFoundation *)v25 safeValueForKey:@"_contents"];
  v16 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v14);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18 = [v15 string];
  *&v9 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  if ([v18 length])
  {
    [MEMORY[0x29EDBDE10] addLabel:v18 boundingRect:v23 withContext:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

@end
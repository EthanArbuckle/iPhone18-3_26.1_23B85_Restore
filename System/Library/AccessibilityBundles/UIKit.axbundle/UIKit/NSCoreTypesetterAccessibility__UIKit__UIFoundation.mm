@interface NSCoreTypesetterAccessibility__UIKit__UIFoundation
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)_stringDrawingCoreTextEngineWithOriginalString:(id)string rect:(CGRect)rect padding:(double)padding graphicsContext:(id)context forceClipping:(BOOL)clipping attributes:(id)attributes stringDrawingOptions:(int64_t)options drawingContext:(id)self0 stringDrawingInterface:(id *)self1;
@end

@implementation NSCoreTypesetterAccessibility__UIKit__UIFoundation

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  v3 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"NSCoreTypesetter" hasInstanceMethod:@"_stringDrawingCoreTextEngineWithOriginalString:rect:padding:graphicsContext:forceClipping:attributes:stringDrawingOptions:drawingContext:stringDrawingInterface:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "d", "@", "B", "@", "q", "@", "^{?=CqBB}", 0}];
  objc_storeStrong(v4, v3);
}

- (CGRect)_stringDrawingCoreTextEngineWithOriginalString:(id)string rect:(CGRect)rect padding:(double)padding graphicsContext:(id)context forceClipping:(BOOL)clipping attributes:(id)attributes stringDrawingOptions:(int64_t)options drawingContext:(id)self0 stringDrawingInterface:(id *)self1
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  paddingCopy = padding;
  v41 = 0;
  objc_storeStrong(&v41, context);
  clippingCopy = clipping;
  v39 = 0;
  objc_storeStrong(&v39, attributes);
  optionsCopy = options;
  v37 = 0;
  objc_storeStrong(&v37, drawingContext);
  interfaceCopy = interface;
  v46 = 0u;
  v47 = 0u;
  v35.receiver = selfCopy;
  v35.super_class = NSCoreTypesetterAccessibility__UIKit__UIFoundation;
  [(NSCoreTypesetterAccessibility__UIKit__UIFoundation *)&v35 _stringDrawingCoreTextEngineWithOriginalString:location[0] rect:v41 padding:clippingCopy graphicsContext:v39 forceClipping:optionsCopy attributes:v37 stringDrawingOptions:rectCopy.origin.x drawingContext:rectCopy.origin.y stringDrawingInterface:rectCopy.size.width, rectCopy.size.height, paddingCopy, interface];
  *&v46 = v11;
  *(&v46 + 1) = v12;
  *&v47 = v13;
  *(&v47 + 1) = v14;
  v34 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v34, location[0]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [location[0] string];
      v16 = v34;
      v34 = string;
      MEMORY[0x29EDC9740](v16);
    }
  }

  v27 = v41;
  v17 = v41;
  if ([v27 CGContext] && objc_msgSend(v34, "length"))
  {
    v26 = MEMORY[0x29EDBDE10];
    v25 = v34;
    v24 = v41;
    v18 = v41;
    cGContext = [v24 CGContext];
    [v26 addLabel:v25 boundingRect:cGContext withContext:{v46, v47}];
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  v21 = *(&v46 + 1);
  v20 = *&v46;
  v23 = *(&v47 + 1);
  v22 = *&v47;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end
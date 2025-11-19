@interface NSCoreTypesetterAccessibility__UIKit__UIFoundation
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)_stringDrawingCoreTextEngineWithOriginalString:(id)a3 rect:(CGRect)a4 padding:(double)a5 graphicsContext:(id)a6 forceClipping:(BOOL)a7 attributes:(id)a8 stringDrawingOptions:(int64_t)a9 drawingContext:(id)a10 stringDrawingInterface:(id *)a11;
@end

@implementation NSCoreTypesetterAccessibility__UIKit__UIFoundation

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  v3 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"NSCoreTypesetter" hasInstanceMethod:@"_stringDrawingCoreTextEngineWithOriginalString:rect:padding:graphicsContext:forceClipping:attributes:stringDrawingOptions:drawingContext:stringDrawingInterface:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "d", "@", "B", "@", "q", "@", "^{?=CqBB}", 0}];
  objc_storeStrong(v4, v3);
}

- (CGRect)_stringDrawingCoreTextEngineWithOriginalString:(id)a3 rect:(CGRect)a4 padding:(double)a5 graphicsContext:(id)a6 forceClipping:(BOOL)a7 attributes:(id)a8 stringDrawingOptions:(int64_t)a9 drawingContext:(id)a10 stringDrawingInterface:(id *)a11
{
  v45 = a4;
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = a5;
  v41 = 0;
  objc_storeStrong(&v41, a6);
  v40 = a7;
  v39 = 0;
  objc_storeStrong(&v39, a8);
  v38 = a9;
  v37 = 0;
  objc_storeStrong(&v37, a10);
  v36 = a11;
  v46 = 0u;
  v47 = 0u;
  v35.receiver = v44;
  v35.super_class = NSCoreTypesetterAccessibility__UIKit__UIFoundation;
  [(NSCoreTypesetterAccessibility__UIKit__UIFoundation *)&v35 _stringDrawingCoreTextEngineWithOriginalString:location[0] rect:v41 padding:v40 graphicsContext:v39 forceClipping:v38 attributes:v37 stringDrawingOptions:v45.origin.x drawingContext:v45.origin.y stringDrawingInterface:v45.size.width, v45.size.height, v42, a11];
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
      v15 = [location[0] string];
      v16 = v34;
      v34 = v15;
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
    v19 = [v24 CGContext];
    [v26 addLabel:v25 boundingRect:v19 withContext:{v46, v47}];
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
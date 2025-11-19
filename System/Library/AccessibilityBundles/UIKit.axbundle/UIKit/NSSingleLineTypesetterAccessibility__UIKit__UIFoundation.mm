@interface NSSingleLineTypesetterAccessibility__UIKit__UIFoundation
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)createRenderingContextForCharacterRange:(_NSRange)a3 typesetterBehavior:(int64_t)a4 usesScreenFonts:(BOOL)a5 hasStrongRight:(BOOL)a6 syncDirection:(BOOL)a7 mirrorsTextAlignment:(BOOL)a8 maximumWidth:(double)a9;
@end

@implementation NSSingleLineTypesetterAccessibility__UIKit__UIFoundation

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"NSSingleLineTypesetter";
  v5 = "@";
  [location[0] validateClass:"{_NSRange=QQ}" hasInstanceMethod:"q" withFullSignature:{"B", "B", "B", "B", "d", 0}];
  v4 = @"NSTypesetter";
  [location[0] validateClass:v3 isKindOfClass:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"attributedString" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (id)createRenderingContextForCharacterRange:(_NSRange)a3 typesetterBehavior:(int64_t)a4 usesScreenFonts:(BOOL)a5 hasStrongRight:(BOOL)a6 syncDirection:(BOOL)a7 mirrorsTextAlignment:(BOOL)a8 maximumWidth:(double)a9
{
  v26 = a3;
  v25 = self;
  v24 = a2;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18[1] = *&a9;
  v17.receiver = self;
  v17.super_class = NSSingleLineTypesetterAccessibility__UIKit__UIFoundation;
  v18[0] = [(NSSingleLineTypesetterAccessibility__UIKit__UIFoundation *)&v17 createRenderingContextForCharacterRange:a3.location typesetterBehavior:a3.length usesScreenFonts:a4 hasStrongRight:a5 syncDirection:a6 mirrorsTextAlignment:a7 maximumWidth:a9, a8];
  v15 = 0;
  objc_opt_class();
  v12 = [(NSSingleLineTypesetterAccessibility__UIKit__UIFoundation *)v25 safeValueForKey:@"attributedString"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v12);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16 = [v13 string];
  *&v9 = MEMORY[0x29EDC9740](v13).n128_u64[0];
  if ([v16 length])
  {
    [v18[0] _accessibilitySetRetainedValue:v16 forKey:@"AXStringToBeRenderedByContext"];
  }

  v11 = MEMORY[0x29EDC9748](v18[0]);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v18, 0);

  return v11;
}

@end
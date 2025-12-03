@interface NSSingleLineTypesetterAccessibility__UIKit__UIFoundation
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)createRenderingContextForCharacterRange:(_NSRange)range typesetterBehavior:(int64_t)behavior usesScreenFonts:(BOOL)fonts hasStrongRight:(BOOL)right syncDirection:(BOOL)direction mirrorsTextAlignment:(BOOL)alignment maximumWidth:(double)width;
@end

@implementation NSSingleLineTypesetterAccessibility__UIKit__UIFoundation

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"NSSingleLineTypesetter";
  v5 = "@";
  [location[0] validateClass:"{_NSRange=QQ}" hasInstanceMethod:"q" withFullSignature:{"B", "B", "B", "B", "d", 0}];
  v4 = @"NSTypesetter";
  [location[0] validateClass:v3 isKindOfClass:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"attributedString" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (id)createRenderingContextForCharacterRange:(_NSRange)range typesetterBehavior:(int64_t)behavior usesScreenFonts:(BOOL)fonts hasStrongRight:(BOOL)right syncDirection:(BOOL)direction mirrorsTextAlignment:(BOOL)alignment maximumWidth:(double)width
{
  rangeCopy = range;
  selfCopy = self;
  v24 = a2;
  behaviorCopy = behavior;
  fontsCopy = fonts;
  rightCopy = right;
  directionCopy = direction;
  alignmentCopy = alignment;
  v18[1] = *&width;
  v17.receiver = self;
  v17.super_class = NSSingleLineTypesetterAccessibility__UIKit__UIFoundation;
  v18[0] = [(NSSingleLineTypesetterAccessibility__UIKit__UIFoundation *)&v17 createRenderingContextForCharacterRange:range.location typesetterBehavior:range.length usesScreenFonts:behavior hasStrongRight:fonts syncDirection:right mirrorsTextAlignment:direction maximumWidth:width, alignment];
  v15 = 0;
  objc_opt_class();
  v12 = [(NSSingleLineTypesetterAccessibility__UIKit__UIFoundation *)selfCopy safeValueForKey:@"attributedString"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v12);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  string = [v13 string];
  *&v9 = MEMORY[0x29EDC9740](v13).n128_u64[0];
  if ([string length])
  {
    [v18[0] _accessibilitySetRetainedValue:string forKey:@"AXStringToBeRenderedByContext"];
  }

  v11 = MEMORY[0x29EDC9748](v18[0]);
  objc_storeStrong(&string, 0);
  objc_storeStrong(v18, 0);

  return v11;
}

@end
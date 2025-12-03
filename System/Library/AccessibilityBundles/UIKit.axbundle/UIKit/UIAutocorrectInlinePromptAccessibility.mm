@interface UIAutocorrectInlinePromptAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (unint64_t)accessibilityTraits;
- (void)setCorrection:(id)correction typedText:(id)text inRect:(CGRect)rect maxX:(double)x;
@end

@implementation UIAutocorrectInlinePromptAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIAutocorrectInlinePrompt";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "d", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"m_correctionView" withType:"UIView"];
  objc_storeStrong(v5, v4);
}

- (void)setCorrection:(id)correction typedText:(id)text inRect:(CGRect)rect maxX:(double)x
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, correction);
  v12 = 0;
  objc_storeStrong(&v12, text);
  xCopy = x;
  v10.receiver = selfCopy;
  v10.super_class = UIAutocorrectInlinePromptAccessibility;
  [(UIAutocorrectInlinePromptAccessibility *)&v10 setCorrection:location[0] typedText:v12 inRect:rectCopy.origin.x maxX:rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height, x];
  v8 = [(UIAutocorrectInlinePromptAccessibility *)selfCopy safeValueForKey:@"m_correctionView"];
  _accessibilityViewIsVisible = [v8 _accessibilityViewIsVisible];
  MEMORY[0x29EDC9740](v8);
  if (_accessibilityViewIsVisible)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIAutocorrectInlinePromptAccessibility;
  return [(UIAutocorrectInlinePromptAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDBDAC8];
}

- (BOOL)isAccessibilityElement
{
  v6 = [(UIAutocorrectInlinePromptAccessibility *)self safeValueForKey:@"m_correction"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  accessibilityLabel = [(UIAutocorrectInlinePromptAccessibility *)self accessibilityLabel];
  v5 = [accessibilityLabel length];
  MEMORY[0x29EDC9740](accessibilityLabel);
  return v5 != 0;
}

- (CGRect)accessibilityFrame
{
  v10 = [(UIAutocorrectInlinePromptAccessibility *)self safeValueForKey:@"correctionView"];
  [v10 accessibilityFrame];
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  MEMORY[0x29EDC9740](v10);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end
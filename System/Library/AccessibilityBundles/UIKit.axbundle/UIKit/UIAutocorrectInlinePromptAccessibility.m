@interface UIAutocorrectInlinePromptAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (unint64_t)accessibilityTraits;
- (void)setCorrection:(id)a3 typedText:(id)a4 inRect:(CGRect)a5 maxX:(double)a6;
@end

@implementation UIAutocorrectInlinePromptAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  v4 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIAutocorrectInlinePrompt";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "d", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"m_correctionView" withType:"UIView"];
  objc_storeStrong(v5, v4);
}

- (void)setCorrection:(id)a3 typedText:(id)a4 inRect:(CGRect)a5 maxX:(double)a6
{
  v15 = a5;
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a6;
  v10.receiver = v14;
  v10.super_class = UIAutocorrectInlinePromptAccessibility;
  [(UIAutocorrectInlinePromptAccessibility *)&v10 setCorrection:location[0] typedText:v12 inRect:v15.origin.x maxX:v15.origin.y, v15.size.width, v15.size.height, a6];
  v8 = [(UIAutocorrectInlinePromptAccessibility *)v14 safeValueForKey:@"m_correctionView"];
  v9 = [v8 _accessibilityViewIsVisible];
  MEMORY[0x29EDC9740](v8);
  if (v9)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
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

  v4 = [(UIAutocorrectInlinePromptAccessibility *)self accessibilityLabel];
  v5 = [v4 length];
  MEMORY[0x29EDC9740](v4);
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
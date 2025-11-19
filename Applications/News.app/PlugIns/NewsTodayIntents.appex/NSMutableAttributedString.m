@interface NSMutableAttributedString
- (void)fr_accessibilityApplyLowerPitchTokenToRange:(_NSRange)a3;
@end

@implementation NSMutableAttributedString

- (void)fr_accessibilityApplyLowerPitchTokenToRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v7 = UIAccessibilityTokenLowPitch;
  v8 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(NSMutableAttributedString *)self setAttributes:v6 range:location, length];
}

@end
@interface NSMutableAttributedString
- (void)fr_accessibilityApplyLowerPitchTokenToRange:(_NSRange)range;
@end

@implementation NSMutableAttributedString

- (void)fr_accessibilityApplyLowerPitchTokenToRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = UIAccessibilityTokenLowPitch;
  v8 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(NSMutableAttributedString *)self setAttributes:v6 range:location, length];
}

@end
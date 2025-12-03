@interface LPAudioPlayButtonTheme
- (LPAudioPlayButtonTheme)initWithKeyColor:(id)color secondaryColor:(id)secondaryColor outerBorderColor:(id)borderColor useInvertedInactiveState:(BOOL)state;
@end

@implementation LPAudioPlayButtonTheme

- (LPAudioPlayButtonTheme)initWithKeyColor:(id)color secondaryColor:(id)secondaryColor outerBorderColor:(id)borderColor useInvertedInactiveState:(BOOL)state
{
  colorCopy = color;
  secondaryColorCopy = secondaryColor;
  borderColorCopy = borderColor;
  v18.receiver = self;
  v18.super_class = LPAudioPlayButtonTheme;
  v14 = [(LPAudioPlayButtonTheme *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_keyColor, color);
    objc_storeStrong(&v15->_secondaryColor, secondaryColor);
    objc_storeStrong(&v15->_outerBorderColor, borderColor);
    v15->_useInvertedInactiveState = state;
    v16 = v15;
  }

  return v15;
}

@end
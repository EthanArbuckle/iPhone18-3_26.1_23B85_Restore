@interface LPAudioPlayButtonTheme
- (LPAudioPlayButtonTheme)initWithKeyColor:(id)a3 secondaryColor:(id)a4 outerBorderColor:(id)a5 useInvertedInactiveState:(BOOL)a6;
@end

@implementation LPAudioPlayButtonTheme

- (LPAudioPlayButtonTheme)initWithKeyColor:(id)a3 secondaryColor:(id)a4 outerBorderColor:(id)a5 useInvertedInactiveState:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = LPAudioPlayButtonTheme;
  v14 = [(LPAudioPlayButtonTheme *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_keyColor, a3);
    objc_storeStrong(&v15->_secondaryColor, a4);
    objc_storeStrong(&v15->_outerBorderColor, a5);
    v15->_useInvertedInactiveState = a6;
    v16 = v15;
  }

  return v15;
}

@end
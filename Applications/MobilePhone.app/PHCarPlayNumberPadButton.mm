@interface PHCarPlayNumberPadButton
- (PHCarPlayNumberPadButton)initWithCharacter:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)updateConfiguration;
@end

@implementation PHCarPlayNumberPadButton

- (PHCarPlayNumberPadButton)initWithCharacter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHCarPlayNumberPadButton;
  v5 = [(PHCarPlayNumberPadButton *)&v8 initWithFrame:0.0, 0.0, 52.0, 46.0];
  if (v5)
  {
    v5->_character = [v4 intValue];
    v6 = [v4 stringValue];
    [(PHCarPlayNumberPadButton *)v5 setAccessibilityIdentifier:v6];

    [(PHCarPlayNumberPadButton *)v5 updateConfiguration];
  }

  return v5;
}

- (void)updateConfiguration
{
  if (([(PHCarPlayNumberPadButton *)self isHighlighted]& 1) != 0 || ([(PHCarPlayNumberPadButton *)self isFocused]& 1) != 0 || [(PHCarPlayNumberPadButton *)self isSelected])
  {
    v10 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
    v3 = 1;
  }

  else
  {
    v10 = +[UIButtonConfiguration _glassButtonConfiguration];
    v3 = 0;
  }

  v4 = [(PHCarPlayNumberPadButton *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = [TPNumberPadButton imageForCharacter:[(PHCarPlayNumberPadButton *)self character] highlighted:v3 whiteVersion:v3 ^ (v5 != 1)];
  v7 = [v6 imageByPreparingThumbnailOfSize:{38.0, 38.0}];
  [v10 setImage:v7];

  v8 = +[UIBackgroundConfiguration clearConfiguration];
  if (v3)
  {
    +[UIColor dynamicCarFocusedColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v9 = ;
  [v8 setBackgroundColor:v9];

  [v8 setCornerRadius:20.0];
  [v8 setBackgroundInsets:{3.0, 6.0, 3.0, 6.0}];
  [v10 setBackground:v8];
  [(PHCarPlayNumberPadButton *)self setConfiguration:v10];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = PHCarPlayNumberPadButton;
  [(PHCarPlayNumberPadButton *)&v5 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  [(PHCarPlayNumberPadButton *)self setNeedsUpdateConfiguration];
}

@end
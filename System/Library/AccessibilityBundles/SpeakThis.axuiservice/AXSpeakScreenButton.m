@interface AXSpeakScreenButton
- (UIVisualEffectView)buttonEffectView;
- (void)setAlpha:(double)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation AXSpeakScreenButton

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = AXSpeakScreenButton;
  [(AXSpeakScreenButton *)&v8 setEnabled:?];
  v5 = [UIBlurEffect effectWithStyle:19];
  v6 = [UIVibrancyEffect effectForBlurEffect:v5 style:!v3];
  v7 = [(AXSpeakScreenButton *)self buttonEffectView];
  [v7 setEffect:v6];
}

- (void)setAlpha:(double)a3
{
  v11.receiver = self;
  v11.super_class = AXSpeakScreenButton;
  [(AXSpeakScreenButton *)&v11 setAlpha:?];
  v5 = [(AXSpeakScreenButton *)self borderEffectView];
  v6 = [v5 contentView];
  v7 = [v6 subviews];
  v8 = [v7 lastObject];
  [v8 setAlpha:a3];

  v9 = [(AXSpeakScreenButton *)self borderEffectView];
  [v9 setAlpha:a3];

  v10 = [(AXSpeakScreenButton *)self buttonEffectView];
  [v10 setAlpha:a3];
}

- (UIVisualEffectView)buttonEffectView
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonEffectView);

  return WeakRetained;
}

@end
@interface SoundActionsPracticeVisualizerView
+ (double)desiredHeight;
- (SoundActionsPracticeVisualizerView)init;
- (id)accessibilityValue;
- (void)_configureCheckmarkView;
- (void)_configureFeedbackLabel;
- (void)_configureVisualizerView;
- (void)layoutSubviews;
- (void)setStyleDisabled:(BOOL)disabled;
- (void)showCorrectWithString:(id)string;
- (void)updateWithMagnitudes:(id)magnitudes;
@end

@implementation SoundActionsPracticeVisualizerView

- (SoundActionsPracticeVisualizerView)init
{
  v7.receiver = self;
  v7.super_class = SoundActionsPracticeVisualizerView;
  v2 = [(SoundActionsPracticeVisualizerView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3 = v2;
  if (v2)
  {
    v2->_isAnimating = 0;
    [(SoundActionsPracticeVisualizerView *)v2 _configureVisualizerView];
    [(SoundActionsPracticeVisualizerView *)v3 _configureCheckmarkView];
    [(SoundActionsPracticeVisualizerView *)v3 _configureFeedbackLabel];
    [(SoundActionsPracticeVisualizerView *)v3 setIsAccessibilityElement:1];
    v4 = settingsLocString(@"SOUND_ACTION_PRACTICE_PAGE_VISUALIZER", @"Accessibility");
    [(SoundActionsPracticeVisualizerView *)v3 setAccessibilityLabel:v4];

    accessibilityTraits = [(SoundActionsPracticeVisualizerView *)v3 accessibilityTraits];
    [(SoundActionsPracticeVisualizerView *)v3 setAccessibilityTraits:UIAccessibilityTraitImage | accessibilityTraits];
  }

  return v3;
}

+ (double)desiredHeight
{
  v2 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_LISTENING", @"Accessibility");
  v24[0] = v2;
  v3 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_GREAT", @"Accessibility");
  v24[1] = v3;
  v4 = [NSArray arrayWithObjects:v24 count:2];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v21 = NSFontAttributeName;
        v12 = +[SoundActionsPracticeVisualizerView _font];
        v22 = v12;
        v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

        [v11 sizeWithAttributes:v13];
        if (v14 > v9)
        {
          v9 = v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
    v15 = v9 + 70.0;
  }

  else
  {
    v15 = 70.0;
  }

  return v15;
}

- (id)accessibilityValue
{
  if (([(UILabel *)self->_feedbackLabel isHidden]& 1) != 0)
  {
    text = 0;
  }

  else
  {
    text = [(UILabel *)self->_feedbackLabel text];
  }

  return text;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SoundActionsPracticeVisualizerView;
  [(SoundActionsPracticeVisualizerView *)&v3 layoutSubviews];
  [(UIView *)self->_checkmarkBackgroundView bounds];
  [(CAGradientLayer *)self->_checkmarkBackgroundGradient setFrame:?];
}

- (void)_configureVisualizerView
{
  if (!self->_visualizerView)
  {
    v3 = objc_alloc_init(SoundDetectionAudioVisualizationView);
    visualizerView = self->_visualizerView;
    self->_visualizerView = v3;

    [(SoundDetectionAudioVisualizationView *)self->_visualizerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SoundActionsPracticeVisualizerView *)self addSubview:self->_visualizerView];
    v5 = [NSLayoutConstraint constraintWithItem:self->_visualizerView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
    v6 = [NSLayoutConstraint constraintWithItem:self->_visualizerView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0, v5];
    v9[1] = v6;
    v7 = [NSLayoutConstraint constraintWithItem:self->_visualizerView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    v9[2] = v7;
    v8 = [NSArray arrayWithObjects:v9 count:3];
    [NSLayoutConstraint activateConstraints:v8];
  }
}

- (void)_configureCheckmarkView
{
  if (!self->_checkmarkView)
  {
    v3 = [UIImageView alloc];
    v4 = [UIImage systemImageNamed:@"checkmark"];
    v5 = [v3 initWithImage:v4];
    checkmarkView = self->_checkmarkView;
    self->_checkmarkView = v5;

    [(UIImageView *)self->_checkmarkView setContentMode:2];
    [(UIImageView *)self->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = +[UIColor systemGreenColor];
    [(UIImageView *)self->_checkmarkView setTintColor:v7];

    [(UIImageView *)self->_checkmarkView setAlpha:0.0];
    v8 = objc_alloc_init(UIView);
    checkmarkBackgroundView = self->_checkmarkBackgroundView;
    self->_checkmarkBackgroundView = v8;

    [(UIView *)self->_checkmarkBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_checkmarkBackgroundView setAlpha:0.0];
    [(SoundActionsPracticeVisualizerView *)self addSubview:self->_checkmarkBackgroundView];
    [(UIView *)self->_checkmarkBackgroundView addSubview:self->_checkmarkView];
    v10 = [NSLayoutConstraint constraintWithItem:self->_checkmarkBackgroundView attribute:9 relatedBy:0 toItem:self->_visualizerView attribute:9 multiplier:1.0 constant:0.0];
    v30[0] = v10;
    v11 = [NSLayoutConstraint constraintWithItem:self->_checkmarkBackgroundView attribute:10 relatedBy:0 toItem:self->_visualizerView attribute:10 multiplier:1.0 constant:0.0];
    v30[1] = v11;
    v12 = [NSLayoutConstraint constraintWithItem:self->_checkmarkBackgroundView attribute:8 relatedBy:0 toItem:self->_visualizerView attribute:8 multiplier:1.0 constant:0.0];
    v30[2] = v12;
    v13 = [NSLayoutConstraint constraintWithItem:self->_checkmarkBackgroundView attribute:7 relatedBy:0 toItem:self->_visualizerView attribute:7 multiplier:0.3 constant:0.0];
    v30[3] = v13;
    v14 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v14];

    v15 = [NSLayoutConstraint constraintWithItem:self->_checkmarkView attribute:9 relatedBy:0 toItem:self->_visualizerView attribute:9 multiplier:1.0 constant:0.0];
    v29[0] = v15;
    v16 = [NSLayoutConstraint constraintWithItem:self->_checkmarkView attribute:10 relatedBy:0 toItem:self->_visualizerView attribute:10 multiplier:1.0 constant:0.0];
    v29[1] = v16;
    v17 = [NSLayoutConstraint constraintWithItem:self->_checkmarkView attribute:8 relatedBy:0 toItem:self->_visualizerView attribute:8 multiplier:1.0 constant:0.0];
    v29[2] = v17;
    v18 = [NSArray arrayWithObjects:v29 count:3];
    [NSLayoutConstraint activateConstraints:v18];

    v19 = objc_alloc_init(CAGradientLayer);
    checkmarkBackgroundGradient = self->_checkmarkBackgroundGradient;
    self->_checkmarkBackgroundGradient = v19;

    v21 = +[UIColor systemBackgroundColor];
    [(CAGradientLayer *)self->_checkmarkBackgroundGradient setStartPoint:0.0, 0.5];
    [(CAGradientLayer *)self->_checkmarkBackgroundGradient setEndPoint:1.0, 0.5];
    [(CAGradientLayer *)self->_checkmarkBackgroundGradient setLocations:&off_27CB30];
    v22 = [v21 colorWithAlphaComponent:0.0];
    v23 = [v21 colorWithAlphaComponent:{0.9, objc_msgSend(v22, "cgColor")}];
    v28[1] = [v23 cgColor];
    v24 = [v21 colorWithAlphaComponent:0.9];
    v28[2] = [v24 cgColor];
    v25 = [v21 colorWithAlphaComponent:0.0];
    v28[3] = [v25 cgColor];
    v26 = [NSArray arrayWithObjects:v28 count:4];
    [(CAGradientLayer *)self->_checkmarkBackgroundGradient setColors:v26];

    layer = [(UIView *)self->_checkmarkBackgroundView layer];
    [layer insertSublayer:self->_checkmarkBackgroundGradient atIndex:0];
  }
}

- (void)_configureFeedbackLabel
{
  if (!self->_feedbackLabel)
  {
    v3 = objc_alloc_init(UILabel);
    feedbackLabel = self->_feedbackLabel;
    self->_feedbackLabel = v3;

    v5 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_LISTENING", @"Accessibility");
    [(UILabel *)self->_feedbackLabel setText:v5];

    [(UILabel *)self->_feedbackLabel setNumberOfLines:1];
    v6 = +[SoundActionsPracticeVisualizerView _font];
    [(UILabel *)self->_feedbackLabel setFont:v6];

    [(UILabel *)self->_feedbackLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_feedbackLabel setTextAlignment:1];
    [(UILabel *)self->_feedbackLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_feedbackLabel setAdjustsFontSizeToFitWidth:1];
    v7 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_feedbackLabel setTextColor:v7];

    [(SoundActionsPracticeVisualizerView *)self addSubview:self->_feedbackLabel];
    v8 = [NSLayoutConstraint constraintWithItem:self->_feedbackLabel attribute:3 relatedBy:0 toItem:self->_visualizerView attribute:4 multiplier:1.0 constant:20.0];
    v13[0] = v8;
    v9 = [NSLayoutConstraint constraintWithItem:self->_feedbackLabel attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
    v13[1] = v9;
    v10 = [NSLayoutConstraint constraintWithItem:self->_feedbackLabel attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    v13[2] = v10;
    v11 = [NSLayoutConstraint constraintWithItem:self->_feedbackLabel attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    v13[3] = v11;
    v12 = [NSArray arrayWithObjects:v13 count:4];
    [NSLayoutConstraint activateConstraints:v12];
  }
}

- (void)showCorrectWithString:(id)string
{
  if (!self->_isAnimating)
  {
    self->_isAnimating = 1;
    visualizerView = self->_visualizerView;
    stringCopy = string;
    [(SoundDetectionAudioVisualizationView *)visualizerView zeroOut];
    v6 = self->_visualizerView;
    v7 = +[UIColor systemLightGrayColor];
    [(SoundDetectionAudioVisualizationView *)v6 setTintColor:v7];

    [(UILabel *)self->_feedbackLabel setText:stringCopy];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __60__SoundActionsPracticeVisualizerView_showCorrectWithString___block_invoke;
    v9[3] = &unk_2553B0;
    v9[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __60__SoundActionsPracticeVisualizerView_showCorrectWithString___block_invoke_2;
    v8[3] = &unk_2564C0;
    v8[4] = self;
    [UIView animateWithDuration:v9 animations:v8 completion:0.3];
  }
}

id __60__SoundActionsPracticeVisualizerView_showCorrectWithString___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 24);

  return [v2 setAlpha:1.0];
}

id __60__SoundActionsPracticeVisualizerView_showCorrectWithString___block_invoke_2(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __60__SoundActionsPracticeVisualizerView_showCorrectWithString___block_invoke_3;
  v3[3] = &unk_2553B0;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __60__SoundActionsPracticeVisualizerView_showCorrectWithString___block_invoke_4;
  v2[3] = &unk_2564C0;
  v2[4] = v4;
  return [UIView animateWithDuration:0 delay:v3 options:v2 animations:0.3 completion:1.0];
}

id __60__SoundActionsPracticeVisualizerView_showCorrectWithString___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 24);

  return [v2 setAlpha:0.0];
}

void __60__SoundActionsPracticeVisualizerView_showCorrectWithString___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = +[UIColor systemBlueColor];
  [v2 setTintColor:v3];

  v4 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_LISTENING", @"Accessibility");
  [*(*(a1 + 32) + 40) setText:v4];

  *(*(a1 + 32) + 48) = 0;
}

- (void)setStyleDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  if (disabled)
  {
    [(SoundActionsPracticeVisualizerView *)self _zeroOut];
    visualizerView = self->_visualizerView;
    +[UIColor systemLightGrayColor];
  }

  else
  {
    visualizerView = self->_visualizerView;
    +[UIColor systemBlueColor];
  }
  v6 = ;
  [(SoundDetectionAudioVisualizationView *)visualizerView setTintColor:v6];

  feedbackLabel = self->_feedbackLabel;

  [(UILabel *)feedbackLabel setHidden:disabledCopy];
}

- (void)updateWithMagnitudes:(id)magnitudes
{
  if (!self->_isAnimating)
  {
    [(SoundDetectionAudioVisualizationView *)self->_visualizerView updateWithMagnitudes:magnitudes];
  }
}

@end
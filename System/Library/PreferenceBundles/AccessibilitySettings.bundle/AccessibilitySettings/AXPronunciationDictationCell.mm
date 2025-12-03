@interface AXPronunciationDictationCell
- (AXPronunciationDictationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)dictateView;
- (void)layoutSubviews;
- (void)setDictateView:(id)view;
- (void)setDictationButtonEnabled:(BOOL)enabled;
- (void)setShowsDictationButton:(BOOL)button;
- (void)setShowsSpinner:(BOOL)spinner;
@end

@implementation AXPronunciationDictationCell

- (AXPronunciationDictationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v35.receiver = self;
  v35.super_class = AXPronunciationDictationCell;
  v5 = [(AXPronunciationDictationCell *)&v35 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [UIButton buttonWithType:0];
    [(AXPronunciationDictationCell *)v5 setDictateButton:v6];

    dictateButton = [(AXPronunciationDictationCell *)v5 dictateButton];
    [dictateButton setTitle:0 forState:0];

    dictateButton2 = [(AXPronunciationDictationCell *)v5 dictateButton];
    v9 = settingsLocString(@"DICTATE_BUTTON_TITLE", @"VoiceOverSettings");
    [dictateButton2 setAccessibilityLabel:v9];

    v10 = UIAccessibilityTraitButton;
    v11 = UIAccessibilityTraitStartsMediaSession;
    dictateButton3 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [dictateButton3 setAccessibilityTraits:v11 | v10];

    v13 = settingsLocString(@"DICTATE_HINT", @"VoiceOverSettings");
    dictateButton4 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [dictateButton4 setAccessibilityHint:v13];

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [UIImage imageNamed:@"dictate" inBundle:v15];

    tintColor = [(AXPronunciationDictationCell *)v5 tintColor];
    v18 = [v16 imageWithTintColor:tintColor renderingMode:1];

    dictateButton5 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [dictateButton5 setImage:v18 forState:0];

    dictateButton6 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [(AXPronunciationDictationCell *)v5 setDictateView:dictateButton6];

    v21 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(AXPronunciationDictationCell *)v5 setIndicatorView:v21];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    dictateButton7 = [(AXPronunciationDictationCell *)v5 dictateButton];
    v36[0] = dictateButton7;
    indicatorView = [(AXPronunciationDictationCell *)v5 indicatorView];
    v36[1] = indicatorView;
    v24 = [NSArray arrayWithObjects:v36 count:2];

    v25 = [v24 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        v28 = 0;
        do
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v31 + 1) + 8 * v28) setTranslatesAutoresizingMaskIntoConstraints:0];
          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v26);
    }

    textField = [(AXPronunciationDictationCell *)v5 textField];
    [textField setAccessibilityIdentifier:@"UIAccessibilityPronunciationEditorDictationCell"];
  }

  return v5;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = AXPronunciationDictationCell;
  [(AXPronunciationDictationCell *)&v34 layoutSubviews];
  listeningCircle = self->_listeningCircle;
  if (listeningCircle)
  {
    goto LABEL_7;
  }

  dictateButton = [(AXPronunciationDictationCell *)self dictateButton];
  [dictateButton frame];
  if (v5 <= 0.0)
  {
  }

  else
  {
    dictateButton2 = [(AXPronunciationDictationCell *)self dictateButton];
    isHidden = [dictateButton2 isHidden];

    if ((isHidden & 1) == 0)
    {
      dictateButton3 = [(AXPronunciationDictationCell *)self dictateButton];
      [dictateButton3 frame];
      v10 = v9 * 0.5;

      v11 = +[CAShapeLayer layer];
      v12 = [UIBezierPath bezierPathWithRoundedRect:v10 * -0.5 cornerRadius:0.0, v10 + v10, v10 + v10, v10];
      -[CAShapeLayer setPath:](v11, "setPath:", [v12 CGPath]);

      v13 = +[UIColor clearColor];
      -[CAShapeLayer setFillColor:](v11, "setFillColor:", [v13 CGColor]);

      tintColor = [(AXPronunciationDictationCell *)self tintColor];
      -[CAShapeLayer setStrokeColor:](v11, "setStrokeColor:", [tintColor CGColor]);

      [(CAShapeLayer *)v11 setLineWidth:1.0];
      dictateButton4 = [(AXPronunciationDictationCell *)self dictateButton];
      layer = [dictateButton4 layer];
      [layer addSublayer:v11];

      dictateButton6 = self->_listeningCircle;
      self->_listeningCircle = v11;
LABEL_9:

      goto LABEL_10;
    }
  }

  listeningCircle = self->_listeningCircle;
  if (listeningCircle)
  {
LABEL_7:
    [(CAShapeLayer *)listeningCircle removeFromSuperlayer];
    dictateButton5 = [(AXPronunciationDictationCell *)self dictateButton];
    isHidden2 = [dictateButton5 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      dictateButton6 = [(AXPronunciationDictationCell *)self dictateButton];
      layer2 = [dictateButton6 layer];
      v21 = self->_listeningCircle;
      layer3 = [(AXPronunciationDictationCell *)self layer];
      sublayers = [layer3 sublayers];
      [layer2 insertSublayer:v21 atIndex:{objc_msgSend(sublayers, "count")}];

      goto LABEL_9;
    }
  }

LABEL_10:
  [(AXPronunciationDictationCell *)self bounds];
  v25 = v24;
  textField = [(AXPronunciationDictationCell *)self textField];
  [textField frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;

  textField2 = [(AXPronunciationDictationCell *)self textField];
  [textField2 setFrame:{v28, v30, (v25 - v28) * 0.75, v32}];
}

- (void)setShowsSpinner:(BOOL)spinner
{
  if (self->_showsSpinner != spinner)
  {
    self->_showsSpinner = spinner;
    if (spinner)
    {
      dictateButton = [(AXPronunciationDictationCell *)self dictateButton];
      [dictateButton removeFromSuperview];

      indicatorView = [(AXPronunciationDictationCell *)self indicatorView];
      [(AXPronunciationDictationCell *)self setDictateView:indicatorView];

      indicatorView2 = [(AXPronunciationDictationCell *)self indicatorView];
      [indicatorView2 startAnimating];
    }

    else
    {
      indicatorView3 = [(AXPronunciationDictationCell *)self indicatorView];
      [indicatorView3 stopAnimating];

      indicatorView4 = [(AXPronunciationDictationCell *)self indicatorView];
      [indicatorView4 removeFromSuperview];

      indicatorView2 = [(AXPronunciationDictationCell *)self dictateButton];
      [(AXPronunciationDictationCell *)self setDictateView:indicatorView2];
    }

    [(AXPronunciationDictationCell *)self layoutSubviews];
  }
}

- (void)setDictationButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_dictationButtonEnabled = enabled;
  dictateButton = [(AXPronunciationDictationCell *)self dictateButton];
  [dictateButton setEnabled:enabledCopy];

  [(AXPronunciationDictationCell *)self layoutSubviews];
}

- (void)setShowsDictationButton:(BOOL)button
{
  buttonCopy = button;
  dictateButton = [(AXPronunciationDictationCell *)self dictateButton];
  [dictateButton setHidden:!buttonCopy];

  [(AXPronunciationDictationCell *)self layoutSubviews];
}

- (void)setDictateView:(id)view
{
  viewCopy = view;
  contentView = [(AXPronunciationDictationCell *)self contentView];
  contentView2 = [(AXPronunciationDictationCell *)self contentView];
  [contentView2 addSubview:viewCopy];

  v6 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:6 relatedBy:0 toItem:contentView attribute:6 multiplier:1.0 constant:-15.0];
  [contentView addConstraint:v6];

  v7 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:30.0];
  [contentView addConstraint:v7];

  dictateButton = [(AXPronunciationDictationCell *)self dictateButton];
  v9 = [dictateButton imageForState:0];

  [v9 size];
  v11 = v10 * 30.0;
  [v9 size];
  v13 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v11 / v12];
  [contentView addConstraint:v13];

  v14 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];

  [contentView addConstraint:v14];
}

- (id)dictateView
{
  if ([(AXPronunciationDictationCell *)self showsSpinner])
  {
    [(AXPronunciationDictationCell *)self indicatorView];
  }

  else
  {
    [(AXPronunciationDictationCell *)self dictateButton];
  }
  v3 = ;

  return v3;
}

@end
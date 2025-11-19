@interface AXPronunciationDictationCell
- (AXPronunciationDictationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)dictateView;
- (void)layoutSubviews;
- (void)setDictateView:(id)a3;
- (void)setDictationButtonEnabled:(BOOL)a3;
- (void)setShowsDictationButton:(BOOL)a3;
- (void)setShowsSpinner:(BOOL)a3;
@end

@implementation AXPronunciationDictationCell

- (AXPronunciationDictationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v35.receiver = self;
  v35.super_class = AXPronunciationDictationCell;
  v5 = [(AXPronunciationDictationCell *)&v35 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = [UIButton buttonWithType:0];
    [(AXPronunciationDictationCell *)v5 setDictateButton:v6];

    v7 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [v7 setTitle:0 forState:0];

    v8 = [(AXPronunciationDictationCell *)v5 dictateButton];
    v9 = settingsLocString(@"DICTATE_BUTTON_TITLE", @"VoiceOverSettings");
    [v8 setAccessibilityLabel:v9];

    v10 = UIAccessibilityTraitButton;
    v11 = UIAccessibilityTraitStartsMediaSession;
    v12 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [v12 setAccessibilityTraits:v11 | v10];

    v13 = settingsLocString(@"DICTATE_HINT", @"VoiceOverSettings");
    v14 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [v14 setAccessibilityHint:v13];

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [UIImage imageNamed:@"dictate" inBundle:v15];

    v17 = [(AXPronunciationDictationCell *)v5 tintColor];
    v18 = [v16 imageWithTintColor:v17 renderingMode:1];

    v19 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [v19 setImage:v18 forState:0];

    v20 = [(AXPronunciationDictationCell *)v5 dictateButton];
    [(AXPronunciationDictationCell *)v5 setDictateView:v20];

    v21 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(AXPronunciationDictationCell *)v5 setIndicatorView:v21];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [(AXPronunciationDictationCell *)v5 dictateButton];
    v36[0] = v22;
    v23 = [(AXPronunciationDictationCell *)v5 indicatorView];
    v36[1] = v23;
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

    v29 = [(AXPronunciationDictationCell *)v5 textField];
    [v29 setAccessibilityIdentifier:@"UIAccessibilityPronunciationEditorDictationCell"];
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

  v4 = [(AXPronunciationDictationCell *)self dictateButton];
  [v4 frame];
  if (v5 <= 0.0)
  {
  }

  else
  {
    v6 = [(AXPronunciationDictationCell *)self dictateButton];
    v7 = [v6 isHidden];

    if ((v7 & 1) == 0)
    {
      v8 = [(AXPronunciationDictationCell *)self dictateButton];
      [v8 frame];
      v10 = v9 * 0.5;

      v11 = +[CAShapeLayer layer];
      v12 = [UIBezierPath bezierPathWithRoundedRect:v10 * -0.5 cornerRadius:0.0, v10 + v10, v10 + v10, v10];
      -[CAShapeLayer setPath:](v11, "setPath:", [v12 CGPath]);

      v13 = +[UIColor clearColor];
      -[CAShapeLayer setFillColor:](v11, "setFillColor:", [v13 CGColor]);

      v14 = [(AXPronunciationDictationCell *)self tintColor];
      -[CAShapeLayer setStrokeColor:](v11, "setStrokeColor:", [v14 CGColor]);

      [(CAShapeLayer *)v11 setLineWidth:1.0];
      v15 = [(AXPronunciationDictationCell *)self dictateButton];
      v16 = [v15 layer];
      [v16 addSublayer:v11];

      v17 = self->_listeningCircle;
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
    v18 = [(AXPronunciationDictationCell *)self dictateButton];
    v19 = [v18 isHidden];

    if ((v19 & 1) == 0)
    {
      v17 = [(AXPronunciationDictationCell *)self dictateButton];
      v20 = [v17 layer];
      v21 = self->_listeningCircle;
      v22 = [(AXPronunciationDictationCell *)self layer];
      v23 = [v22 sublayers];
      [v20 insertSublayer:v21 atIndex:{objc_msgSend(v23, "count")}];

      goto LABEL_9;
    }
  }

LABEL_10:
  [(AXPronunciationDictationCell *)self bounds];
  v25 = v24;
  v26 = [(AXPronunciationDictationCell *)self textField];
  [v26 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [(AXPronunciationDictationCell *)self textField];
  [v33 setFrame:{v28, v30, (v25 - v28) * 0.75, v32}];
}

- (void)setShowsSpinner:(BOOL)a3
{
  if (self->_showsSpinner != a3)
  {
    self->_showsSpinner = a3;
    if (a3)
    {
      v5 = [(AXPronunciationDictationCell *)self dictateButton];
      [v5 removeFromSuperview];

      v6 = [(AXPronunciationDictationCell *)self indicatorView];
      [(AXPronunciationDictationCell *)self setDictateView:v6];

      v7 = [(AXPronunciationDictationCell *)self indicatorView];
      [v7 startAnimating];
    }

    else
    {
      v8 = [(AXPronunciationDictationCell *)self indicatorView];
      [v8 stopAnimating];

      v9 = [(AXPronunciationDictationCell *)self indicatorView];
      [v9 removeFromSuperview];

      v7 = [(AXPronunciationDictationCell *)self dictateButton];
      [(AXPronunciationDictationCell *)self setDictateView:v7];
    }

    [(AXPronunciationDictationCell *)self layoutSubviews];
  }
}

- (void)setDictationButtonEnabled:(BOOL)a3
{
  v3 = a3;
  self->_dictationButtonEnabled = a3;
  v5 = [(AXPronunciationDictationCell *)self dictateButton];
  [v5 setEnabled:v3];

  [(AXPronunciationDictationCell *)self layoutSubviews];
}

- (void)setShowsDictationButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXPronunciationDictationCell *)self dictateButton];
  [v5 setHidden:!v3];

  [(AXPronunciationDictationCell *)self layoutSubviews];
}

- (void)setDictateView:(id)a3
{
  v4 = a3;
  v15 = [(AXPronunciationDictationCell *)self contentView];
  v5 = [(AXPronunciationDictationCell *)self contentView];
  [v5 addSubview:v4];

  v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:6 relatedBy:0 toItem:v15 attribute:6 multiplier:1.0 constant:-15.0];
  [v15 addConstraint:v6];

  v7 = [NSLayoutConstraint constraintWithItem:v4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:30.0];
  [v15 addConstraint:v7];

  v8 = [(AXPronunciationDictationCell *)self dictateButton];
  v9 = [v8 imageForState:0];

  [v9 size];
  v11 = v10 * 30.0;
  [v9 size];
  v13 = [NSLayoutConstraint constraintWithItem:v4 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v11 / v12];
  [v15 addConstraint:v13];

  v14 = [NSLayoutConstraint constraintWithItem:v4 attribute:10 relatedBy:0 toItem:v15 attribute:10 multiplier:1.0 constant:0.0];

  [v15 addConstraint:v14];
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
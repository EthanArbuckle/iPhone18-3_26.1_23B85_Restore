@interface AXMotionCuesColorView
- (AXMotionCuesColorDelegate)delegate;
- (AXMotionCuesColorView)initWithFrame:(CGRect)a3 color:(int)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (id)_uiColor;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_configureView;
- (void)_userDidTapOnView:(id)a3;
- (void)setHighlight:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation AXMotionCuesColorView

- (AXMotionCuesColorView)initWithFrame:(CGRect)a3 color:(int)a4
{
  v8.receiver = self;
  v8.super_class = AXMotionCuesColorView;
  v5 = [(AXMotionCuesColorView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_color = a4;
    [(AXMotionCuesColorView *)v5 _configureView];
  }

  return v6;
}

- (void)_configureView
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AXMotionCuesColorView *)self set_colorView:v3];

  v4 = [(AXMotionCuesColorView *)self _colorView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(AXMotionCuesColorView *)self _colorView];
  [v5 setContentMode:2];

  v6 = [(AXMotionCuesColorView *)self _uiColor];
  v7 = [(AXMotionCuesColorView *)self _colorView];
  [v7 setTintColor:v6];

  v8 = [(AXMotionCuesColorView *)self _colorView];
  [(AXMotionCuesColorView *)self addSubview:v8];

  v31 = [(AXMotionCuesColorView *)self _colorView];
  v30 = [v31 leadingAnchor];
  v29 = [(AXMotionCuesColorView *)self leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v32[0] = v28;
  v27 = [(AXMotionCuesColorView *)self _colorView];
  v26 = [v27 trailingAnchor];
  v25 = [(AXMotionCuesColorView *)self trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v32[1] = v24;
  v23 = [(AXMotionCuesColorView *)self _colorView];
  v22 = [v23 topAnchor];
  v21 = [(AXMotionCuesColorView *)self topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v32[2] = v20;
  v19 = [(AXMotionCuesColorView *)self _colorView];
  v9 = [v19 bottomAnchor];
  v10 = [(AXMotionCuesColorView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v32[3] = v11;
  v12 = [(AXMotionCuesColorView *)self _colorView];
  v13 = [v12 heightAnchor];
  v14 = [(AXMotionCuesColorView *)self _colorView];
  v15 = [v14 widthAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v32[4] = v16;
  v17 = [NSArray arrayWithObjects:v32 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_userDidTapOnView:"];
  [v18 setMinimumPressDuration:0.0];
  [v18 setCancelPastAllowableMovement:1];
  [v18 setDelegate:self];
  [(AXMotionCuesColorView *)self addGestureRecognizer:v18];
}

- (void)setSelected:(BOOL)a3
{
  self->_selected = a3;
  if (a3)
  {
    v4 = @"checkmark.circle.fill";
  }

  else
  {
    v4 = @"circle.fill";
  }

  v7 = [UIImage systemImageNamed:v4 compatibleWithTraitCollection:0];
  v5 = [v7 imageWithRenderingMode:2];
  v6 = [(AXMotionCuesColorView *)self _colorView];
  [v6 setImage:v5];
}

- (void)_userDidTapOnView:(id)a3
{
  v4 = [a3 state];
  [(AXMotionCuesColorView *)self setHighlight:(v4 - 1) < 2];
  if (v4 == &dword_0 + 3)
  {
    v5 = [(AXMotionCuesColorView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(AXMotionCuesColorView *)self delegate];
      [v7 userDidSelectMotionCuesColor:{-[AXMotionCuesColorView color](self, "color")}];
    }
  }
}

- (void)setHighlight:(BOOL)a3
{
  if (self->_highlight != a3)
  {
    self->_highlight = a3;
    v3 = 1.0;
    if (a3)
    {
      v3 = 0.5;
    }

    [(AXMotionCuesColorView *)self setAlpha:v3];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXMotionCuesColorView *)self gestureRecognizers];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v2 = [(AXMotionCuesColorView *)self color];

  return [AXMotionCuesColorCell nameForColor:v2];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AXMotionCuesColorView *)self selected];
  v3 = &UIAccessibilityTraitSelected;
  if (!v2)
  {
    v3 = &UIAccessibilityTraitNone;
  }

  return *v3;
}

- (id)_uiColor
{
  v2 = [(AXMotionCuesColorView *)self color];
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v3 = +[UIColor systemGreenColor];
      goto LABEL_15;
    }

    if (v2 != 5)
    {
      if (v2 == 6)
      {
        v3 = +[UIColor systemPurpleColor];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v3 = +[UIColor systemBlueColor];
  }

  else
  {
    if (v2 == 1)
    {
      v3 = +[UIColor systemRedColor];
      goto LABEL_15;
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v3 = +[UIColor systemYellowColor];
        goto LABEL_15;
      }

LABEL_12:
      v3 = +[UIColor labelColor];
      goto LABEL_15;
    }

    v3 = +[UIColor systemOrangeColor];
  }

LABEL_15:

  return v3;
}

- (AXMotionCuesColorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
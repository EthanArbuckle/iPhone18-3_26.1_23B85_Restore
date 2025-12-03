@interface AXMotionCuesColorView
- (AXMotionCuesColorDelegate)delegate;
- (AXMotionCuesColorView)initWithFrame:(CGRect)frame color:(int)color;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (id)_uiColor;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_configureView;
- (void)_userDidTapOnView:(id)view;
- (void)setHighlight:(BOOL)highlight;
- (void)setSelected:(BOOL)selected;
@end

@implementation AXMotionCuesColorView

- (AXMotionCuesColorView)initWithFrame:(CGRect)frame color:(int)color
{
  v8.receiver = self;
  v8.super_class = AXMotionCuesColorView;
  v5 = [(AXMotionCuesColorView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_color = color;
    [(AXMotionCuesColorView *)v5 _configureView];
  }

  return v6;
}

- (void)_configureView
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AXMotionCuesColorView *)self set_colorView:v3];

  _colorView = [(AXMotionCuesColorView *)self _colorView];
  [_colorView setTranslatesAutoresizingMaskIntoConstraints:0];

  _colorView2 = [(AXMotionCuesColorView *)self _colorView];
  [_colorView2 setContentMode:2];

  _uiColor = [(AXMotionCuesColorView *)self _uiColor];
  _colorView3 = [(AXMotionCuesColorView *)self _colorView];
  [_colorView3 setTintColor:_uiColor];

  _colorView4 = [(AXMotionCuesColorView *)self _colorView];
  [(AXMotionCuesColorView *)self addSubview:_colorView4];

  _colorView5 = [(AXMotionCuesColorView *)self _colorView];
  leadingAnchor = [_colorView5 leadingAnchor];
  leadingAnchor2 = [(AXMotionCuesColorView *)self leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[0] = v28;
  _colorView6 = [(AXMotionCuesColorView *)self _colorView];
  trailingAnchor = [_colorView6 trailingAnchor];
  trailingAnchor2 = [(AXMotionCuesColorView *)self trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[1] = v24;
  _colorView7 = [(AXMotionCuesColorView *)self _colorView];
  topAnchor = [_colorView7 topAnchor];
  topAnchor2 = [(AXMotionCuesColorView *)self topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[2] = v20;
  _colorView8 = [(AXMotionCuesColorView *)self _colorView];
  bottomAnchor = [_colorView8 bottomAnchor];
  bottomAnchor2 = [(AXMotionCuesColorView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[3] = v11;
  _colorView9 = [(AXMotionCuesColorView *)self _colorView];
  heightAnchor = [_colorView9 heightAnchor];
  _colorView10 = [(AXMotionCuesColorView *)self _colorView];
  widthAnchor = [_colorView10 widthAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  v32[4] = v16;
  v17 = [NSArray arrayWithObjects:v32 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_userDidTapOnView:"];
  [v18 setMinimumPressDuration:0.0];
  [v18 setCancelPastAllowableMovement:1];
  [v18 setDelegate:self];
  [(AXMotionCuesColorView *)self addGestureRecognizer:v18];
}

- (void)setSelected:(BOOL)selected
{
  self->_selected = selected;
  if (selected)
  {
    v4 = @"checkmark.circle.fill";
  }

  else
  {
    v4 = @"circle.fill";
  }

  v7 = [UIImage systemImageNamed:v4 compatibleWithTraitCollection:0];
  v5 = [v7 imageWithRenderingMode:2];
  _colorView = [(AXMotionCuesColorView *)self _colorView];
  [_colorView setImage:v5];
}

- (void)_userDidTapOnView:(id)view
{
  state = [view state];
  [(AXMotionCuesColorView *)self setHighlight:(state - 1) < 2];
  if (state == &dword_0 + 3)
  {
    delegate = [(AXMotionCuesColorView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(AXMotionCuesColorView *)self delegate];
      [delegate2 userDidSelectMotionCuesColor:{-[AXMotionCuesColorView color](self, "color")}];
    }
  }
}

- (void)setHighlight:(BOOL)highlight
{
  if (self->_highlight != highlight)
  {
    self->_highlight = highlight;
    v3 = 1.0;
    if (highlight)
    {
      v3 = 0.5;
    }

    [(AXMotionCuesColorView *)self setAlpha:v3];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  gestureRecognizers = [(AXMotionCuesColorView *)self gestureRecognizers];
  v9 = [gestureRecognizers containsObject:recognizerCopy];

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
  color = [(AXMotionCuesColorView *)self color];

  return [AXMotionCuesColorCell nameForColor:color];
}

- (unint64_t)accessibilityTraits
{
  selected = [(AXMotionCuesColorView *)self selected];
  v3 = &UIAccessibilityTraitSelected;
  if (!selected)
  {
    v3 = &UIAccessibilityTraitNone;
  }

  return *v3;
}

- (id)_uiColor
{
  color = [(AXMotionCuesColorView *)self color];
  if (color > 3)
  {
    if (color == 4)
    {
      v3 = +[UIColor systemGreenColor];
      goto LABEL_15;
    }

    if (color != 5)
    {
      if (color == 6)
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
    if (color == 1)
    {
      v3 = +[UIColor systemRedColor];
      goto LABEL_15;
    }

    if (color != 2)
    {
      if (color == 3)
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
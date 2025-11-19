@interface THNavigationOverlayView
- (NSString)title;
- (THNavigationOverlayView)initWithFrame:(CGRect)a3;
- (THNavigationOverlayView)initWithFrame:(CGRect)a3 blissClassicStyle:(BOOL)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)p_customButtonWithFrame:(CGRect)a3;
- (void)_updateConstraints;
- (void)_updateTheme;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)layoutSubviewsWithPill;
- (void)layoutSubviewsWithoutPill;
- (void)pSetControlColors;
- (void)p_loadCachedPillButtonImages;
- (void)p_setNextButtonTitle;
- (void)p_setPrevButtonTitle;
- (void)setAlternativeNextCaption:(id)a3;
- (void)setAlternativePrevCaption:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setNextButtonTitle:(id)a3 andEnable:(BOOL)a4;
- (void)setOverlayHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setPrevButtonTitle:(id)a3 andEnable:(BOOL)a4;
- (void)setTheme:(id)a3;
- (void)setTheme:(id)a3 force:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)setTransparentMode:(BOOL)a3;
@end

@implementation THNavigationOverlayView

- (THNavigationOverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  BCReportAssertionFailureWithMessage();

  return [(THNavigationOverlayView *)self initWithFrame:0 blissClassicStyle:x, y, width, height];
}

- (THNavigationOverlayView)initWithFrame:(CGRect)a3 blissClassicStyle:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = THNavigationOverlayView;
  v5 = [(THNavigationOverlayView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [BEHairlineDividerView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v5->_separator = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v5->_prevButton = [(THNavigationOverlayView *)v5 p_customButtonWithFrame:CGRectZero.origin.x, y, width, height];
    v5->_nextButton = [(THNavigationOverlayView *)v5 p_customButtonWithFrame:CGRectZero.origin.x, y, width, height];
    v5->_titleLabel = objc_alloc_init(UILabel);
    v10 = [UIView alloc];
    [(THNavigationOverlayView *)v5 bounds];
    v5->_backgroundView = [v10 initWithFrame:?];
    v5->_blissClassicStyle = a4;
    [(THNavigationOverlayView *)v5 addSubview:v5->_backgroundView];
    [(THNavigationOverlayView *)v5 addSubview:v5->_separator];
    [(THNavigationOverlayView *)v5 addSubview:v5->_prevButton];
    [(THNavigationOverlayView *)v5 addSubview:v5->_nextButton];
    [(THNavigationOverlayView *)v5 addSubview:v5->_titleLabel];
    [(THNavigationOverlayView *)v5 setTintAdjustmentMode:0];
    [(UIButton *)v5->_prevButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v5->_nextButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(THNavigationOverlayView *)v5 _updateConstraints];
    [(THNavigationOverlayView *)v5 pSetControlColors];
    [(THNavigationOverlayView *)v5 setOverlayHidden:1 animated:0];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNavigationOverlayView;
  [(THNavigationOverlayView *)&v3 dealloc];
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = THNavigationOverlayView;
  [(THNavigationOverlayView *)&v5 setBackgroundColor:?];
  [(UIView *)self->_backgroundView setBackgroundColor:a3];
}

- (void)layoutSubviews
{
  if ([(THNavigationOverlayView *)self blissClassicStyle])
  {
    [(THNavigationOverlayView *)self layoutSubviewsWithPill];
  }

  else
  {
    [(THNavigationOverlayView *)self layoutSubviewsWithoutPill];
  }

  [(THNavigationOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [-[THNavigationOverlayView window](self "window")];
  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView setFrame:v4, v6, v8, v10 + v11];
}

- (void)layoutSubviewsWithPill
{
  [(THNavigationOverlayView *)self p_loadCachedPillButtonImages];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v24[0] = [(THNavigationOverlayView *)self prevButton];
  v24[1] = [(THNavigationOverlayView *)self nextButton];
  v3 = [NSArray arrayWithObjects:v24 count:2];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [(THTheme *)self->_theme identifier];
        if ([v9 isEqualToString:kIMThemeIdentifierBlissClassicTheme])
        {
          [objc_msgSend(v8 "layer")];
        }

        [objc_msgSend(v8 "layer")];
        [objc_msgSend(v8 "layer")];
        [v8 setClipsToBounds:1];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v5);
  }

  [(UIButton *)[(THNavigationOverlayView *)self prevButton] setImage:[(THNavigationOverlayView *)self cachedPillModePrevImage] forState:0];
  [(UIButton *)[(THNavigationOverlayView *)self prevButton] setImageEdgeInsets:0.0, 0.0, 0.0, 8.0];
  [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self prevButton] titleLabel] setFont:[UIFont systemFontOfSize:13.0]];
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] setImage:[(THNavigationOverlayView *)self cachedPillModeNextImage] forState:0];
  [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleLabel] setFont:[UIFont systemFontOfSize:13.0]];
  [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleLabel] frame];
  v10 = [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleLabel] text];
  v22 = NSFontAttributeName;
  v23 = [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleLabel] font];
  [(NSString *)v10 sizeWithAttributes:[NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1]];
  v12 = v11;
  [(UIImageView *)[(UIButton *)[(THNavigationOverlayView *)self nextButton] imageView] frame];
  v14 = v13;
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] setImageEdgeInsets:0.0, v12 + 8.0, 0.0, -(v12 + 8.0)];
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] setTitleEdgeInsets:0.0, -v14, 0.0, v14];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  [(UILabel *)[(THNavigationOverlayView *)self titleLabel] setFrame:CGRectZero.origin.x, y, width, height];
  [(BEHairlineDividerView *)[(THNavigationOverlayView *)self separator] setFrame:CGRectZero.origin.x, y, width, height];
}

- (void)layoutSubviewsWithoutPill
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23[0] = [(THNavigationOverlayView *)self prevButton];
  v23[1] = [(THNavigationOverlayView *)self nextButton];
  v3 = [NSArray arrayWithObjects:v23 count:2];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        [objc_msgSend(v11 "layer")];
        [objc_msgSend(v11 "layer")];
        [objc_msgSend(v11 "layer")];
        [v11 setClipsToBounds:0];
        [v11 setImageEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
        [v11 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  [(UILabel *)[(THNavigationOverlayView *)self titleLabel] setFont:[UIFont systemFontOfSize:13.0]];
  [(BEHairlineDividerView *)[(THNavigationOverlayView *)self separator] setHorizontal:1];
  [(UIButton *)[(THNavigationOverlayView *)self prevButton] setImage:0 forState:0];
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] setImage:0 forState:0];
  [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self prevButton] titleLabel] setFont:[UIFont systemFontOfSize:13.0]];
  [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleLabel] setFont:[UIFont systemFontOfSize:13.0]];
  [(UIButton *)[(THNavigationOverlayView *)self prevButton] sizeToFit];
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] sizeToFit];
  [(UILabel *)[(THNavigationOverlayView *)self titleLabel] sizeToFit];
  [(THNavigationOverlayView *)self bounds];
  v13 = v12;
  [(THNavigationOverlayView *)self bounds];
  v15 = v14;
  [(THNavigationOverlayView *)self bounds];
  v17 = v16;
  [+[UIScreen mainScreen](UIScreen scale];
  [(BEHairlineDividerView *)[(THNavigationOverlayView *)self separator] setFrame:v13, v15, v17, 1.0 / v18];
}

- (void)pSetControlColors
{
  v3 = +[UIColor whiteColor];
  v4 = [(THNavigationOverlayView *)self prevButton];
  v5 = [(THNavigationOverlayView *)self nextButton];
  if ([(THNavigationOverlayView *)self blissClassicStyle])
  {
    [(UIButton *)v4 setTitleColor:v3 forState:0];
    [(UIButton *)v4 setTitleColor:0 forState:1];
    [(UIButton *)v5 setTitleColor:v3 forState:0];
    [(UIButton *)v5 setTitleColor:0 forState:1];
    [(UILabel *)[(THNavigationOverlayView *)self titleLabel] setTextColor:+[UIColor clearColor]];
    v6 = [(THNavigationOverlayView *)self separator];
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    [(THNavigationOverlayView *)self theme];
    v8 = TSUDynamicCast();
    v9 = [v8 headerTextColorDimmed];
    v10 = [v8 tintColor];
    [(UIButton *)v4 setTitleColor:v10 forState:0];
    [(UIButton *)v5 setTitleColor:v10 forState:0];
    [(UIButton *)v4 setTitleColor:v9 forState:2];
    [(UIButton *)v5 setTitleColor:v9 forState:2];
    [(UILabel *)[(THNavigationOverlayView *)self titleLabel] setTextColor:v9];
    v11 = [(THNavigationOverlayView *)self separator];
    -[BEHairlineDividerView setDividerColor:](v11, "setDividerColor:", [v8 separatorColor]);
    v7 = [(THNavigationOverlayView *)self separatorsVisible]^ 1;
    v6 = v11;
  }

  [(BEHairlineDividerView *)v6 setHidden:v7];
}

- (void)setTheme:(id)a3
{
  theme = self->_theme;
  if (theme != a3)
  {

    self->_theme = a3;

    [(THNavigationOverlayView *)self _updateTheme];
  }
}

- (void)setTransparentMode:(BOOL)a3
{
  if (self->_transparentMode != a3)
  {
    self->_transparentMode = a3;
    [(THNavigationOverlayView *)self _updateTheme];
  }
}

- (void)_updateTheme
{
  if (self->_transparentMode)
  {
    v3 = +[UIColor clearColor];
  }

  else
  {
    v3 = [(THTheme *)self->_theme backgroundColorForTraitEnvironment:self];
  }

  [(THNavigationOverlayView *)self setBackgroundColor:v3];
  [(THNavigationOverlayView *)self setTintColor:[(THTheme *)self->_theme tintColor]];

  [(THNavigationOverlayView *)self pSetControlColors];
}

- (void)setTheme:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  [(THNavigationOverlayView *)self setTheme:a3];
  if (v4)
  {

    [(THNavigationOverlayView *)self _updateTheme];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = THNavigationOverlayView;
  [(THNavigationOverlayView *)&v3 didMoveToWindow];
  [(THNavigationOverlayView *)self _updateTheme];
}

- (void)_updateConstraints
{
  [(UILabel *)[(THNavigationOverlayView *)self titleLabel] removeConstraints:[(UILabel *)[(THNavigationOverlayView *)self titleLabel] constraints]];
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] removeConstraints:[(UIButton *)[(THNavigationOverlayView *)self nextButton] constraints]];
  [(UIButton *)[(THNavigationOverlayView *)self prevButton] removeConstraints:[(UIButton *)[(THNavigationOverlayView *)self prevButton] constraints]];
  v16[0] = [-[UILabel centerXAnchor](-[THNavigationOverlayView titleLabel](self "titleLabel")];
  v16[1] = [-[UILabel centerYAnchor](-[THNavigationOverlayView titleLabel](self "titleLabel")];
  v16[2] = [-[UIButton centerYAnchor](-[THNavigationOverlayView prevButton](self "prevButton")];
  v16[3] = [-[UIButton centerYAnchor](-[THNavigationOverlayView nextButton](self "nextButton")];
  v3 = [(UIButton *)[(THNavigationOverlayView *)self prevButton] leadingAnchor];
  v4 = [-[THNavigationOverlayView safeAreaLayoutGuide](self "safeAreaLayoutGuide")];
  v5 = [(THNavigationOverlayView *)self blissClassicStyle];
  v6 = 20.0;
  if (v5)
  {
    v6 = 10.0;
  }

  v16[4] = [v3 constraintEqualToAnchor:v4 constant:v6];
  v7 = [(UIButton *)[(THNavigationOverlayView *)self nextButton] trailingAnchor];
  v8 = [-[THNavigationOverlayView safeAreaLayoutGuide](self "safeAreaLayoutGuide")];
  v9 = [(THNavigationOverlayView *)self blissClassicStyle];
  v10 = -20.0;
  if (v9)
  {
    v10 = -10.0;
  }

  v16[5] = [v7 constraintEqualToAnchor:v8 constant:v10];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v16 count:6]];
  v11 = [(THNavigationOverlayView *)self blissClassicStyle];
  v12 = [(THNavigationOverlayView *)self prevButton];
  if (v11)
  {
    v15[0] = [-[UIButton widthAnchor](v12 "widthAnchor")];
    v15[1] = [-[UIButton widthAnchor](-[THNavigationOverlayView nextButton](self "nextButton")];
    v13 = v15;
  }

  else
  {
    v14[0] = [-[UIButton heightAnchor](v12 "heightAnchor")];
    v14[1] = [-[UIButton heightAnchor](-[THNavigationOverlayView nextButton](self "nextButton")];
    v13 = v14;
  }

  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v13 count:2]];
}

- (NSString)title
{
  v2 = [(THNavigationOverlayView *)self titleLabel];

  return [(UILabel *)v2 text];
}

- (void)setTitle:(id)a3
{
  [(UILabel *)[(THNavigationOverlayView *)self titleLabel] setText:a3];

  [(THNavigationOverlayView *)self setNeedsLayout];
}

- (void)setOverlayHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
  {
    [(THNavigationOverlayView *)self showHideAnimationDuration];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_13FAB0;
    v8[3] = &unk_45B2C0;
    v9 = a3;
    v8[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_13FB08;
    v6[3] = &unk_45DE60;
    v7 = a3;
    v6[4] = self;
    [UIView animateWithDuration:v8 animations:v6 completion:?];
  }

  else if (a3)
  {
    [(THNavigationOverlayView *)self setAlpha:0.0];

    [(THNavigationOverlayView *)self setHidden:1];
  }

  else
  {
    [(THNavigationOverlayView *)self setHidden:0];

    [(THNavigationOverlayView *)self setAlpha:1.0];
  }
}

- (void)setAlternativePrevCaption:(id)a3
{
  v5 = a3;

  self->_alternativePrevCaption = a3;

  [(THNavigationOverlayView *)self p_setPrevButtonTitle];
}

- (void)setAlternativeNextCaption:(id)a3
{
  v5 = a3;

  self->_alternativeNextCaption = a3;

  [(THNavigationOverlayView *)self p_setNextButtonTitle];
}

- (void)setPrevButtonTitle:(id)a3 andEnable:(BOOL)a4
{
  v4 = a4;
  v7 = a3;

  self->_prevCaption = a3;
  [(THNavigationOverlayView *)self p_setPrevButtonTitle];
  [(UIButton *)[(THNavigationOverlayView *)self prevButton] setEnabled:v4];
  objc_opt_class();
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] _titleView];
  v8 = TSUDynamicCast();

  [v8 _setWantsUnderlineForAccessibilityButtonShapesEnabled:v4];
}

- (void)setNextButtonTitle:(id)a3 andEnable:(BOOL)a4
{
  v4 = a4;
  v7 = a3;

  self->_nextCaption = a3;
  [(THNavigationOverlayView *)self p_setNextButtonTitle];
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] setEnabled:v4];
  objc_opt_class();
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] _titleView];
  v8 = TSUDynamicCast();

  [v8 _setWantsUnderlineForAccessibilityButtonShapesEnabled:v4];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = THNavigationOverlayView;
  v7 = [(THNavigationOverlayView *)&v9 hitTest:a4 withEvent:?];
  [(UIButton *)[(THNavigationOverlayView *)self prevButton] frame];
  v10.x = x;
  v10.y = y;
  if (!CGRectContainsPoint(v12, v10))
  {
    [(UIButton *)[(THNavigationOverlayView *)self nextButton] frame];
    v11.x = x;
    v11.y = y;
    if (!CGRectContainsPoint(v13, v11))
    {
      return 0;
    }
  }

  return v7;
}

- (void)p_loadCachedPillButtonImages
{
  if (![(THNavigationOverlayView *)self cachedPillModePrevImage])
  {
    [(THNavigationOverlayView *)self setCachedPillModePrevImage:[UIImage th_imageNamed:@"ios_ib_history_nav_hud_arrow_back"]];
    v3 = [UIImage th_imageNamed:@"ios_ib_history_nav_hud_arrow_go"];

    [(THNavigationOverlayView *)self setCachedPillModeNextImage:v3];
  }
}

- (id)p_customButtonWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [UIButton buttonWithType:0];
  [(UIButton *)v7 setTitle:@"None" forState:0];
  [(UIButton *)v7 setContentVerticalAlignment:0];
  [(UILabel *)[(UIButton *)v7 titleLabel] setFont:[UIFont systemFontOfSize:13.0]];
  [(UIButton *)v7 setFrame:x, y, width, height];
  [(UIButton *)v7 setEnabled:0];
  return v7;
}

- (void)p_setPrevButtonTitle
{
  if ([(NSString *)[(THNavigationOverlayView *)self prevCaption] length])
  {
    v3 = [(THNavigationOverlayView *)self prevCaption];
  }

  else
  {
    v4 = [(THNavigationOverlayView *)self alternativePrevCaption];
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = &stru_471858;
    }
  }

  if (([(__CFString *)v3 isEqual:[(UIButton *)[(THNavigationOverlayView *)self prevButton] titleForState:0]]& 1) == 0)
  {
    [(UIButton *)[(THNavigationOverlayView *)self prevButton] setTitle:v3 forState:0];
    [(UIButton *)[(THNavigationOverlayView *)self prevButton] setHidden:[(__CFString *)v3 length]== 0];

    [(THNavigationOverlayView *)self setNeedsLayout];
  }
}

- (void)p_setNextButtonTitle
{
  if ([(NSString *)[(THNavigationOverlayView *)self nextCaption] length])
  {
    v3 = [(THNavigationOverlayView *)self nextCaption];
  }

  else
  {
    v4 = [(THNavigationOverlayView *)self alternativeNextCaption];
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = &stru_471858;
    }
  }

  if (([(__CFString *)v3 isEqual:[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleForState:0]]& 1) == 0)
  {
    [(UIButton *)[(THNavigationOverlayView *)self nextButton] setTitle:v3 forState:0];
    [(UIButton *)[(THNavigationOverlayView *)self nextButton] setHidden:[(__CFString *)v3 length]== 0];

    [(THNavigationOverlayView *)self setNeedsLayout];
  }
}

@end
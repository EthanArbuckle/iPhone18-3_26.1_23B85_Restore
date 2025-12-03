@interface THNavigationOverlayView
- (NSString)title;
- (THNavigationOverlayView)initWithFrame:(CGRect)frame;
- (THNavigationOverlayView)initWithFrame:(CGRect)frame blissClassicStyle:(BOOL)style;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)p_customButtonWithFrame:(CGRect)frame;
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
- (void)setAlternativeNextCaption:(id)caption;
- (void)setAlternativePrevCaption:(id)caption;
- (void)setBackgroundColor:(id)color;
- (void)setNextButtonTitle:(id)title andEnable:(BOOL)enable;
- (void)setOverlayHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setPrevButtonTitle:(id)title andEnable:(BOOL)enable;
- (void)setTheme:(id)theme;
- (void)setTheme:(id)theme force:(BOOL)force;
- (void)setTitle:(id)title;
- (void)setTransparentMode:(BOOL)mode;
@end

@implementation THNavigationOverlayView

- (THNavigationOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  BCReportAssertionFailureWithMessage();

  return [(THNavigationOverlayView *)self initWithFrame:0 blissClassicStyle:x, y, width, height];
}

- (THNavigationOverlayView)initWithFrame:(CGRect)frame blissClassicStyle:(BOOL)style
{
  v12.receiver = self;
  v12.super_class = THNavigationOverlayView;
  v5 = [(THNavigationOverlayView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    v5->_blissClassicStyle = style;
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

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = THNavigationOverlayView;
  [(THNavigationOverlayView *)&v5 setBackgroundColor:?];
  [(UIView *)self->_backgroundView setBackgroundColor:color];
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
        identifier = [(THTheme *)self->_theme identifier];
        if ([identifier isEqualToString:kIMThemeIdentifierBlissClassicTheme])
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
  text = [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleLabel] text];
  v22 = NSFontAttributeName;
  font = [(UILabel *)[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleLabel] font];
  [(NSString *)text sizeWithAttributes:[NSDictionary dictionaryWithObjects:&font forKeys:&v22 count:1]];
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
  prevButton = [(THNavigationOverlayView *)self prevButton];
  nextButton = [(THNavigationOverlayView *)self nextButton];
  if ([(THNavigationOverlayView *)self blissClassicStyle])
  {
    [(UIButton *)prevButton setTitleColor:v3 forState:0];
    [(UIButton *)prevButton setTitleColor:0 forState:1];
    [(UIButton *)nextButton setTitleColor:v3 forState:0];
    [(UIButton *)nextButton setTitleColor:0 forState:1];
    [(UILabel *)[(THNavigationOverlayView *)self titleLabel] setTextColor:+[UIColor clearColor]];
    separator = [(THNavigationOverlayView *)self separator];
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    [(THNavigationOverlayView *)self theme];
    v8 = TSUDynamicCast();
    headerTextColorDimmed = [v8 headerTextColorDimmed];
    tintColor = [v8 tintColor];
    [(UIButton *)prevButton setTitleColor:tintColor forState:0];
    [(UIButton *)nextButton setTitleColor:tintColor forState:0];
    [(UIButton *)prevButton setTitleColor:headerTextColorDimmed forState:2];
    [(UIButton *)nextButton setTitleColor:headerTextColorDimmed forState:2];
    [(UILabel *)[(THNavigationOverlayView *)self titleLabel] setTextColor:headerTextColorDimmed];
    separator2 = [(THNavigationOverlayView *)self separator];
    -[BEHairlineDividerView setDividerColor:](separator2, "setDividerColor:", [v8 separatorColor]);
    v7 = [(THNavigationOverlayView *)self separatorsVisible]^ 1;
    separator = separator2;
  }

  [(BEHairlineDividerView *)separator setHidden:v7];
}

- (void)setTheme:(id)theme
{
  theme = self->_theme;
  if (theme != theme)
  {

    self->_theme = theme;

    [(THNavigationOverlayView *)self _updateTheme];
  }
}

- (void)setTransparentMode:(BOOL)mode
{
  if (self->_transparentMode != mode)
  {
    self->_transparentMode = mode;
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

- (void)setTheme:(id)theme force:(BOOL)force
{
  forceCopy = force;
  [(THNavigationOverlayView *)self setTheme:theme];
  if (forceCopy)
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
  leadingAnchor = [(UIButton *)[(THNavigationOverlayView *)self prevButton] leadingAnchor];
  v4 = [-[THNavigationOverlayView safeAreaLayoutGuide](self "safeAreaLayoutGuide")];
  blissClassicStyle = [(THNavigationOverlayView *)self blissClassicStyle];
  v6 = 20.0;
  if (blissClassicStyle)
  {
    v6 = 10.0;
  }

  v16[4] = [leadingAnchor constraintEqualToAnchor:v4 constant:v6];
  trailingAnchor = [(UIButton *)[(THNavigationOverlayView *)self nextButton] trailingAnchor];
  v8 = [-[THNavigationOverlayView safeAreaLayoutGuide](self "safeAreaLayoutGuide")];
  blissClassicStyle2 = [(THNavigationOverlayView *)self blissClassicStyle];
  v10 = -20.0;
  if (blissClassicStyle2)
  {
    v10 = -10.0;
  }

  v16[5] = [trailingAnchor constraintEqualToAnchor:v8 constant:v10];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v16 count:6]];
  blissClassicStyle3 = [(THNavigationOverlayView *)self blissClassicStyle];
  prevButton = [(THNavigationOverlayView *)self prevButton];
  if (blissClassicStyle3)
  {
    v15[0] = [-[UIButton widthAnchor](prevButton "widthAnchor")];
    v15[1] = [-[UIButton widthAnchor](-[THNavigationOverlayView nextButton](self "nextButton")];
    v13 = v15;
  }

  else
  {
    v14[0] = [-[UIButton heightAnchor](prevButton "heightAnchor")];
    v14[1] = [-[UIButton heightAnchor](-[THNavigationOverlayView nextButton](self "nextButton")];
    v13 = v14;
  }

  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v13 count:2]];
}

- (NSString)title
{
  titleLabel = [(THNavigationOverlayView *)self titleLabel];

  return [(UILabel *)titleLabel text];
}

- (void)setTitle:(id)title
{
  [(UILabel *)[(THNavigationOverlayView *)self titleLabel] setText:title];

  [(THNavigationOverlayView *)self setNeedsLayout];
}

- (void)setOverlayHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (animated)
  {
    [(THNavigationOverlayView *)self showHideAnimationDuration];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_13FAB0;
    v8[3] = &unk_45B2C0;
    hiddenCopy = hidden;
    v8[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_13FB08;
    v6[3] = &unk_45DE60;
    hiddenCopy2 = hidden;
    v6[4] = self;
    [UIView animateWithDuration:v8 animations:v6 completion:?];
  }

  else if (hidden)
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

- (void)setAlternativePrevCaption:(id)caption
{
  captionCopy = caption;

  self->_alternativePrevCaption = caption;

  [(THNavigationOverlayView *)self p_setPrevButtonTitle];
}

- (void)setAlternativeNextCaption:(id)caption
{
  captionCopy = caption;

  self->_alternativeNextCaption = caption;

  [(THNavigationOverlayView *)self p_setNextButtonTitle];
}

- (void)setPrevButtonTitle:(id)title andEnable:(BOOL)enable
{
  enableCopy = enable;
  titleCopy = title;

  self->_prevCaption = title;
  [(THNavigationOverlayView *)self p_setPrevButtonTitle];
  [(UIButton *)[(THNavigationOverlayView *)self prevButton] setEnabled:enableCopy];
  objc_opt_class();
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] _titleView];
  v8 = TSUDynamicCast();

  [v8 _setWantsUnderlineForAccessibilityButtonShapesEnabled:enableCopy];
}

- (void)setNextButtonTitle:(id)title andEnable:(BOOL)enable
{
  enableCopy = enable;
  titleCopy = title;

  self->_nextCaption = title;
  [(THNavigationOverlayView *)self p_setNextButtonTitle];
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] setEnabled:enableCopy];
  objc_opt_class();
  [(UIButton *)[(THNavigationOverlayView *)self nextButton] _titleView];
  v8 = TSUDynamicCast();

  [v8 _setWantsUnderlineForAccessibilityButtonShapesEnabled:enableCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v9.receiver = self;
  v9.super_class = THNavigationOverlayView;
  v7 = [(THNavigationOverlayView *)&v9 hitTest:event withEvent:?];
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

- (id)p_customButtonWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    prevCaption = [(THNavigationOverlayView *)self prevCaption];
  }

  else
  {
    alternativePrevCaption = [(THNavigationOverlayView *)self alternativePrevCaption];
    if (alternativePrevCaption)
    {
      prevCaption = alternativePrevCaption;
    }

    else
    {
      prevCaption = &stru_471858;
    }
  }

  if (([(__CFString *)prevCaption isEqual:[(UIButton *)[(THNavigationOverlayView *)self prevButton] titleForState:0]]& 1) == 0)
  {
    [(UIButton *)[(THNavigationOverlayView *)self prevButton] setTitle:prevCaption forState:0];
    [(UIButton *)[(THNavigationOverlayView *)self prevButton] setHidden:[(__CFString *)prevCaption length]== 0];

    [(THNavigationOverlayView *)self setNeedsLayout];
  }
}

- (void)p_setNextButtonTitle
{
  if ([(NSString *)[(THNavigationOverlayView *)self nextCaption] length])
  {
    nextCaption = [(THNavigationOverlayView *)self nextCaption];
  }

  else
  {
    alternativeNextCaption = [(THNavigationOverlayView *)self alternativeNextCaption];
    if (alternativeNextCaption)
    {
      nextCaption = alternativeNextCaption;
    }

    else
    {
      nextCaption = &stru_471858;
    }
  }

  if (([(__CFString *)nextCaption isEqual:[(UIButton *)[(THNavigationOverlayView *)self nextButton] titleForState:0]]& 1) == 0)
  {
    [(UIButton *)[(THNavigationOverlayView *)self nextButton] setTitle:nextCaption forState:0];
    [(UIButton *)[(THNavigationOverlayView *)self nextButton] setHidden:[(__CFString *)nextCaption length]== 0];

    [(THNavigationOverlayView *)self setNeedsLayout];
  }
}

@end
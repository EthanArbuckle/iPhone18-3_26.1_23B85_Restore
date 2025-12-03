@interface _ButtonsGroupViewController
- (BOOL)hasShownControls;
- (BOOL)hasVisibleControls;
- (_ButtonsGroupViewController)initWithFloatingButtonItems:(id)items visualEffectDisabled:(BOOL)disabled;
- (void)_checkItemsForBackgroundFlag;
- (void)_reloadView;
- (void)applyBorderAndShadow;
- (void)refreshControls;
- (void)setBackgroundDisabled:(BOOL)disabled;
- (void)setBlurGroupName:(id)name;
- (void)traitCollectionDidChange:(id)change;
- (void)updateVisibilityForControls:(int64_t)controls;
- (void)viewDidLoad;
@end

@implementation _ButtonsGroupViewController

- (void)_checkItemsForBackgroundFlag
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_floatingButtonItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v9 + 1) + 8 * v7) hidesBackground])
        {
          v8 = 0;
          goto LABEL_11;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  [(_ButtonsGroupViewController *)self setBackgroundDisabled:v8];
}

- (void)refreshControls
{
  v3 = +[NSMutableArray array];
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v5 = [NSPredicate predicateWithBlock:&stru_101660518];
  v6 = [arrangedSubviews filteredArrayUsingPredicate:v5];
  v7 = [v6 mutableCopy];

  floatingButtonItems = self->_floatingButtonItems;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000140B0;
  v14 = &unk_101660540;
  v15 = v3;
  v16 = v7;
  v9 = v7;
  v10 = v3;
  [(NSArray *)floatingButtonItems enumerateObjectsUsingBlock:&v11];
  [(UIStackView *)self->_stackView _maps_setArrangedSubviews:v10, v11, v12, v13, v14];
}

- (BOOL)hasShownControls
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_floatingButtonItems;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        button = [*(*(&v9 + 1) + 8 * i) button];
        v7 = button;
        if (button && ([button isHidden] & 1) == 0)
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = _ButtonsGroupViewController;
  [(_ButtonsGroupViewController *)&v14 viewDidLoad];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_UISolariumEnabled())
  {
    [(UIStackView *)self->_stackView setSpacing:0.0];
  }

  else
  {
    view = [(_ButtonsGroupViewController *)self view];
    window = [view window];
    screen = [window screen];
    if (screen)
    {
      window2 = [view window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v9 = v8;
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
      v9 = v10;
    }

    v11 = 1.0;
    if (v9 > 0.0)
    {
      v11 = 1.0 / v9;
    }

    [(UIStackView *)self->_stackView setSpacing:v11];
  }

  [(UIStackView *)self->_stackView setAlignment:0];
  [(UIStackView *)self->_stackView setAxis:1];
  LODWORD(v12) = 1148829696;
  [(UIStackView *)self->_stackView setContentHuggingPriority:0 forAxis:v12];
  LODWORD(v13) = 1148829696;
  [(UIStackView *)self->_stackView setContentCompressionResistancePriority:0 forAxis:v13];
  [(_ButtonsGroupViewController *)self _reloadView];
}

- (void)_reloadView
{
  [(CardView *)self->_cardView removeFromSuperview];
  [(UIStackView *)self->_stackView removeFromSuperview];
  v16 = objc_alloc_init(NSMutableArray);
  if (self->_backgroundDisabled)
  {
    goto LABEL_5;
  }

  if (!self->_cardView)
  {
    v3 = [[CardView alloc] initAllowingBlurredForButton:!self->_visualEffectDisabled buttonBackgroundType:1];
    [(CardView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CardView *)v3 setLayoutStyle:6];
    [(CardView *)v3 setBlurGroupName:self->_blurGroupName];
    cardView = self->_cardView;
    self->_cardView = v3;
  }

  view = [(_ButtonsGroupViewController *)self view];
  [view addSubview:self->_cardView];

  v6 = self->_cardView;
  view2 = [(_ButtonsGroupViewController *)self view];
  LODWORD(v8) = 1148846080;
  v9 = [(CardView *)v6 _maps_constraintsEqualToEdgesOfView:view2 priority:v8];
  allConstraints = [v9 allConstraints];
  [v16 addObjectsFromArray:allConstraints];

  if (self->_backgroundDisabled)
  {
LABEL_5:
    view3 = [(_ButtonsGroupViewController *)self view];
  }

  else
  {
    view3 = [(CardView *)self->_cardView contentView];
  }

  v12 = view3;
  [view3 addSubview:self->_stackView];
  LODWORD(v13) = 1148846080;
  v14 = [(UIStackView *)self->_stackView _maps_constraintsEqualToEdgesOfView:v12 priority:v13];
  allConstraints2 = [v14 allConstraints];
  [v16 addObjectsFromArray:allConstraints2];

  [NSLayoutConstraint activateConstraints:v16];
  [(_ButtonsGroupViewController *)self applyBorderAndShadow];
}

- (void)applyBorderAndShadow
{
  if (self->_backgroundDisabled && self->_cardView)
  {
    if (_UISolariumEnabled())
    {
      if (sub_10000FA08(self) == 5)
      {
        +[MapsTheme macButtonCornerRadius];
      }

      else
      {
        +[MapsTheme buttonCornerRadius];
      }

      v8 = v3;
      layer = [(CardView *)self->_cardView layer];
      [layer setCornerRadius:v8];
    }

    else
    {
      traitCollection = [(_ButtonsGroupViewController *)self traitCollection];
      [traitCollection userInterfaceStyle];

      layer = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor = [layer CGColor];
      layer2 = [(CardView *)self->_cardView layer];
      [layer2 setBorderColor:cGColor];

      if (sub_10000FA08(self) == 5)
      {
        +[MapsTheme macButtonCornerRadius];
      }

      else
      {
        +[MapsTheme buttonCornerRadius];
      }

      v9 = v7;
      layer3 = [(CardView *)self->_cardView layer];
      [layer3 setCornerRadius:v9];

      layer4 = [(CardView *)self->_cardView layer];
      [layer4 setBorderWidth:0.5];

      v12 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      cGColor2 = [v12 CGColor];
      layer5 = [(CardView *)self->_cardView layer];
      [layer5 setShadowColor:cGColor2];

      layer6 = [(CardView *)self->_cardView layer];
      LODWORD(v16) = *"\nף=";
      [layer6 setShadowOpacity:v16];

      layer7 = [(CardView *)self->_cardView layer];
      [layer7 setShadowOffset:{0.0, -2.0}];

      layer8 = [(CardView *)self->_cardView layer];
      [layer8 setShadowPathIsBounds:1];
    }
  }
}

- (BOOL)hasVisibleControls
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_floatingButtonItems;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        button = [*(*(&v10 + 1) + 8 * i) button];
        v7 = button;
        if (button)
        {
          [button alpha];
          if (v8 > 0.0)
          {

            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)updateVisibilityForControls:(int64_t)controls
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_floatingButtonItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        button = [v10 button];

        if (button)
        {
          v12 = ([v10 option] & controls) == 0;
          button2 = [v10 button];
          [button2 setHidden:v12];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100FCEC9C;
  v15[3] = &unk_1016604D8;
  v15[4] = self;
  [arrangedSubviews enumerateObjectsUsingBlock:v15];
}

- (void)setBlurGroupName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v4;

  [(CardView *)self->_cardView setBlurGroupName:nameCopy];
}

- (void)setBackgroundDisabled:(BOOL)disabled
{
  if (self->_backgroundDisabled != disabled)
  {
    self->_backgroundDisabled = disabled;
    [(_ButtonsGroupViewController *)self _reloadView];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = _ButtonsGroupViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(_ButtonsGroupViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(_ButtonsGroupViewController *)self applyBorderAndShadow];
  }
}

- (_ButtonsGroupViewController)initWithFloatingButtonItems:(id)items visualEffectDisabled:(BOOL)disabled
{
  itemsCopy = items;
  v25.receiver = self;
  v25.super_class = _ButtonsGroupViewController;
  v6 = [(_ButtonsGroupViewController *)&v25 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = objc_alloc_init(UIStackView);
    stackView = v6->_stackView;
    v6->_stackView = v7;

    [(UIStackView *)v6->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6->_visualEffectDisabled = disabled;
    v6->_backgroundDisabled = 0;
    v9 = [itemsCopy copy];
    floatingButtonItems = v6->_floatingButtonItems;
    v6->_floatingButtonItems = v9;

    [(_ButtonsGroupViewController *)v6 refreshControls];
    [(_ButtonsGroupViewController *)v6 _checkItemsForBackgroundFlag];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = itemsCopy;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          objc_initWeak(&location, v6);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100FCF170;
          v18[3] = &unk_101661B98;
          objc_copyWeak(&v19, &location);
          [v15 registerHidesBackgroundChangeHandler:v18];
          objc_destroyWeak(&v19);
          objc_destroyWeak(&location);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }
  }

  return v6;
}

@end
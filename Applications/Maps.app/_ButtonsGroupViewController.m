@interface _ButtonsGroupViewController
- (BOOL)hasShownControls;
- (BOOL)hasVisibleControls;
- (_ButtonsGroupViewController)initWithFloatingButtonItems:(id)a3 visualEffectDisabled:(BOOL)a4;
- (void)_checkItemsForBackgroundFlag;
- (void)_reloadView;
- (void)applyBorderAndShadow;
- (void)refreshControls;
- (void)setBackgroundDisabled:(BOOL)a3;
- (void)setBlurGroupName:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateVisibilityForControls:(int64_t)a3;
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
  v4 = [(UIStackView *)self->_stackView arrangedSubviews];
  v5 = [NSPredicate predicateWithBlock:&stru_101660518];
  v6 = [v4 filteredArrayUsingPredicate:v5];
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

        v6 = [*(*(&v9 + 1) + 8 * i) button];
        v7 = v6;
        if (v6 && ([v6 isHidden] & 1) == 0)
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
    v3 = [(_ButtonsGroupViewController *)self view];
    v4 = [v3 window];
    v5 = [v4 screen];
    if (v5)
    {
      v6 = [v3 window];
      v7 = [v6 screen];
      [v7 nativeScale];
      v9 = v8;
    }

    else
    {
      v6 = +[UIScreen mainScreen];
      [v6 nativeScale];
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

  v5 = [(_ButtonsGroupViewController *)self view];
  [v5 addSubview:self->_cardView];

  v6 = self->_cardView;
  v7 = [(_ButtonsGroupViewController *)self view];
  LODWORD(v8) = 1148846080;
  v9 = [(CardView *)v6 _maps_constraintsEqualToEdgesOfView:v7 priority:v8];
  v10 = [v9 allConstraints];
  [v16 addObjectsFromArray:v10];

  if (self->_backgroundDisabled)
  {
LABEL_5:
    v11 = [(_ButtonsGroupViewController *)self view];
  }

  else
  {
    v11 = [(CardView *)self->_cardView contentView];
  }

  v12 = v11;
  [v11 addSubview:self->_stackView];
  LODWORD(v13) = 1148846080;
  v14 = [(UIStackView *)self->_stackView _maps_constraintsEqualToEdgesOfView:v12 priority:v13];
  v15 = [v14 allConstraints];
  [v16 addObjectsFromArray:v15];

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
      v19 = [(CardView *)self->_cardView layer];
      [v19 setCornerRadius:v8];
    }

    else
    {
      v4 = [(_ButtonsGroupViewController *)self traitCollection];
      [v4 userInterfaceStyle];

      v19 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      v5 = [v19 CGColor];
      v6 = [(CardView *)self->_cardView layer];
      [v6 setBorderColor:v5];

      if (sub_10000FA08(self) == 5)
      {
        +[MapsTheme macButtonCornerRadius];
      }

      else
      {
        +[MapsTheme buttonCornerRadius];
      }

      v9 = v7;
      v10 = [(CardView *)self->_cardView layer];
      [v10 setCornerRadius:v9];

      v11 = [(CardView *)self->_cardView layer];
      [v11 setBorderWidth:0.5];

      v12 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
      v13 = [v12 CGColor];
      v14 = [(CardView *)self->_cardView layer];
      [v14 setShadowColor:v13];

      v15 = [(CardView *)self->_cardView layer];
      LODWORD(v16) = *"\nף=";
      [v15 setShadowOpacity:v16];

      v17 = [(CardView *)self->_cardView layer];
      [v17 setShadowOffset:{0.0, -2.0}];

      v18 = [(CardView *)self->_cardView layer];
      [v18 setShadowPathIsBounds:1];
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

        v6 = [*(*(&v10 + 1) + 8 * i) button];
        v7 = v6;
        if (v6)
        {
          [v6 alpha];
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

- (void)updateVisibilityForControls:(int64_t)a3
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
        v11 = [v10 button];

        if (v11)
        {
          v12 = ([v10 option] & a3) == 0;
          v13 = [v10 button];
          [v13 setHidden:v12];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [(UIStackView *)self->_stackView arrangedSubviews];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100FCEC9C;
  v15[3] = &unk_1016604D8;
  v15[4] = self;
  [v14 enumerateObjectsUsingBlock:v15];
}

- (void)setBlurGroupName:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v4;

  [(CardView *)self->_cardView setBlurGroupName:v6];
}

- (void)setBackgroundDisabled:(BOOL)a3
{
  if (self->_backgroundDisabled != a3)
  {
    self->_backgroundDisabled = a3;
    [(_ButtonsGroupViewController *)self _reloadView];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = _ButtonsGroupViewController;
  v4 = a3;
  [(MapsThemeViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(_ButtonsGroupViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(_ButtonsGroupViewController *)self applyBorderAndShadow];
  }
}

- (_ButtonsGroupViewController)initWithFloatingButtonItems:(id)a3 visualEffectDisabled:(BOOL)a4
{
  v17 = a3;
  v25.receiver = self;
  v25.super_class = _ButtonsGroupViewController;
  v6 = [(_ButtonsGroupViewController *)&v25 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = objc_alloc_init(UIStackView);
    stackView = v6->_stackView;
    v6->_stackView = v7;

    [(UIStackView *)v6->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6->_visualEffectDisabled = a4;
    v6->_backgroundDisabled = 0;
    v9 = [v17 copy];
    floatingButtonItems = v6->_floatingButtonItems;
    v6->_floatingButtonItems = v9;

    [(_ButtonsGroupViewController *)v6 refreshControls];
    [(_ButtonsGroupViewController *)v6 _checkItemsForBackgroundFlag];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v17;
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
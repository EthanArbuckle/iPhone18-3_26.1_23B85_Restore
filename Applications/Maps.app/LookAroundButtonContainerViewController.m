@interface LookAroundButtonContainerViewController
+ (BOOL)isIncompleteMapItem:(id)a3;
+ (CGSize)sizeForPreviewSize:(int64_t)a3;
+ (int64_t)previewSizeWithContainerStyle:(unint64_t)a3;
- (CGAffineTransform)_collapsedPreviewTransform;
- (CGAffineTransform)_expandedButtonTransform;
- (CGSize)_buttonSize;
- (CGSize)_previewSize;
- (LookAroundButtonContainerViewControllerDelegate)delegate;
- (double)_cornerRadius;
- (id)_buttonTintColorForExpanded:(BOOL)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_applyViewPropertiesForState:(int64_t)a3;
- (void)_invalidateConstraints;
- (void)_loadLookAroundContainerView;
- (void)_unloadLookAroundContainerView;
- (void)_updateBadgeLayout;
- (void)_updateConstraints;
- (void)setContainerStyle:(unint64_t)a3;
- (void)setMapItem:(id)a3 isMarkedLocation:(BOOL)a4 willChangeHidden:(BOOL)a5 animated:(BOOL)a6;
- (void)tappedLookAroundButton:(id)a3;
- (void)tappedLookAroundPreview:(id)a3;
- (void)updateLookAroundViewWithMapItem:(id)a3 isMarkedLocation:(BOOL)a4 willChangeHidden:(BOOL)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation LookAroundButtonContainerViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = LookAroundButtonContainerViewController;
  [(LookAroundButtonContainerViewController *)&v19 viewDidLoad];
  v3 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:1];
  lookAroundButtonCardView = self->_lookAroundButtonCardView;
  self->_lookAroundButtonCardView = v3;

  [self->_lookAroundButtonCardView setTranslatesAutoresizingMaskIntoConstraints:0];
  [self->_lookAroundButtonCardView setLayoutStyle:6];
  v5 = [(LookAroundButtonContainerViewController *)self view];
  [v5 addSubview:self->_lookAroundButtonCardView];

  v6 = [MapsThemeButton buttonWithType:0];
  lookAroundButton = self->_lookAroundButton;
  self->_lookAroundButton = v6;

  [(UIButton *)self->_lookAroundButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Look Around [Accessibility]" value:@"localized string not found" table:0];
  [(UIButton *)self->_lookAroundButton setAccessibilityLabel:v9];

  [(UIButton *)self->_lookAroundButton addTarget:self action:"tappedLookAroundButton:" forControlEvents:0x2000];
  v10 = self->_lookAroundButton;
  v11 = [UIImage systemImageNamed:@"binoculars.fill"];
  [(UIButton *)v10 setImage:v11 forState:0];

  if (_UISolariumEnabled())
  {
    v12 = sub_10000FA08(self);
    v13 = 18.0;
    if (v12 == 5)
    {
      v13 = 14.0;
    }

    v14 = 6;
  }

  else
  {
    v13 = 17.0;
    v14 = 4;
  }

  v15 = [UIImageSymbolConfiguration configurationWithPointSize:v14 weight:v13];
  [(UIButton *)self->_lookAroundButton setPreferredSymbolConfiguration:v15 forImageInState:0];
  v16 = [(LookAroundButtonContainerViewController *)self _buttonTintColorForExpanded:0];
  [(UIButton *)self->_lookAroundButton setTintColor:v16];

  [(UIButton *)self->_lookAroundButton setAccessibilityIdentifier:@"LookAroundButton"];
  v17 = [self->_lookAroundButtonCardView contentView];
  [v17 addSubview:self->_lookAroundButton];

  v18 = [(LookAroundButtonContainerViewController *)self view];
  [v18 _mapkit_addPointerInteractionWithDelegate:self];

  [(LookAroundButtonContainerViewController *)self _updateConstraints];
}

- (void)_updateConstraints
{
  if (!self->_constraints)
  {
    [(LookAroundButtonContainerViewController *)self _buttonSize];
    v4 = v3;
    v6 = v5;
    [(LookAroundButtonContainerViewController *)self _previewSize];
    v9 = v7;
    v10 = v8;
    if (self->_expanded)
    {
      v11 = v7;
    }

    else
    {
      v11 = v4;
    }

    if (self->_expanded)
    {
      v12 = v8;
    }

    else
    {
      v12 = v6;
    }

    v13 = objc_alloc_init(NSMutableArray);
    lookAroundButtonCardView = self->_lookAroundButtonCardView;
    v15 = [(LookAroundButtonContainerViewController *)self view];
    LODWORD(v16) = 1148846080;
    v17 = [lookAroundButtonCardView _maps_constraintsEqualToEdgesOfView:v15 priority:v16];
    v18 = [v17 allConstraints];
    [v13 addObjectsFromArray:v18];

    v60 = [(LookAroundButtonContainerViewController *)self view];
    v59 = [v60 widthAnchor];
    v58 = [v59 constraintEqualToConstant:v11];
    v62[0] = v58;
    v19 = [(LookAroundButtonContainerViewController *)self view];
    v20 = [v19 heightAnchor];
    v21 = [v20 constraintEqualToConstant:v12];
    v62[1] = v21;
    v22 = [(UIButton *)self->_lookAroundButton widthAnchor];
    v23 = [v22 constraintEqualToConstant:v4];
    v62[2] = v23;
    v24 = [(UIButton *)self->_lookAroundButton heightAnchor];
    v25 = [v24 constraintEqualToConstant:v6];
    v62[3] = v25;
    v26 = [NSArray arrayWithObjects:v62 count:4];
    [v13 addObjectsFromArray:v26];

    lookAroundContainerView = self->_lookAroundContainerView;
    if (lookAroundContainerView)
    {
      v28 = [(MKLookAroundContainerView *)lookAroundContainerView widthAnchor];
      v29 = [v28 constraintEqualToConstant:v9];
      v61[0] = v29;
      v30 = [(MKLookAroundContainerView *)self->_lookAroundContainerView heightAnchor];
      v31 = [v30 constraintEqualToConstant:v10];
      v61[1] = v31;
      v32 = [NSArray arrayWithObjects:v61 count:2];
      [v13 addObjectsFromArray:v32];
    }

    containerStyle = self->_containerStyle;
    if (_UISolariumEnabled())
    {
      LOBYTE(v34) = 1;
    }

    else
    {
      v35 = +[UIDevice currentDevice];
      v36 = [v35 userInterfaceIdiom];

      if (_UISolariumEnabled())
      {
        LOBYTE(v34) = 1;
        if ((v36 & 0xFFFFFFFFFFFFFFFBLL) != 1 && containerStyle < 8)
        {
          v34 = 0x5Cu >> containerStyle;
        }
      }

      else
      {
        LOBYTE(v34) = v36 != 5;
      }
    }

    v37 = [(UIButton *)self->_lookAroundButton bottomAnchor];
    v38 = [self->_lookAroundButtonCardView contentView];
    v39 = [v38 bottomAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    [v13 addObject:v40];

    lookAroundButton = self->_lookAroundButton;
    if (v34)
    {
      v42 = [(UIButton *)lookAroundButton leadingAnchor];
      v43 = [self->_lookAroundButtonCardView contentView];
      [v43 leadingAnchor];
    }

    else
    {
      v42 = [(UIButton *)lookAroundButton trailingAnchor];
      v43 = [self->_lookAroundButtonCardView contentView];
      [v43 trailingAnchor];
    }
    v44 = ;
    v45 = [v42 constraintEqualToAnchor:v44];
    [v13 addObject:v45];

    v46 = self->_lookAroundContainerView;
    if (v46)
    {
      v47 = [(MKLookAroundContainerView *)v46 bottomAnchor];
      v48 = [(LookAroundButtonContainerViewController *)self view];
      v49 = [v48 bottomAnchor];
      v50 = [v47 constraintEqualToAnchor:v49];
      [v13 addObject:v50];

      v51 = self->_lookAroundContainerView;
      if (v34)
      {
        v52 = [(MKLookAroundContainerView *)v51 leadingAnchor];
        v53 = [(LookAroundButtonContainerViewController *)self view];
        [v53 leadingAnchor];
      }

      else
      {
        v52 = [(MKLookAroundContainerView *)v51 trailingAnchor];
        v53 = [(LookAroundButtonContainerViewController *)self view];
        [v53 trailingAnchor];
      }
      v54 = ;
      v55 = [v52 constraintEqualToAnchor:v54];
      [v13 addObject:v55];
    }

    v56 = [v13 copy];
    constraints = self->_constraints;
    self->_constraints = v56;

    [NSLayoutConstraint activateConstraints:self->_constraints];
  }
}

- (CGSize)_buttonSize
{
  v2 = sub_100035D80(self);
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_previewSize
{
  v2 = [objc_opt_class() previewSizeWithContainerStyle:self->_containerStyle];
  v3 = objc_opt_class();

  [v3 sizeForPreviewSize:v2];
  result.height = v5;
  result.width = v4;
  return result;
}

- (LookAroundButtonContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tappedLookAroundPreview:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  mapItem = self->_mapItem;
  isMarkedLocation = self->_isMarkedLocation;
  v6 = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
  [WeakRetained enterLookAroundForMapItem:mapItem isMarkedLocation:isMarkedLocation lookAroundView:v6];
}

- (void)tappedLookAroundButton:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained enterLookAroundPIP:v4];
}

- (id)_buttonTintColorForExpanded:(BOOL)a3
{
  if (a3)
  {
    v3 = +[UIColor whiteColor];
  }

  else
  {
    if (_UISolariumEnabled())
    {
      +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
    }

    else
    {
      +[MapsTheme floatingControlsTintColor];
    }
    v3 = ;
  }

  return v3;
}

- (CGAffineTransform)_collapsedPreviewTransform
{
  containerStyle = self->_containerStyle;
  if (_UISolariumEnabled())
  {
    v6 = 1;
  }

  else
  {
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = _UISolariumEnabled();
    v10 = (v8 & 0xFFFFFFFFFFFFFFFBLL) == 1 || containerStyle >= 8;
    v11 = 0x5Cu >> containerStyle;
    if (v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v9)
    {
      v6 = v11;
    }

    else
    {
      v6 = v8 != 5;
    }
  }

  v12 = [(LookAroundButtonContainerViewController *)self view];
  v13 = [v12 effectiveUserInterfaceLayoutDirection];

  [(LookAroundButtonContainerViewController *)self _buttonSize];
  v15 = v14;
  v17 = v16;
  [(LookAroundButtonContainerViewController *)self _previewSize];
  v20 = fmax(v15 / v19, v17 / v18);
  v21 = *&CGAffineTransformIdentity.a;
  v22 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v22;
  v23 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v23;
  v24 = (v19 - v15) * 0.5;
  v25 = -v24;
  if (((v6 ^ (v13 == 1)) & 1) == 0)
  {
    v25 = v24;
  }

  *&v30.a = v21;
  *&v30.c = v22;
  *&v30.tx = v23;
  CGAffineTransformTranslate(retstr, &v30, v25, (v18 - v17) * 0.5);
  v26 = *&retstr->c;
  *&v29.a = *&retstr->a;
  *&v29.c = v26;
  *&v29.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v30, &v29, v20, v20);
  v28 = *&v30.c;
  *&retstr->a = *&v30.a;
  *&retstr->c = v28;
  *&retstr->tx = *&v30.tx;
  return result;
}

- (CGAffineTransform)_expandedButtonTransform
{
  containerStyle = self->_containerStyle;
  if (_UISolariumEnabled())
  {
    v6 = 1;
  }

  else
  {
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = _UISolariumEnabled();
    v10 = (v8 & 0xFFFFFFFFFFFFFFFBLL) == 1 || containerStyle >= 8;
    v11 = 0x5Cu >> containerStyle;
    if (v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v9)
    {
      v6 = v11;
    }

    else
    {
      v6 = v8 != 5;
    }
  }

  v12 = [(LookAroundButtonContainerViewController *)self view];
  v13 = [v12 effectiveUserInterfaceLayoutDirection] == 1;

  v14 = *&CGAffineTransformIdentity.a;
  v15 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v15;
  v16 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v16;
  v17 = 4.5;
  if ((v6 ^ v13))
  {
    v17 = -4.5;
  }

  *&v22.a = v14;
  *&v22.c = v15;
  *&v22.tx = v16;
  CGAffineTransformTranslate(retstr, &v22, v17, 7.0);
  v18 = *&retstr->c;
  *&v21.a = *&retstr->a;
  *&v21.c = v18;
  *&v21.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v22, &v21, 0.9, 0.9);
  v20 = *&v22.c;
  *&retstr->a = *&v22.a;
  *&retstr->c = v20;
  *&retstr->tx = *&v22.tx;
  return result;
}

- (void)_updateBadgeLayout
{
  containerStyle = self->_containerStyle;
  if (_UISolariumEnabled())
  {
    v4 = 1;
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = _UISolariumEnabled();
    v8 = (v6 & 0xFFFFFFFFFFFFFFFBLL) == 1 || containerStyle >= 8;
    v9 = 0x5Cu >> containerStyle;
    if (v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v7)
    {
      v4 = v9;
    }

    else
    {
      v4 = v6 != 5;
    }
  }

  lookAroundContainerView = self->_lookAroundContainerView;

  [(MKLookAroundContainerView *)lookAroundContainerView setBadgeOnLeadingEdge:v4];
}

- (void)_applyViewPropertiesForState:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [self->_lookAroundButtonCardView setHidden:0];
      [self->_lookAroundButtonCardView setAlpha:1.0];
      [(LookAroundButtonContainerViewController *)self _expandedButtonTransform];
      lookAroundButtonCardView = self->_lookAroundButtonCardView;
      v31 = v22;
      v32 = v23;
      v33 = v24;
      [lookAroundButtonCardView setTransform:&v31];
      v17 = [(LookAroundButtonContainerViewController *)self _buttonTintColorForExpanded:1];
      [(UIButton *)self->_lookAroundButton setTintColor:v17];

      [(MKLookAroundContainerView *)self->_lookAroundContainerView setHidden:0];
      [(MKLookAroundContainerView *)self->_lookAroundContainerView setAlpha:1.0];
      lookAroundContainerView = self->_lookAroundContainerView;
      v12 = 1;
    }

    else
    {
      if (a3 != 3)
      {
        return;
      }

      [self->_lookAroundButtonCardView setHidden:1];
      [self->_lookAroundButtonCardView setAlpha:1.0];
      [(LookAroundButtonContainerViewController *)self _expandedButtonTransform];
      v9 = self->_lookAroundButtonCardView;
      v31 = v19;
      v32 = v20;
      v33 = v21;
      [(CardView *)v9 setTransform:&v31];
      v10 = [(LookAroundButtonContainerViewController *)self _buttonTintColorForExpanded:1];
      [(UIButton *)self->_lookAroundButton setTintColor:v10];

      [(MKLookAroundContainerView *)self->_lookAroundContainerView setHidden:0];
      [(MKLookAroundContainerView *)self->_lookAroundContainerView setAlpha:1.0];
      lookAroundContainerView = self->_lookAroundContainerView;
      v12 = 0;
    }

    [(MKLookAroundContainerView *)lookAroundContainerView setBadgeHidden:v12];
    v7 = self->_lookAroundContainerView;
    v18 = *&CGAffineTransformIdentity.c;
    v31 = *&CGAffineTransformIdentity.a;
    v32 = v18;
    v8 = *&CGAffineTransformIdentity.tx;
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    [self->_lookAroundButtonCardView setHidden:?];
    [self->_lookAroundButtonCardView setAlpha:0.0];
    v4 = self->_lookAroundButtonCardView;
    v5 = *&CGAffineTransformIdentity.c;
    v31 = *&CGAffineTransformIdentity.a;
    v32 = v5;
    v33 = *&CGAffineTransformIdentity.tx;
    [(CardView *)v4 setTransform:&v31];
    v6 = [(LookAroundButtonContainerViewController *)self _buttonTintColorForExpanded:0];
    [(UIButton *)self->_lookAroundButton setTintColor:v6];

    [(MKLookAroundContainerView *)self->_lookAroundContainerView setHidden:0];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView setAlpha:1.0];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView setBadgeHidden:1];
    [(LookAroundButtonContainerViewController *)self _collapsedPreviewTransform];
    v7 = self->_lookAroundContainerView;
    v31 = v25;
    v32 = v26;
    v8 = v27;
  }

  else
  {
    [self->_lookAroundButtonCardView setHidden:?];
    [self->_lookAroundButtonCardView setAlpha:1.0];
    v13 = self->_lookAroundButtonCardView;
    v14 = *&CGAffineTransformIdentity.c;
    v31 = *&CGAffineTransformIdentity.a;
    v32 = v14;
    v33 = *&CGAffineTransformIdentity.tx;
    [(CardView *)v13 setTransform:&v31];
    v15 = [(LookAroundButtonContainerViewController *)self _buttonTintColorForExpanded:0];
    [(UIButton *)self->_lookAroundButton setTintColor:v15];

    [(MKLookAroundContainerView *)self->_lookAroundContainerView setHidden:0];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView setAlpha:0.0];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView setBadgeHidden:1];
    [(LookAroundButtonContainerViewController *)self _collapsedPreviewTransform];
    v7 = self->_lookAroundContainerView;
    v31 = v28;
    v32 = v29;
    v8 = v30;
  }

  v33 = v8;
  [(MKLookAroundContainerView *)v7 setTransform:&v31];
}

- (void)_invalidateConstraints
{
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    constraints = self->_constraints;
    self->_constraints = 0;
  }
}

- (void)_unloadLookAroundContainerView
{
  if (self->_lookAroundContainerView)
  {
    v4 = sub_100798614();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ %@", &v9, 0x16u);
    }

    [(MKLookAroundContainerView *)self->_lookAroundContainerView removeFromSuperview];
    lookAroundContainerView = self->_lookAroundContainerView;
    self->_lookAroundContainerView = 0;
  }
}

- (void)_loadLookAroundContainerView
{
  if (!self->_lookAroundContainerView)
  {
    v4 = sub_100798614();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ %@", &v16, 0x16u);
    }

    v8 = [[MKLookAroundContainerView alloc] initWithFloatingDimmingStyle:1];
    lookAroundContainerView = self->_lookAroundContainerView;
    self->_lookAroundContainerView = v8;

    [(MKLookAroundContainerView *)self->_lookAroundContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (_UISolariumEnabled())
    {
      [(LookAroundButtonContainerViewController *)self _cornerRadius];
      v11 = v10;
      v12 = [(MKLookAroundContainerView *)self->_lookAroundContainerView layer];
      [v12 setCornerRadius:v11];

      v13 = [(MKLookAroundContainerView *)self->_lookAroundContainerView layer];
      [v13 setMasksToBounds:1];
    }

    [(MKLookAroundContainerView *)self->_lookAroundContainerView setAccessibilityIdentifier:@"LookAroundPreview"];
    v14 = [(LookAroundButtonContainerViewController *)self view];
    [v14 insertSubview:self->_lookAroundContainerView aboveSubview:self->_lookAroundButtonCardView];

    v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tappedLookAroundPreview:"];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView addGestureRecognizer:v15];
    [(LookAroundButtonContainerViewController *)self _updateBadgeLayout];
    [(LookAroundButtonContainerViewController *)self _invalidateConstraints];
  }
}

- (double)_cornerRadius
{
  if (_UISolariumEnabled())
  {
    return 16.0;
  }

  +[MapsTheme buttonCornerRadius];
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [UITargetedPreview alloc];
  v6 = [(LookAroundButtonContainerViewController *)self view];
  v7 = [v5 initWithView:v6];

  v8 = [UIPointerEffect effectWithPreview:v7];
  [(LookAroundButtonContainerViewController *)self _cornerRadius];
  v9 = [(LookAroundButtonContainerViewController *)self view];
  [v9 frame];
  v10 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];

  v11 = [UIPointerStyle styleWithEffect:v8 shape:v10];

  return v11;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(LookAroundButtonContainerViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 location];
  v17 = v16;
  v19 = v18;

  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v23.x = v17;
  v23.y = v19;
  if (CGRectContainsPoint(v24, v23))
  {
    v20 = [UIPointerRegion regionWithRect:&off_1016E77D8 identifier:v9, v11, v13, v15];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setContainerStyle:(unint64_t)a3
{
  if (self->_containerStyle != a3)
  {
    self->_containerStyle = a3;
    [(LookAroundButtonContainerViewController *)self _updateBadgeLayout];
    [(LookAroundButtonContainerViewController *)self _invalidateConstraints];

    [(LookAroundButtonContainerViewController *)self _updateConstraints];
  }
}

- (void)updateLookAroundViewWithMapItem:(id)a3 isMarkedLocation:(BOOL)a4 willChangeHidden:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = [v10 _hasLookAroundStorefront];
  v12 = v11;
  v13 = v7;
  v14 = 2;
  if (v7)
  {
    v14 = 3;
  }

  if (v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = v7;
  }

  v16 = objc_alloc_init(GroupAnimation);
  [(GroupAnimation *)v16 setAnimated:v6];
  [(GroupAnimation *)v16 setDuration:0.3];
  [(GroupAnimation *)v16 setOptions:4];
  [(GroupAnimation *)v16 setPreventsAnimationDuringPreparation:1];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100905C7C;
  v25[3] = &unk_10162E500;
  v28 = v12;
  v25[4] = self;
  v27 = v13;
  v17 = v10;
  v26 = v17;
  v29 = a4;
  [(GroupAnimation *)v16 addPreparation:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100905D38;
  v23[3] = &unk_101654728;
  v24 = v12;
  v23[4] = self;
  v23[5] = v15;
  [(GroupAnimation *)v16 addAnimations:v23];
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100905DD4;
  v20[3] = &unk_1016619A8;
  objc_copyWeak(&v21, &location);
  [(GroupAnimation *)v16 addCompletion:v20];
  [(GroupAnimation *)v16 runWithCurrentOptions];
  if (v12)
  {
    v18 = +[NSMutableDictionary dictionary];
    [v18 setObject:v17 forKeyedSubscript:@"PPTLookAroundChromeOverlayMapItemUserInfoKey"];
    v19 = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
    [v18 setObject:v19 forKeyedSubscript:@"PPTLookAroundChromeOverlayLookAroundViewUserInfoKey"];

    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTLookAroundChromeOverlayDidShowLookAroundPreviewNotificationName" object:0 userInfo:v18];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)setMapItem:(id)a3 isMarkedLocation:(BOOL)a4 willChangeHidden:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v12 = a3;
  mapItem = self->_mapItem;
  if ((mapItem == v12 || [(MKMapItem *)mapItem isEqual:v12]) && self->_isMarkedLocation == v8)
  {
    goto LABEL_14;
  }

  v14 = sub_100798614();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    NSStringFromClass(v15);
    v16 = v27 = v6;
    NSStringFromSelector(a2);
    v17 = v26 = a2;
    [(MKMapItem *)self->_mapItem _identifier];
    v19 = v18 = v7;
    *buf = 138412802;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ %@ %@", buf, 0x20u);

    v7 = v18;
    a2 = v26;

    v6 = v27;
  }

  objc_storeStrong(&self->_mapItem, a3);
  self->_isMarkedLocation = v8;
  if (!v12)
  {
    v24 = self;
    v25 = 0;
LABEL_13:
    [(LookAroundButtonContainerViewController *)v24 updateLookAroundViewWithMapItem:v25 isMarkedLocation:v8 willChangeHidden:v7 animated:v6];
    goto LABEL_14;
  }

  if (![objc_opt_class() isIncompleteMapItem:v12])
  {
    v24 = self;
    v25 = v12;
    goto LABEL_13;
  }

  v20 = sub_100798614();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = NSStringFromSelector(a2);
    *buf = 138412546;
    v29 = v22;
    v30 = 2112;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@ %@, waiting for refreshed map item", buf, 0x16u);
  }

  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:2 animated:v6];
LABEL_14:
}

+ (BOOL)isIncompleteMapItem:(id)a3
{
  v3 = a3;
  v4 = [v3 _identifier];
  if (v4)
  {
    if ([v3 _hasResolvablePartialInformation])
    {
      v5 = 1;
    }

    else
    {
      v6 = [v3 _geoMapItem];
      v5 = [v6 hasExpiredComponents];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (CGSize)sizeForPreviewSize:(int64_t)a3
{
  v3 = a3 - 1;
  if ((a3 - 1) > 2)
  {
    v5 = 66.0;
    v4 = 90.0;
  }

  else
  {
    v4 = dbl_101214EC0[v3];
    v5 = dbl_101214ED8[v3];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

+ (int64_t)previewSizeWithContainerStyle:(unint64_t)a3
{
  if (a3 == 6)
  {
    return 3;
  }

  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  [v4 bounds];
  v8 = v7;
  [v4 bounds];
  if (v6 >= v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v11 >= 375.0)
  {
    if (v11 <= 390.0)
    {
      v3 = 1;
    }

    else
    {
      [v4 scale];
      if (v12 <= 2.0)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
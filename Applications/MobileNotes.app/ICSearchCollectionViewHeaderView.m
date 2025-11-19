@interface ICSearchCollectionViewHeaderView
- (BOOL)isInsetGroupedList;
- (ICSearchCollectionViewHeaderView)initWithCoder:(id)a3;
- (ICSearchCollectionViewHeaderView)initWithFrame:(CGRect)a3;
- (unint64_t)accessibilityTraits;
- (void)setTitle:(id)a3 detail:(id)a4;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation ICSearchCollectionViewHeaderView

- (ICSearchCollectionViewHeaderView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ICSearchCollectionViewHeaderView;
  result = [(ICSearchCollectionViewHeaderView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_horizontalInsetsOverride = 2.22507386e-308;
  }

  return result;
}

- (ICSearchCollectionViewHeaderView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICSearchCollectionViewHeaderView;
  result = [(ICSearchCollectionViewHeaderView *)&v4 initWithCoder:a3];
  if (result)
  {
    result->_horizontalInsetsOverride = 2.22507386e-308;
  }

  return result;
}

- (void)setTitle:(id)a3 detail:(id)a4
{
  v6 = a4;
  [(ICSearchCollectionViewHeaderView *)self setTitle:a3];
  [(ICSearchCollectionViewHeaderView *)self setDetail:v6];

  [(ICSearchCollectionViewHeaderView *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v50 = +[UIBackgroundConfiguration clearConfiguration];
  v5 = [v50 updatedConfigurationForState:v4];
  [(ICSearchCollectionViewHeaderView *)self setBackgroundConfiguration:v5];

  v6 = +[UIListContentConfiguration headerConfiguration];
  v7 = [v6 updatedConfigurationForState:v4];

  [v7 setPrefersSideBySideTextAndSecondaryText:1];
  v8 = [(ICSearchCollectionViewHeaderView *)self title];
  [v7 setText:v8];

  v9 = +[UIColor labelColor];
  v10 = [v7 textProperties];
  [v10 setColor:v9];

  v11 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  v12 = [v11 updatedConfigurationForState:v4];

  v13 = [(ICSearchCollectionViewHeaderView *)self detail];
  [v7 setSecondaryText:v13];

  v14 = [v12 secondaryTextProperties];
  v15 = [v14 font];
  v16 = [v7 secondaryTextProperties];
  [v16 setFont:v15];

  v17 = [v12 secondaryTextProperties];
  v18 = [v17 color];
  v19 = [v7 secondaryTextProperties];
  [v19 setColor:v18];

  [(ICSearchCollectionViewHeaderView *)self horizontalInsetsOverride];
  v21 = v20;
  if (v20 == 2.22507386e-308)
  {
    if (-[ICSearchCollectionViewHeaderView isInsetGroupedList](self, "isInsetGroupedList") || (-[ICSearchCollectionViewHeaderView traitCollection](self, "traitCollection"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 listEnvironment], v22, !v23))
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 2.22507386e-308;
    }
  }

  v24 = [(ICSearchCollectionViewHeaderView *)self ic_behavior];
  v25 = [(ICSearchCollectionViewHeaderView *)self traitCollection];
  v26 = [v25 splitViewControllerLayoutEnvironment];

  if (v21 == 2.22507386e-308)
  {
    v31 = ICInternalSettingsAlignHeadersWithNavTitle();
    v33 = v24 == 1 && v26 == 2;
    if ((v31 & 1) != 0 || v33)
    {
      objc_opt_class();
      v34 = [(ICSearchCollectionViewHeaderView *)self superview];
      v35 = ICDynamicCast();

      [v35 directionalLayoutMargins];
      v37 = v36;
      [v35 ic_directionalSafeAreaInsets];
      v39 = v37 - v38;
      [v35 directionalLayoutMargins];
      v41 = v40;
      [v35 ic_directionalSafeAreaInsets];
      v43 = v41 - v42;
      [v7 directionalLayoutMargins];
      v45 = v44;
      v47 = v46;
      v49 = v48 + v43;
      [v7 setAxesPreservingSuperviewLayoutMargins:2];
      [v7 setDirectionalLayoutMargins:{v45, v39, v47, v49}];
    }
  }

  else
  {
    [v7 directionalLayoutMargins];
    v28 = v27;
    v30 = v29;
    [v7 setAxesPreservingSuperviewLayoutMargins:2];
    [v7 setDirectionalLayoutMargins:{v28, v21, v30, v21}];
  }

  [(ICSearchCollectionViewHeaderView *)self setContentConfiguration:v7];
}

- (BOOL)isInsetGroupedList
{
  v2 = [(ICSearchCollectionViewHeaderView *)self traitCollection];
  v3 = [v2 listEnvironment] == 4;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ICSearchCollectionViewHeaderView;
  return UIAccessibilityTraitHeader | [(ICSearchCollectionViewHeaderView *)&v3 accessibilityTraits];
}

@end
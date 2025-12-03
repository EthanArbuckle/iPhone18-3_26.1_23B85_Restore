@interface ICSearchCollectionViewHeaderView
- (BOOL)isInsetGroupedList;
- (ICSearchCollectionViewHeaderView)initWithCoder:(id)coder;
- (ICSearchCollectionViewHeaderView)initWithFrame:(CGRect)frame;
- (unint64_t)accessibilityTraits;
- (void)setTitle:(id)title detail:(id)detail;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation ICSearchCollectionViewHeaderView

- (ICSearchCollectionViewHeaderView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ICSearchCollectionViewHeaderView;
  result = [(ICSearchCollectionViewHeaderView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_horizontalInsetsOverride = 2.22507386e-308;
  }

  return result;
}

- (ICSearchCollectionViewHeaderView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ICSearchCollectionViewHeaderView;
  result = [(ICSearchCollectionViewHeaderView *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_horizontalInsetsOverride = 2.22507386e-308;
  }

  return result;
}

- (void)setTitle:(id)title detail:(id)detail
{
  detailCopy = detail;
  [(ICSearchCollectionViewHeaderView *)self setTitle:title];
  [(ICSearchCollectionViewHeaderView *)self setDetail:detailCopy];

  [(ICSearchCollectionViewHeaderView *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  v50 = +[UIBackgroundConfiguration clearConfiguration];
  v5 = [v50 updatedConfigurationForState:stateCopy];
  [(ICSearchCollectionViewHeaderView *)self setBackgroundConfiguration:v5];

  v6 = +[UIListContentConfiguration headerConfiguration];
  v7 = [v6 updatedConfigurationForState:stateCopy];

  [v7 setPrefersSideBySideTextAndSecondaryText:1];
  title = [(ICSearchCollectionViewHeaderView *)self title];
  [v7 setText:title];

  v9 = +[UIColor labelColor];
  textProperties = [v7 textProperties];
  [textProperties setColor:v9];

  v11 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  v12 = [v11 updatedConfigurationForState:stateCopy];

  detail = [(ICSearchCollectionViewHeaderView *)self detail];
  [v7 setSecondaryText:detail];

  secondaryTextProperties = [v12 secondaryTextProperties];
  font = [secondaryTextProperties font];
  secondaryTextProperties2 = [v7 secondaryTextProperties];
  [secondaryTextProperties2 setFont:font];

  secondaryTextProperties3 = [v12 secondaryTextProperties];
  color = [secondaryTextProperties3 color];
  secondaryTextProperties4 = [v7 secondaryTextProperties];
  [secondaryTextProperties4 setColor:color];

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

  ic_behavior = [(ICSearchCollectionViewHeaderView *)self ic_behavior];
  traitCollection = [(ICSearchCollectionViewHeaderView *)self traitCollection];
  splitViewControllerLayoutEnvironment = [traitCollection splitViewControllerLayoutEnvironment];

  if (v21 == 2.22507386e-308)
  {
    v31 = ICInternalSettingsAlignHeadersWithNavTitle();
    v33 = ic_behavior == 1 && splitViewControllerLayoutEnvironment == 2;
    if ((v31 & 1) != 0 || v33)
    {
      objc_opt_class();
      superview = [(ICSearchCollectionViewHeaderView *)self superview];
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
  traitCollection = [(ICSearchCollectionViewHeaderView *)self traitCollection];
  v3 = [traitCollection listEnvironment] == 4;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ICSearchCollectionViewHeaderView;
  return UIAccessibilityTraitHeader | [(ICSearchCollectionViewHeaderView *)&v3 accessibilityTraits];
}

@end
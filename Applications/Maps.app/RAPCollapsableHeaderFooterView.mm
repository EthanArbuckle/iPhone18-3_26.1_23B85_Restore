@interface RAPCollapsableHeaderFooterView
+ (void)toggleCollapseForTableView:(id)view AtSection:(int64_t)section withSelectedValue:(id)value withSelectedIndex:(int64_t)index withAllValues:(id)values;
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)layoutSubviews;
- (void)setShowAllButtonVisible:(BOOL)visible;
- (void)setTarget:(id)target action:(SEL)action;
@end

@implementation RAPCollapsableHeaderFooterView

- (void)setShowAllButtonVisible:(BOOL)visible
{
  if (visible)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [(UIButton *)self->_showAllButton alpha];
  if (v5 != v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100A50B4C;
    v6[3] = &unk_101661650;
    v6[4] = self;
    *&v6[5] = v4;
    [UIView animateWithDuration:v6 animations:0.3];
  }
}

- (void)setTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allTargets = [(UIButton *)self->_showAllButton allTargets];
  v8 = [allTargets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(allTargets);
        }

        [(UIButton *)self->_showAllButton removeTarget:*(*(&v12 + 1) + 8 * v11) action:0 forControlEvents:64];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allTargets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(UIButton *)self->_showAllButton addTarget:targetCopy action:action forControlEvents:64];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = RAPCollapsableHeaderFooterView;
  [(RAPHeaderFooterView *)&v5 layoutSubviews];
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    +[RAPFontManager regularMoreReportTypesTitleFont];
  }

  else
  {
    +[RAPFontManager regularTitleFont];
  }
  v3 = ;
  titleLabel = [(UIButton *)self->_showAllButton titleLabel];
  [titleLabel setFont:v3];
}

- (id)_initialConstraints
{
  v18.receiver = self;
  v18.super_class = RAPCollapsableHeaderFooterView;
  _initialConstraints = [(RAPHeaderFooterView *)&v18 _initialConstraints];
  titleLabel = [(RAPHeaderFooterView *)self titleLabel];
  trailingAnchor = [titleLabel trailingAnchor];
  leadingAnchor = [(UIButton *)self->_showAllButton leadingAnchor];
  v7 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor];
  [_initialConstraints addObject:v7];

  v8 = _NSDictionaryOfVariableBindings(@"_showAllButton", self->_showAllButton, 0);
  v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_showAllButton]-|" options:0 metrics:0 views:v8];
  [_initialConstraints addObjectsFromArray:v9];

  lastBaselineAnchor = [titleLabel lastBaselineAnchor];
  lastBaselineAnchor2 = [(UIButton *)self->_showAllButton lastBaselineAnchor];
  v12 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  [_initialConstraints addObject:v12];

  heightAnchor = [(UIButton *)self->_showAllButton heightAnchor];
  v14 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
  [_initialConstraints addObject:v14];

  widthAnchor = [(UIButton *)self->_showAllButton widthAnchor];
  v16 = [widthAnchor constraintGreaterThanOrEqualToConstant:44.0];
  [_initialConstraints addObject:v16];

  return _initialConstraints;
}

- (void)_createSubviews
{
  v12.receiver = self;
  v12.super_class = RAPCollapsableHeaderFooterView;
  [(RAPHeaderFooterView *)&v12 _createSubviews];
  v3 = [UIButton buttonWithType:1];
  showAllButton = self->_showAllButton;
  self->_showAllButton = v3;

  v5 = self->_showAllButton;
  contentView = [(RAPCollapsableHeaderFooterView *)self contentView];
  tintColor = [contentView tintColor];
  [(UIButton *)v5 setTitleColor:tintColor forState:0];

  [(UIButton *)self->_showAllButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = self->_showAllButton;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Show More" value:@"localized string not found" table:0];
  [(UIButton *)v8 setTitle:v10 forState:0];

  [(UIButton *)self->_showAllButton setAlpha:0.0];
  contentView2 = [(RAPCollapsableHeaderFooterView *)self contentView];
  [contentView2 addSubview:self->_showAllButton];
}

+ (void)toggleCollapseForTableView:(id)view AtSection:(int64_t)section withSelectedValue:(id)value withSelectedIndex:(int64_t)index withAllValues:(id)values
{
  viewCopy = view;
  valueCopy = value;
  valuesCopy = values;
  if (viewCopy)
  {
    if (valueCopy)
    {
      v13 = objc_alloc_init(NSMutableArray);
    }

    else
    {
      v14 = [valuesCopy count];
      v13 = objc_alloc_init(NSMutableArray);
      if (v14 >= 1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (index != i)
          {
            v16 = [NSIndexPath indexPathForRow:i inSection:section];
            [v13 addObject:v16];
          }
        }
      }
    }

    v17 = objc_alloc_init(NSMutableArray);
    if (valueCopy && index >= 1)
    {
      v18 = 0;
      do
      {
        v19 = [NSIndexPath indexPathForRow:v18 inSection:section];
        [v17 addObject:v19];

        ++v18;
      }

      while (index != v18);
    }

    v25 = valuesCopy;
    if (valueCopy)
    {
      v20 = [valuesCopy count];
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_alloc_init(NSMutableArray);
    v22 = viewCopy;
    if (v20 > index)
    {
      v23 = 0;
      do
      {
        if (v23)
        {
          v24 = [NSIndexPath indexPathForRow:index inSection:section];
          [v21 addObject:v24];

          v22 = viewCopy;
        }

        ++index;
        --v23;
      }

      while (v20 != index);
    }

    [v22 beginUpdates];
    [viewCopy deleteRowsAtIndexPaths:v17 withRowAnimation:0];
    [viewCopy deleteRowsAtIndexPaths:v21 withRowAnimation:3];
    [viewCopy insertRowsAtIndexPaths:v13 withRowAnimation:100];
    [viewCopy endUpdates];

    valuesCopy = v26;
  }
}

@end
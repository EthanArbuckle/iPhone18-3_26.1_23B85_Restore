@interface RAPCollapsableHeaderFooterView
+ (void)toggleCollapseForTableView:(id)a3 AtSection:(int64_t)a4 withSelectedValue:(id)a5 withSelectedIndex:(int64_t)a6 withAllValues:(id)a7;
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)layoutSubviews;
- (void)setShowAllButtonVisible:(BOOL)a3;
- (void)setTarget:(id)a3 action:(SEL)a4;
@end

@implementation RAPCollapsableHeaderFooterView

- (void)setShowAllButtonVisible:(BOOL)a3
{
  if (a3)
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

- (void)setTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(UIButton *)self->_showAllButton allTargets];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [(UIButton *)self->_showAllButton removeTarget:*(*(&v12 + 1) + 8 * v11) action:0 forControlEvents:64];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(UIButton *)self->_showAllButton addTarget:v6 action:a4 forControlEvents:64];
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
  v4 = [(UIButton *)self->_showAllButton titleLabel];
  [v4 setFont:v3];
}

- (id)_initialConstraints
{
  v18.receiver = self;
  v18.super_class = RAPCollapsableHeaderFooterView;
  v3 = [(RAPHeaderFooterView *)&v18 _initialConstraints];
  v4 = [(RAPHeaderFooterView *)self titleLabel];
  v5 = [v4 trailingAnchor];
  v6 = [(UIButton *)self->_showAllButton leadingAnchor];
  v7 = [v5 constraintLessThanOrEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = _NSDictionaryOfVariableBindings(@"_showAllButton", self->_showAllButton, 0);
  v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_showAllButton]-|" options:0 metrics:0 views:v8];
  [v3 addObjectsFromArray:v9];

  v10 = [v4 lastBaselineAnchor];
  v11 = [(UIButton *)self->_showAllButton lastBaselineAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v3 addObject:v12];

  v13 = [(UIButton *)self->_showAllButton heightAnchor];
  v14 = [v13 constraintGreaterThanOrEqualToConstant:44.0];
  [v3 addObject:v14];

  v15 = [(UIButton *)self->_showAllButton widthAnchor];
  v16 = [v15 constraintGreaterThanOrEqualToConstant:44.0];
  [v3 addObject:v16];

  return v3;
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
  v6 = [(RAPCollapsableHeaderFooterView *)self contentView];
  v7 = [v6 tintColor];
  [(UIButton *)v5 setTitleColor:v7 forState:0];

  [(UIButton *)self->_showAllButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = self->_showAllButton;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Show More" value:@"localized string not found" table:0];
  [(UIButton *)v8 setTitle:v10 forState:0];

  [(UIButton *)self->_showAllButton setAlpha:0.0];
  v11 = [(RAPCollapsableHeaderFooterView *)self contentView];
  [v11 addSubview:self->_showAllButton];
}

+ (void)toggleCollapseForTableView:(id)a3 AtSection:(int64_t)a4 withSelectedValue:(id)a5 withSelectedIndex:(int64_t)a6 withAllValues:(id)a7
{
  v27 = a3;
  v11 = a5;
  v12 = a7;
  if (v27)
  {
    if (v11)
    {
      v13 = objc_alloc_init(NSMutableArray);
    }

    else
    {
      v14 = [v12 count];
      v13 = objc_alloc_init(NSMutableArray);
      if (v14 >= 1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (a6 != i)
          {
            v16 = [NSIndexPath indexPathForRow:i inSection:a4];
            [v13 addObject:v16];
          }
        }
      }
    }

    v17 = objc_alloc_init(NSMutableArray);
    if (v11 && a6 >= 1)
    {
      v18 = 0;
      do
      {
        v19 = [NSIndexPath indexPathForRow:v18 inSection:a4];
        [v17 addObject:v19];

        ++v18;
      }

      while (a6 != v18);
    }

    v25 = v12;
    if (v11)
    {
      v20 = [v12 count];
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_alloc_init(NSMutableArray);
    v22 = v27;
    if (v20 > a6)
    {
      v23 = 0;
      do
      {
        if (v23)
        {
          v24 = [NSIndexPath indexPathForRow:a6 inSection:a4];
          [v21 addObject:v24];

          v22 = v27;
        }

        ++a6;
        --v23;
      }

      while (v20 != a6);
    }

    [v22 beginUpdates];
    [v27 deleteRowsAtIndexPaths:v17 withRowAnimation:0];
    [v27 deleteRowsAtIndexPaths:v21 withRowAnimation:3];
    [v27 insertRowsAtIndexPaths:v13 withRowAnimation:100];
    [v27 endUpdates];

    v12 = v26;
  }
}

@end
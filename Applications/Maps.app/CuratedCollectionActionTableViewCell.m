@interface CuratedCollectionActionTableViewCell
- (CuratedCollectionActionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_createSubviews;
- (void)_resetActionRow;
- (void)_setupConstraints;
- (void)configureWithModel:(id)a3;
- (void)layoutMarginsDidChange;
- (void)setAlwaysUseLightForegroundColors:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CuratedCollectionActionTableViewCell

- (void)_resetActionRow
{
  v3 = [(CuratedCollectionActionTableViewCell *)self model];
  v4 = [v3 actionManager];
  v5 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [v5 setActionManager:v4];

  v6 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [v6 reload];
}

- (void)configureWithModel:(id)a3
{
  v6 = a3;
  v4 = [(CuratedCollectionActionTableViewCell *)self model];

  v5 = v6;
  if (v4 != v6)
  {
    [(CuratedCollectionActionTableViewCell *)self setModel:v6];
    [(CuratedCollectionActionTableViewCell *)self _resetActionRow];
    v5 = v6;
  }
}

- (void)setAlwaysUseLightForegroundColors:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_alwaysUseLightForegroundColors != a3)
  {
    v19[5] = v7;
    v19[6] = v6;
    v19[13] = v4;
    v19[14] = v5;
    v8 = a4;
    self->_alwaysUseLightForegroundColors = a3;
    v10 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
    [(CuratedCollectionActionTableViewCell *)self _createSubviews];
    [(CuratedCollectionActionTableViewCell *)self _setupConstraints];
    [(CuratedCollectionActionTableViewCell *)self _resetActionRow];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100F8612C;
    v19[3] = &unk_101661B18;
    v19[4] = self;
    [UIView performWithoutAnimation:v19];
    v11 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
    v12 = 0.0;
    [v11 setAlpha:0.0];

    if (v8)
    {
      v12 = 0.2;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100F86134;
    v16[3] = &unk_101661A90;
    v17 = v10;
    v18 = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100F86194;
    v14[3] = &unk_101661738;
    v15 = v17;
    v13 = v17;
    [UIView animateWithDuration:v16 animations:v14 completion:v12];
  }
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = CuratedCollectionActionTableViewCell;
  [(CuratedCollectionActionTableViewCell *)&v4 layoutMarginsDidChange];
  [(CuratedCollectionActionTableViewCell *)self bounds];
  [(CuratedCollectionActionTableViewCell *)self setSeparatorInset:0.0, v3, 0.0, 0.0];
}

- (void)_setupConstraints
{
  v3 = sub_10000FA08(self);
  if (v3 == 5)
  {
    v4 = 5.0;
  }

  else
  {
    v4 = 16.0;
  }

  if (v3 == 5)
  {
    v5 = -5.0;
  }

  else
  {
    v5 = 0.0;
  }

  v29 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  v27 = [v29 topAnchor];
  v28 = [(CuratedCollectionActionTableViewCell *)self contentView];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:v4];
  v30[0] = v25;
  v24 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  v22 = [v24 leadingAnchor];
  v23 = [(CuratedCollectionActionTableViewCell *)self contentView];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:v5];
  v30[1] = v20;
  v19 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  v18 = [v19 trailingAnchor];
  v6 = [(CuratedCollectionActionTableViewCell *)self contentView];
  v7 = [v6 trailingAnchor];
  v8 = [v18 constraintEqualToAnchor:v7];
  v30[2] = v8;
  v9 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  v10 = [v9 bottomAnchor];
  v11 = [(CuratedCollectionActionTableViewCell *)self contentView];
  v12 = [v11 bottomAnchor];
  LODWORD(v13) = 1112276992;
  v14 = [v10 constraintEqualToAnchor:v12 constant:-v4 priority:v13];
  v30[3] = v14;
  v15 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  v16 = [(CuratedCollectionActionTableViewCell *)self contentView];
  [v16 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  v17 = [(CuratedCollectionActionTableViewCell *)self contentView];
  [v17 setPreservesSuperviewLayoutMargins:0];
}

- (void)_createSubviews
{
  v3 = +[UIColor clearColor];
  [(CuratedCollectionActionTableViewCell *)self setBackgroundColor:v3];

  v4 = sub_10000FA08(self);
  if (self->_alwaysUseLightForegroundColors)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v16 = ;
  v5 = 2 * (v4 == 5);
  v6 = +[MUGroupedActionsRowViewConfiguration defaultConfiguration];
  [v6 setTintColor:v16];
  v7 = [UIColor colorWithWhite:1.0 alpha:0.100000001];
  [v6 setItemBackgroundColor:v7];

  v8 = [UIColor colorWithWhite:1.0 alpha:0.200000003];
  [v6 setItemHighlightColor:v8];

  [v6 setUseVibrancy:0];
  v9 = [[MUPlaceCardActionsRowView alloc] initWithConfiguration:v6 style:v5];
  [(CuratedCollectionActionTableViewCell *)self setActionRowView:v9];

  v10 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [v10 setPreservesSuperviewLayoutMargins:1];

  v11 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  v12 = [v11 layer];
  [v12 setAllowsGroupOpacity:0];

  v13 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(CuratedCollectionActionTableViewCell *)self contentView];
  v15 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [v14 addSubview:v15];
}

- (CuratedCollectionActionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CuratedCollectionActionTableViewCell;
  v4 = [(CuratedCollectionActionTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CuratedCollectionActionTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(CuratedCollectionActionTableViewCell *)v5 setAccessibilityIdentifier:v7];

    [(CuratedCollectionActionTableViewCell *)v5 _createSubviews];
    [(CuratedCollectionActionTableViewCell *)v5 _setupConstraints];
  }

  return v5;
}

@end
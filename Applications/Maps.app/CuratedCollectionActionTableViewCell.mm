@interface CuratedCollectionActionTableViewCell
- (CuratedCollectionActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_createSubviews;
- (void)_resetActionRow;
- (void)_setupConstraints;
- (void)configureWithModel:(id)model;
- (void)layoutMarginsDidChange;
- (void)setAlwaysUseLightForegroundColors:(BOOL)colors animated:(BOOL)animated;
@end

@implementation CuratedCollectionActionTableViewCell

- (void)_resetActionRow
{
  model = [(CuratedCollectionActionTableViewCell *)self model];
  actionManager = [model actionManager];
  actionRowView = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [actionRowView setActionManager:actionManager];

  actionRowView2 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [actionRowView2 reload];
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  model = [(CuratedCollectionActionTableViewCell *)self model];

  v5 = modelCopy;
  if (model != modelCopy)
  {
    [(CuratedCollectionActionTableViewCell *)self setModel:modelCopy];
    [(CuratedCollectionActionTableViewCell *)self _resetActionRow];
    v5 = modelCopy;
  }
}

- (void)setAlwaysUseLightForegroundColors:(BOOL)colors animated:(BOOL)animated
{
  if (self->_alwaysUseLightForegroundColors != colors)
  {
    v19[5] = v7;
    v19[6] = v6;
    v19[13] = v4;
    v19[14] = v5;
    animatedCopy = animated;
    self->_alwaysUseLightForegroundColors = colors;
    actionRowView = [(CuratedCollectionActionTableViewCell *)self actionRowView];
    [(CuratedCollectionActionTableViewCell *)self _createSubviews];
    [(CuratedCollectionActionTableViewCell *)self _setupConstraints];
    [(CuratedCollectionActionTableViewCell *)self _resetActionRow];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100F8612C;
    v19[3] = &unk_101661B18;
    v19[4] = self;
    [UIView performWithoutAnimation:v19];
    actionRowView2 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
    v12 = 0.0;
    [actionRowView2 setAlpha:0.0];

    if (animatedCopy)
    {
      v12 = 0.2;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100F86134;
    v16[3] = &unk_101661A90;
    v17 = actionRowView;
    selfCopy = self;
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

  actionRowView = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  topAnchor = [actionRowView topAnchor];
  contentView = [(CuratedCollectionActionTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v4];
  v30[0] = v25;
  actionRowView2 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  leadingAnchor = [actionRowView2 leadingAnchor];
  contentView2 = [(CuratedCollectionActionTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v5];
  v30[1] = v20;
  actionRowView3 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  trailingAnchor = [actionRowView3 trailingAnchor];
  contentView3 = [(CuratedCollectionActionTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[2] = v8;
  actionRowView4 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  bottomAnchor = [actionRowView4 bottomAnchor];
  contentView4 = [(CuratedCollectionActionTableViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  LODWORD(v13) = 1112276992;
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v4 priority:v13];
  v30[3] = v14;
  v15 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  contentView5 = [(CuratedCollectionActionTableViewCell *)self contentView];
  [contentView5 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  contentView6 = [(CuratedCollectionActionTableViewCell *)self contentView];
  [contentView6 setPreservesSuperviewLayoutMargins:0];
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

  actionRowView = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [actionRowView setPreservesSuperviewLayoutMargins:1];

  actionRowView2 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  layer = [actionRowView2 layer];
  [layer setAllowsGroupOpacity:0];

  actionRowView3 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [actionRowView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(CuratedCollectionActionTableViewCell *)self contentView];
  actionRowView4 = [(CuratedCollectionActionTableViewCell *)self actionRowView];
  [contentView addSubview:actionRowView4];
}

- (CuratedCollectionActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CuratedCollectionActionTableViewCell;
  v4 = [(CuratedCollectionActionTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
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
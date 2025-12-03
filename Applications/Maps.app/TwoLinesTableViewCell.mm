@interface TwoLinesTableViewCell
+ (id)identifier;
- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate;
- (CGSize)intrinsicContentSize;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (TwoLinesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier contentViewType:(int)type;
- (void)didTapAccessoryViewButton:(id)button;
- (void)prepareContentView;
- (void)prepareForReuse;
- (void)setAccessoryViewType:(int64_t)type;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setViewModel:(id)model;
@end

@implementation TwoLinesTableViewCell

- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryViewDelegate);

  return WeakRetained;
}

- (PersonalizedItem)personalizedItemForQuickActionMenu
{
  viewModel = [(TwoLinesTableViewCell *)self viewModel];
  personalizedItemForQuickActionMenuCreator = [viewModel personalizedItemForQuickActionMenuCreator];

  if (personalizedItemForQuickActionMenuCreator)
  {
    v4 = personalizedItemForQuickActionMenuCreator[2](personalizedItemForQuickActionMenuCreator);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v13 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(TwoLinesContentView *)self->_twoLinesContentView setViewModel:v13];
    viewModel = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
    axIdentifier = [viewModel axIdentifier];
    if ([axIdentifier length])
    {
      viewModel2 = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
      axIdentifier2 = [viewModel2 axIdentifier];
    }

    else
    {
      axIdentifier2 = @"TwoLinesTableViewCell";
    }

    [(TwoLinesTableViewCell *)self setAccessibilityIdentifier:axIdentifier2];
    customAccessoryView = [(TwoLinesContentViewModel *)self->_viewModel customAccessoryView];
    accessoryView = [(TwoLinesTableViewCell *)self accessoryView];

    if (customAccessoryView != accessoryView)
    {
      customAccessoryView2 = [(TwoLinesContentViewModel *)self->_viewModel customAccessoryView];
      [(TwoLinesTableViewCell *)self setAccessoryView:customAccessoryView2];
    }

    modelCopy = v13;
  }
}

- (void)didTapAccessoryViewButton:(id)button
{
  accessoryViewDelegate = [(TwoLinesTableViewCell *)self accessoryViewDelegate];
  accessoryViewType = [(TwoLinesTableViewCell *)self accessoryViewType];
  accessoryViewObject = [(TwoLinesTableViewCell *)self accessoryViewObject];
  [accessoryViewDelegate didTapOnAccessoryView:self withType:accessoryViewType object:accessoryViewObject];
}

- (void)setAccessoryViewType:(int64_t)type
{
  v4 = 0;
  self->_accessoryViewType = type;
  if (type > 2)
  {
    if (type == 3)
    {
      v28 = [UIButton buttonWithType:0];
      [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
      v25 = [UIImage systemImageNamed:@"checkmark"];
      [v28 setImage:v25 forState:0];

      v26 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
      [v28 setPreferredSymbolConfiguration:v26 forImageInState:0];

      v27 = +[UIColor secondaryLabelColor];
      [v28 setTintColor:v27];

      v8 = @"AccessoryCheckmarkButton";
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_17;
      }

      v28 = [UIButton buttonWithType:0];
      [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
      v9 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v9 userInterfaceIdiom];
      v11 = @"pin";
      if (userInterfaceIdiom == 5)
      {
        v11 = @"pin.circle";
      }

      v12 = v11;

      v13 = [UIImage systemImageNamed:v12];

      [v28 setImage:v13 forState:0];
      v14 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
      [v28 setPreferredSymbolConfiguration:v14 forImageInState:0];

      theme = [v28 theme];
      keyColor = [theme keyColor];
      [v28 setTintColor:keyColor];

      v8 = @"AccessoryPinButton";
    }
  }

  else if (type == 1)
  {
    v28 = [UIButton buttonWithType:0];
    [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v17 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v17 userInterfaceIdiom];
    v19 = @"plus";
    if (userInterfaceIdiom2 == 5)
    {
      v19 = @"plus.circle";
    }

    v20 = v19;

    v21 = [UIImage systemImageNamed:v20];

    [v28 setImage:v21 forState:0];
    v22 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v28 setPreferredSymbolConfiguration:v22 forImageInState:0];

    theme2 = [v28 theme];
    keyColor2 = [theme2 keyColor];
    [v28 setTintColor:keyColor2];

    v8 = @"AccessoryAddButton";
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_17;
    }

    v28 = [UIButton buttonWithType:0];
    [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v5 = [UIImage systemImageNamed:@"arrow.up.backward.circle"];
    [v28 setImage:v5 forState:0];

    v6 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v28 setPreferredSymbolConfiguration:v6 forImageInState:0];

    v7 = +[UIColor secondaryLabelColor];
    [v28 setTintColor:v7];

    v8 = @"AccessoryQueryAcceleratorButton";
  }

  [v28 setAccessibilityIdentifier:v8];
  if (v28)
  {
    [v28 addTarget:self action:"didTapAccessoryViewButton:" forControlEvents:64];
    v4 = v28;
  }

  else
  {
    v4 = 0;
  }

LABEL_17:
  v29 = v4;
  [(TwoLinesTableViewCell *)self setAccessoryView:v4];
}

- (CGSize)intrinsicContentSize
{
  contentView = [(TwoLinesTableViewCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.receiver = self;
  v19.super_class = TwoLinesTableViewCell;
  [(TwoLinesTableViewCell *)&v19 intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  contentView2 = [(TwoLinesTableViewCell *)self contentView];
  [contentView2 setFrame:{v5, v7, v9, v11}];

  v17 = v13;
  v18 = v15;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = TwoLinesTableViewCell;
  [(TwoLinesTableViewCell *)&v6 setSelected:selected animated:animated];
  [(TwoLinesContentView *)self->_twoLinesContentView setIsParentCellSelected:selectedCopy];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TwoLinesTableViewCell;
  [(TwoLinesTableViewCell *)&v3 prepareForReuse];
  [(TwoLinesTableViewCell *)self setAccessoryViewType:0];
  [(TwoLinesTableViewCell *)self setAccessoryViewObject:0];
  [(TwoLinesTableViewCell *)self setAccessoryViewDelegate:0];
}

- (void)prepareContentView
{
  _tableView = [(TwoLinesTableViewCell *)self _tableView];
  style = [_tableView style];

  if (style != 2)
  {
    v5 = +[UIColor clearColor];
    [(TwoLinesTableViewCell *)self setBackgroundColor:v5];
  }

  v6 = [[TwoLinesContentView alloc] initWithFrame:self->_contentViewType contentViewType:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  twoLinesContentView = self->_twoLinesContentView;
  self->_twoLinesContentView = v6;

  [(TwoLinesContentView *)self->_twoLinesContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TwoLinesTableViewCell *)self contentView];
  [contentView addSubview:self->_twoLinesContentView];

  topAnchor = [(TwoLinesContentView *)self->_twoLinesContentView topAnchor];
  contentView2 = [(TwoLinesTableViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v23;
  leadingAnchor = [(TwoLinesContentView *)self->_twoLinesContentView leadingAnchor];
  contentView3 = [(TwoLinesTableViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  [(TwoLinesTableViewCell *)self leadingSpacing];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v27[1] = v9;
  trailingAnchor = [(TwoLinesContentView *)self->_twoLinesContentView trailingAnchor];
  contentView4 = [(TwoLinesTableViewCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v27[2] = v13;
  bottomAnchor = [(TwoLinesContentView *)self->_twoLinesContentView bottomAnchor];
  contentView5 = [(TwoLinesTableViewCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  LODWORD(v17) = 1112276992;
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v17];
  v27[3] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (TwoLinesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier contentViewType:(int)type
{
  v9.receiver = self;
  v9.super_class = TwoLinesTableViewCell;
  v6 = [(MapsThemeTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    v6->_contentViewType = type;
    [(TwoLinesTableViewCell *)v6 prepareContentView];
    if (sub_10000FA08(v7) == 5)
    {
      [(TwoLinesTableViewCell *)v7 _maps_setTableViewCellBackgroundConfiguration];
    }
  }

  return v7;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
@interface TwoLinesTableViewCell
+ (id)identifier;
- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate;
- (CGSize)intrinsicContentSize;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (TwoLinesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 contentViewType:(int)a5;
- (void)didTapAccessoryViewButton:(id)a3;
- (void)prepareContentView;
- (void)prepareForReuse;
- (void)setAccessoryViewType:(int64_t)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setViewModel:(id)a3;
@end

@implementation TwoLinesTableViewCell

- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryViewDelegate);

  return WeakRetained;
}

- (PersonalizedItem)personalizedItemForQuickActionMenu
{
  v2 = [(TwoLinesTableViewCell *)self viewModel];
  v3 = [v2 personalizedItemForQuickActionMenuCreator];

  if (v3)
  {
    v4 = v3[2](v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(TwoLinesContentView *)self->_twoLinesContentView setViewModel:v13];
    v6 = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
    v7 = [v6 axIdentifier];
    if ([v7 length])
    {
      v8 = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
      v9 = [v8 axIdentifier];
    }

    else
    {
      v9 = @"TwoLinesTableViewCell";
    }

    [(TwoLinesTableViewCell *)self setAccessibilityIdentifier:v9];
    v10 = [(TwoLinesContentViewModel *)self->_viewModel customAccessoryView];
    v11 = [(TwoLinesTableViewCell *)self accessoryView];

    if (v10 != v11)
    {
      v12 = [(TwoLinesContentViewModel *)self->_viewModel customAccessoryView];
      [(TwoLinesTableViewCell *)self setAccessoryView:v12];
    }

    v5 = v13;
  }
}

- (void)didTapAccessoryViewButton:(id)a3
{
  v6 = [(TwoLinesTableViewCell *)self accessoryViewDelegate];
  v4 = [(TwoLinesTableViewCell *)self accessoryViewType];
  v5 = [(TwoLinesTableViewCell *)self accessoryViewObject];
  [v6 didTapOnAccessoryView:self withType:v4 object:v5];
}

- (void)setAccessoryViewType:(int64_t)a3
{
  v4 = 0;
  self->_accessoryViewType = a3;
  if (a3 > 2)
  {
    if (a3 == 3)
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
      if (a3 != 4)
      {
        goto LABEL_17;
      }

      v28 = [UIButton buttonWithType:0];
      [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
      v9 = +[UIDevice currentDevice];
      v10 = [v9 userInterfaceIdiom];
      v11 = @"pin";
      if (v10 == 5)
      {
        v11 = @"pin.circle";
      }

      v12 = v11;

      v13 = [UIImage systemImageNamed:v12];

      [v28 setImage:v13 forState:0];
      v14 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
      [v28 setPreferredSymbolConfiguration:v14 forImageInState:0];

      v15 = [v28 theme];
      v16 = [v15 keyColor];
      [v28 setTintColor:v16];

      v8 = @"AccessoryPinButton";
    }
  }

  else if (a3 == 1)
  {
    v28 = [UIButton buttonWithType:0];
    [v28 setBounds:{0.0, 0.0, 30.0, 30.0}];
    v17 = +[UIDevice currentDevice];
    v18 = [v17 userInterfaceIdiom];
    v19 = @"plus";
    if (v18 == 5)
    {
      v19 = @"plus.circle";
    }

    v20 = v19;

    v21 = [UIImage systemImageNamed:v20];

    [v28 setImage:v21 forState:0];
    v22 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
    [v28 setPreferredSymbolConfiguration:v22 forImageInState:0];

    v23 = [v28 theme];
    v24 = [v23 keyColor];
    [v28 setTintColor:v24];

    v8 = @"AccessoryAddButton";
  }

  else
  {
    if (a3 != 2)
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
  v3 = [(TwoLinesTableViewCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.receiver = self;
  v19.super_class = TwoLinesTableViewCell;
  [(TwoLinesTableViewCell *)&v19 intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  v16 = [(TwoLinesTableViewCell *)self contentView];
  [v16 setFrame:{v5, v7, v9, v11}];

  v17 = v13;
  v18 = v15;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TwoLinesTableViewCell;
  [(TwoLinesTableViewCell *)&v6 setSelected:a3 animated:a4];
  [(TwoLinesContentView *)self->_twoLinesContentView setIsParentCellSelected:v4];
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
  v3 = [(TwoLinesTableViewCell *)self _tableView];
  v4 = [v3 style];

  if (v4 != 2)
  {
    v5 = +[UIColor clearColor];
    [(TwoLinesTableViewCell *)self setBackgroundColor:v5];
  }

  v6 = [[TwoLinesContentView alloc] initWithFrame:self->_contentViewType contentViewType:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  twoLinesContentView = self->_twoLinesContentView;
  self->_twoLinesContentView = v6;

  [(TwoLinesContentView *)self->_twoLinesContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(TwoLinesTableViewCell *)self contentView];
  [v8 addSubview:self->_twoLinesContentView];

  v25 = [(TwoLinesContentView *)self->_twoLinesContentView topAnchor];
  v26 = [(TwoLinesTableViewCell *)self contentView];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v27[0] = v23;
  v21 = [(TwoLinesContentView *)self->_twoLinesContentView leadingAnchor];
  v22 = [(TwoLinesTableViewCell *)self contentView];
  v20 = [v22 leadingAnchor];
  [(TwoLinesTableViewCell *)self leadingSpacing];
  v9 = [v21 constraintEqualToAnchor:v20 constant:?];
  v27[1] = v9;
  v10 = [(TwoLinesContentView *)self->_twoLinesContentView trailingAnchor];
  v11 = [(TwoLinesTableViewCell *)self contentView];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:-10.0];
  v27[2] = v13;
  v14 = [(TwoLinesContentView *)self->_twoLinesContentView bottomAnchor];
  v15 = [(TwoLinesTableViewCell *)self contentView];
  v16 = [v15 bottomAnchor];
  LODWORD(v17) = 1112276992;
  v18 = [v14 constraintEqualToAnchor:v16 constant:0.0 priority:v17];
  v27[3] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (TwoLinesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 contentViewType:(int)a5
{
  v9.receiver = self;
  v9.super_class = TwoLinesTableViewCell;
  v6 = [(MapsThemeTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v7 = v6;
  if (v6)
  {
    v6->_contentViewType = a5;
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
@interface QuerySuggestionTableViewCell
+ (id)identifier;
- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate;
- (QuerySuggestionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)didTapAccessoryViewButton:(id)a3;
- (void)prepareForReuse;
- (void)setAccessoryViewType:(int64_t)a3;
- (void)setTitle:(id)a3 highlightTitleRanges:(id)a4 detailText:(id)a5 style:(unint64_t)a6;
@end

@implementation QuerySuggestionTableViewCell

- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryViewDelegate);

  return WeakRetained;
}

- (void)didTapAccessoryViewButton:(id)a3
{
  v6 = [(QuerySuggestionTableViewCell *)self accessoryViewDelegate];
  v4 = [(QuerySuggestionTableViewCell *)self accessoryViewType];
  v5 = [(QuerySuggestionTableViewCell *)self accessoryViewObject];
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
  [(QuerySuggestionTableViewCell *)self setAccessoryView:v4];
}

- (void)setTitle:(id)a3 highlightTitleRanges:(id)a4 detailText:(id)a5 style:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(QuerySuggestionTableViewCell *)self querySuggestionView];
  [v13 setTitle:v12 highlightTitleRanges:v11 detailText:v10 style:a6];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = QuerySuggestionTableViewCell;
  [(QuerySuggestionTableViewCell *)&v4 prepareForReuse];
  v3 = [(QuerySuggestionTableViewCell *)self querySuggestionView];
  [v3 clearContents];

  [(QuerySuggestionTableViewCell *)self setAccessoryViewType:0];
  [(QuerySuggestionTableViewCell *)self setAccessoryViewObject:0];
  [(QuerySuggestionTableViewCell *)self setAccessoryViewDelegate:0];
}

- (QuerySuggestionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v27.receiver = self;
  v27.super_class = QuerySuggestionTableViewCell;
  v4 = [(QuerySuggestionTableViewCell *)&v27 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(QuerySuggestionTableViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(QuerySuggestionView);
    querySuggestionView = v4->_querySuggestionView;
    v4->_querySuggestionView = v6;

    [(QuerySuggestionView *)v4->_querySuggestionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(QuerySuggestionTableViewCell *)v4 contentView];
    [v8 addSubview:v4->_querySuggestionView];

    v25 = [(QuerySuggestionView *)v4->_querySuggestionView leadingAnchor];
    v26 = [(QuerySuggestionTableViewCell *)v4 contentView];
    v24 = [v26 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v28[0] = v23;
    v21 = [(QuerySuggestionView *)v4->_querySuggestionView trailingAnchor];
    v22 = [(QuerySuggestionTableViewCell *)v4 contentView];
    v20 = [v22 trailingAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v28[1] = v19;
    v9 = [(QuerySuggestionView *)v4->_querySuggestionView topAnchor];
    v10 = [(QuerySuggestionTableViewCell *)v4 contentView];
    v11 = [v10 topAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v28[2] = v12;
    v13 = [(QuerySuggestionView *)v4->_querySuggestionView bottomAnchor];
    v14 = [(QuerySuggestionTableViewCell *)v4 contentView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v28[3] = v16;
    v17 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }

  return v4;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
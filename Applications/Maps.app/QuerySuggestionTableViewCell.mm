@interface QuerySuggestionTableViewCell
+ (id)identifier;
- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate;
- (QuerySuggestionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didTapAccessoryViewButton:(id)button;
- (void)prepareForReuse;
- (void)setAccessoryViewType:(int64_t)type;
- (void)setTitle:(id)title highlightTitleRanges:(id)ranges detailText:(id)text style:(unint64_t)style;
@end

@implementation QuerySuggestionTableViewCell

- (AutocompleteCellAccessoryDelegate)accessoryViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryViewDelegate);

  return WeakRetained;
}

- (void)didTapAccessoryViewButton:(id)button
{
  accessoryViewDelegate = [(QuerySuggestionTableViewCell *)self accessoryViewDelegate];
  accessoryViewType = [(QuerySuggestionTableViewCell *)self accessoryViewType];
  accessoryViewObject = [(QuerySuggestionTableViewCell *)self accessoryViewObject];
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
  [(QuerySuggestionTableViewCell *)self setAccessoryView:v4];
}

- (void)setTitle:(id)title highlightTitleRanges:(id)ranges detailText:(id)text style:(unint64_t)style
{
  textCopy = text;
  rangesCopy = ranges;
  titleCopy = title;
  querySuggestionView = [(QuerySuggestionTableViewCell *)self querySuggestionView];
  [querySuggestionView setTitle:titleCopy highlightTitleRanges:rangesCopy detailText:textCopy style:style];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = QuerySuggestionTableViewCell;
  [(QuerySuggestionTableViewCell *)&v4 prepareForReuse];
  querySuggestionView = [(QuerySuggestionTableViewCell *)self querySuggestionView];
  [querySuggestionView clearContents];

  [(QuerySuggestionTableViewCell *)self setAccessoryViewType:0];
  [(QuerySuggestionTableViewCell *)self setAccessoryViewObject:0];
  [(QuerySuggestionTableViewCell *)self setAccessoryViewDelegate:0];
}

- (QuerySuggestionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v27.receiver = self;
  v27.super_class = QuerySuggestionTableViewCell;
  v4 = [(QuerySuggestionTableViewCell *)&v27 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(QuerySuggestionTableViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(QuerySuggestionView);
    querySuggestionView = v4->_querySuggestionView;
    v4->_querySuggestionView = v6;

    [(QuerySuggestionView *)v4->_querySuggestionView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(QuerySuggestionTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_querySuggestionView];

    leadingAnchor = [(QuerySuggestionView *)v4->_querySuggestionView leadingAnchor];
    contentView2 = [(QuerySuggestionTableViewCell *)v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v23;
    trailingAnchor = [(QuerySuggestionView *)v4->_querySuggestionView trailingAnchor];
    contentView3 = [(QuerySuggestionTableViewCell *)v4 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[1] = v19;
    topAnchor = [(QuerySuggestionView *)v4->_querySuggestionView topAnchor];
    contentView4 = [(QuerySuggestionTableViewCell *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[2] = v12;
    bottomAnchor = [(QuerySuggestionView *)v4->_querySuggestionView bottomAnchor];
    contentView5 = [(QuerySuggestionTableViewCell *)v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
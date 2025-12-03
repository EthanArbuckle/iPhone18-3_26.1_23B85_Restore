@interface BCAlertHeaderTableViewCell
+ (double)heightForBusinessItem:(id)item forWidth:(double)width;
+ (double)heightForTitleText:(id)text forWidth:(double)width;
- (BCAlertHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)updateContentViewUsingBusinessItem:(id)item brandedHeaderDelegate:(id)delegate;
- (void)updateContentViewUsingTitleText:(id)text;
@end

@implementation BCAlertHeaderTableViewCell

- (BCAlertHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = BCAlertHeaderTableViewCell;
  v4 = [(BCAlertHeaderTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(BCAlertHeaderTableViewCell *)v4 setSelectionStyle:0];
  }

  return v5;
}

+ (double)heightForBusinessItem:(id)item forWidth:(double)width
{
  itemCopy = item;
  if (itemCopy)
  {
    v6 = [BCAlertHeaderTableViewCell alloc];
    reuseIdentifier = [objc_opt_class() reuseIdentifier];
    v8 = [(BCAlertHeaderTableViewCell *)v6 initWithStyle:0 reuseIdentifier:reuseIdentifier];

    [(BCAlertHeaderTableViewCell *)v8 updateContentViewUsingBusinessItem:itemCopy brandedHeaderDelegate:0];
    [(BCAlertHeaderTableViewCell *)v8 layoutMargins];
    v12 = v11;
    v13 = v9;
    v15 = v14 + v10;
    v16 = width - (v14 + v10);
    if (v15 >= width)
    {
      widthCopy = width;
    }

    else
    {
      widthCopy = v16;
    }

    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [(BCAlertHeaderTableViewCell *)v8 systemLayoutSizeFittingSize:widthCopy withHorizontalFittingPriority:0.0 verticalFittingPriority:v9, v10];
    v19 = v13 + v12 + v18;
  }

  else
  {
    v20 = sub_10000BC3C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "+[BCAlertHeaderTableViewCell heightForBusinessItem:forWidth:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Cannot update content view for nil BCSBusinessItem", &v22, 0xCu);
    }

    v19 = 0.0;
  }

  return v19;
}

+ (double)heightForTitleText:(id)text forWidth:(double)width
{
  textCopy = text;
  if (textCopy)
  {
    v6 = [BCAlertHeaderTableViewCell alloc];
    reuseIdentifier = [objc_opt_class() reuseIdentifier];
    v8 = [(BCAlertHeaderTableViewCell *)v6 initWithStyle:0 reuseIdentifier:reuseIdentifier];

    [(BCAlertHeaderTableViewCell *)v8 updateContentViewUsingTitleText:textCopy];
    [(BCAlertHeaderTableViewCell *)v8 layoutMargins];
    v12 = v11;
    v13 = v9;
    v15 = v14 + v10;
    v16 = width - (v14 + v10);
    if (v15 >= width)
    {
      widthCopy = width;
    }

    else
    {
      widthCopy = v16;
    }

    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [(BCAlertHeaderTableViewCell *)v8 systemLayoutSizeFittingSize:widthCopy withHorizontalFittingPriority:0.0 verticalFittingPriority:v9, v10];
    v19 = v13 + v12 + v18;
  }

  else
  {
    v20 = sub_10000BC3C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "+[BCAlertHeaderTableViewCell heightForTitleText:forWidth:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Cannot compute height for nil title text", &v22, 0xCu);
    }

    v19 = 0.0;
  }

  return v19;
}

- (void)updateContentViewUsingBusinessItem:(id)item brandedHeaderDelegate:(id)delegate
{
  itemCopy = item;
  delegateCopy = delegate;
  if (itemCopy)
  {
    v8 = [UIColor colorNamed:@"CellBackgroundColor"];
    [(BCAlertHeaderTableViewCell *)self setBackgroundColor:v8];

    contentView = [(BCAlertHeaderTableViewCell *)self contentView];
    subviews = [contentView subviews];
    [subviews makeObjectsPerformSelector:"removeFromSuperview"];

    makeBrandedHeaderViewController = [itemCopy makeBrandedHeaderViewController];
    [makeBrandedHeaderViewController setDelegate:delegateCopy];
    [makeBrandedHeaderViewController view];
    v11 = v47 = delegateCopy;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(BCAlertHeaderTableViewCell *)self contentView];
    [contentView2 addSubview:v11];

    leadingAnchor = [v11 leadingAnchor];
    contentView3 = [(BCAlertHeaderTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v42 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v48[0] = v42;
    trailingAnchor = [v11 trailingAnchor];
    contentView4 = [(BCAlertHeaderTableViewCell *)self contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v37 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v48[1] = v37;
    centerXAnchor = [v11 centerXAnchor];
    contentView5 = [(BCAlertHeaderTableViewCell *)self contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide3 centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v48[2] = v31;
    centerYAnchor = [v11 centerYAnchor];
    contentView6 = [(BCAlertHeaderTableViewCell *)self contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide4 centerYAnchor];
    v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v48[3] = v26;
    topAnchor = [v11 topAnchor];
    contentView7 = [(BCAlertHeaderTableViewCell *)self contentView];
    layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide5 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v48[4] = v14;
    bottomAnchor = [v11 bottomAnchor];
    contentView8 = [(BCAlertHeaderTableViewCell *)self contentView];
    layoutMarginsGuide6 = [contentView8 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide6 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v20 = v19 = itemCopy;
    v48[5] = v20;
    v21 = [NSArray arrayWithObjects:v48 count:6];
    [NSLayoutConstraint activateConstraints:v21];

    itemCopy = v19;
    v22 = makeBrandedHeaderViewController;

    delegateCopy = v47;
  }

  else
  {
    v22 = sub_10000BC3C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v50 = "[BCAlertHeaderTableViewCell updateContentViewUsingBusinessItem:brandedHeaderDelegate:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Cannot update content view for nil BCSBusinessItem", buf, 0xCu);
    }
  }
}

- (void)updateContentViewUsingTitleText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    v5 = [UIColor colorNamed:@"CellBackgroundColor"];
    [(BCAlertHeaderTableViewCell *)self setBackgroundColor:v5];

    contentView = [(BCAlertHeaderTableViewCell *)self contentView];
    subviews = [contentView subviews];
    [subviews makeObjectsPerformSelector:"removeFromSuperview"];

    v8 = objc_alloc_init(UILabel);
    [(UILabel *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [UIFont boldSystemFontOfSize:13.0];
    v9 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle3];
    v10 = [v9 scaledFontForFont:v39];
    [(UILabel *)v8 setFont:v10];

    v11 = +[UIColor secondaryLabelColor];
    [(UILabel *)v8 setTextColor:v11];

    [(UILabel *)v8 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v8 setNumberOfLines:0];
    [(UILabel *)v8 setTextAlignment:1];
    [(UILabel *)v8 setLineBreakMode:4];
    [(UILabel *)v8 setText:textCopy];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v8;
    v31 = v8;

    contentView2 = [(BCAlertHeaderTableViewCell *)self contentView];
    [contentView2 addSubview:self->_titleLabel];

    topAnchor = [(UILabel *)self->_titleLabel topAnchor];
    contentView3 = [(BCAlertHeaderTableViewCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v40[0] = v35;
    leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
    contentView4 = [(BCAlertHeaderTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[1] = v29;
    trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
    contentView5 = [(BCAlertHeaderTableViewCell *)self contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[2] = v24;
    centerYAnchor = [(UILabel *)self->_titleLabel centerYAnchor];
    contentView6 = [(BCAlertHeaderTableViewCell *)self contentView];
    centerYAnchor2 = [contentView6 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v40[3] = v17;
    bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
    contentView7 = [(BCAlertHeaderTableViewCell *)self contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v21 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v40[4] = v21;
    v22 = [NSArray arrayWithObjects:v40 count:5];
    [NSLayoutConstraint activateConstraints:v22];

    v23 = v39;
  }

  else
  {
    v23 = sub_10000BC3C();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[BCAlertHeaderTableViewCell updateContentViewUsingTitleText:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Cannot update content view for nil Title Text", buf, 0xCu);
    }
  }
}

@end
@interface QuerySuggestionView
- (BOOL)needsTwoLinesLayout;
- (BOOL)shouldDistributeProportionally;
- (QuerySuggestionView)init;
- (id)delimiterString;
- (void)clearContents;
- (void)layoutSubviews;
- (void)setTitle:(id)title highlightTitleRanges:(id)ranges detailText:(id)text style:(unint64_t)style;
- (void)updateLabels;
- (void)updateTheme;
@end

@implementation QuerySuggestionView

- (BOOL)needsTwoLinesLayout
{
  if (qword_10195E660 != -1)
  {
    dispatch_once(&qword_10195E660, &stru_101638080);
  }

  v3 = qword_10195E658;
  v4 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
  LODWORD(v3) = [v3 containsObject:preferredContentSizeCategory];

  if (!v3)
  {
    return 0;
  }

  title = [(QuerySuggestionView *)self title];
  delimiterString = [(QuerySuggestionView *)self delimiterString];
  detailText = [(QuerySuggestionView *)self detailText];
  v9 = [NSString stringWithFormat:@"%@%@%@", title, delimiterString, detailText];

  v27 = NSFontAttributeName;
  titleFont = [(QuerySuggestionView *)self titleFont];
  v28 = titleFont;
  v11 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v9 sizeWithAttributes:v11];
  v13 = ceil(v12);

  [(QuerySuggestionView *)self frame];
  v15 = v14;
  [(QuerySuggestionView *)self layoutMargins];
  v17 = v16;
  [(QuerySuggestionView *)self layoutMargins];
  v19 = 0.0;
  if (v15 >= v18 + v17)
  {
    [(QuerySuggestionView *)self frame];
    v21 = v20;
    [(QuerySuggestionView *)self layoutMargins];
    v23 = v22;
    [(QuerySuggestionView *)self layoutMargins];
    v19 = v21 - (v23 + v24);
  }

  v25 = v13 > v19;

  return v25;
}

- (BOOL)shouldDistributeProportionally
{
  selfCopy = self;
  title = [(QuerySuggestionView *)self title];
  delimiterString = [(QuerySuggestionView *)selfCopy delimiterString];
  detailText = [(QuerySuggestionView *)selfCopy detailText];
  v6 = [NSString stringWithFormat:@"%@%@%@", title, delimiterString, detailText];

  v17 = NSFontAttributeName;
  titleFont = [(QuerySuggestionView *)selfCopy titleFont];
  v18 = titleFont;
  v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v6 sizeWithAttributes:v8];
  v10 = ceil(v9);

  [(QuerySuggestionView *)selfCopy layoutIfNeeded];
  [(QuerySuggestionView *)selfCopy frame];
  v12 = v11;
  [(UIImageView *)selfCopy->_iconImageView frame];
  v14 = v13;
  [(UIImageView *)selfCopy->_iconImageView frame];
  LOBYTE(selfCopy) = v10 >= v12 + -15.0 - (v14 + v15);

  return selfCopy;
}

- (void)updateLabels
{
  title = [(QuerySuggestionView *)self title];
  v4 = [title length];

  if (!v4)
  {
    return;
  }

  querySuggestionStyle = [(QuerySuggestionView *)self querySuggestionStyle];
  if (querySuggestionStyle != 1)
  {
    if (querySuggestionStyle)
    {
      return;
    }

    v6 = +[UIColor secondaryLabelColor];
    titleLabel = [(QuerySuggestionView *)self titleLabel];
    [titleLabel setTextColor:v6];

    highlightRanges = [(QuerySuggestionView *)self highlightRanges];
    v9 = [highlightRanges count];

    if (v9)
    {
      title2 = [(QuerySuggestionView *)self title];
      highlightRanges2 = [(QuerySuggestionView *)self highlightRanges];
      titleFont = [(QuerySuggestionView *)self titleFont];
      titleFont2 = [(QuerySuggestionView *)self titleFont];
      v14 = +[UIColor labelColor];
      delimiterLabel5 = [NSAttributedString attributedStringWithText:title2 highlightRanges:highlightRanges2 font:titleFont highlightedFont:titleFont2 highlightedTextColor:v14];
    }

    else
    {
      v37 = [NSAttributedString alloc];
      title2 = [(QuerySuggestionView *)self title];
      delimiterLabel5 = [v37 initWithString:title2];
    }

    titleLabel2 = [(QuerySuggestionView *)self titleLabel];
    [titleLabel2 setAttributedText:delimiterLabel5];

    detailLabel = [(QuerySuggestionView *)self detailLabel];
    [detailLabel setText:0];

    delimiterLabel = [(QuerySuggestionView *)self delimiterLabel];
    [delimiterLabel setHidden:1];

    goto LABEL_14;
  }

  title3 = [(QuerySuggestionView *)self title];
  titleLabel3 = [(QuerySuggestionView *)self titleLabel];
  [titleLabel3 setText:title3];

  v17 = +[UIColor labelColor];
  titleLabel4 = [(QuerySuggestionView *)self titleLabel];
  [titleLabel4 setTextColor:v17];

  titleFont3 = [(QuerySuggestionView *)self titleFont];
  titleLabel5 = [(QuerySuggestionView *)self titleLabel];
  [titleLabel5 setFont:titleFont3];

  delimiterString = [(QuerySuggestionView *)self delimiterString];
  delimiterLabel2 = [(QuerySuggestionView *)self delimiterLabel];
  [delimiterLabel2 setText:delimiterString];

  titleFont4 = [(QuerySuggestionView *)self titleFont];
  delimiterLabel3 = [(QuerySuggestionView *)self delimiterLabel];
  [delimiterLabel3 setFont:titleFont4];

  v25 = +[UIColor secondaryLabelColor];
  delimiterLabel4 = [(QuerySuggestionView *)self delimiterLabel];
  [delimiterLabel4 setTextColor:v25];

  detailText = [(QuerySuggestionView *)self detailText];
  detailLabel2 = [(QuerySuggestionView *)self detailLabel];
  [detailLabel2 setText:detailText];

  v29 = +[UIColor secondaryLabelColor];
  detailLabel3 = [(QuerySuggestionView *)self detailLabel];
  [detailLabel3 setTextColor:v29];

  titleFont5 = [(QuerySuggestionView *)self titleFont];
  detailLabel4 = [(QuerySuggestionView *)self detailLabel];
  [detailLabel4 setFont:titleFont5];

  detailText2 = [(QuerySuggestionView *)self detailText];
  v34 = [detailText2 length];

  if (!v34)
  {
    detailLabel5 = [(QuerySuggestionView *)self detailLabel];
    [detailLabel5 setText:0];
    goto LABEL_13;
  }

  if ([(QuerySuggestionView *)self needsTwoLinesLayout])
  {
    labelStackView = [(QuerySuggestionView *)self labelStackView];
    [labelStackView setDistribution:0];

    detailLabel5 = [(QuerySuggestionView *)self labelStackView];
    [detailLabel5 setAxis:1];
LABEL_13:

    delimiterLabel5 = [(QuerySuggestionView *)self delimiterLabel];
    [delimiterLabel5 setHidden:1];
    goto LABEL_14;
  }

  delimiterLabel6 = [(QuerySuggestionView *)self delimiterLabel];
  [delimiterLabel6 setHidden:0];

  labelStackView2 = [(QuerySuggestionView *)self labelStackView];
  [labelStackView2 setAxis:0];

  if ([(QuerySuggestionView *)self shouldDistributeProportionally])
  {
    labelStackView3 = [(QuerySuggestionView *)self labelStackView];
    [labelStackView3 setDistribution:2];

    delimiterLabel5 = [(QuerySuggestionView *)self delimeterWidthConstraint];
    [delimiterLabel5 setActive:1];
  }

  else
  {
    delimeterWidthConstraint = [(QuerySuggestionView *)self delimeterWidthConstraint];
    [delimeterWidthConstraint setActive:0];

    delimiterLabel5 = [(QuerySuggestionView *)self labelStackView];
    [delimiterLabel5 setDistribution:0];
  }

LABEL_14:
}

- (void)updateTheme
{
  v3.receiver = self;
  v3.super_class = QuerySuggestionView;
  [(MapsThemeView *)&v3 updateTheme];
  [(QuerySuggestionView *)self updateLabels];
}

- (void)setTitle:(id)title highlightTitleRanges:(id)ranges detailText:(id)text style:(unint64_t)style
{
  textCopy = text;
  rangesCopy = ranges;
  [(QuerySuggestionView *)self setTitle:title];
  [(QuerySuggestionView *)self setHighlightRanges:rangesCopy];

  [(QuerySuggestionView *)self setDetailText:textCopy];
  [(QuerySuggestionView *)self setQuerySuggestionStyle:style];

  [(QuerySuggestionView *)self updateLabels];
}

- (id)delimiterString
{
  if (qword_10195E650 != -1)
  {
    dispatch_once(&qword_10195E650, &stru_101638060);
  }

  v3 = qword_10195E648;

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = QuerySuggestionView;
  [(QuerySuggestionView *)&v3 layoutSubviews];
  [(QuerySuggestionView *)self updateLabels];
}

- (void)clearContents
{
  [(QuerySuggestionView *)self setTitle:0];
  [(QuerySuggestionView *)self setHighlightRanges:0];
  titleLabel = [(QuerySuggestionView *)self titleLabel];
  [titleLabel setAttributedText:0];

  [(QuerySuggestionView *)self setDetailText:0];
  detailLabel = [(QuerySuggestionView *)self detailLabel];
  [detailLabel setText:0];
}

- (QuerySuggestionView)init
{
  v55.receiver = self;
  v55.super_class = QuerySuggestionView;
  v2 = [(QuerySuggestionView *)&v55 init];
  if (v2)
  {
    v3 = +[UIColor clearColor];
    [(QuerySuggestionView *)v2 setBackgroundColor:v3];

    v4 = objc_alloc_init(UILabel);
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v4;

    v6 = +[UIColor clearColor];
    [(UILabel *)v2->_titleLabel setBackgroundColor:v6];

    LODWORD(v7) = 1144750080;
    [(UILabel *)v2->_titleLabel setContentCompressionResistancePriority:0 forAxis:v7];
    LODWORD(v8) = 1144750080;
    [(UILabel *)v2->_titleLabel setContentHuggingPriority:0 forAxis:v8];
    [(UILabel *)v2->_titleLabel setAccessibilityIdentifier:@"QuerySuggestionTitle"];
    v9 = objc_alloc_init(UILabel);
    delimiterLabel = v2->_delimiterLabel;
    v2->_delimiterLabel = v9;

    v11 = +[UIColor clearColor];
    [(UILabel *)v2->_delimiterLabel setBackgroundColor:v11];

    [(UILabel *)v2->_delimiterLabel setTextAlignment:0];
    LODWORD(v12) = 1144750080;
    [(UILabel *)v2->_delimiterLabel setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1144750080;
    [(UILabel *)v2->_delimiterLabel setContentHuggingPriority:0 forAxis:v13];
    [(UILabel *)v2->_delimiterLabel setAccessibilityIdentifier:@"QuerySuggestionDelimiter"];
    widthAnchor = [(UILabel *)v2->_delimiterLabel widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:14.0];
    delimeterWidthConstraint = v2->_delimeterWidthConstraint;
    v2->_delimeterWidthConstraint = v15;

    v17 = objc_alloc_init(UILabel);
    detailLabel = v2->_detailLabel;
    v2->_detailLabel = v17;

    v19 = +[UIColor clearColor];
    [(UILabel *)v2->_detailLabel setBackgroundColor:v19];

    LODWORD(v20) = 1132068864;
    [(UILabel *)v2->_detailLabel setContentCompressionResistancePriority:0 forAxis:v20];
    LODWORD(v21) = 1132068864;
    [(UILabel *)v2->_detailLabel setContentHuggingPriority:0 forAxis:v21];
    [(UILabel *)v2->_detailLabel setAccessibilityIdentifier:@"QuerySuggestionDetail"];
    v22 = [UIStackView alloc];
    v57[0] = v2->_titleLabel;
    v57[1] = v2->_delimiterLabel;
    v57[2] = v2->_detailLabel;
    v23 = [NSArray arrayWithObjects:v57 count:3];
    v24 = [v22 initWithArrangedSubviews:v23];
    labelStackView = v2->_labelStackView;
    v2->_labelStackView = v24;

    [(UIStackView *)v2->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v2->_labelStackView setAxis:0];
    [(UIStackView *)v2->_labelStackView setAlignment:1];
    [(UIStackView *)v2->_labelStackView setDistribution:0];
    [(QuerySuggestionView *)v2 addSubview:v2->_labelStackView];
    v26 = objc_alloc_init(UIImageView);
    iconImageView = v2->_iconImageView;
    v2->_iconImageView = v26;

    [(UIImageView *)v2->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [UIImage systemImageNamed:@"magnifyingglass"];
    [(UIImageView *)v2->_iconImageView setImage:v28];

    v29 = +[UIColor secondaryLabelColor];
    [(UIImageView *)v2->_iconImageView setTintColor:v29];

    [(UIImageView *)v2->_iconImageView setAccessibilityIdentifier:@"QuerySuggestionIcon"];
    [(QuerySuggestionView *)v2 addSubview:v2->_iconImageView];
    topAnchor = [(UIStackView *)v2->_labelStackView topAnchor];
    topAnchor2 = [(QuerySuggestionView *)v2 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v56[0] = v52;
    bottomAnchor = [(UIStackView *)v2->_labelStackView bottomAnchor];
    bottomAnchor2 = [(QuerySuggestionView *)v2 bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v56[1] = v49;
    leadingAnchor = [(UIStackView *)v2->_labelStackView leadingAnchor];
    trailingAnchor = [(UIImageView *)v2->_iconImageView trailingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:15.0];
    v56[2] = v46;
    trailingAnchor2 = [(UIStackView *)v2->_labelStackView trailingAnchor];
    trailingAnchor3 = [(QuerySuggestionView *)v2 trailingAnchor];
    v43 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-15.0];
    v56[3] = v43;
    centerYAnchor = [(UIImageView *)v2->_iconImageView centerYAnchor];
    centerYAnchor2 = [(QuerySuggestionView *)v2 centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v56[4] = v31;
    leadingAnchor2 = [(UIImageView *)v2->_iconImageView leadingAnchor];
    leadingAnchor3 = [(QuerySuggestionView *)v2 leadingAnchor];
    v34 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
    v56[5] = v34;
    widthAnchor2 = [(UIImageView *)v2->_iconImageView widthAnchor];
    v36 = [widthAnchor2 constraintEqualToConstant:20.0];
    v56[6] = v36;
    heightAnchor = [(UIImageView *)v2->_iconImageView heightAnchor];
    v38 = [heightAnchor constraintEqualToConstant:20.0];
    v56[7] = v38;
    v41 = [NSArray arrayWithObjects:v56 count:8];

    [NSLayoutConstraint activateConstraints:v41];
    v39 = +[NSNotificationCenter defaultCenter];
    [v39 addObserver:v2 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v2;
}

@end
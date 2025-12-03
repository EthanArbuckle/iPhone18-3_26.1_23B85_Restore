@interface RAPTwoLinesMenuTableViewCell
- (RAPTwoLinesMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeChanged;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateContent;
- (void)prepareForReuse;
- (void)setViewModel:(id)model;
@end

@implementation RAPTwoLinesMenuTableViewCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = RAPTwoLinesMenuTableViewCell;
  [(RAPTwoLinesMenuTableViewCell *)&v5 prepareForReuse];
  [(UIImageView *)self->_leftImageView _setContinuousCornerRadius:0.0];
  v3 = +[UIColor clearColor];
  [(UIImageView *)self->_leftImageView setBackgroundColor:v3];

  v4 = +[UIColor clearColor];
  [(UIImageView *)self->_leftImageView setTintColor:v4];
}

- (void)_contentSizeChanged
{
  v3 = +[UIFont system17];
  [(UILabel *)self->_mainTitleLabel setFont:v3];

  v4 = +[UIFont system13Adaptive];
  [(UILabel *)self->_secondTitleLabel setFont:v4];

  font = [(UILabel *)self->_mainTitleLabel font];
  [font _mapkit_scaledValueForValue:29.0];
  [(NSLayoutConstraint *)self->_topToTitleConstraint setConstant:?];

  font2 = [(UILabel *)self->_mainTitleLabel font];
  [font2 _mapkit_scaledValueForValue:-19.0];
  [(NSLayoutConstraint *)self->_titleToSubtitleConstraint setConstant:?];

  font3 = [(UILabel *)self->_secondTitleLabel font];
  [font3 _mapkit_scaledValueForValue:-16.0];
  [(NSLayoutConstraint *)self->_subtitleToBottomConstraint setConstant:?];
}

- (void)_updateContent
{
  image = [(RAPTwoLinesViewModel *)self->_viewModel image];
  [(UIImageView *)self->_leftImageView setImage:image];

  title = [(RAPTwoLinesViewModel *)self->_viewModel title];
  [(UILabel *)self->_mainTitleLabel setText:title];

  subtitle = [(RAPTwoLinesViewModel *)self->_viewModel subtitle];
  [(UILabel *)self->_secondTitleLabel setText:subtitle];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(RAPTwoLinesMenuTableViewCell *)self _updateContent];
    modelCopy = v6;
  }
}

- (void)_setupConstraints
{
  contentView = [(RAPTwoLinesMenuTableViewCell *)self contentView];
  firstBaselineAnchor = [(UILabel *)self->_mainTitleLabel firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  font = [(UILabel *)self->_mainTitleLabel font];
  [font _mapkit_scaledValueForValue:29.0];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topToTitleConstraint = self->_topToTitleConstraint;
  self->_topToTitleConstraint = v7;

  lastBaselineAnchor = [(UILabel *)self->_mainTitleLabel lastBaselineAnchor];
  firstBaselineAnchor2 = [(UILabel *)self->_secondTitleLabel firstBaselineAnchor];
  font2 = [(UILabel *)self->_mainTitleLabel font];
  [font2 _mapkit_scaledValueForValue:-19.0];
  v12 = [lastBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:?];
  titleToSubtitleConstraint = self->_titleToSubtitleConstraint;
  self->_titleToSubtitleConstraint = v12;

  lastBaselineAnchor2 = [(UILabel *)self->_secondTitleLabel lastBaselineAnchor];
  bottomAnchor = [contentView bottomAnchor];
  font3 = [(UILabel *)self->_secondTitleLabel font];
  [font3 _mapkit_scaledValueForValue:-16.0];
  v17 = [lastBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:?];
  subtitleToBottomConstraint = self->_subtitleToBottomConstraint;
  self->_subtitleToBottomConstraint = v17;

  widthAnchor = [(UIImageView *)self->_leftImageView widthAnchor];
  v45 = [widthAnchor constraintEqualToConstant:26.0];
  v47[0] = v45;
  heightAnchor = [(UIImageView *)self->_leftImageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_leftImageView widthAnchor];
  v42 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v47[1] = v42;
  centerYAnchor = [(UIImageView *)self->_leftImageView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v47[2] = v39;
  leadingAnchor = [(UIImageView *)self->_leftImageView leadingAnchor];
  v38 = contentView;
  v19 = contentView;
  leadingAnchor2 = [contentView leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v47[3] = v35;
  leadingAnchor3 = [(UILabel *)self->_mainTitleLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_leftImageView trailingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
  v47[4] = v32;
  trailingAnchor2 = [(UILabel *)self->_mainTitleLabel trailingAnchor];
  trailingAnchor3 = [v19 trailingAnchor];
  v22 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-15.0];
  v23 = self->_topToTitleConstraint;
  v47[5] = v22;
  v47[6] = v23;
  v47[7] = self->_titleToSubtitleConstraint;
  leadingAnchor4 = [(UILabel *)self->_secondTitleLabel leadingAnchor];
  leadingAnchor5 = [(UILabel *)self->_mainTitleLabel leadingAnchor];
  v26 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v47[8] = v26;
  trailingAnchor4 = [(UILabel *)self->_secondTitleLabel trailingAnchor];
  trailingAnchor5 = [(UILabel *)self->_mainTitleLabel trailingAnchor];
  v29 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v30 = self->_subtitleToBottomConstraint;
  v47[9] = v29;
  v47[10] = v30;
  v31 = [NSArray arrayWithObjects:v47 count:11];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)_setupSubviews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mainTitleLabel = self->_mainTitleLabel;
  self->_mainTitleLabel = v7;

  [(UILabel *)self->_mainTitleLabel setAccessibilityIdentifier:@"MainTitleLabel"];
  [(UILabel *)self->_mainTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_mainTitleLabel setNumberOfLines:0];
  v9 = +[UIFont system17];
  [(UILabel *)self->_mainTitleLabel setFont:v9];

  v10 = +[UIColor labelColor];
  [(UILabel *)self->_mainTitleLabel setTextColor:v10];

  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  secondTitleLabel = self->_secondTitleLabel;
  self->_secondTitleLabel = v11;

  [(UILabel *)self->_secondTitleLabel setAccessibilityIdentifier:@"SecondTitleLabel"];
  [(UILabel *)self->_secondTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_secondTitleLabel setNumberOfLines:0];
  v13 = +[UIFont system13Adaptive];
  [(UILabel *)self->_secondTitleLabel setFont:v13];

  v14 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_secondTitleLabel setTextColor:v14];

  v15 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  leftImageView = self->_leftImageView;
  self->_leftImageView = v15;

  [(UIImageView *)self->_leftImageView setAccessibilityIdentifier:@"LeftImageView"];
  [(UIImageView *)self->_leftImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_leftImageView setContentMode:1];
  v17 = [UIImageSymbolConfiguration configurationWithPointSize:26.0];
  [(UIImageView *)self->_leftImageView setPreferredSymbolConfiguration:v17];

  v18 = +[UIColor systemLightGrayColor];
  [(UIImageView *)self->_leftImageView setTintColor:v18];

  contentView = [(RAPTwoLinesMenuTableViewCell *)self contentView];
  [contentView addSubview:self->_mainTitleLabel];

  contentView2 = [(RAPTwoLinesMenuTableViewCell *)self contentView];
  [contentView2 addSubview:self->_secondTitleLabel];

  contentView3 = [(RAPTwoLinesMenuTableViewCell *)self contentView];
  [contentView3 addSubview:self->_leftImageView];
}

- (RAPTwoLinesMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = RAPTwoLinesMenuTableViewCell;
  v4 = [(RAPTwoLinesMenuTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(RAPTwoLinesMenuTableViewCell *)v4 setAccessibilityIdentifier:v6];

    [(RAPTwoLinesMenuTableViewCell *)v4 _setupSubviews];
    [(RAPTwoLinesMenuTableViewCell *)v4 _setupConstraints];
    [(RAPTwoLinesMenuTableViewCell *)v4 setAccessoryType:1];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v4 selector:"_contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end
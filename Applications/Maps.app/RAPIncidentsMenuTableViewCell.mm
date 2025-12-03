@interface RAPIncidentsMenuTableViewCell
- (RAPIncidentsMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeChanged;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateContent;
- (void)prepareForReuse;
- (void)setViewModel:(id)model;
@end

@implementation RAPIncidentsMenuTableViewCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = RAPIncidentsMenuTableViewCell;
  [(RAPIncidentsMenuTableViewCell *)&v5 prepareForReuse];
  [(UIImageView *)self->_leftImageView _setContinuousCornerRadius:0.0];
  v3 = +[UIColor clearColor];
  [(UIImageView *)self->_leftImageView setBackgroundColor:v3];

  v4 = +[UIColor clearColor];
  [(UIImageView *)self->_leftImageView setTintColor:v4];
}

- (void)_contentSizeChanged
{
  v3 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle3];
  [(UILabel *)self->_mainTitleLabel setFont:v3];

  font = [(UILabel *)self->_mainTitleLabel font];
  [font _mapkit_scaledValueForValue:35.0];
  [(NSLayoutConstraint *)self->_topToTitleConstraint setConstant:?];

  font2 = [(UILabel *)self->_mainTitleLabel font];
  [font2 _mapkit_scaledValueForValue:-24.0];
  [(NSLayoutConstraint *)self->_titleToBottomConstraint setConstant:?];
}

- (void)_updateContent
{
  image = [(RAPTwoLinesViewModel *)self->_viewModel image];
  [(UIImageView *)self->_leftImageView setImage:image];

  title = [(RAPTwoLinesViewModel *)self->_viewModel title];
  [(UILabel *)self->_mainTitleLabel setText:title];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(RAPIncidentsMenuTableViewCell *)self _updateContent];
    modelCopy = v6;
  }
}

- (void)_setupConstraints
{
  contentView = [(RAPIncidentsMenuTableViewCell *)self contentView];
  firstBaselineAnchor = [(UILabel *)self->_mainTitleLabel firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  font = [(UILabel *)self->_mainTitleLabel font];
  [font _mapkit_scaledValueForValue:35.0];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topToTitleConstraint = self->_topToTitleConstraint;
  self->_topToTitleConstraint = v7;

  lastBaselineAnchor = [(UILabel *)self->_mainTitleLabel lastBaselineAnchor];
  bottomAnchor = [contentView bottomAnchor];
  font2 = [(UILabel *)self->_mainTitleLabel font];
  [font2 _mapkit_scaledValueForValue:-24.0];
  v12 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  titleToBottomConstraint = self->_titleToBottomConstraint;
  self->_titleToBottomConstraint = v12;

  widthAnchor = [(UIImageView *)self->_leftImageView widthAnchor];
  v32 = [widthAnchor constraintEqualToConstant:40.0];
  v34[0] = v32;
  heightAnchor = [(UIImageView *)self->_leftImageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_leftImageView widthAnchor];
  v29 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v34[1] = v29;
  centerYAnchor = [(UIImageView *)self->_leftImageView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v34[2] = v26;
  leadingAnchor = [(UIImageView *)self->_leftImageView leadingAnchor];
  v25 = contentView;
  leadingAnchor2 = [contentView leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v34[3] = v16;
  leadingAnchor3 = [(UILabel *)self->_mainTitleLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_leftImageView trailingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  v34[4] = v19;
  trailingAnchor2 = [(UILabel *)self->_mainTitleLabel trailingAnchor];
  trailingAnchor3 = [contentView trailingAnchor];
  v22 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-10.0];
  v23 = self->_topToTitleConstraint;
  v34[5] = v22;
  v34[6] = v23;
  v34[7] = self->_titleToBottomConstraint;
  v24 = [NSArray arrayWithObjects:v34 count:8];
  [NSLayoutConstraint activateConstraints:v24];
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
  v9 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle3];
  [(UILabel *)self->_mainTitleLabel setFont:v9];

  v10 = +[UIColor labelColor];
  [(UILabel *)self->_mainTitleLabel setTextColor:v10];

  v11 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  leftImageView = self->_leftImageView;
  self->_leftImageView = v11;

  [(UIImageView *)self->_leftImageView setAccessibilityIdentifier:@"LeftImageView"];
  [(UIImageView *)self->_leftImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_leftImageView setContentMode:1];
  v13 = [UIImageSymbolConfiguration configurationWithPointSize:40.0];
  [(UIImageView *)self->_leftImageView setPreferredSymbolConfiguration:v13];

  v14 = +[UIColor systemLightGrayColor];
  [(UIImageView *)self->_leftImageView setTintColor:v14];

  contentView = [(RAPIncidentsMenuTableViewCell *)self contentView];
  [contentView addSubview:self->_mainTitleLabel];

  contentView2 = [(RAPIncidentsMenuTableViewCell *)self contentView];
  [contentView2 addSubview:self->_leftImageView];
}

- (RAPIncidentsMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = RAPIncidentsMenuTableViewCell;
  v4 = [(RAPIncidentsMenuTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(RAPIncidentsMenuTableViewCell *)v4 setAccessibilityIdentifier:v6];

    [(RAPIncidentsMenuTableViewCell *)v4 _setupSubviews];
    [(RAPIncidentsMenuTableViewCell *)v4 _setupConstraints];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v4 selector:"_contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end
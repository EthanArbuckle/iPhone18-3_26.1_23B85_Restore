@interface RAPCategorySearchTableViewCell
- (RAPCategorySearchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateCheckmarkImageView;
- (void)setChecked:(BOOL)checked;
- (void)setDisplayText:(id)text;
@end

@implementation RAPCategorySearchTableViewCell

- (void)_contentSizeDidChange
{
  v3 = +[UIFont system17];
  [(UILabel *)self->_categoryLabel setFont:v3];

  font = [(UILabel *)self->_categoryLabel font];
  [font _scaledValueForValue:33.0];
  [(NSLayoutConstraint *)self->_topLayoutConstraint setConstant:?];

  font2 = [(UILabel *)self->_categoryLabel font];
  [font2 _scaledValueForValue:-22.0];
  [(NSLayoutConstraint *)self->_bottomLayoutConstraint setConstant:?];
}

- (void)_updateCheckmarkImageView
{
  if (self->_checked)
  {
    v3 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    p_checkmarkImageView = &self->_checkmarkImageView;
    [(UIImageView *)self->_checkmarkImageView setImage:v3];

    v5 = +[UIColor systemBlueColor];
    [(UIImageView *)*p_checkmarkImageView setTintColor:v5];

    +[UIColor clearColor];
  }

  else
  {
    p_checkmarkImageView = &self->_checkmarkImageView;
    [(UIImageView *)self->_checkmarkImageView setImage:0];
    v6 = +[UIColor clearColor];
    [(UIImageView *)*p_checkmarkImageView setBackgroundColor:v6];

    +[UIColor systemGrayColor];
  }
  v10 = ;
  v7 = v10;
  cGColor = [v10 CGColor];
  layer = [(UIImageView *)*p_checkmarkImageView layer];
  [layer setBorderColor:cGColor];
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    self->_checked = checked;
    [(RAPCategorySearchTableViewCell *)self _updateCheckmarkImageView];
  }
}

- (void)setDisplayText:(id)text
{
  textCopy = text;
  if (self->_displayText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_displayText, text);
    [(UILabel *)self->_categoryLabel setText:v6];
    textCopy = v6;
  }
}

- (void)_setupConstraints
{
  firstBaselineAnchor = [(UILabel *)self->_categoryLabel firstBaselineAnchor];
  contentView = [(RAPCategorySearchTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  font = [(UILabel *)self->_categoryLabel font];
  [font _scaledValueForValue:33.0];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topLayoutConstraint = self->_topLayoutConstraint;
  self->_topLayoutConstraint = v7;

  lastBaselineAnchor = [(UILabel *)self->_categoryLabel lastBaselineAnchor];
  contentView2 = [(RAPCategorySearchTableViewCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  font2 = [(UILabel *)self->_categoryLabel font];
  [font2 _scaledValueForValue:-22.0];
  v13 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  bottomLayoutConstraint = self->_bottomLayoutConstraint;
  self->_bottomLayoutConstraint = v13;

  leadingAnchor = [(UIImageView *)self->_checkmarkImageView leadingAnchor];
  contentView3 = [(RAPCategorySearchTableViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
  v37[0] = v33;
  centerYAnchor = [(UIImageView *)self->_checkmarkImageView centerYAnchor];
  contentView4 = [(RAPCategorySearchTableViewCell *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v37[1] = v29;
  widthAnchor = [(UIImageView *)self->_checkmarkImageView widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:20.0];
  v37[2] = v27;
  heightAnchor = [(UIImageView *)self->_checkmarkImageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_checkmarkImageView widthAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v37[3] = v16;
  trailingAnchor = [(UIImageView *)self->_checkmarkImageView trailingAnchor];
  leadingAnchor3 = [(UILabel *)self->_categoryLabel leadingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-14.0];
  v37[4] = v19;
  trailingAnchor2 = [(UILabel *)self->_categoryLabel trailingAnchor];
  contentView5 = [(RAPCategorySearchTableViewCell *)self contentView];
  trailingAnchor3 = [contentView5 trailingAnchor];
  v23 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-15.0];
  v24 = self->_topLayoutConstraint;
  v37[5] = v23;
  v37[6] = v24;
  v37[7] = self->_bottomLayoutConstraint;
  v25 = [NSArray arrayWithObjects:v37 count:8];
  [NSLayoutConstraint activateConstraints:v25];
}

- (void)_setupSubviews
{
  [(UIImageView *)self->_checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_categoryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_checkmarkImageView setClipsToBounds:1];
  [(UIImageView *)self->_checkmarkImageView _setContinuousCornerRadius:10.0];
  v3 = +[UIScreen mainScreen];
  [v3 nativeScale];
  v5 = 2.0 / v4;
  layer = [(UIImageView *)self->_checkmarkImageView layer];
  [layer setBorderWidth:v5];

  [(UIImageView *)self->_checkmarkImageView setContentMode:4];
  v7 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
  [(UIImageView *)self->_checkmarkImageView setPreferredSymbolConfiguration:v7];

  v8 = +[UIFont system17];
  [(UILabel *)self->_categoryLabel setFont:v8];

  [(UILabel *)self->_categoryLabel setNumberOfLines:0];
  contentView = [(RAPCategorySearchTableViewCell *)self contentView];
  [contentView addSubview:self->_checkmarkImageView];

  contentView2 = [(RAPCategorySearchTableViewCell *)self contentView];
  [contentView2 addSubview:self->_categoryLabel];

  [(RAPCategorySearchTableViewCell *)self _updateCheckmarkImageView];
}

- (RAPCategorySearchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = RAPCategorySearchTableViewCell;
  v4 = [(RAPCategorySearchTableViewCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_checked = 0;
    v6 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    checkmarkImageView = v5->_checkmarkImageView;
    v5->_checkmarkImageView = v10;

    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    categoryLabel = v5->_categoryLabel;
    v5->_categoryLabel = v12;

    [(RAPCategorySearchTableViewCell *)v5 _setupSubviews];
    [(RAPCategorySearchTableViewCell *)v5 _setupConstraints];
    [(RAPCategorySearchTableViewCell *)v5 _updateCheckmarkImageView];
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v5 selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

@end
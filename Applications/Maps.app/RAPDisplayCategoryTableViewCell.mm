@interface RAPDisplayCategoryTableViewCell
- (RAPDisplayCategoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier itemKind:(int64_t)kind;
- (void)_configureTokenView;
- (void)_contentSizeDidChange;
- (void)setCategoryText:(id)text;
@end

@implementation RAPDisplayCategoryTableViewCell

- (void)_contentSizeDidChange
{
  v3 = +[UIFont system17];
  [(UILabel *)self->_tokenLabel setFont:v3];

  font = [(UILabel *)self->_tokenLabel font];
  [font _scaledValueForValue:24.0];
  [(NSLayoutConstraint *)self->_firstBaselineConstraint setConstant:?];

  font2 = [(UILabel *)self->_tokenLabel font];
  [font2 _scaledValueForValue:-12.0];
  [(NSLayoutConstraint *)self->_lastBaselineConstraint setConstant:?];
}

- (void)setCategoryText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_categoryText isEqualToString:?])
  {
    objc_storeStrong(&self->_categoryText, text);
    [(UILabel *)self->_tokenLabel setText:self->_categoryText];
  }
}

- (RAPDisplayCategoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier itemKind:(int64_t)kind
{
  v9.receiver = self;
  v9.super_class = RAPDisplayCategoryTableViewCell;
  v5 = [(RAPCancellableTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier itemKind:kind];
  v6 = v5;
  if (v5)
  {
    [(RAPDisplayCategoryTableViewCell *)v5 setSelectionStyle:0];
    [(RAPDisplayCategoryTableViewCell *)v6 _configureTokenView];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v6;
}

- (void)_configureTokenView
{
  contentView = [(RAPDisplayCategoryTableViewCell *)self contentView];
  v4 = objc_alloc_init(UIView);
  tokenView = self->_tokenView;
  self->_tokenView = v4;

  v6 = +[UIColor systemGrayColor];
  [(UIView *)self->_tokenView setBackgroundColor:v6];

  v7 = objc_alloc_init(UILabel);
  tokenLabel = self->_tokenLabel;
  self->_tokenLabel = v7;

  v9 = +[UIColor systemWhiteColor];
  [(UILabel *)self->_tokenLabel setTextColor:v9];

  [(UILabel *)self->_tokenLabel setNumberOfLines:0];
  v10 = +[UIFont system17];
  [(UILabel *)self->_tokenLabel setFont:v10];

  [(UILabel *)self->_tokenLabel setAdjustsFontSizeToFitWidth:1];
  [(UIView *)self->_tokenView addSubview:self->_tokenLabel];
  [contentView addSubview:self->_tokenView];
  [(UIView *)self->_tokenView _setContinuousCornerRadius:10.0];
  [(UILabel *)self->_tokenLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_tokenView setTranslatesAutoresizingMaskIntoConstraints:0];
  firstBaselineAnchor = [(UILabel *)self->_tokenLabel firstBaselineAnchor];
  topAnchor = [(UIView *)self->_tokenView topAnchor];
  font = [(UILabel *)self->_tokenLabel font];
  [font _scaledValueForValue:24.0];
  v14 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  firstBaselineConstraint = self->_firstBaselineConstraint;
  self->_firstBaselineConstraint = v14;

  lastBaselineAnchor = [(UILabel *)self->_tokenLabel lastBaselineAnchor];
  bottomAnchor = [(UIView *)self->_tokenView bottomAnchor];
  font2 = [(UILabel *)self->_tokenLabel font];
  [font2 _scaledValueForValue:-12.0];
  v19 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  lastBaselineConstraint = self->_lastBaselineConstraint;
  self->_lastBaselineConstraint = v19;

  leadingAnchor = [(UIView *)self->_tokenView leadingAnchor];
  leadingAnchor2 = [(UILabel *)self->_tokenLabel leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-15.0];
  v43[0] = v40;
  trailingAnchor = [(UIView *)self->_tokenView trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_tokenLabel trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:15.0];
  v21 = self->_firstBaselineConstraint;
  v43[1] = v37;
  v43[2] = v21;
  v43[3] = self->_lastBaselineConstraint;
  leadingAnchor3 = [contentView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_tokenView leadingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-15.0];
  v43[4] = v33;
  trailingAnchor3 = [(UIView *)self->_tokenView trailingAnchor];
  leadingAnchorForAccessoryView = [(RAPCancellableTableViewCell *)self leadingAnchorForAccessoryView];
  v24 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchorForAccessoryView constant:-15.0];
  v43[5] = v24;
  v25 = contentView;
  v34 = contentView;
  topAnchor2 = [contentView topAnchor];
  topAnchor3 = [(UIView *)self->_tokenView topAnchor];
  v28 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:-10.0];
  v43[6] = v28;
  bottomAnchor2 = [v25 bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_tokenView bottomAnchor];
  v31 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:9.0];
  v43[7] = v31;
  v32 = [NSArray arrayWithObjects:v43 count:8];

  [NSLayoutConstraint activateConstraints:v32];
}

@end
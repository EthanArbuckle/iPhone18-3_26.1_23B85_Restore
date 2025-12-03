@interface RAPSingleLineTableViewCell
- (RAPSingleLineTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeChanged;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)_updateFonts;
@end

@implementation RAPSingleLineTableViewCell

- (void)_updateConstraints
{
  font = [(UILabel *)self->_textLabel font];
  [font _scaledValueForValue:33.0];
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setConstant:?];

  font2 = [(UILabel *)self->_textLabel font];
  [font2 _scaledValueForValue:-22.0];
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setConstant:?];
}

- (void)_updateFonts
{
  v3 = +[UIFont system17];
  [(UILabel *)self->_textLabel setFont:v3];
}

- (void)_contentSizeChanged
{
  [(RAPSingleLineTableViewCell *)self _updateFonts];

  [(RAPSingleLineTableViewCell *)self _updateConstraints];
}

- (void)_setupConstraints
{
  contentView = [(RAPSingleLineTableViewCell *)self contentView];
  firstBaselineAnchor = [(UILabel *)self->_textLabel firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  font = [(UILabel *)self->_textLabel font];
  [font _scaledValueForValue:33.0];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
  self->_topToFirstBaselineConstraint = v7;

  lastBaselineAnchor = [(UILabel *)self->_textLabel lastBaselineAnchor];
  bottomAnchor = [contentView bottomAnchor];
  font2 = [(UILabel *)self->_textLabel font];
  [font2 _scaledValueForValue:-22.0];
  v12 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
  self->_lastBaselineToBottomConstraint = v12;

  leadingAnchor = [(UILabel *)self->_textLabel leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v22[0] = v16;
  trailingAnchor = [(UILabel *)self->_textLabel trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
  v20 = self->_topToFirstBaselineConstraint;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = self->_lastBaselineToBottomConstraint;
  v21 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)_setupSubviews
{
  [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_textLabel setNumberOfLines:0];
  [(UILabel *)self->_textLabel setAccessibilityIdentifier:@"TextLabel"];
  contentView = [(RAPSingleLineTableViewCell *)self contentView];
  [contentView addSubview:self->_textLabel];

  [(RAPSingleLineTableViewCell *)self _updateFonts];
}

- (RAPSingleLineTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = RAPSingleLineTableViewCell;
  v4 = [(RAPSingleLineTableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(RAPSingleLineTableViewCell *)v4 setAccessibilityIdentifier:v6];

    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    textLabel = v4->_textLabel;
    v4->_textLabel = v7;

    [(RAPSingleLineTableViewCell *)v4 _setupSubviews];
    [(RAPSingleLineTableViewCell *)v4 _setupConstraints];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v4 selector:"_contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end
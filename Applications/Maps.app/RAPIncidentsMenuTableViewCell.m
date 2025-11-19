@interface RAPIncidentsMenuTableViewCell
- (RAPIncidentsMenuTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_contentSizeChanged;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateContent;
- (void)prepareForReuse;
- (void)setViewModel:(id)a3;
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

  v4 = [(UILabel *)self->_mainTitleLabel font];
  [v4 _mapkit_scaledValueForValue:35.0];
  [(NSLayoutConstraint *)self->_topToTitleConstraint setConstant:?];

  v5 = [(UILabel *)self->_mainTitleLabel font];
  [v5 _mapkit_scaledValueForValue:-24.0];
  [(NSLayoutConstraint *)self->_titleToBottomConstraint setConstant:?];
}

- (void)_updateContent
{
  v3 = [(RAPTwoLinesViewModel *)self->_viewModel image];
  [(UIImageView *)self->_leftImageView setImage:v3];

  v4 = [(RAPTwoLinesViewModel *)self->_viewModel title];
  [(UILabel *)self->_mainTitleLabel setText:v4];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(RAPIncidentsMenuTableViewCell *)self _updateContent];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  v3 = [(RAPIncidentsMenuTableViewCell *)self contentView];
  v4 = [(UILabel *)self->_mainTitleLabel firstBaselineAnchor];
  v5 = [v3 topAnchor];
  v6 = [(UILabel *)self->_mainTitleLabel font];
  [v6 _mapkit_scaledValueForValue:35.0];
  v7 = [v4 constraintEqualToAnchor:v5 constant:?];
  topToTitleConstraint = self->_topToTitleConstraint;
  self->_topToTitleConstraint = v7;

  v9 = [(UILabel *)self->_mainTitleLabel lastBaselineAnchor];
  v10 = [v3 bottomAnchor];
  v11 = [(UILabel *)self->_mainTitleLabel font];
  [v11 _mapkit_scaledValueForValue:-24.0];
  v12 = [v9 constraintEqualToAnchor:v10 constant:?];
  titleToBottomConstraint = self->_titleToBottomConstraint;
  self->_titleToBottomConstraint = v12;

  v33 = [(UIImageView *)self->_leftImageView widthAnchor];
  v32 = [v33 constraintEqualToConstant:40.0];
  v34[0] = v32;
  v31 = [(UIImageView *)self->_leftImageView heightAnchor];
  v30 = [(UIImageView *)self->_leftImageView widthAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v34[1] = v29;
  v28 = [(UIImageView *)self->_leftImageView centerYAnchor];
  v27 = [v3 centerYAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v34[2] = v26;
  v14 = [(UIImageView *)self->_leftImageView leadingAnchor];
  v25 = v3;
  v15 = [v3 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:10.0];
  v34[3] = v16;
  v17 = [(UILabel *)self->_mainTitleLabel leadingAnchor];
  v18 = [(UIImageView *)self->_leftImageView trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:8.0];
  v34[4] = v19;
  v20 = [(UILabel *)self->_mainTitleLabel trailingAnchor];
  v21 = [v3 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-10.0];
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

  v15 = [(RAPIncidentsMenuTableViewCell *)self contentView];
  [v15 addSubview:self->_mainTitleLabel];

  v16 = [(RAPIncidentsMenuTableViewCell *)self contentView];
  [v16 addSubview:self->_leftImageView];
}

- (RAPIncidentsMenuTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = RAPIncidentsMenuTableViewCell;
  v4 = [(RAPIncidentsMenuTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
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
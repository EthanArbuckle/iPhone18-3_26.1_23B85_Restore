@interface RAPTwoLinesMenuTableViewCell
- (RAPTwoLinesMenuTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_contentSizeChanged;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateContent;
- (void)prepareForReuse;
- (void)setViewModel:(id)a3;
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

  v5 = [(UILabel *)self->_mainTitleLabel font];
  [v5 _mapkit_scaledValueForValue:29.0];
  [(NSLayoutConstraint *)self->_topToTitleConstraint setConstant:?];

  v6 = [(UILabel *)self->_mainTitleLabel font];
  [v6 _mapkit_scaledValueForValue:-19.0];
  [(NSLayoutConstraint *)self->_titleToSubtitleConstraint setConstant:?];

  v7 = [(UILabel *)self->_secondTitleLabel font];
  [v7 _mapkit_scaledValueForValue:-16.0];
  [(NSLayoutConstraint *)self->_subtitleToBottomConstraint setConstant:?];
}

- (void)_updateContent
{
  v3 = [(RAPTwoLinesViewModel *)self->_viewModel image];
  [(UIImageView *)self->_leftImageView setImage:v3];

  v4 = [(RAPTwoLinesViewModel *)self->_viewModel title];
  [(UILabel *)self->_mainTitleLabel setText:v4];

  v5 = [(RAPTwoLinesViewModel *)self->_viewModel subtitle];
  [(UILabel *)self->_secondTitleLabel setText:v5];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(RAPTwoLinesMenuTableViewCell *)self _updateContent];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  v3 = [(RAPTwoLinesMenuTableViewCell *)self contentView];
  v4 = [(UILabel *)self->_mainTitleLabel firstBaselineAnchor];
  v5 = [v3 topAnchor];
  v6 = [(UILabel *)self->_mainTitleLabel font];
  [v6 _mapkit_scaledValueForValue:29.0];
  v7 = [v4 constraintEqualToAnchor:v5 constant:?];
  topToTitleConstraint = self->_topToTitleConstraint;
  self->_topToTitleConstraint = v7;

  v9 = [(UILabel *)self->_mainTitleLabel lastBaselineAnchor];
  v10 = [(UILabel *)self->_secondTitleLabel firstBaselineAnchor];
  v11 = [(UILabel *)self->_mainTitleLabel font];
  [v11 _mapkit_scaledValueForValue:-19.0];
  v12 = [v9 constraintEqualToAnchor:v10 constant:?];
  titleToSubtitleConstraint = self->_titleToSubtitleConstraint;
  self->_titleToSubtitleConstraint = v12;

  v14 = [(UILabel *)self->_secondTitleLabel lastBaselineAnchor];
  v15 = [v3 bottomAnchor];
  v16 = [(UILabel *)self->_secondTitleLabel font];
  [v16 _mapkit_scaledValueForValue:-16.0];
  v17 = [v14 constraintEqualToAnchor:v15 constant:?];
  subtitleToBottomConstraint = self->_subtitleToBottomConstraint;
  self->_subtitleToBottomConstraint = v17;

  v46 = [(UIImageView *)self->_leftImageView widthAnchor];
  v45 = [v46 constraintEqualToConstant:26.0];
  v47[0] = v45;
  v44 = [(UIImageView *)self->_leftImageView heightAnchor];
  v43 = [(UIImageView *)self->_leftImageView widthAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v47[1] = v42;
  v41 = [(UIImageView *)self->_leftImageView centerYAnchor];
  v40 = [v3 centerYAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v47[2] = v39;
  v37 = [(UIImageView *)self->_leftImageView leadingAnchor];
  v38 = v3;
  v19 = v3;
  v36 = [v3 leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:15.0];
  v47[3] = v35;
  v34 = [(UILabel *)self->_mainTitleLabel leadingAnchor];
  v33 = [(UIImageView *)self->_leftImageView trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:15.0];
  v47[4] = v32;
  v20 = [(UILabel *)self->_mainTitleLabel trailingAnchor];
  v21 = [v19 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-15.0];
  v23 = self->_topToTitleConstraint;
  v47[5] = v22;
  v47[6] = v23;
  v47[7] = self->_titleToSubtitleConstraint;
  v24 = [(UILabel *)self->_secondTitleLabel leadingAnchor];
  v25 = [(UILabel *)self->_mainTitleLabel leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v47[8] = v26;
  v27 = [(UILabel *)self->_secondTitleLabel trailingAnchor];
  v28 = [(UILabel *)self->_mainTitleLabel trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
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

  v19 = [(RAPTwoLinesMenuTableViewCell *)self contentView];
  [v19 addSubview:self->_mainTitleLabel];

  v20 = [(RAPTwoLinesMenuTableViewCell *)self contentView];
  [v20 addSubview:self->_secondTitleLabel];

  v21 = [(RAPTwoLinesMenuTableViewCell *)self contentView];
  [v21 addSubview:self->_leftImageView];
}

- (RAPTwoLinesMenuTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = RAPTwoLinesMenuTableViewCell;
  v4 = [(RAPTwoLinesMenuTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
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
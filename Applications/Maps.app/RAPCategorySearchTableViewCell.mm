@interface RAPCategorySearchTableViewCell
- (RAPCategorySearchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateCheckmarkImageView;
- (void)setChecked:(BOOL)a3;
- (void)setDisplayText:(id)a3;
@end

@implementation RAPCategorySearchTableViewCell

- (void)_contentSizeDidChange
{
  v3 = +[UIFont system17];
  [(UILabel *)self->_categoryLabel setFont:v3];

  v4 = [(UILabel *)self->_categoryLabel font];
  [v4 _scaledValueForValue:33.0];
  [(NSLayoutConstraint *)self->_topLayoutConstraint setConstant:?];

  v5 = [(UILabel *)self->_categoryLabel font];
  [v5 _scaledValueForValue:-22.0];
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
  v8 = [v10 CGColor];
  v9 = [(UIImageView *)*p_checkmarkImageView layer];
  [v9 setBorderColor:v8];
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    self->_checked = a3;
    [(RAPCategorySearchTableViewCell *)self _updateCheckmarkImageView];
  }
}

- (void)setDisplayText:(id)a3
{
  v5 = a3;
  if (self->_displayText != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_displayText, a3);
    [(UILabel *)self->_categoryLabel setText:v6];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  v3 = [(UILabel *)self->_categoryLabel firstBaselineAnchor];
  v4 = [(RAPCategorySearchTableViewCell *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [(UILabel *)self->_categoryLabel font];
  [v6 _scaledValueForValue:33.0];
  v7 = [v3 constraintEqualToAnchor:v5 constant:?];
  topLayoutConstraint = self->_topLayoutConstraint;
  self->_topLayoutConstraint = v7;

  v9 = [(UILabel *)self->_categoryLabel lastBaselineAnchor];
  v10 = [(RAPCategorySearchTableViewCell *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [(UILabel *)self->_categoryLabel font];
  [v12 _scaledValueForValue:-22.0];
  v13 = [v9 constraintEqualToAnchor:v11 constant:?];
  bottomLayoutConstraint = self->_bottomLayoutConstraint;
  self->_bottomLayoutConstraint = v13;

  v35 = [(UIImageView *)self->_checkmarkImageView leadingAnchor];
  v36 = [(RAPCategorySearchTableViewCell *)self contentView];
  v34 = [v36 leadingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:17.0];
  v37[0] = v33;
  v31 = [(UIImageView *)self->_checkmarkImageView centerYAnchor];
  v32 = [(RAPCategorySearchTableViewCell *)self contentView];
  v30 = [v32 centerYAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v37[1] = v29;
  v28 = [(UIImageView *)self->_checkmarkImageView widthAnchor];
  v27 = [v28 constraintEqualToConstant:20.0];
  v37[2] = v27;
  v26 = [(UIImageView *)self->_checkmarkImageView heightAnchor];
  v15 = [(UIImageView *)self->_checkmarkImageView widthAnchor];
  v16 = [v26 constraintEqualToAnchor:v15];
  v37[3] = v16;
  v17 = [(UIImageView *)self->_checkmarkImageView trailingAnchor];
  v18 = [(UILabel *)self->_categoryLabel leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-14.0];
  v37[4] = v19;
  v20 = [(UILabel *)self->_categoryLabel trailingAnchor];
  v21 = [(RAPCategorySearchTableViewCell *)self contentView];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:-15.0];
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
  v6 = [(UIImageView *)self->_checkmarkImageView layer];
  [v6 setBorderWidth:v5];

  [(UIImageView *)self->_checkmarkImageView setContentMode:4];
  v7 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
  [(UIImageView *)self->_checkmarkImageView setPreferredSymbolConfiguration:v7];

  v8 = +[UIFont system17];
  [(UILabel *)self->_categoryLabel setFont:v8];

  [(UILabel *)self->_categoryLabel setNumberOfLines:0];
  v9 = [(RAPCategorySearchTableViewCell *)self contentView];
  [v9 addSubview:self->_checkmarkImageView];

  v10 = [(RAPCategorySearchTableViewCell *)self contentView];
  [v10 addSubview:self->_categoryLabel];

  [(RAPCategorySearchTableViewCell *)self _updateCheckmarkImageView];
}

- (RAPCategorySearchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = RAPCategorySearchTableViewCell;
  v4 = [(RAPCategorySearchTableViewCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
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
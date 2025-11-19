@interface HOLocationTableViewCell
- (HOLocationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)titleText;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setShowLocationIcon:(BOOL)a3;
- (void)setTitleText:(id)a3;
- (void)updateConstraints;
@end

@implementation HOLocationTableViewCell

- (HOLocationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v25.receiver = self;
  v25.super_class = HOLocationTableViewCell;
  v4 = [(HOLocationTableViewCell *)&v25 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_titleLabel setFont:v7];

    v8 = [(HOLocationTableViewCell *)v4 contentView];
    [v8 addSubview:v4->_titleLabel];

    v4->_disabled = 0;
    v9 = +[NSMutableArray array];
    v10 = [(HOLocationTableViewCell *)v4 contentView];
    v11 = [v10 heightAnchor];
    v12 = [v11 constraintGreaterThanOrEqualToConstant:44.0];

    LODWORD(v13) = 1144750080;
    [v12 setPriority:v13];
    [v9 addObject:v12];
    v14 = [(UILabel *)v4->_titleLabel centerYAnchor];
    v15 = [(HOLocationTableViewCell *)v4 contentView];
    v16 = [v15 layoutMarginsGuide];
    v17 = [v16 centerYAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];
    [v9 addObject:v18];

    v19 = [(UILabel *)v4->_titleLabel heightAnchor];
    v20 = [(HOLocationTableViewCell *)v4 contentView];
    v21 = [v20 layoutMarginsGuide];
    v22 = [v21 heightAnchor];
    v23 = [v19 constraintLessThanOrEqualToAnchor:v22];
    [v9 addObject:v23];

    [NSLayoutConstraint activateConstraints:v9];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HOLocationTableViewCell;
  [(HOLocationTableViewCell *)&v3 prepareForReuse];
  [(HOLocationTableViewCell *)self setAccessoryView:0];
  [(HOLocationTableViewCell *)self setShowLocationIcon:0];
  [(HOLocationTableViewCell *)self setDisabled:0];
}

- (NSString)titleText
{
  v2 = [(HOLocationTableViewCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HOLocationTableViewCell *)self titleLabel];
  [v5 setText:v4];
}

- (void)setDisabled:(BOOL)a3
{
  self->_disabled = a3;
  if (a3)
  {
    +[UIColor systemGrayColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;
  v4 = [(HOLocationTableViewCell *)self titleLabel];
  [v4 setTextColor:v5];
}

- (void)setShowLocationIcon:(BOOL)a3
{
  v3 = a3;
  v5 = [(HOLocationTableViewCell *)self locationIcon];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {
      v7 = [UIImageView alloc];
      v8 = +[UIImage hu_locationArrowTemplate];
      v9 = [v7 initWithImage:v8];
      [(HOLocationTableViewCell *)self setLocationIcon:v9];

      v10 = +[UIColor systemLightGrayColor];
      v11 = [(HOLocationTableViewCell *)self locationIcon];
      [v11 setTintColor:v10];

      v12 = [(HOLocationTableViewCell *)self locationIcon];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v13 = [(HOLocationTableViewCell *)self contentView];
    v14 = [(HOLocationTableViewCell *)self locationIcon];
    [v13 addSubview:v14];

    v28 = +[NSMutableArray array];
    v15 = [(HOLocationTableViewCell *)self locationIcon];
    v16 = [v15 widthAnchor];
    v17 = [v16 constraintEqualToConstant:20.0];
    [v28 addObject:v17];

    v18 = [(HOLocationTableViewCell *)self locationIcon];
    v19 = [v18 heightAnchor];
    v20 = [(HOLocationTableViewCell *)self locationIcon];
    v21 = [v20 widthAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v28 addObject:v22];

    v23 = [(HOLocationTableViewCell *)self locationIcon];
    v24 = [v23 centerYAnchor];
    v25 = [(HOLocationTableViewCell *)self contentView];
    v26 = [v25 centerYAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v28 addObject:v27];

    [NSLayoutConstraint activateConstraints:v28];
    [(HOLocationTableViewCell *)self setNeedsUpdateConstraints];
  }

  else
  {
    [v5 removeFromSuperview];

    [(HOLocationTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  v3 = +[NSMutableArray array];
  v4 = [(HOLocationTableViewCell *)self horizontalConstraints];
  [NSLayoutConstraint deactivateConstraints:v4];

  v5 = [(HOLocationTableViewCell *)self titleLabel];
  v6 = [v5 leadingAnchor];
  v7 = [(HOLocationTableViewCell *)self contentView];
  v8 = [v7 layoutMarginsGuide];
  v9 = [v8 leadingAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];
  [v3 addObject:v10];

  v11 = [(HOLocationTableViewCell *)self locationIcon];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  v13 = [(HOLocationTableViewCell *)self locationIcon];
  v14 = [(HOLocationTableViewCell *)self contentView];
  v15 = [v13 isDescendantOfView:v14];

  if (v15)
  {
    v16 = [(HOLocationTableViewCell *)self locationIcon];
    v17 = [v16 leadingAnchor];
    v18 = [(HOLocationTableViewCell *)self titleLabel];
    v19 = [v18 trailingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:20.0];
    [v3 addObject:v20];

    v21 = [(HOLocationTableViewCell *)self locationIcon];
  }

  else
  {
LABEL_4:
    v21 = [(HOLocationTableViewCell *)self titleLabel];
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];
  v24 = [(HOLocationTableViewCell *)self contentView];
  v25 = [v24 layoutMarginsGuide];
  v26 = [v25 trailingAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  [v3 addObject:v27];

  [(HOLocationTableViewCell *)self setHorizontalConstraints:v3];
  v28 = [(HOLocationTableViewCell *)self horizontalConstraints];
  [NSLayoutConstraint activateConstraints:v28];

  v29.receiver = self;
  v29.super_class = HOLocationTableViewCell;
  [(HOLocationTableViewCell *)&v29 updateConstraints];
}

@end
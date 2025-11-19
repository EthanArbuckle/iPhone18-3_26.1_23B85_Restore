@interface PHCarPlayHardwareMenuTableViewCell
- (PHCarPlayHardwareMenuTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PHCarPlayHardwareMenuTableViewCell

- (PHCarPlayHardwareMenuTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v31.receiver = self;
  v31.super_class = PHCarPlayHardwareMenuTableViewCell;
  v4 = [(PHCarPlayGenericTableViewCell *)&v31 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    mainLabel = v4->_mainLabel;
    v4->_mainLabel = v5;

    [(UILabel *)v4->_mainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    [(UILabel *)v4->_mainLabel setFont:v7];

    v8 = +[UIColor dynamicLabelColor];
    [(UILabel *)v4->_mainLabel setTextColor:v8];

    v9 = +[UIColor blackColor];
    [(UILabel *)v4->_mainLabel setBackgroundColor:v9];

    v10 = +[UIColor whiteColor];
    [(UILabel *)v4->_mainLabel setHighlightedTextColor:v10];

    v11 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    [v11 addSubview:v4->_mainLabel];

    v12 = objc_alloc_init(UIImageView);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v12;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    [v14 addSubview:v4->_iconImageView];

    v32[0] = @"mainLabel";
    v15 = [(PHCarPlayHardwareMenuTableViewCell *)v4 mainLabel];
    v32[1] = @"iconImage";
    v33[0] = v15;
    v16 = [(PHCarPlayHardwareMenuTableViewCell *)v4 iconImageView];
    v33[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

    v18 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-53-[mainLabel]", 0, 0, v17);
    [v18 addConstraints:v19];

    v20 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v21 = [(PHCarPlayHardwareMenuTableViewCell *)v4 mainLabel];
    v22 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v23 = [NSLayoutConstraint constraintWithItem:v21 attribute:11 relatedBy:0 toItem:v22 attribute:3 multiplier:1.0 constant:28.5];
    [v20 addConstraint:v23];

    v24 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v25 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-22-[iconImage]", 0, 0, v17);
    [v24 addConstraints:v25];

    v26 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v27 = [(PHCarPlayHardwareMenuTableViewCell *)v4 iconImageView];
    v28 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v29 = [NSLayoutConstraint constraintWithItem:v27 attribute:10 relatedBy:0 toItem:v28 attribute:10 multiplier:1.0 constant:0.0];
    [v26 addConstraint:v29];

    [(PHCarPlayGenericTableViewCell *)v4 setShowsChevron:1];
  }

  return v4;
}

@end
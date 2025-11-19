@interface NavCategoryCell
+ (double)heightForCellWithCategory:(id)a3 width:(double)a4;
- (NavCategoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateContent;
- (void)prepareForReuse;
- (void)setCategory:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation NavCategoryCell

- (void)updateConfigurationUsingState:(id)a3
{
  v10 = a3;
  v4 = [(NavCategoryCell *)self backgroundConfiguration];
  v5 = [v4 updatedConfigurationForState:v10];

  v6 = [(NavCategoryCell *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (([v10 isHighlighted] & 1) != 0 || objc_msgSend(v10, "isSelected"))
  {
    if (v7 == 2)
    {
      +[UIColor tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      +[UIColor systemLightMidGrayColor];
    }
    v8 = ;
  }

  else
  {
    v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  }

  v9 = v8;
  [v5 setBackgroundColor:v8];

  [(NavCategoryCell *)self setBackgroundConfiguration:v5];
}

- (void)_updateContent
{
  v3 = [(NavCategoryCell *)self category];
  v4 = [v3 shortDisplayString];
  [(UILabel *)self->_titleLabel setText:v4];

  v5 = [(NavCategoryCell *)self category];

  if (v5)
  {
    v13 = [(NavCategoryCell *)self category];
    v6 = [v13 styleAttributes];
    v7 = [(NavCategoryCell *)self traitCollection];
    [v7 displayScale];
    v9 = v8;
    v10 = [(NavCategoryCell *)self traitCollection];
    v11 = +[MKIconManager imageForStyle:size:forScale:format:transparent:transitMode:nightMode:](MKIconManager, "imageForStyle:size:forScale:format:transparent:transitMode:nightMode:", v6, 5, 1, 0, 0, [v10 userInterfaceStyle] == 2, v9);
    [(UIImageView *)self->_leadingImageView setImage:v11];
  }

  else
  {
    leadingImageView = self->_leadingImageView;

    [(UIImageView *)leadingImageView setImage:0];
  }
}

- (void)setCategory:(id)a3
{
  v5 = a3;
  v6 = self->_category;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_category, a3);
      [(NavCategoryCell *)self _updateContent];
      v7 = v9;
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NavCategoryCell;
  [(NavCategoryCell *)&v12 traitCollectionDidChange:v4];
  v5 = [(NavCategoryCell *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  if (v6 == [v4 userInterfaceStyle])
  {
    v7 = [(NavCategoryCell *)self traitCollection];
    [v7 displayScale];
    v9 = v8;
    [v4 displayScale];
    v11 = v10;

    if (v9 == v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(NavCategoryCell *)self _updateContent];
  [(NavCategoryCell *)self setNeedsUpdateConfiguration];
LABEL_6:
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NavCategoryCell;
  [(NavCategoryCell *)&v3 prepareForReuse];
  [(NavCategoryCell *)self setCategory:0];
}

- (NavCategoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v50.receiver = self;
  v50.super_class = NavCategoryCell;
  v4 = [(NavCategoryCell *)&v50 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(NavCategoryCell *)v4 setAccessibilityIdentifier:v6];

    v7 = [(NavCategoryCell *)v4 contentView];
    [v7 setAccessibilityIdentifier:@"NavCategoryCellContent"];

    v49 = +[UIBackgroundConfiguration listCellConfiguration];
    [v49 setCornerRadius:10.0];
    [(NavCategoryCell *)v4 setBackgroundConfiguration:v49];
    v8 = objc_opt_new();
    leadingImageView = v4->_leadingImageView;
    v4->_leadingImageView = v8;

    [(UIImageView *)v4->_leadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_leadingImageView setContentMode:1];
    v10 = [(UIImageView *)v4->_leadingImageView layer];
    [v10 setCornerRadius:27.0];

    [(UIImageView *)v4->_leadingImageView setAccessibilityIdentifier:@"LeadingImageView"];
    v11 = [(NavCategoryCell *)v4 contentView];
    [v11 addSubview:v4->_leadingImageView];

    v12 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v12;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [(UILabel *)v4->_titleLabel setFont:v14];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    v15 = [(NavCategoryCell *)v4 contentView];
    [v15 addSubview:v4->_titleLabel];

    v47 = [(UIImageView *)v4->_leadingImageView leadingAnchor];
    v48 = [(NavCategoryCell *)v4 contentView];
    v46 = [v48 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 constant:12.0];
    v51[0] = v45;
    v44 = [(UIImageView *)v4->_leadingImageView widthAnchor];
    v43 = [v44 constraintEqualToConstant:54.0];
    v51[1] = v43;
    v41 = [(UIImageView *)v4->_leadingImageView centerYAnchor];
    v42 = [(NavCategoryCell *)v4 contentView];
    v40 = [v42 centerYAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v51[2] = v39;
    v38 = [(UIImageView *)v4->_leadingImageView heightAnchor];
    v37 = [v38 constraintEqualToConstant:54.0];
    v51[3] = v37;
    v36 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v35 = [(UIImageView *)v4->_leadingImageView trailingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:10.0];
    v51[4] = v34;
    v32 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v33 = [(NavCategoryCell *)v4 contentView];
    v31 = [v33 trailingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:-16.0];
    v51[5] = v30;
    v28 = [(UILabel *)v4->_titleLabel centerYAnchor];
    v29 = [(NavCategoryCell *)v4 contentView];
    v27 = [v29 centerYAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v51[6] = v26;
    v16 = [(UILabel *)v4->_titleLabel topAnchor];
    v17 = [(NavCategoryCell *)v4 contentView];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18];
    v51[7] = v19;
    v20 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v21 = [(NavCategoryCell *)v4 contentView];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintLessThanOrEqualToAnchor:v22];
    v51[8] = v23;
    v24 = [NSArray arrayWithObjects:v51 count:9];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v4;
}

+ (double)heightForCellWithCategory:(id)a3 width:(double)a4
{
  v5 = a3;
  v6 = [NSAttributedString alloc];
  v7 = [v5 shortDisplayString];

  v17 = NSFontAttributeName;
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  v18 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v10 = [v6 initWithString:v7 attributes:v9];

  [v10 boundingRectWithSize:1 options:0 context:{a4 + -92.0, 1.79769313e308}];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v15 = 78.0;
  if (ceil(CGRectGetMaxY(v19)) > 78.0)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v15 = ceil(CGRectGetMaxY(v20));
  }

  return v15;
}

@end
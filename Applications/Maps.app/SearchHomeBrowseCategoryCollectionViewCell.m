@interface SearchHomeBrowseCategoryCollectionViewCell
+ (id)identifier;
- (SearchHomeBrowseCategoryCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setImage:(id)a3;
- (void)setSizeController:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SearchHomeBrowseCategoryCollectionViewCell

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(SearchHomeBrowseCategoryCollectionViewCell *)self titleLabel];
  [v5 setText:v4];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(SearchHomeBrowseCategoryCollectionViewCell *)self browseImageView];
  [v5 setImage:v4];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = SearchHomeBrowseCategoryCollectionViewCell;
  [(SearchHomeBrowseCategoryCollectionViewCell *)&v5 prepareForReuse];
  v3 = [(SearchHomeBrowseCategoryCollectionViewCell *)self browseImageView];
  [v3 setImage:0];

  v4 = [(SearchHomeBrowseCategoryCollectionViewCell *)self titleLabel];
  [v4 setText:0];
}

- (void)setSizeController:(id)a3
{
  v31 = a3;
  v5 = [(SearchHomeBrowseCategoryCollectionViewCell *)self sizeController];
  v6 = [v31 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_sizeController, a3);
    [v31 labelTopAndBottomPadding];
    v8 = v7;
    v9 = [(SearchHomeBrowseCategoryCollectionViewCell *)self topLabelToTopConstraint];
    [v9 setConstant:v8];

    [v31 labelTopAndBottomPadding];
    v11 = -v10;
    v12 = [(SearchHomeBrowseCategoryCollectionViewCell *)self bottomLabelToBottomConstraint];
    [v12 setConstant:v11];

    v13 = [v31 titleLabelFont];
    v14 = [(SearchHomeBrowseCategoryCollectionViewCell *)self titleLabel];
    [v14 setFont:v13];

    [v31 imageLeadingPadding];
    v16 = v15;
    v17 = [(SearchHomeBrowseCategoryCollectionViewCell *)self imageLeadingConstraint];
    [v17 setConstant:v16];

    v18 = [(SearchHomeBrowseCategoryCollectionViewCell *)self traitCollection];
    v19 = [v18 userInterfaceIdiom];

    v20 = 10.0;
    if (v19 != 5)
    {
      [v31 imageToLabelPadding];
      v20 = v21;
    }

    v22 = [(SearchHomeBrowseCategoryCollectionViewCell *)self imageToLabelConstraint];
    [v22 setConstant:v20];

    v23 = [(SearchHomeBrowseCategoryCollectionViewCell *)self sizeController];
    [v23 imageSize];
    v25 = v24;
    v26 = [(SearchHomeBrowseCategoryCollectionViewCell *)self imageWidthConstraint];
    [v26 setConstant:v25];

    v27 = [(SearchHomeBrowseCategoryCollectionViewCell *)self sizeController];
    [v27 imageSize];
    v29 = v28;
    v30 = [(SearchHomeBrowseCategoryCollectionViewCell *)self imageHeightConstraint];
    [v30 setConstant:v29];
  }
}

- (SearchHomeBrowseCategoryCollectionViewCell)initWithFrame:(CGRect)a3
{
  v53.receiver = self;
  v53.super_class = SearchHomeBrowseCategoryCollectionViewCell;
  v3 = [(SearchHomeBrowseCategoryCollectionViewCell *)&v53 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(SearchHomeBrowseCategoryCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(UIView);
    [(SearchHomeBrowseCategoryCollectionViewCell *)v3 setBackgroundView:v5];

    v6 = objc_alloc_init(UIImageView);
    browseImageView = v3->_browseImageView;
    v3->_browseImageView = v6;

    [(UIImageView *)v3->_browseImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = +[UIColor clearColor];
    [(UIImageView *)v3->_browseImageView setBackgroundColor:v8];

    LODWORD(v9) = 1148846080;
    [(UIImageView *)v3->_browseImageView setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [(UIImageView *)v3->_browseImageView setContentCompressionResistancePriority:0 forAxis:v10];
    [(UIImageView *)v3->_browseImageView setAccessibilityIdentifier:@"SearchHomeBrowseCategoryIcon"];
    v11 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    [v11 addSubview:v3->_browseImageView];

    v12 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v12;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[UIColor clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:v14];

    v15 = +[UIFont system17];
    [(UILabel *)v3->_titleLabel setFont:v15];

    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"SearchHomeBrowseCategoryTitle"];
    v16 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    [v16 addSubview:v3->_titleLabel];

    v17 = [(UILabel *)v3->_titleLabel topAnchor];
    v18 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    v19 = [v18 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    topLabelToTopConstraint = v3->_topLabelToTopConstraint;
    v3->_topLabelToTopConstraint = v20;

    v22 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v23 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    bottomLabelToBottomConstraint = v3->_bottomLabelToBottomConstraint;
    v3->_bottomLabelToBottomConstraint = v25;

    v27 = [(UIImageView *)v3->_browseImageView leadingAnchor];
    v28 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    v29 = [v28 leadingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    imageLeadingConstraint = v3->_imageLeadingConstraint;
    v3->_imageLeadingConstraint = v30;

    v32 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v33 = [(UIImageView *)v3->_browseImageView trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    imageToLabelConstraint = v3->_imageToLabelConstraint;
    v3->_imageToLabelConstraint = v34;

    v36 = [(UIImageView *)v3->_browseImageView widthAnchor];
    v37 = [v36 constraintEqualToConstant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v37;

    v39 = [(UIImageView *)v3->_browseImageView heightAnchor];
    v40 = [v39 constraintEqualToConstant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v40;

    v54[0] = v3->_imageLeadingConstraint;
    v42 = [(UIImageView *)v3->_browseImageView centerYAnchor];
    v43 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    v44 = [v43 centerYAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
    v54[1] = v45;
    v54[2] = v3->_imageWidthConstraint;
    v54[3] = v3->_imageHeightConstraint;
    v54[4] = v3->_imageToLabelConstraint;
    v46 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v47 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    v48 = [v47 trailingAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    v54[5] = v49;
    v54[6] = v3->_topLabelToTopConstraint;
    v54[7] = v3->_bottomLabelToBottomConstraint;
    v50 = [NSArray arrayWithObjects:v54 count:8];
    [NSLayoutConstraint activateConstraints:v50];

    if (sub_10000FA08(v3) == 5)
    {
      [(SearchHomeBrowseCategoryCollectionViewCell *)v3 _maps_setCollectionViewCellBackgroundConfiguration];
      v51 = +[UIColor systemWhiteColor];
      [(UILabel *)v3->_titleLabel setHighlightedTextColor:v51];
    }
  }

  return v3;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
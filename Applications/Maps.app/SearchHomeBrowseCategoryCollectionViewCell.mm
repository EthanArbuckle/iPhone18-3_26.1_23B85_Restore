@interface SearchHomeBrowseCategoryCollectionViewCell
+ (id)identifier;
- (SearchHomeBrowseCategoryCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setImage:(id)image;
- (void)setSizeController:(id)controller;
- (void)setTitle:(id)title;
@end

@implementation SearchHomeBrowseCategoryCollectionViewCell

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(SearchHomeBrowseCategoryCollectionViewCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  browseImageView = [(SearchHomeBrowseCategoryCollectionViewCell *)self browseImageView];
  [browseImageView setImage:imageCopy];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = SearchHomeBrowseCategoryCollectionViewCell;
  [(SearchHomeBrowseCategoryCollectionViewCell *)&v5 prepareForReuse];
  browseImageView = [(SearchHomeBrowseCategoryCollectionViewCell *)self browseImageView];
  [browseImageView setImage:0];

  titleLabel = [(SearchHomeBrowseCategoryCollectionViewCell *)self titleLabel];
  [titleLabel setText:0];
}

- (void)setSizeController:(id)controller
{
  controllerCopy = controller;
  sizeController = [(SearchHomeBrowseCategoryCollectionViewCell *)self sizeController];
  v6 = [controllerCopy isEqual:sizeController];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_sizeController, controller);
    [controllerCopy labelTopAndBottomPadding];
    v8 = v7;
    topLabelToTopConstraint = [(SearchHomeBrowseCategoryCollectionViewCell *)self topLabelToTopConstraint];
    [topLabelToTopConstraint setConstant:v8];

    [controllerCopy labelTopAndBottomPadding];
    v11 = -v10;
    bottomLabelToBottomConstraint = [(SearchHomeBrowseCategoryCollectionViewCell *)self bottomLabelToBottomConstraint];
    [bottomLabelToBottomConstraint setConstant:v11];

    titleLabelFont = [controllerCopy titleLabelFont];
    titleLabel = [(SearchHomeBrowseCategoryCollectionViewCell *)self titleLabel];
    [titleLabel setFont:titleLabelFont];

    [controllerCopy imageLeadingPadding];
    v16 = v15;
    imageLeadingConstraint = [(SearchHomeBrowseCategoryCollectionViewCell *)self imageLeadingConstraint];
    [imageLeadingConstraint setConstant:v16];

    traitCollection = [(SearchHomeBrowseCategoryCollectionViewCell *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v20 = 10.0;
    if (userInterfaceIdiom != 5)
    {
      [controllerCopy imageToLabelPadding];
      v20 = v21;
    }

    imageToLabelConstraint = [(SearchHomeBrowseCategoryCollectionViewCell *)self imageToLabelConstraint];
    [imageToLabelConstraint setConstant:v20];

    sizeController2 = [(SearchHomeBrowseCategoryCollectionViewCell *)self sizeController];
    [sizeController2 imageSize];
    v25 = v24;
    imageWidthConstraint = [(SearchHomeBrowseCategoryCollectionViewCell *)self imageWidthConstraint];
    [imageWidthConstraint setConstant:v25];

    sizeController3 = [(SearchHomeBrowseCategoryCollectionViewCell *)self sizeController];
    [sizeController3 imageSize];
    v29 = v28;
    imageHeightConstraint = [(SearchHomeBrowseCategoryCollectionViewCell *)self imageHeightConstraint];
    [imageHeightConstraint setConstant:v29];
  }
}

- (SearchHomeBrowseCategoryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v53.receiver = self;
  v53.super_class = SearchHomeBrowseCategoryCollectionViewCell;
  v3 = [(SearchHomeBrowseCategoryCollectionViewCell *)&v53 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_browseImageView];

    v12 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v12;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[UIColor clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:v14];

    v15 = +[UIFont system17];
    [(UILabel *)v3->_titleLabel setFont:v15];

    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"SearchHomeBrowseCategoryTitle"];
    contentView2 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_titleLabel];

    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    contentView3 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    topLabelToTopConstraint = v3->_topLabelToTopConstraint;
    v3->_topLabelToTopConstraint = v20;

    bottomAnchor = [(UILabel *)v3->_titleLabel bottomAnchor];
    contentView4 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    bottomLabelToBottomConstraint = v3->_bottomLabelToBottomConstraint;
    v3->_bottomLabelToBottomConstraint = v25;

    leadingAnchor = [(UIImageView *)v3->_browseImageView leadingAnchor];
    contentView5 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    imageLeadingConstraint = v3->_imageLeadingConstraint;
    v3->_imageLeadingConstraint = v30;

    leadingAnchor3 = [(UILabel *)v3->_titleLabel leadingAnchor];
    trailingAnchor = [(UIImageView *)v3->_browseImageView trailingAnchor];
    v34 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    imageToLabelConstraint = v3->_imageToLabelConstraint;
    v3->_imageToLabelConstraint = v34;

    widthAnchor = [(UIImageView *)v3->_browseImageView widthAnchor];
    v37 = [widthAnchor constraintEqualToConstant:0.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v37;

    heightAnchor = [(UIImageView *)v3->_browseImageView heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:0.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v40;

    v54[0] = v3->_imageLeadingConstraint;
    centerYAnchor = [(UIImageView *)v3->_browseImageView centerYAnchor];
    contentView6 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    centerYAnchor2 = [contentView6 centerYAnchor];
    v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v54[1] = v45;
    v54[2] = v3->_imageWidthConstraint;
    v54[3] = v3->_imageHeightConstraint;
    v54[4] = v3->_imageToLabelConstraint;
    trailingAnchor2 = [(UILabel *)v3->_titleLabel trailingAnchor];
    contentView7 = [(SearchHomeBrowseCategoryCollectionViewCell *)v3 contentView];
    trailingAnchor3 = [contentView7 trailingAnchor];
    v49 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
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
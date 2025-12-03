@interface THBookmarkMenuTableViewCell
- (THBookmarkMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation THBookmarkMenuTableViewCell

- (THBookmarkMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = THBookmarkMenuTableViewCell;
  v4 = [(THBookmarkMenuTableViewCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(THBookmarkMenuTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(THAspectFitImageView);
    [(THAspectFitImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(THAspectFitImageView *)v7 setPreferredMaxLayoutHeight:45.0];
    [+[UIScreen mainScreen](UIScreen scale];
    [-[THAspectFitImageView layer](v7 "layer")];
    [contentView addSubview:v7];
    v5->_thumbnail = &v7->super;
    v9 = objc_alloc_init(UILabel);
    [(UILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v9 setFont:[UIFont systemFontOfSize:17.0]];
    [contentView addSubview:v9];
    v5->_bookmarkTitleLabel = v9;
    v10 = objc_alloc_init(BETableViewCellPageNumberLabel);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v10];
    v5->_pageNumberLabel = v10;
    LODWORD(v11) = 1144750080;
    [v10 setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1132068864;
    [(UILabel *)v9 setContentCompressionResistancePriority:0 forAxis:v12];
    v13 = _NSDictionaryOfVariableBindings(@"thumbnail, bookmarkTitleLabel, pageNumberLabel", v7, v9, v10, 0);
    v14 = _NSDictionaryOfVariableBindings(@"kHorizontalInset, kGapBetweenLabels, kImageViewMaxWidth", &off_49CF70, &off_49CF70, &off_49CF80, 0);
    v15 = +[NSMutableArray array];
    [v15 addObjectsFromArray:{+[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(==kHorizontalInset)-[thumbnail(==kImageViewMaxWidth)]-(==kGapBetweenLabels)-[bookmarkTitleLabel]-(==kGapBetweenLabels)-[pageNumberLabel]-(==kHorizontalInset)-|", 66560, v14, v13)}];
    [v15 addObject:{+[NSLayoutConstraint constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:](NSLayoutConstraint, "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:", v7, 10, 0, contentView, 10, 1.0, 0.0)}];
    [-[THBookmarkMenuTableViewCell contentView](v5 "contentView")];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THBookmarkMenuTableViewCell;
  [(THBookmarkMenuTableViewCell *)&v3 dealloc];
}

@end
@interface UGCPhotoThumbnailCollectionViewCell
+ (NSString)reuseIdentifier;
- (UGCPhotoThumbnailCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateBadge;
- (void)prepareForReuse;
- (void)setImage:(id)image;
- (void)setProviderName:(id)name;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UGCPhotoThumbnailCollectionViewCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = UGCPhotoThumbnailCollectionViewCell;
  [(UGCPhotoThumbnailCollectionViewCell *)&v5 prepareForReuse];
  assetIdentifier = self->_assetIdentifier;
  self->_assetIdentifier = 0;

  [(UIImageView *)self->_photoImageView setImage:0];
  providerName = self->_providerName;
  self->_providerName = 0;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = UGCPhotoThumbnailCollectionViewCell;
  changeCopy = change;
  [(UGCPhotoThumbnailCollectionViewCell *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(UGCPhotoThumbnailCollectionViewCell *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(UGCPhotoThumbnailCollectionViewCell *)self _updateBadge];
  }
}

- (void)_updateBadge
{
  if ([(NSString *)self->_providerName length])
  {
    v3 = [NSAttributedString alloc];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"%@ %@ [Badge format]" value:@"localized string not found" table:0];
    v6 = [v3 initWithString:v5];

    v7 = [[NSAttributedString alloc] initWithString:self->_providerName];
    v8 = objc_alloc_init(NSTextAttachment);
    v9 = +[_TtC4Maps26UGCPhotoThumbnailBadgeView attributionFont];
    v10 = [UIImageSymbolConfiguration configurationWithFont:v9];
    v11 = [UIImage systemImageNamed:@"arrow.up.right.square.fill" withConfiguration:v10];
    [v8 setImage:v11];

    v12 = [NSAttributedString attributedStringWithAttachment:v8];
    v13 = [NSMutableAttributedString localizedAttributedStringWithFormat:v6, v7, v12];
    v19[0] = NSFontAttributeName;
    v14 = +[_TtC4Maps26UGCPhotoThumbnailBadgeView attributionFont];
    v20[0] = v14;
    v19[1] = NSForegroundColorAttributeName;
    v15 = +[UIColor whiteColor];
    v20[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v13 addAttributes:v16 range:{0, objc_msgSend(v13, "length")}];

    v17 = [v13 copy];
    [(UGCPhotoThumbnailBadgeView *)self->_badgeView setAttributedText:v17];
  }

  else
  {
    badgeView = self->_badgeView;

    [(UGCPhotoThumbnailBadgeView *)badgeView setAttributedText:0];
  }
}

- (void)setProviderName:(id)name
{
  nameCopy = name;
  if (([(NSString *)self->_providerName isEqual:?]& 1) == 0)
  {
    v4 = [nameCopy copy];
    providerName = self->_providerName;
    self->_providerName = v4;

    [(UGCPhotoThumbnailCollectionViewCell *)self _updateBadge];
    [(UGCPhotoThumbnailBadgeView *)self->_badgeView setHidden:[(NSString *)self->_providerName length]== 0];
  }
}

- (UIImage)image
{
  photoImageView = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  image = [photoImageView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  photoImageView = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  [photoImageView setImage:imageCopy];
}

- (void)_setupConstraints
{
  contentView = [(UGCPhotoThumbnailCollectionViewCell *)self contentView];
  photoImageView = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  leadingAnchor = [photoImageView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v34;
  photoImageView2 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  trailingAnchor = [photoImageView2 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[1] = v30;
  photoImageView3 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  topAnchor = [photoImageView3 topAnchor];
  v29 = contentView;
  topAnchor2 = [contentView topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v25;
  photoImageView4 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  bottomAnchor = [photoImageView4 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v21;
  leadingAnchor3 = [(UGCPhotoThumbnailBadgeView *)self->_badgeView leadingAnchor];
  photoImageView5 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  leadingAnchor4 = [photoImageView5 leadingAnchor];
  v17 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:kMUPlaceSystemSpacing];
  v38[4] = v17;
  trailingAnchor3 = [(UGCPhotoThumbnailBadgeView *)self->_badgeView trailingAnchor];
  photoImageView6 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  trailingAnchor4 = [photoImageView6 trailingAnchor];
  v4 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v38[5] = v4;
  bottomAnchor3 = [(UGCPhotoThumbnailBadgeView *)self->_badgeView bottomAnchor];
  photoImageView7 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  bottomAnchor4 = [photoImageView7 bottomAnchor];
  v8 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v38[6] = v8;
  topAnchor3 = [(UGCPhotoThumbnailBadgeView *)self->_badgeView topAnchor];
  photoImageView8 = [(UGCPhotoThumbnailCollectionViewCell *)self photoImageView];
  topAnchor4 = [photoImageView8 topAnchor];
  v12 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v38[7] = v12;
  v13 = [NSArray arrayWithObjects:v38 count:8];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_setupSubviews
{
  v3 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  photoImageView = self->_photoImageView;
  self->_photoImageView = v7;

  [(UIImageView *)self->_photoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_photoImageView setContentMode:2];
  [(UIImageView *)self->_photoImageView setClipsToBounds:1];
  [(UIImageView *)self->_photoImageView setAccessibilityIgnoresInvertColors:1];
  [(UIImageView *)self->_photoImageView setAccessibilityIdentifier:@"PhotoImageView"];
  contentView = [(UGCPhotoThumbnailCollectionViewCell *)self contentView];
  [contentView addSubview:self->_photoImageView];

  height = [[_TtC4Maps26UGCPhotoThumbnailBadgeView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  badgeView = self->_badgeView;
  self->_badgeView = height;

  [(UGCPhotoThumbnailBadgeView *)self->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = self->_photoImageView;
  v13 = self->_badgeView;

  [(UIImageView *)v12 addSubview:v13];
}

- (UGCPhotoThumbnailCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UGCPhotoThumbnailCollectionViewCell;
  v3 = [(UGCPhotoThumbnailCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v5 stringByReplacingOccurrencesOfString:@"UGC" withString:&stru_1016631F0];
    [(UGCPhotoThumbnailCollectionViewCell *)v3 setAccessibilityIdentifier:v6];

    [(UGCPhotoThumbnailCollectionViewCell *)v3 _setupSubviews];
    [(UGCPhotoThumbnailCollectionViewCell *)v3 _setupConstraints];
  }

  return v3;
}

+ (NSString)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
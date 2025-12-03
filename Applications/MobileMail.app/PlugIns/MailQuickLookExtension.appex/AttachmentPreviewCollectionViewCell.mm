@interface AttachmentPreviewCollectionViewCell
- (AttachmentPreviewCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setImage:(id)image withAspectRatio:(double)ratio;
@end

@implementation AttachmentPreviewCollectionViewCell

- (AttachmentPreviewCollectionViewCell)initWithFrame:(CGRect)frame
{
  v73.receiver = self;
  v73.super_class = AttachmentPreviewCollectionViewCell;
  v3 = [(AttachmentPreviewCollectionViewCell *)&v73 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor tableCellGroupedBackgroundColor];
    contentView = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [contentView setBackgroundColor:v4];

    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v10;

    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v3->_nameLabel setFont:v12];

    [(UILabel *)v3->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_nameLabel setNumberOfLines:2];
    [(UILabel *)v3->_nameLabel setTextAlignment:1];
    [(UILabel *)v3->_nameLabel setLineBreakMode:5];
    [(UILabel *)v3->_nameLabel setLineBreakStrategy:0];
    contentView2 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_nameLabel];

    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    dateLabel = v3->_dateLabel;
    v3->_dateLabel = v14;

    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v3->_dateLabel setFont:v16];

    v17 = +[UIColor systemGrayColor];
    [(UILabel *)v3->_dateLabel setTextColor:v17];

    [(UILabel *)v3->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_dateLabel setNumberOfLines:2];
    [(UILabel *)v3->_dateLabel setTextAlignment:1];
    [(UILabel *)v3->_dateLabel setLineBreakMode:5];
    [(UILabel *)v3->_dateLabel setLineBreakStrategy:0];
    contentView3 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_dateLabel];

    v19 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v3->_imageView;
    v3->_imageView = v19;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:1];
    layer = [(UIImageView *)v3->_imageView layer];
    [layer setCornerRadius:5.0];

    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    contentView4 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [contentView4 addSubview:v3->_imageView];

    v23 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, 25.0, 25.0];
    avatarView = v3->_avatarView;
    v3->_avatarView = v23;

    [(MFAvatarView *)v3->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = +[UIColor whiteColor];
    v26 = v25;
    cGColor = [v25 CGColor];
    layer2 = [(MFAvatarView *)v3->_avatarView layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(MFAvatarView *)v3->_avatarView layer];
    [layer3 setCornerRadius:12.5];

    layer4 = [(MFAvatarView *)v3->_avatarView layer];
    [layer4 setBorderWidth:1.0];

    [(MFAvatarView *)v3->_avatarView setClipsToBounds:1];
    layer5 = [(MFAvatarView *)v3->_avatarView layer];
    [layer5 setMasksToBounds:1];

    contentView5 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [contentView5 addSubview:v3->_avatarView];

    contentView6 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [contentView6 bringSubviewToFront:v3->_avatarView];

    bottomAnchor = [(UILabel *)v3->_dateLabel bottomAnchor];
    bottomAnchor2 = [(AttachmentPreviewCollectionViewCell *)v3 bottomAnchor];
    v61 = [bottomAnchor constraintEqualToAnchor:-4.0 constant:?];
    v74[0] = v61;
    centerXAnchor = [(UILabel *)v3->_dateLabel centerXAnchor];
    centerXAnchor2 = [(AttachmentPreviewCollectionViewCell *)v3 centerXAnchor];
    v59 = [centerXAnchor constraintEqualToAnchor:?];
    v74[1] = v59;
    widthAnchor = [(UILabel *)v3->_dateLabel widthAnchor];
    widthAnchor2 = [(AttachmentPreviewCollectionViewCell *)v3 widthAnchor];
    v57 = [widthAnchor constraintEqualToAnchor:-5.0 constant:?];
    v74[2] = v57;
    bottomAnchor3 = [(UILabel *)v3->_nameLabel bottomAnchor];
    topAnchor = [(UILabel *)v3->_dateLabel topAnchor];
    v55 = [bottomAnchor3 constraintEqualToAnchor:?];
    v74[3] = v55;
    centerXAnchor3 = [(UILabel *)v3->_nameLabel centerXAnchor];
    centerXAnchor4 = [(AttachmentPreviewCollectionViewCell *)v3 centerXAnchor];
    v53 = [centerXAnchor3 constraintEqualToAnchor:?];
    v74[4] = v53;
    widthAnchor3 = [(UILabel *)v3->_nameLabel widthAnchor];
    widthAnchor4 = [(AttachmentPreviewCollectionViewCell *)v3 widthAnchor];
    v51 = [widthAnchor3 constraintEqualToAnchor:-5.0 constant:?];
    v74[5] = v51;
    topAnchor2 = [(UIImageView *)v3->_imageView topAnchor];
    topAnchor3 = [(AttachmentPreviewCollectionViewCell *)v3 topAnchor];
    v49 = [topAnchor2 constraintEqualToAnchor:4.0 constant:?];
    v74[6] = v49;
    bottomAnchor4 = [(UIImageView *)v3->_imageView bottomAnchor];
    topAnchor4 = [(UILabel *)v3->_nameLabel topAnchor];
    v47 = [bottomAnchor4 constraintEqualToAnchor:-4.0 constant:?];
    v74[7] = v47;
    centerXAnchor5 = [(UIImageView *)v3->_imageView centerXAnchor];
    centerXAnchor6 = [(AttachmentPreviewCollectionViewCell *)v3 centerXAnchor];
    v45 = [centerXAnchor5 constraintEqualToAnchor:?];
    v74[8] = v45;
    trailingAnchor = [(MFAvatarView *)v3->_avatarView trailingAnchor];
    trailingAnchor2 = [(UIImageView *)v3->_imageView trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:-10.0 constant:?];
    v74[9] = v43;
    topAnchor5 = [(MFAvatarView *)v3->_avatarView topAnchor];
    topAnchor6 = [(UIImageView *)v3->_imageView topAnchor];
    v36 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:10.0];
    v74[10] = v36;
    widthAnchor5 = [(MFAvatarView *)v3->_avatarView widthAnchor];
    v38 = [widthAnchor5 constraintEqualToConstant:25.0];
    v74[11] = v38;
    heightAnchor = [(MFAvatarView *)v3->_avatarView heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:25.0];
    v74[12] = v40;
    v41 = [NSArray arrayWithObjects:v74 count:13];
    [NSLayoutConstraint activateConstraints:v41];
  }

  return v3;
}

- (void)prepareForReuse
{
  nameLabel = [(AttachmentPreviewCollectionViewCell *)self nameLabel];
  [nameLabel setText:0];

  dateLabel = [(AttachmentPreviewCollectionViewCell *)self dateLabel];
  [dateLabel setText:0];

  imageView = [(AttachmentPreviewCollectionViewCell *)self imageView];
  [imageView setImage:0];

  v6.receiver = self;
  v6.super_class = AttachmentPreviewCollectionViewCell;
  [(AttachmentPreviewCollectionViewCell *)&v6 prepareForReuse];
}

- (void)setImage:(id)image withAspectRatio:(double)ratio
{
  imageCopy = image;
  imageView = [(AttachmentPreviewCollectionViewCell *)self imageView];
  [imageView setImage:imageCopy];

  imageView2 = [(AttachmentPreviewCollectionViewCell *)self imageView];
  constraints = [imageView2 constraints];
  [NSLayoutConstraint deactivateConstraints:constraints];

  imageView3 = [(AttachmentPreviewCollectionViewCell *)self imageView];
  widthAnchor = [imageView3 widthAnchor];
  imageView4 = [(AttachmentPreviewCollectionViewCell *)self imageView];
  heightAnchor = [imageView4 heightAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:ratio];
  [v13 setActive:1];
}

@end
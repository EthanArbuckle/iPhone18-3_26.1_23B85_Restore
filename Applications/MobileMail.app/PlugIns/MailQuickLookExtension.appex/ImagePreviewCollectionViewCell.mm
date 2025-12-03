@interface ImagePreviewCollectionViewCell
- (ImagePreviewCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation ImagePreviewCollectionViewCell

- (ImagePreviewCollectionViewCell)initWithFrame:(CGRect)frame
{
  v44.receiver = self;
  v44.super_class = ImagePreviewCollectionViewCell;
  v3 = [(ImagePreviewCollectionViewCell *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor tableCellGroupedBackgroundColor];
    contentView = [(ImagePreviewCollectionViewCell *)v3 contentView];
    [contentView setBackgroundColor:v4];

    v6 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:2];
    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    contentView2 = [(ImagePreviewCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_imageView];

    v9 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, 25.0, 25.0];
    avatarView = v3->_avatarView;
    v3->_avatarView = v9;

    [(MFAvatarView *)v3->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = +[UIColor whiteColor];
    v12 = v11;
    cGColor = [v11 CGColor];
    layer = [(MFAvatarView *)v3->_avatarView layer];
    [layer setBorderColor:cGColor];

    layer2 = [(MFAvatarView *)v3->_avatarView layer];
    [layer2 setCornerRadius:12.5];

    layer3 = [(MFAvatarView *)v3->_avatarView layer];
    [layer3 setBorderWidth:1.0];

    [(MFAvatarView *)v3->_avatarView setClipsToBounds:1];
    layer4 = [(MFAvatarView *)v3->_avatarView layer];
    [layer4 setMasksToBounds:1];

    contentView3 = [(ImagePreviewCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_avatarView];

    contentView4 = [(ImagePreviewCollectionViewCell *)v3 contentView];
    [contentView4 bringSubviewToFront:v3->_avatarView];

    leadingAnchor = [(UIImageView *)v3->_imageView leadingAnchor];
    leadingAnchor2 = [(ImagePreviewCollectionViewCell *)v3 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:?];
    v45[0] = v37;
    topAnchor = [(UIImageView *)v3->_imageView topAnchor];
    topAnchor2 = [(ImagePreviewCollectionViewCell *)v3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:?];
    v45[1] = v35;
    bottomAnchor = [(UIImageView *)v3->_imageView bottomAnchor];
    bottomAnchor2 = [(ImagePreviewCollectionViewCell *)v3 bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:?];
    v45[2] = v33;
    trailingAnchor = [(UIImageView *)v3->_imageView trailingAnchor];
    trailingAnchor2 = [(ImagePreviewCollectionViewCell *)v3 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:?];
    v45[3] = v31;
    trailingAnchor3 = [(MFAvatarView *)v3->_avatarView trailingAnchor];
    trailingAnchor4 = [(UIImageView *)v3->_imageView trailingAnchor];
    v29 = [trailingAnchor3 constraintEqualToAnchor:-10.0 constant:?];
    v45[4] = v29;
    topAnchor3 = [(MFAvatarView *)v3->_avatarView topAnchor];
    topAnchor4 = [(UIImageView *)v3->_imageView topAnchor];
    v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
    v45[5] = v22;
    widthAnchor = [(MFAvatarView *)v3->_avatarView widthAnchor];
    v24 = [widthAnchor constraintEqualToConstant:25.0];
    v45[6] = v24;
    heightAnchor = [(MFAvatarView *)v3->_avatarView heightAnchor];
    v26 = [heightAnchor constraintEqualToConstant:25.0];
    v45[7] = v26;
    v27 = [NSArray arrayWithObjects:v45 count:8];
    [NSLayoutConstraint activateConstraints:v27];
  }

  return v3;
}

@end
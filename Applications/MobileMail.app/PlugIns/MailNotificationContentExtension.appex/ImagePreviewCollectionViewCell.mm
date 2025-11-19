@interface ImagePreviewCollectionViewCell
- (ImagePreviewCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation ImagePreviewCollectionViewCell

- (ImagePreviewCollectionViewCell)initWithFrame:(CGRect)a3
{
  v44.receiver = self;
  v44.super_class = ImagePreviewCollectionViewCell;
  v3 = [(ImagePreviewCollectionViewCell *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor tableCellGroupedBackgroundColor];
    v5 = [(ImagePreviewCollectionViewCell *)v3 contentView];
    [v5 setBackgroundColor:v4];

    v6 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:2];
    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    v8 = [(ImagePreviewCollectionViewCell *)v3 contentView];
    [v8 addSubview:v3->_imageView];

    v9 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, 25.0, 25.0];
    avatarView = v3->_avatarView;
    v3->_avatarView = v9;

    [(MFAvatarView *)v3->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = +[UIColor whiteColor];
    v12 = v11;
    v13 = [v11 CGColor];
    v14 = [(MFAvatarView *)v3->_avatarView layer];
    [v14 setBorderColor:v13];

    v15 = [(MFAvatarView *)v3->_avatarView layer];
    [v15 setCornerRadius:12.5];

    v16 = [(MFAvatarView *)v3->_avatarView layer];
    [v16 setBorderWidth:1.0];

    [(MFAvatarView *)v3->_avatarView setClipsToBounds:1];
    v17 = [(MFAvatarView *)v3->_avatarView layer];
    [v17 setMasksToBounds:1];

    v18 = [(ImagePreviewCollectionViewCell *)v3 contentView];
    [v18 addSubview:v3->_avatarView];

    v19 = [(ImagePreviewCollectionViewCell *)v3 contentView];
    [v19 bringSubviewToFront:v3->_avatarView];

    v43 = [(UIImageView *)v3->_imageView leadingAnchor];
    v38 = [(ImagePreviewCollectionViewCell *)v3 leadingAnchor];
    v37 = [v43 constraintEqualToAnchor:?];
    v45[0] = v37;
    v42 = [(UIImageView *)v3->_imageView topAnchor];
    v36 = [(ImagePreviewCollectionViewCell *)v3 topAnchor];
    v35 = [v42 constraintEqualToAnchor:?];
    v45[1] = v35;
    v41 = [(UIImageView *)v3->_imageView bottomAnchor];
    v34 = [(ImagePreviewCollectionViewCell *)v3 bottomAnchor];
    v33 = [v41 constraintEqualToAnchor:?];
    v45[2] = v33;
    v40 = [(UIImageView *)v3->_imageView trailingAnchor];
    v32 = [(ImagePreviewCollectionViewCell *)v3 trailingAnchor];
    v31 = [v40 constraintEqualToAnchor:?];
    v45[3] = v31;
    v39 = [(MFAvatarView *)v3->_avatarView trailingAnchor];
    v30 = [(UIImageView *)v3->_imageView trailingAnchor];
    v29 = [v39 constraintEqualToAnchor:-10.0 constant:?];
    v45[4] = v29;
    v20 = [(MFAvatarView *)v3->_avatarView topAnchor];
    v21 = [(UIImageView *)v3->_imageView topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:10.0];
    v45[5] = v22;
    v23 = [(MFAvatarView *)v3->_avatarView widthAnchor];
    v24 = [v23 constraintEqualToConstant:25.0];
    v45[6] = v24;
    v25 = [(MFAvatarView *)v3->_avatarView heightAnchor];
    v26 = [v25 constraintEqualToConstant:25.0];
    v45[7] = v26;
    v27 = [NSArray arrayWithObjects:v45 count:8];
    [NSLayoutConstraint activateConstraints:v27];
  }

  return v3;
}

@end
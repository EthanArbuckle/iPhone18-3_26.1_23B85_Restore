@interface AttachmentPreviewCollectionViewCell
- (AttachmentPreviewCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setImage:(id)a3 withAspectRatio:(double)a4;
@end

@implementation AttachmentPreviewCollectionViewCell

- (AttachmentPreviewCollectionViewCell)initWithFrame:(CGRect)a3
{
  v73.receiver = self;
  v73.super_class = AttachmentPreviewCollectionViewCell;
  v3 = [(AttachmentPreviewCollectionViewCell *)&v73 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor tableCellGroupedBackgroundColor];
    v5 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [v5 setBackgroundColor:v4];

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
    v13 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [v13 addSubview:v3->_nameLabel];

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
    v18 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [v18 addSubview:v3->_dateLabel];

    v19 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v3->_imageView;
    v3->_imageView = v19;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:1];
    v21 = [(UIImageView *)v3->_imageView layer];
    [v21 setCornerRadius:5.0];

    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    v22 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [v22 addSubview:v3->_imageView];

    v23 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, 25.0, 25.0];
    avatarView = v3->_avatarView;
    v3->_avatarView = v23;

    [(MFAvatarView *)v3->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = +[UIColor whiteColor];
    v26 = v25;
    v27 = [v25 CGColor];
    v28 = [(MFAvatarView *)v3->_avatarView layer];
    [v28 setBorderColor:v27];

    v29 = [(MFAvatarView *)v3->_avatarView layer];
    [v29 setCornerRadius:12.5];

    v30 = [(MFAvatarView *)v3->_avatarView layer];
    [v30 setBorderWidth:1.0];

    [(MFAvatarView *)v3->_avatarView setClipsToBounds:1];
    v31 = [(MFAvatarView *)v3->_avatarView layer];
    [v31 setMasksToBounds:1];

    v32 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [v32 addSubview:v3->_avatarView];

    v33 = [(AttachmentPreviewCollectionViewCell *)v3 contentView];
    [v33 bringSubviewToFront:v3->_avatarView];

    v72 = [(UILabel *)v3->_dateLabel bottomAnchor];
    v62 = [(AttachmentPreviewCollectionViewCell *)v3 bottomAnchor];
    v61 = [v72 constraintEqualToAnchor:-4.0 constant:?];
    v74[0] = v61;
    v71 = [(UILabel *)v3->_dateLabel centerXAnchor];
    v60 = [(AttachmentPreviewCollectionViewCell *)v3 centerXAnchor];
    v59 = [v71 constraintEqualToAnchor:?];
    v74[1] = v59;
    v70 = [(UILabel *)v3->_dateLabel widthAnchor];
    v58 = [(AttachmentPreviewCollectionViewCell *)v3 widthAnchor];
    v57 = [v70 constraintEqualToAnchor:-5.0 constant:?];
    v74[2] = v57;
    v69 = [(UILabel *)v3->_nameLabel bottomAnchor];
    v56 = [(UILabel *)v3->_dateLabel topAnchor];
    v55 = [v69 constraintEqualToAnchor:?];
    v74[3] = v55;
    v68 = [(UILabel *)v3->_nameLabel centerXAnchor];
    v54 = [(AttachmentPreviewCollectionViewCell *)v3 centerXAnchor];
    v53 = [v68 constraintEqualToAnchor:?];
    v74[4] = v53;
    v67 = [(UILabel *)v3->_nameLabel widthAnchor];
    v52 = [(AttachmentPreviewCollectionViewCell *)v3 widthAnchor];
    v51 = [v67 constraintEqualToAnchor:-5.0 constant:?];
    v74[5] = v51;
    v66 = [(UIImageView *)v3->_imageView topAnchor];
    v50 = [(AttachmentPreviewCollectionViewCell *)v3 topAnchor];
    v49 = [v66 constraintEqualToAnchor:4.0 constant:?];
    v74[6] = v49;
    v65 = [(UIImageView *)v3->_imageView bottomAnchor];
    v48 = [(UILabel *)v3->_nameLabel topAnchor];
    v47 = [v65 constraintEqualToAnchor:-4.0 constant:?];
    v74[7] = v47;
    v64 = [(UIImageView *)v3->_imageView centerXAnchor];
    v46 = [(AttachmentPreviewCollectionViewCell *)v3 centerXAnchor];
    v45 = [v64 constraintEqualToAnchor:?];
    v74[8] = v45;
    v63 = [(MFAvatarView *)v3->_avatarView trailingAnchor];
    v44 = [(UIImageView *)v3->_imageView trailingAnchor];
    v43 = [v63 constraintEqualToAnchor:-10.0 constant:?];
    v74[9] = v43;
    v34 = [(MFAvatarView *)v3->_avatarView topAnchor];
    v35 = [(UIImageView *)v3->_imageView topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:10.0];
    v74[10] = v36;
    v37 = [(MFAvatarView *)v3->_avatarView widthAnchor];
    v38 = [v37 constraintEqualToConstant:25.0];
    v74[11] = v38;
    v39 = [(MFAvatarView *)v3->_avatarView heightAnchor];
    v40 = [v39 constraintEqualToConstant:25.0];
    v74[12] = v40;
    v41 = [NSArray arrayWithObjects:v74 count:13];
    [NSLayoutConstraint activateConstraints:v41];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3 = [(AttachmentPreviewCollectionViewCell *)self nameLabel];
  [v3 setText:0];

  v4 = [(AttachmentPreviewCollectionViewCell *)self dateLabel];
  [v4 setText:0];

  v5 = [(AttachmentPreviewCollectionViewCell *)self imageView];
  [v5 setImage:0];

  v6.receiver = self;
  v6.super_class = AttachmentPreviewCollectionViewCell;
  [(AttachmentPreviewCollectionViewCell *)&v6 prepareForReuse];
}

- (void)setImage:(id)a3 withAspectRatio:(double)a4
{
  v14 = a3;
  v6 = [(AttachmentPreviewCollectionViewCell *)self imageView];
  [v6 setImage:v14];

  v7 = [(AttachmentPreviewCollectionViewCell *)self imageView];
  v8 = [v7 constraints];
  [NSLayoutConstraint deactivateConstraints:v8];

  v9 = [(AttachmentPreviewCollectionViewCell *)self imageView];
  v10 = [v9 widthAnchor];
  v11 = [(AttachmentPreviewCollectionViewCell *)self imageView];
  v12 = [v11 heightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 multiplier:a4];
  [v13 setActive:1];
}

@end
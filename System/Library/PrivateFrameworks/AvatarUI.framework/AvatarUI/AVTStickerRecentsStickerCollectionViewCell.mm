@interface AVTStickerRecentsStickerCollectionViewCell
- (AVTStickerRecentsStickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (CGRect)contentBounds;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShowPrereleaseSticker:(BOOL)sticker;
- (void)setTitle:(id)title;
- (void)setupPrereleaseLabelIfNeeded;
- (void)updateWithDefaultImage;
- (void)updateWithImage:(id)image;
@end

@implementation AVTStickerRecentsStickerCollectionViewCell

- (AVTStickerRecentsStickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = AVTStickerRecentsStickerCollectionViewCell;
  v3 = [(AVTStickerRecentsStickerCollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(AVTStickerRecentsStickerCollectionViewCell *)v3 contentBounds];
    v5 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(AVTStickerRecentsStickerCollectionViewCell *)v3 updateWithDefaultImage];
    [(UIImageView *)v3->_imageView setAccessibilityIgnoresInvertColors:1];
    contentView = [(AVTStickerRecentsStickerCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_imageView];
  }

  return v3;
}

- (void)updateWithDefaultImage
{
  traitCollection = [(AVTStickerRecentsStickerCollectionViewCell *)self traitCollection];
  v3 = AVTFlatSilhouetteImageForTraitCollection(traitCollection);
  [(UIImageView *)self->_imageView setImage:v3];
}

- (CGRect)contentBounds
{
  contentView = [(AVTStickerRecentsStickerCollectionViewCell *)self contentView];
  [contentView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectInset(*&v11, 4.0, 4.0);
}

- (void)setShowPrereleaseSticker:(BOOL)sticker
{
  if (self->_showPrereleaseSticker != sticker)
  {
    stickerCopy = sticker;
    self->_showPrereleaseSticker = sticker;
    if (sticker)
    {
      [(AVTStickerRecentsStickerCollectionViewCell *)self setupPrereleaseLabelIfNeeded];
    }

    prereleaseLabel = [(AVTStickerRecentsStickerCollectionViewCell *)self prereleaseLabel];
    [prereleaseLabel setHidden:!stickerCopy];
  }
}

- (void)setupPrereleaseLabelIfNeeded
{
  prereleaseLabel = [(AVTStickerRecentsStickerCollectionViewCell *)self prereleaseLabel];

  if (!prereleaseLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(AVTStickerRecentsStickerCollectionViewCell *)self bounds];
    v6 = v5 + -15.0;
    [(AVTStickerRecentsStickerCollectionViewCell *)self bounds];
    v7 = [v4 initWithFrame:{0.0, v6}];
    [(UILabel *)v7 setAutoresizingMask:10];
    v8 = AVTAvatarUIBundle();
    v9 = [v8 localizedStringForKey:@"STICKER_PRERELEASE" value:&stru_1F39618F0 table:@"Localized"];
    [(UILabel *)v7 setText:v9];

    [(UILabel *)v7 setUserInteractionEnabled:0];
    [(UILabel *)v7 setTextAlignment:1];
    [(UILabel *)v7 setAdjustsFontSizeToFitWidth:1];
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [(UILabel *)v7 setTextColor:systemRedColor];

    contentView = [(AVTStickerRecentsStickerCollectionViewCell *)self contentView];
    [contentView addSubview:v7];

    prereleaseLabel = self->_prereleaseLabel;
    self->_prereleaseLabel = v7;
  }
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = AVTStickerRecentsStickerCollectionViewCell;
  [(AVTStickerRecentsStickerCollectionViewCell *)&v51 layoutSubviews];
  [(AVTStickerRecentsStickerCollectionViewCell *)self contentBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
  image = [imageView image];
  if (image)
  {
    v13 = image;
    imageView2 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
    image2 = [imageView2 image];
    [image2 size];
    v17 = v16;
    v19 = v18;
    v20 = *MEMORY[0x1E695F060];
    v21 = *(MEMORY[0x1E695F060] + 8);

    if (v17 != v20 || v19 != v21)
    {
      imageView3 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
      image3 = [imageView3 image];
      [image3 size];
      v50 = v25;
      imageView4 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
      image4 = [imageView4 image];
      [image4 size];
      v49 = v28;

      imageView5 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
      image5 = [imageView5 image];
      [image5 size];
      v32 = v31;
      v34 = v33;
      imageView6 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
      image6 = [imageView6 image];
      [image6 size];
      v38 = v37;
      v40 = v39;

      if (v50 <= v49)
      {
        v42 = v8;
        v41 = v8 * v34 / v38;
      }

      else
      {
        v41 = v10;
        v42 = v10 * v32 / v40;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v41 = v10;
  v42 = v8;
LABEL_10:
  imageView7 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
  [imageView7 setFrame:{v4 + (v8 - v42) * 0.5, v6 + (v10 - v41) * 0.5, v42, v41}];

  if ([(AVTStickerRecentsStickerCollectionViewCell *)self showPrereleaseSticker])
  {
    [(AVTStickerRecentsStickerCollectionViewCell *)self bounds];
    v45 = v44 + -15.0;
    [(AVTStickerRecentsStickerCollectionViewCell *)self bounds];
    v47 = v46;
    prereleaseLabel = [(AVTStickerRecentsStickerCollectionViewCell *)self prereleaseLabel];
    [prereleaseLabel setFrame:{0.0, v45, v47, 15.0}];
  }
}

- (void)setTitle:(id)title
{
  if (self->_title != title)
  {
    v4 = [title copy];
    title = self->_title;
    self->_title = v4;

    MEMORY[0x1EEE66BB8](v4, title);
  }
}

- (void)updateWithImage:(id)image
{
  v4 = [MEMORY[0x1E698E298] trimmedImageByTrimmingTransparentPixelsFromImage:image];
  [(UIImageView *)self->_imageView setImage:v4];

  [(AVTStickerRecentsStickerCollectionViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  displaySessionUUID = self->_displaySessionUUID;
  self->_displaySessionUUID = 0;

  title = self->_title;
  self->_title = 0;

  [(AVTStickerRecentsStickerCollectionViewCell *)self setShowPrereleaseSticker:0];
  [(AVTStickerRecentsStickerCollectionViewCell *)self updateWithDefaultImage];
  [(AVTStickerRecentsStickerCollectionViewCell *)self setNeedsLayout];
  v5.receiver = self;
  v5.super_class = AVTStickerRecentsStickerCollectionViewCell;
  [(AVTStickerRecentsStickerCollectionViewCell *)&v5 prepareForReuse];
}

@end
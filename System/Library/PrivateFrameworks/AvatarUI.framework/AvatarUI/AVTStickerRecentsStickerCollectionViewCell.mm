@interface AVTStickerRecentsStickerCollectionViewCell
- (AVTStickerRecentsStickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (CGRect)contentBounds;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShowPrereleaseSticker:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setupPrereleaseLabelIfNeeded;
- (void)updateWithDefaultImage;
- (void)updateWithImage:(id)a3;
@end

@implementation AVTStickerRecentsStickerCollectionViewCell

- (AVTStickerRecentsStickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = AVTStickerRecentsStickerCollectionViewCell;
  v3 = [(AVTStickerRecentsStickerCollectionViewCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(AVTStickerRecentsStickerCollectionViewCell *)v3 contentBounds];
    v5 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(AVTStickerRecentsStickerCollectionViewCell *)v3 updateWithDefaultImage];
    [(UIImageView *)v3->_imageView setAccessibilityIgnoresInvertColors:1];
    v7 = [(AVTStickerRecentsStickerCollectionViewCell *)v3 contentView];
    [v7 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)updateWithDefaultImage
{
  v4 = [(AVTStickerRecentsStickerCollectionViewCell *)self traitCollection];
  v3 = AVTFlatSilhouetteImageForTraitCollection(v4);
  [(UIImageView *)self->_imageView setImage:v3];
}

- (CGRect)contentBounds
{
  v2 = [(AVTStickerRecentsStickerCollectionViewCell *)self contentView];
  [v2 bounds];
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

- (void)setShowPrereleaseSticker:(BOOL)a3
{
  if (self->_showPrereleaseSticker != a3)
  {
    v4 = a3;
    self->_showPrereleaseSticker = a3;
    if (a3)
    {
      [(AVTStickerRecentsStickerCollectionViewCell *)self setupPrereleaseLabelIfNeeded];
    }

    v6 = [(AVTStickerRecentsStickerCollectionViewCell *)self prereleaseLabel];
    [v6 setHidden:!v4];
  }
}

- (void)setupPrereleaseLabelIfNeeded
{
  v3 = [(AVTStickerRecentsStickerCollectionViewCell *)self prereleaseLabel];

  if (!v3)
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
    v10 = [MEMORY[0x1E69DC888] systemRedColor];
    [(UILabel *)v7 setTextColor:v10];

    v11 = [(AVTStickerRecentsStickerCollectionViewCell *)self contentView];
    [v11 addSubview:v7];

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
  v11 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
  v12 = [v11 image];
  if (v12)
  {
    v13 = v12;
    v14 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
    v15 = [v14 image];
    [v15 size];
    v17 = v16;
    v19 = v18;
    v20 = *MEMORY[0x1E695F060];
    v21 = *(MEMORY[0x1E695F060] + 8);

    if (v17 != v20 || v19 != v21)
    {
      v23 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
      v24 = [v23 image];
      [v24 size];
      v50 = v25;
      v26 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
      v27 = [v26 image];
      [v27 size];
      v49 = v28;

      v29 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
      v30 = [v29 image];
      [v30 size];
      v32 = v31;
      v34 = v33;
      v35 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
      v36 = [v35 image];
      [v36 size];
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
  v43 = [(AVTStickerRecentsStickerCollectionViewCell *)self imageView];
  [v43 setFrame:{v4 + (v8 - v42) * 0.5, v6 + (v10 - v41) * 0.5, v42, v41}];

  if ([(AVTStickerRecentsStickerCollectionViewCell *)self showPrereleaseSticker])
  {
    [(AVTStickerRecentsStickerCollectionViewCell *)self bounds];
    v45 = v44 + -15.0;
    [(AVTStickerRecentsStickerCollectionViewCell *)self bounds];
    v47 = v46;
    v48 = [(AVTStickerRecentsStickerCollectionViewCell *)self prereleaseLabel];
    [v48 setFrame:{0.0, v45, v47, 15.0}];
  }
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v4 = [a3 copy];
    title = self->_title;
    self->_title = v4;

    MEMORY[0x1EEE66BB8](v4, title);
  }
}

- (void)updateWithImage:(id)a3
{
  v4 = [MEMORY[0x1E698E298] trimmedImageByTrimmingTransparentPixelsFromImage:a3];
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
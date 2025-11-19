@interface AVTStickerCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)a3;
+ (double)imageInsetForWidth:(double)a3;
- (AVTStickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (AVTStickerCollectionViewCellDelegate)delegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (CGRect)clippingRect;
- (CGRect)stickerViewFrameForImageSize:(CGSize)a3 clippingRect:(CGRect)a4;
- (CGSize)fullImageSize;
- (CGSize)imageSizeFromURL:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)purgeImageContents;
- (void)setClippingRect:(CGRect)a3;
- (void)setDisclosureValidationDelegate:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowPrereleaseSticker:(BOOL)a3;
- (void)setupPrereleaseLabelIfNeeded;
- (void)stickerViewDidBeginPeel:(id)a3;
- (void)stickerViewWasTapped:(id)a3;
- (void)updateWithImage:(id)a3 sticker:(id)a4 animated:(BOOL)a5;
@end

@implementation AVTStickerCollectionViewCell

+ (double)imageInsetForWidth:(double)a3
{
  v3 = a3 <= 120.0;
  result = 5.0;
  if (!v3)
  {
    return 20.0;
  }

  return result;
}

+ (CGPath)selectionPathInBounds:(CGRect)a3
{
  v6 = CGRectInset(a3, 6.0, 6.0);
  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v6.origin.x cornerRadius:{v6.origin.y, v6.size.width, v6.size.height, 16.0}];
  v4 = [v3 CGPath];

  return v4;
}

- (AVTStickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v41.receiver = self;
  v41.super_class = AVTStickerCollectionViewCell;
  v4 = [(AVTStickerCollectionViewCell *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = [(AVTStickerCollectionViewCell *)v4 contentView];
    v7 = [v6 layer];
    [v7 setCornerRadius:12.0];

    v8 = [(AVTStickerCollectionViewCell *)v5 contentView];
    [v8 setClipsToBounds:1];

    [objc_opt_class() imageInsetForWidth:width];
    v10 = v9;
    v11 = [(AVTStickerCollectionViewCell *)v5 contentView];
    [v11 bounds];
    v43 = CGRectInset(v42, v10, v10);
    x = v43.origin.x;
    y = v43.origin.y;
    v14 = v43.size.width;
    height = v43.size.height;

    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, v14, height}];
    [v16 setAlpha:0.0];
    [v16 setContentMode:1];
    [v16 setAutoresizingMask:18];
    v17 = +[AVTUIColorRepository stickerPlaceholderBackgroundColor];
    [v16 setTintColor:v17];

    v18 = [(AVTStickerCollectionViewCell *)v5 contentView];
    [v18 addSubview:v16];

    objc_storeStrong(&v5->_imageView, v16);
    v19 = [AVTMSStickerView alloc];
    v20 = [(AVTStickerCollectionViewCell *)v5 contentView];
    [v20 bounds];
    v21 = [(AVTMSStickerView *)v19 initWithFrame:?];

    [(AVTMSStickerView *)v21 setDelegate:v5];
    [(AVTMSStickerView *)v21 setAlpha:0.0];
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [(AVTMSStickerView *)v21 setBackgroundColor:v22];

    [(AVTMSStickerView *)v21 setAutoresizingMask:18];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, v5);
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __46__AVTStickerCollectionViewCell_initWithFrame___block_invoke;
      v38 = &unk_1E7F3B1D0;
      objc_copyWeak(&v39, &location);
      [(MSStickerView *)v21 setDragPreviewLiftContainerProvider:&v35];
      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    v23 = [(AVTStickerCollectionViewCell *)v5 contentView:v35];
    [v23 addSubview:v21];

    stickerView = v5->_stickerView;
    v5->_stickerView = v21;
    v25 = v21;

    v26 = *(MEMORY[0x1E695F058] + 16);
    v5->_clippingRect.origin = *MEMORY[0x1E695F058];
    v5->_clippingRect.size = v26;
    v27 = objc_alloc_init(MEMORY[0x1E69794A0]);
    v28 = [MEMORY[0x1E69DC888] systemGray3Color];
    -[CAShapeLayer setStrokeColor:](v27, "setStrokeColor:", [v28 CGColor]);

    [(CAShapeLayer *)v27 setLineWidth:3.0];
    v29 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v27, "setFillColor:", [v29 CGColor]);

    [(CAShapeLayer *)v27 setHidden:1];
    selectionLayer = v5->_selectionLayer;
    v5->_selectionLayer = v27;
    v31 = v27;

    v32 = [(AVTStickerCollectionViewCell *)v5 contentView];
    v33 = [v32 layer];
    [v33 addSublayer:v31];
  }

  return v5;
}

id __46__AVTStickerCollectionViewCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 dragPreviewContainerForLiftingStickerInStickerCell:WeakRetained];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowPrereleaseSticker:(BOOL)a3
{
  if (self->_showPrereleaseSticker != a3)
  {
    v4 = a3;
    self->_showPrereleaseSticker = a3;
    if (a3)
    {
      [(AVTStickerCollectionViewCell *)self setupPrereleaseLabelIfNeeded];
    }

    v6 = [(AVTStickerCollectionViewCell *)self prereleaseLabel];
    [v6 setHidden:!v4];
  }
}

- (void)setupPrereleaseLabelIfNeeded
{
  v3 = [(AVTStickerCollectionViewCell *)self prereleaseLabel];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(AVTStickerCollectionViewCell *)self bounds];
    v6 = v5 + -15.0;
    [(AVTStickerCollectionViewCell *)self bounds];
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

    v11 = [(AVTStickerCollectionViewCell *)self contentView];
    [v11 addSubview:v7];

    prereleaseLabel = self->_prereleaseLabel;
    self->_prereleaseLabel = v7;
  }
}

- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate
{
  v2 = [(AVTStickerCollectionViewCell *)self stickerView];
  v3 = [v2 disclosureValidationDelegate];

  return v3;
}

- (void)setDisclosureValidationDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerCollectionViewCell *)self stickerView];
  [v5 setDisclosureValidationDelegate:v4];
}

- (void)setClippingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_clippingRect = &self->_clippingRect;
  if (!CGRectEqualToRect(a3, self->_clippingRect))
  {
    p_clippingRect->origin.x = x;
    p_clippingRect->origin.y = y;
    p_clippingRect->size.width = width;
    p_clippingRect->size.height = height;

    [(AVTStickerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = AVTStickerCollectionViewCell;
  [(AVTStickerCollectionViewCell *)&v36 layoutSubviews];
  v3 = [(AVTStickerCollectionViewCell *)self stickerView];

  if (v3)
  {
    [(AVTStickerCollectionViewCell *)self fullImageSize];
    v5 = v4;
    v7 = v6;
    [(AVTStickerCollectionViewCell *)self clippingRect];
    [(AVTStickerCollectionViewCell *)self stickerViewFrameForImageSize:v5 clippingRect:v7, v8, v9, v10, v11];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(AVTStickerCollectionViewCell *)self stickerView];
    [v20 setFrame:{v13, v15, v17, v19}];

    v21 = [MEMORY[0x1E69DC888] systemGray3Color];
    v22 = [v21 CGColor];
    v23 = [(AVTStickerCollectionViewCell *)self selectionLayer];
    [v23 setStrokeColor:v22];

    v24 = objc_opt_class();
    v25 = [(AVTStickerCollectionViewCell *)self contentView];
    [v25 bounds];
    v26 = [v24 selectionPathInBounds:?];
    v27 = [(AVTStickerCollectionViewCell *)self selectionLayer];
    [v27 setPath:v26];

    if ([(AVTStickerCollectionViewCell *)self showSelectionLayer])
    {
      [(AVTStickerCollectionViewCell *)self frame];
      if (v28 <= 120.0)
      {
        v29 = 10.0;
      }

      else
      {
        v29 = 20.0;
      }

      v30 = [(AVTStickerCollectionViewCell *)self contentView];
      [v30 bounds];
      v38 = CGRectInset(v37, v29, v29);
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;

      v35 = [(AVTStickerCollectionViewCell *)self imageView];
      [v35 setFrame:{x, y, width, height}];
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AVTStickerCollectionViewCell;
  [(AVTStickerCollectionViewCell *)&v6 setSelected:?];
  if ([(AVTStickerCollectionViewCell *)self showSelectionLayer])
  {
    v5 = [(AVTStickerCollectionViewCell *)self selectionLayer];
    [v5 setHidden:!v3];
  }
}

- (CGRect)stickerViewFrameForImageSize:(CGSize)a3 clippingRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(AVTStickerCollectionViewCell *)self contentView:a3.width];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectIsEmpty(v27))
  {
    [(AVTStickerCollectionViewCell *)self fullImageSize];
    if (v19 != *MEMORY[0x1E695F060] || v18 != *(MEMORY[0x1E695F060] + 8))
    {
      [(AVTStickerCollectionViewCell *)self fullImageSize];
      v11 = -(x * (v15 / width));
      v13 = -(y * (v17 / height));
      v15 = v15 / width * v21;
      v17 = v17 / height * v22;
    }
  }

  v23 = v11;
  v24 = v13;
  v25 = v15;
  v26 = v17;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGSize)imageSizeFromURL:(id)a3
{
  v3 = CGImageSourceCreateWithURL(a3, 0);
  if (v3 && (v4 = v3, v5 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0), CFRelease(v4), v5))
  {
    v6 = *MEMORY[0x1E696DEC8];
    v7 = v5;
    v8 = [(__CFDictionary *)v7 valueForKey:v6];
    [v8 floatValue];
    v10 = v9;

    v11 = [(__CFDictionary *)v7 valueForKey:*MEMORY[0x1E696DED8]];
    [v11 floatValue];
    v13 = v12;

    CFRelease(v7);
  }

  else
  {
    v13 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v14 = v13;
  v15 = v10;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)updateWithImage:(id)a3 sticker:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [(AVTStickerCollectionViewCell *)self stickerView];
    v11 = [v10 sticker];

    if (v11 == v9)
    {
      goto LABEL_12;
    }

    v12 = [(AVTStickerCollectionViewCell *)self layer];
    [v12 removeAllAnimations];

    if (v8)
    {
      [v8 size];
      v14 = v13;
      [v8 scale];
      v16 = v14 * v15;
      [v8 size];
      v18 = v17;
      [v8 scale];
      [(AVTStickerCollectionViewCell *)self setFullImageSize:v16, v18 * v19];
    }

    else
    {
      v22 = [v9 imageFileURL];
      [(AVTStickerCollectionViewCell *)self imageSizeFromURL:v22];
      [(AVTStickerCollectionViewCell *)self setFullImageSize:?];
    }

    v23 = [(AVTStickerCollectionViewCell *)self stickerView];
    [v23 setHidden:0];

    v24 = [(AVTStickerCollectionViewCell *)self stickerView];
    [v24 setSticker:v9];

    [(AVTStickerCollectionViewCell *)self setNeedsLayout];
  }

  else
  {
    v20 = [(AVTStickerCollectionViewCell *)self layer];
    [v20 removeAllAnimations];

    if (v8)
    {
      v21 = [(AVTStickerCollectionViewCell *)self imageView];
      [v21 setImage:v8];
    }
  }

  v25 = [(AVTStickerCollectionViewCell *)self stickerViewIsAnimating]| v5;
  [(AVTStickerCollectionViewCell *)self setStickerViewIsAnimating:v25];
  v26 = 0.3;
  if (!v25)
  {
    v26 = 0.0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __65__AVTStickerCollectionViewCell_updateWithImage_sticker_animated___block_invoke;
  v28[3] = &unk_1E7F3B1F8;
  v28[4] = self;
  v29 = v9 != 0;
  v30 = v8 != 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __65__AVTStickerCollectionViewCell_updateWithImage_sticker_animated___block_invoke_2;
  v27[3] = &unk_1E7F3AA80;
  v27[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v28 animations:v27 completion:v26];
LABEL_12:
}

void __65__AVTStickerCollectionViewCell_updateWithImage_sticker_animated___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [*(a1 + 32) stickerView];
  [v4 setAlpha:v3];

  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 41))
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  v5 = [*(a1 + 32) imageView];
  [v5 setAlpha:v2];
}

void __65__AVTStickerCollectionViewCell_updateWithImage_sticker_animated___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setStickerViewIsAnimating:0];
    v3 = [*(a1 + 32) stickerView];
    [v3 alpha];
    v5 = v4 == 0.0;
    v6 = [*(a1 + 32) stickerView];
    [v6 setHidden:v5];

    v7 = [*(a1 + 32) imageView];
    [v7 alpha];
    v9 = v8;

    if (v9 == 0.0)
    {
      v10 = [*(a1 + 32) imageView];
      [v10 setHidden:1];

      v11 = [*(a1 + 32) imageView];
      [v11 setImage:0];
    }
  }
}

- (void)purgeImageContents
{
  v3 = [(AVTStickerCollectionViewCell *)self imageView];
  [v3 setImage:0];

  v4 = [(AVTStickerCollectionViewCell *)self stickerView];
  [v4 setSticker:0];
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = AVTStickerCollectionViewCell;
  [(AVTStickerCollectionViewCell *)&v9 prepareForReuse];
  v3 = [(AVTStickerCollectionViewCell *)self imageView];
  [v3 setHidden:0];

  v4 = [(AVTStickerCollectionViewCell *)self imageView];
  [v4 setImage:0];

  v5 = [(AVTStickerCollectionViewCell *)self imageView];
  [v5 setAlpha:0.0];

  [(AVTStickerCollectionViewCell *)self setClippingRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AVTStickerCollectionViewCell *)self setFullImageSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v6 = [(AVTStickerCollectionViewCell *)self stickerView];
  [v6 setSticker:0];

  v7 = [(AVTStickerCollectionViewCell *)self stickerView];
  [v7 setHidden:1];

  v8 = [(AVTStickerCollectionViewCell *)self stickerView];
  [v8 setAlpha:0.0];
}

- (void)stickerViewDidBeginPeel:(id)a3
{
  v4 = [(AVTStickerCollectionViewCell *)self delegate];

  if (v4)
  {
    v5 = [(AVTStickerCollectionViewCell *)self delegate];
    [v5 stickerCellDidPeelSticker:self];
  }
}

- (void)stickerViewWasTapped:(id)a3
{
  v4 = [(AVTStickerCollectionViewCell *)self delegate];

  if (v4)
  {
    v5 = [(AVTStickerCollectionViewCell *)self delegate];
    [v5 stickerCellDidTapSticker:self];
  }
}

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVTStickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)fullImageSize
{
  width = self->_fullImageSize.width;
  height = self->_fullImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
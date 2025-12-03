@interface AVTStickerCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)bounds;
+ (double)imageInsetForWidth:(double)width;
- (AVTStickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (AVTStickerCollectionViewCellDelegate)delegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (CGRect)clippingRect;
- (CGRect)stickerViewFrameForImageSize:(CGSize)size clippingRect:(CGRect)rect;
- (CGSize)fullImageSize;
- (CGSize)imageSizeFromURL:(id)l;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)purgeImageContents;
- (void)setClippingRect:(CGRect)rect;
- (void)setDisclosureValidationDelegate:(id)delegate;
- (void)setSelected:(BOOL)selected;
- (void)setShowPrereleaseSticker:(BOOL)sticker;
- (void)setupPrereleaseLabelIfNeeded;
- (void)stickerViewDidBeginPeel:(id)peel;
- (void)stickerViewWasTapped:(id)tapped;
- (void)updateWithImage:(id)image sticker:(id)sticker animated:(BOOL)animated;
@end

@implementation AVTStickerCollectionViewCell

+ (double)imageInsetForWidth:(double)width
{
  v3 = width <= 120.0;
  result = 5.0;
  if (!v3)
  {
    return 20.0;
  }

  return result;
}

+ (CGPath)selectionPathInBounds:(CGRect)bounds
{
  v6 = CGRectInset(bounds, 6.0, 6.0);
  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v6.origin.x cornerRadius:{v6.origin.y, v6.size.width, v6.size.height, 16.0}];
  cGPath = [v3 CGPath];

  return cGPath;
}

- (AVTStickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v41.receiver = self;
  v41.super_class = AVTStickerCollectionViewCell;
  v4 = [(AVTStickerCollectionViewCell *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    contentView = [(AVTStickerCollectionViewCell *)v4 contentView];
    layer = [contentView layer];
    [layer setCornerRadius:12.0];

    contentView2 = [(AVTStickerCollectionViewCell *)v5 contentView];
    [contentView2 setClipsToBounds:1];

    [objc_opt_class() imageInsetForWidth:width];
    v10 = v9;
    contentView3 = [(AVTStickerCollectionViewCell *)v5 contentView];
    [contentView3 bounds];
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

    contentView4 = [(AVTStickerCollectionViewCell *)v5 contentView];
    [contentView4 addSubview:v16];

    objc_storeStrong(&v5->_imageView, v16);
    v19 = [AVTMSStickerView alloc];
    contentView5 = [(AVTStickerCollectionViewCell *)v5 contentView];
    [contentView5 bounds];
    v21 = [(AVTMSStickerView *)v19 initWithFrame:?];

    [(AVTMSStickerView *)v21 setDelegate:v5];
    [(AVTMSStickerView *)v21 setAlpha:0.0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AVTMSStickerView *)v21 setBackgroundColor:clearColor];

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
    systemGray3Color = [MEMORY[0x1E69DC888] systemGray3Color];
    -[CAShapeLayer setStrokeColor:](v27, "setStrokeColor:", [systemGray3Color CGColor]);

    [(CAShapeLayer *)v27 setLineWidth:3.0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v27, "setFillColor:", [clearColor2 CGColor]);

    [(CAShapeLayer *)v27 setHidden:1];
    selectionLayer = v5->_selectionLayer;
    v5->_selectionLayer = v27;
    v31 = v27;

    contentView6 = [(AVTStickerCollectionViewCell *)v5 contentView];
    layer2 = [contentView6 layer];
    [layer2 addSublayer:v31];
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

- (void)setShowPrereleaseSticker:(BOOL)sticker
{
  if (self->_showPrereleaseSticker != sticker)
  {
    stickerCopy = sticker;
    self->_showPrereleaseSticker = sticker;
    if (sticker)
    {
      [(AVTStickerCollectionViewCell *)self setupPrereleaseLabelIfNeeded];
    }

    prereleaseLabel = [(AVTStickerCollectionViewCell *)self prereleaseLabel];
    [prereleaseLabel setHidden:!stickerCopy];
  }
}

- (void)setupPrereleaseLabelIfNeeded
{
  prereleaseLabel = [(AVTStickerCollectionViewCell *)self prereleaseLabel];

  if (!prereleaseLabel)
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
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [(UILabel *)v7 setTextColor:systemRedColor];

    contentView = [(AVTStickerCollectionViewCell *)self contentView];
    [contentView addSubview:v7];

    prereleaseLabel = self->_prereleaseLabel;
    self->_prereleaseLabel = v7;
  }
}

- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate
{
  stickerView = [(AVTStickerCollectionViewCell *)self stickerView];
  disclosureValidationDelegate = [stickerView disclosureValidationDelegate];

  return disclosureValidationDelegate;
}

- (void)setDisclosureValidationDelegate:(id)delegate
{
  delegateCopy = delegate;
  stickerView = [(AVTStickerCollectionViewCell *)self stickerView];
  [stickerView setDisclosureValidationDelegate:delegateCopy];
}

- (void)setClippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_clippingRect = &self->_clippingRect;
  if (!CGRectEqualToRect(rect, self->_clippingRect))
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
  stickerView = [(AVTStickerCollectionViewCell *)self stickerView];

  if (stickerView)
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
    stickerView2 = [(AVTStickerCollectionViewCell *)self stickerView];
    [stickerView2 setFrame:{v13, v15, v17, v19}];

    systemGray3Color = [MEMORY[0x1E69DC888] systemGray3Color];
    cGColor = [systemGray3Color CGColor];
    selectionLayer = [(AVTStickerCollectionViewCell *)self selectionLayer];
    [selectionLayer setStrokeColor:cGColor];

    v24 = objc_opt_class();
    contentView = [(AVTStickerCollectionViewCell *)self contentView];
    [contentView bounds];
    v26 = [v24 selectionPathInBounds:?];
    selectionLayer2 = [(AVTStickerCollectionViewCell *)self selectionLayer];
    [selectionLayer2 setPath:v26];

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

      contentView2 = [(AVTStickerCollectionViewCell *)self contentView];
      [contentView2 bounds];
      v38 = CGRectInset(v37, v29, v29);
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;

      imageView = [(AVTStickerCollectionViewCell *)self imageView];
      [imageView setFrame:{x, y, width, height}];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = AVTStickerCollectionViewCell;
  [(AVTStickerCollectionViewCell *)&v6 setSelected:?];
  if ([(AVTStickerCollectionViewCell *)self showSelectionLayer])
  {
    selectionLayer = [(AVTStickerCollectionViewCell *)self selectionLayer];
    [selectionLayer setHidden:!selectedCopy];
  }
}

- (CGRect)stickerViewFrameForImageSize:(CGSize)size clippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(AVTStickerCollectionViewCell *)self contentView:size.width];
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

- (CGSize)imageSizeFromURL:(id)l
{
  v3 = CGImageSourceCreateWithURL(l, 0);
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

- (void)updateWithImage:(id)image sticker:(id)sticker animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  stickerCopy = sticker;
  if (stickerCopy)
  {
    stickerView = [(AVTStickerCollectionViewCell *)self stickerView];
    sticker = [stickerView sticker];

    if (sticker == stickerCopy)
    {
      goto LABEL_12;
    }

    layer = [(AVTStickerCollectionViewCell *)self layer];
    [layer removeAllAnimations];

    if (imageCopy)
    {
      [imageCopy size];
      v14 = v13;
      [imageCopy scale];
      v16 = v14 * v15;
      [imageCopy size];
      v18 = v17;
      [imageCopy scale];
      [(AVTStickerCollectionViewCell *)self setFullImageSize:v16, v18 * v19];
    }

    else
    {
      imageFileURL = [stickerCopy imageFileURL];
      [(AVTStickerCollectionViewCell *)self imageSizeFromURL:imageFileURL];
      [(AVTStickerCollectionViewCell *)self setFullImageSize:?];
    }

    stickerView2 = [(AVTStickerCollectionViewCell *)self stickerView];
    [stickerView2 setHidden:0];

    stickerView3 = [(AVTStickerCollectionViewCell *)self stickerView];
    [stickerView3 setSticker:stickerCopy];

    [(AVTStickerCollectionViewCell *)self setNeedsLayout];
  }

  else
  {
    layer2 = [(AVTStickerCollectionViewCell *)self layer];
    [layer2 removeAllAnimations];

    if (imageCopy)
    {
      imageView = [(AVTStickerCollectionViewCell *)self imageView];
      [imageView setImage:imageCopy];
    }
  }

  v25 = [(AVTStickerCollectionViewCell *)self stickerViewIsAnimating]| animatedCopy;
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
  v29 = stickerCopy != 0;
  v30 = imageCopy != 0;
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
  imageView = [(AVTStickerCollectionViewCell *)self imageView];
  [imageView setImage:0];

  stickerView = [(AVTStickerCollectionViewCell *)self stickerView];
  [stickerView setSticker:0];
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = AVTStickerCollectionViewCell;
  [(AVTStickerCollectionViewCell *)&v9 prepareForReuse];
  imageView = [(AVTStickerCollectionViewCell *)self imageView];
  [imageView setHidden:0];

  imageView2 = [(AVTStickerCollectionViewCell *)self imageView];
  [imageView2 setImage:0];

  imageView3 = [(AVTStickerCollectionViewCell *)self imageView];
  [imageView3 setAlpha:0.0];

  [(AVTStickerCollectionViewCell *)self setClippingRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AVTStickerCollectionViewCell *)self setFullImageSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  stickerView = [(AVTStickerCollectionViewCell *)self stickerView];
  [stickerView setSticker:0];

  stickerView2 = [(AVTStickerCollectionViewCell *)self stickerView];
  [stickerView2 setHidden:1];

  stickerView3 = [(AVTStickerCollectionViewCell *)self stickerView];
  [stickerView3 setAlpha:0.0];
}

- (void)stickerViewDidBeginPeel:(id)peel
{
  delegate = [(AVTStickerCollectionViewCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(AVTStickerCollectionViewCell *)self delegate];
    [delegate2 stickerCellDidPeelSticker:self];
  }
}

- (void)stickerViewWasTapped:(id)tapped
{
  delegate = [(AVTStickerCollectionViewCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(AVTStickerCollectionViewCell *)self delegate];
    [delegate2 stickerCellDidTapSticker:self];
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
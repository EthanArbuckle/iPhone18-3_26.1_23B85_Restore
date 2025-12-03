@interface AVTFunCamAvatarPickerCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)bounds;
- (AVTFunCamAvatarPickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (CGSize)engagedSize;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setImageContentMode:(int64_t)mode;
- (void)setImageInsetProvider:(id)provider;
- (void)setImageZoomFactor:(double)factor;
- (void)setRoundImageCorners:(BOOL)corners;
- (void)setSelected:(BOOL)selected;
- (void)setSelectionVisible:(BOOL)visible;
- (void)updateSelectionLayer;
- (void)updateWithImage:(id)image animated:(BOOL)animated;
- (void)updateWithTintColor:(id)color;
@end

@implementation AVTFunCamAvatarPickerCollectionViewCell

+ (CGPath)selectionPathInBounds:(CGRect)bounds
{
  v6 = CGRectInset(bounds, 1.5, 1.5);
  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v6.origin.x cornerRadius:{v6.origin.y, v6.size.width, v6.size.height, 12.0}];
  cGPath = [v3 CGPath];

  return cGPath;
}

- (AVTFunCamAvatarPickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = AVTFunCamAvatarPickerCollectionViewCell;
  v3 = [(AVTFunCamAvatarPickerCollectionViewCell *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
    v5 = objc_opt_class();
    contentView = [(AVTFunCamAvatarPickerCollectionViewCell *)v3 contentView];
    [contentView bounds];
    -[CAShapeLayer setPath:](v4, "setPath:", [v5 selectionPathInBounds:?]);

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
    -[CAShapeLayer setStrokeColor:](v4, "setStrokeColor:", [v7 CGColor]);

    [(CAShapeLayer *)v4 setLineWidth:3.0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v4, "setFillColor:", [clearColor CGColor]);

    selectionLayer = v3->_selectionLayer;
    v3->_selectionLayer = v4;
    v10 = v4;

    contentView2 = [(AVTFunCamAvatarPickerCollectionViewCell *)v3 contentView];
    layer = [contentView2 layer];
    [layer addSublayer:v10];

    v13 = [AVTUIAnimatingImageView alloc];
    contentView3 = [(AVTFunCamAvatarPickerCollectionViewCell *)v3 contentView];
    [contentView3 bounds];
    v15 = [(AVTUIAnimatingImageView *)v13 initWithFrame:?];

    contentView4 = [(AVTFunCamAvatarPickerCollectionViewCell *)v3 contentView];
    [contentView4 addSubview:v15];

    imageView = v3->_imageView;
    v3->_imageView = v15;
    v18 = v15;

    v19 = [AVTFunCamAvatarPickerStyle insetProviderForConstant:0.0];
    imageInsetProvider = v3->_imageInsetProvider;
    v3->_imageInsetProvider = v19;
  }

  return v3;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = AVTFunCamAvatarPickerCollectionViewCell;
  [(AVTFunCamAvatarPickerCollectionViewCell *)&v36 layoutSubviews];
  v3 = objc_opt_class();
  contentView = [(AVTFunCamAvatarPickerCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = [v3 selectionPathInBounds:?];
  selectionLayer = [(AVTFunCamAvatarPickerCollectionViewCell *)self selectionLayer];
  [selectionLayer setPath:v5];

  [(AVTFunCamAvatarPickerCollectionViewCell *)self updateSelectionLayer];
  contentView2 = [(AVTFunCamAvatarPickerCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if ([(AVTFunCamAvatarPickerCollectionViewCell *)self showsTitle])
  {
    v15 = v15 + -14.0;
  }

  imageInsetProvider = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageInsetProvider];
  contentView3 = [(AVTFunCamAvatarPickerCollectionViewCell *)self contentView];
  [contentView3 bounds];
  Width = CGRectGetWidth(v37);
  v19 = imageInsetProvider[2](imageInsetProvider, Width);

  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  v39 = CGRectInset(v38, v19, v19);
  v20 = v39.size.width;
  height = v39.size.height;
  v22 = *MEMORY[0x1E695EFF8];
  v23 = *(MEMORY[0x1E695EFF8] + 8);
  UIRectGetCenter();
  v25 = v24;
  v27 = v26;
  imageView = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [imageView bounds];
  v41.origin.x = v22;
  v41.origin.y = v23;
  v41.size.width = v20;
  v41.size.height = height;
  LOBYTE(contentView3) = CGRectEqualToRect(v40, v41);

  if ((contentView3 & 1) == 0)
  {
    imageView2 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    [imageView2 setBounds:{v22, v23, v20, height}];
  }

  imageView3 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [imageView3 center];
  v32 = v31;
  v34 = v33;

  if (v32 != v25 || v34 != v27)
  {
    imageView4 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    [imageView4 setCenter:{v25, v27}];
  }
}

- (void)updateWithImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  imageView = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [imageView setImage:imageCopy animated:animatedCopy];
}

- (void)updateWithTintColor:(id)color
{
  colorCopy = color;
  imageView = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [imageView setTintColor:colorCopy];
}

- (void)setSelectionVisible:(BOOL)visible
{
  if (self->_selectionVisible != visible)
  {
    self->_selectionVisible = visible;
    [(AVTFunCamAvatarPickerCollectionViewCell *)self updateSelectionLayer];
  }
}

- (void)setImageInsetProvider:(id)provider
{
  if (self->_imageInsetProvider != provider)
  {
    v4 = [provider copy];
    imageInsetProvider = self->_imageInsetProvider;
    self->_imageInsetProvider = v4;

    [(AVTFunCamAvatarPickerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setImageZoomFactor:(double)factor
{
  if (factor == 1.0)
  {
    imageView = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    v5 = imageView;
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v9 = *MEMORY[0x1E695EFD0];
    v10 = v6;
    v7 = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v8, factor, factor);
    imageView = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    v5 = imageView;
    v9 = *&v8.a;
    v10 = *&v8.c;
    v7 = *&v8.tx;
  }

  v11 = v7;
  [imageView setTransform:&v9];
}

- (void)setImageContentMode:(int64_t)mode
{
  if (self->_imageContentMode != mode)
  {
    self->_imageContentMode = mode;
    imageView = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    [imageView setContentMode:mode];
  }
}

- (void)setRoundImageCorners:(BOOL)corners
{
  if (self->_roundImageCorners != corners)
  {
    self->_roundImageCorners = corners;
    imageView = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    v6 = imageView;
    v5 = 0.0;
    if (self->_roundImageCorners)
    {
      v5 = 6.0;
    }

    [imageView setContinuousCornerRadius:v5];
  }
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = AVTFunCamAvatarPickerCollectionViewCell;
  [(AVTFunCamAvatarPickerCollectionViewCell *)&v4 setSelected:selected];
  [(AVTFunCamAvatarPickerCollectionViewCell *)self updateSelectionLayer];
}

- (void)updateSelectionLayer
{
  v3 = 0.0;
  if ([(AVTFunCamAvatarPickerCollectionViewCell *)self selectionVisible])
  {
    if ([(AVTFunCamAvatarPickerCollectionViewCell *)self isSelected])
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  selectionLayer = [(AVTFunCamAvatarPickerCollectionViewCell *)self selectionLayer];
  *&v5 = v3;
  [selectionLayer setOpacity:v5];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = AVTFunCamAvatarPickerCollectionViewCell;
  [(AVTFunCamAvatarPickerCollectionViewCell *)&v8 prepareForReuse];
  [(AVTFunCamAvatarPickerCollectionViewCell *)self setImageZoomFactor:1.0];
  imageView = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [imageView setImage:0];

  v4 = [AVTFunCamAvatarPickerStyle insetProviderForConstant:0.0];
  [(AVTFunCamAvatarPickerCollectionViewCell *)self setImageInsetProvider:v4];

  imageView2 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  tintColor = [imageView2 tintColor];

  if (tintColor)
  {
    imageView3 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    [imageView3 setTintColor:0];
  }
}

- (CGSize)engagedSize
{
  width = self->_engagedSize.width;
  height = self->_engagedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
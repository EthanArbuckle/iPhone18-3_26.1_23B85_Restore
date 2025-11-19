@interface AVTFunCamAvatarPickerCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)a3;
- (AVTFunCamAvatarPickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (CGSize)engagedSize;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setImageContentMode:(int64_t)a3;
- (void)setImageInsetProvider:(id)a3;
- (void)setImageZoomFactor:(double)a3;
- (void)setRoundImageCorners:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectionVisible:(BOOL)a3;
- (void)updateSelectionLayer;
- (void)updateWithImage:(id)a3 animated:(BOOL)a4;
- (void)updateWithTintColor:(id)a3;
@end

@implementation AVTFunCamAvatarPickerCollectionViewCell

+ (CGPath)selectionPathInBounds:(CGRect)a3
{
  v6 = CGRectInset(a3, 1.5, 1.5);
  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v6.origin.x cornerRadius:{v6.origin.y, v6.size.width, v6.size.height, 12.0}];
  v4 = [v3 CGPath];

  return v4;
}

- (AVTFunCamAvatarPickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = AVTFunCamAvatarPickerCollectionViewCell;
  v3 = [(AVTFunCamAvatarPickerCollectionViewCell *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
    v5 = objc_opt_class();
    v6 = [(AVTFunCamAvatarPickerCollectionViewCell *)v3 contentView];
    [v6 bounds];
    -[CAShapeLayer setPath:](v4, "setPath:", [v5 selectionPathInBounds:?]);

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
    -[CAShapeLayer setStrokeColor:](v4, "setStrokeColor:", [v7 CGColor]);

    [(CAShapeLayer *)v4 setLineWidth:3.0];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v4, "setFillColor:", [v8 CGColor]);

    selectionLayer = v3->_selectionLayer;
    v3->_selectionLayer = v4;
    v10 = v4;

    v11 = [(AVTFunCamAvatarPickerCollectionViewCell *)v3 contentView];
    v12 = [v11 layer];
    [v12 addSublayer:v10];

    v13 = [AVTUIAnimatingImageView alloc];
    v14 = [(AVTFunCamAvatarPickerCollectionViewCell *)v3 contentView];
    [v14 bounds];
    v15 = [(AVTUIAnimatingImageView *)v13 initWithFrame:?];

    v16 = [(AVTFunCamAvatarPickerCollectionViewCell *)v3 contentView];
    [v16 addSubview:v15];

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
  v4 = [(AVTFunCamAvatarPickerCollectionViewCell *)self contentView];
  [v4 bounds];
  v5 = [v3 selectionPathInBounds:?];
  v6 = [(AVTFunCamAvatarPickerCollectionViewCell *)self selectionLayer];
  [v6 setPath:v5];

  [(AVTFunCamAvatarPickerCollectionViewCell *)self updateSelectionLayer];
  v7 = [(AVTFunCamAvatarPickerCollectionViewCell *)self contentView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if ([(AVTFunCamAvatarPickerCollectionViewCell *)self showsTitle])
  {
    v15 = v15 + -14.0;
  }

  v16 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageInsetProvider];
  v17 = [(AVTFunCamAvatarPickerCollectionViewCell *)self contentView];
  [v17 bounds];
  Width = CGRectGetWidth(v37);
  v19 = v16[2](v16, Width);

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
  v28 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [v28 bounds];
  v41.origin.x = v22;
  v41.origin.y = v23;
  v41.size.width = v20;
  v41.size.height = height;
  LOBYTE(v17) = CGRectEqualToRect(v40, v41);

  if ((v17 & 1) == 0)
  {
    v29 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    [v29 setBounds:{v22, v23, v20, height}];
  }

  v30 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [v30 center];
  v32 = v31;
  v34 = v33;

  if (v32 != v25 || v34 != v27)
  {
    v35 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    [v35 setCenter:{v25, v27}];
  }
}

- (void)updateWithImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [v7 setImage:v6 animated:v4];
}

- (void)updateWithTintColor:(id)a3
{
  v4 = a3;
  v5 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [v5 setTintColor:v4];
}

- (void)setSelectionVisible:(BOOL)a3
{
  if (self->_selectionVisible != a3)
  {
    self->_selectionVisible = a3;
    [(AVTFunCamAvatarPickerCollectionViewCell *)self updateSelectionLayer];
  }
}

- (void)setImageInsetProvider:(id)a3
{
  if (self->_imageInsetProvider != a3)
  {
    v4 = [a3 copy];
    imageInsetProvider = self->_imageInsetProvider;
    self->_imageInsetProvider = v4;

    [(AVTFunCamAvatarPickerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setImageZoomFactor:(double)a3
{
  if (a3 == 1.0)
  {
    v4 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    v5 = v4;
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v9 = *MEMORY[0x1E695EFD0];
    v10 = v6;
    v7 = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v8, a3, a3);
    v4 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    v5 = v4;
    v9 = *&v8.a;
    v10 = *&v8.c;
    v7 = *&v8.tx;
  }

  v11 = v7;
  [v4 setTransform:&v9];
}

- (void)setImageContentMode:(int64_t)a3
{
  if (self->_imageContentMode != a3)
  {
    self->_imageContentMode = a3;
    v5 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    [v5 setContentMode:a3];
  }
}

- (void)setRoundImageCorners:(BOOL)a3
{
  if (self->_roundImageCorners != a3)
  {
    self->_roundImageCorners = a3;
    v4 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    v6 = v4;
    v5 = 0.0;
    if (self->_roundImageCorners)
    {
      v5 = 6.0;
    }

    [v4 setContinuousCornerRadius:v5];
  }
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVTFunCamAvatarPickerCollectionViewCell;
  [(AVTFunCamAvatarPickerCollectionViewCell *)&v4 setSelected:a3];
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
  v4 = [(AVTFunCamAvatarPickerCollectionViewCell *)self selectionLayer];
  *&v5 = v3;
  [v4 setOpacity:v5];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = AVTFunCamAvatarPickerCollectionViewCell;
  [(AVTFunCamAvatarPickerCollectionViewCell *)&v8 prepareForReuse];
  [(AVTFunCamAvatarPickerCollectionViewCell *)self setImageZoomFactor:1.0];
  v3 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  [v3 setImage:0];

  v4 = [AVTFunCamAvatarPickerStyle insetProviderForConstant:0.0];
  [(AVTFunCamAvatarPickerCollectionViewCell *)self setImageInsetProvider:v4];

  v5 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
  v6 = [v5 tintColor];

  if (v6)
  {
    v7 = [(AVTFunCamAvatarPickerCollectionViewCell *)self imageView];
    [v7 setTintColor:0];
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
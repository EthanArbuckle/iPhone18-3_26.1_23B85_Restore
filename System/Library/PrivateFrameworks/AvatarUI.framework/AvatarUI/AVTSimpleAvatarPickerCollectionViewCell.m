@interface AVTSimpleAvatarPickerCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)a3;
+ (double)imageInsetForInsetSize:(unint64_t)a3;
- (AVTSimpleAvatarPickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (BOOL)shouldShowSelectionLayer;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageInsetSize:(unint64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateHighlightedState:(BOOL)a3 animated:(BOOL)a4;
- (void)updateSelectionLayerOpacityAnimated:(BOOL)a3;
- (void)updateWithImage:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTSimpleAvatarPickerCollectionViewCell

+ (CGPath)selectionPathInBounds:(CGRect)a3
{
  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:a3.origin.x cornerRadius:{a3.origin.y, a3.size.width, a3.size.height, 12.0}];
  v4 = [v3 CGPath];

  return v4;
}

+ (double)imageInsetForInsetSize:(unint64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    result = 6.0;
  }

  if (a3 == 1)
  {
    return 4.0;
  }

  return result;
}

- (AVTSimpleAvatarPickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  v3 = [(AVTSimpleAvatarPickerCollectionViewCell *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [(AVTSimpleAvatarPickerCollectionViewCell *)v3 contentView];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];

    v7 = *MEMORY[0x1E69796E8];
    v8 = [(UIView *)v6 layer];
    [v8 setCornerCurve:v7];

    v9 = [(UIView *)v6 layer];
    [v9 setCornerRadius:12.0];

    v10 = +[AVTUIColorRepository simplePickerSelectedBackground];
    [(UIView *)v6 setBackgroundColor:v10];

    [(UIView *)v6 setAutoresizingMask:18];
    [(UIView *)v6 setAlpha:0.0];
    v11 = [(AVTSimpleAvatarPickerCollectionViewCell *)v3 contentView];
    [v11 addSubview:v6];

    selectionLayer = v3->_selectionLayer;
    v3->_selectionLayer = v6;
    v13 = v6;

    v14 = [AVTUIAnimatingImageView alloc];
    v15 = [(AVTSimpleAvatarPickerCollectionViewCell *)v3 contentView];
    [v15 bounds];
    v16 = [(AVTUIAnimatingImageView *)v14 initWithFrame:?];

    [(AVTUIAnimatingImageView *)v16 setContentMode:1];
    v17 = [(AVTUIAnimatingImageView *)v16 layer];
    [v17 setCornerCurve:v7];

    v18 = [(AVTUIAnimatingImageView *)v16 layer];
    [v18 setCornerRadius:10.0];

    v19 = [(AVTUIAnimatingImageView *)v16 layer];
    [v19 setMasksToBounds:1];

    v20 = [(AVTSimpleAvatarPickerCollectionViewCell *)v3 contentView];
    [v20 addSubview:v16];

    imageView = v3->_imageView;
    v3->_imageView = v16;
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  [(AVTSimpleAvatarPickerCollectionViewCell *)&v11 layoutSubviews];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateSelectionLayerOpacityAnimated:1];
  [objc_opt_class() imageInsetForInsetSize:{-[AVTSimpleAvatarPickerCollectionViewCell imageInsetSize](self, "imageInsetSize")}];
  v4 = v3;
  v5 = [(AVTSimpleAvatarPickerCollectionViewCell *)self contentView];
  [v5 bounds];
  v13 = CGRectInset(v12, v4, v4);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;

  v10 = [(AVTSimpleAvatarPickerCollectionViewCell *)self imageView];
  [v10 setFrame:{x, y, width, height}];
}

- (BOOL)shouldShowSelectionLayer
{
  v3 = [(AVTSimpleAvatarPickerCollectionViewCell *)self showSelectedState];
  if (v3)
  {
    if (([(AVTSimpleAvatarPickerCollectionViewCell *)self isSelected]& 1) != 0)
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(AVTSimpleAvatarPickerCollectionViewCell *)self isHighlighted];
    }
  }

  return v3;
}

- (void)updateSelectionLayerOpacityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTSimpleAvatarPickerCollectionViewCell *)self shouldShowSelectionLayer];
  v6 = 0.0;
  v7 = 1.0;
  if (!v5)
  {
    v7 = 0.0;
  }

  v8[1] = 3221225472;
  v8[0] = MEMORY[0x1E69E9820];
  v8[2] = __79__AVTSimpleAvatarPickerCollectionViewCell_updateSelectionLayerOpacityAnimated___block_invoke;
  v8[3] = &unk_1E7F3C300;
  if (v3)
  {
    v6 = 0.3;
  }

  v8[4] = self;
  *&v8[5] = v7;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v8 usingSpringWithDamping:0 initialSpringVelocity:v6 options:0.0 animations:0.95 completion:0.0];
}

void __79__AVTSimpleAvatarPickerCollectionViewCell_updateSelectionLayerOpacityAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) selectionLayer];
  [v2 setAlpha:v1];
}

- (void)updateWithImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTSimpleAvatarPickerCollectionViewCell *)self imageView];
  [v7 setImage:v6 animated:v4];
}

- (void)setSelected:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  [(AVTSimpleAvatarPickerCollectionViewCell *)&v5 setSelected:a3];
  [MEMORY[0x1E69DD250] inheritedAnimationDuration];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateSelectionLayerOpacityAnimated:v4 > 0.0];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  [(AVTSimpleAvatarPickerCollectionViewCell *)&v5 setHighlighted:?];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateHighlightedState:v3 animated:1];
}

- (void)setImageInsetSize:(unint64_t)a3
{
  if (self->_imageInsetSize != a3)
  {
    self->_imageInsetSize = a3;
    [(AVTSimpleAvatarPickerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  [(AVTSimpleAvatarPickerCollectionViewCell *)&v4 prepareForReuse];
  v3 = [(AVTSimpleAvatarPickerCollectionViewCell *)self imageView];
  [v3 setImage:0];

  [(AVTSimpleAvatarPickerCollectionViewCell *)self setImageInsetSize:0];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateHighlightedState:0 animated:0];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateSelectionLayerOpacityAnimated:0];
}

- (void)updateHighlightedState:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVTSimpleAvatarPickerCollectionViewCell_updateHighlightedState_animated___block_invoke;
  block[3] = &unk_1E7F3B910;
  block[4] = self;
  v16 = a4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  memset(&v14, 0, sizeof(v14));
  if (v5)
  {
    CGAffineTransformMakeScale(&v14, 0.93, 0.93);
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, 1.03, 1.03);
  }

  else
  {
    v7 = *MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 32);
    *&v14.c = *(MEMORY[0x1E695EFD0] + 16);
    *&v14.tx = v8;
    *&v13.a = v7;
    *&v13.c = *&v14.c;
    *&v13.tx = v8;
    *&v14.a = v7;
  }

  v9 = 0.3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  if (!v4)
  {
    v9 = 0.0;
  }

  v11 = v14;
  v12 = v13;
  v10[2] = __75__AVTSimpleAvatarPickerCollectionViewCell_updateHighlightedState_animated___block_invoke_2;
  v10[3] = &unk_1E7F3C328;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:v9 options:0.0 animations:0.95 completion:0.0];
}

void __75__AVTSimpleAvatarPickerCollectionViewCell_updateHighlightedState_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v2;
  v10 = *(a1 + 72);
  v3 = [*(a1 + 32) imageView];
  [v3 setTransform:&v8];

  v5 = *(a1 + 88);
  v6 = *(a1 + 104);
  v7 = *(a1 + 120);
  v4 = [*(a1 + 32) selectionLayer];
  v8 = v5;
  v9 = v6;
  v10 = v7;
  [v4 setTransform:&v8];
}

@end
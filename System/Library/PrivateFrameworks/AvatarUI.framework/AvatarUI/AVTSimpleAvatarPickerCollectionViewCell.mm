@interface AVTSimpleAvatarPickerCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)bounds;
+ (double)imageInsetForInsetSize:(unint64_t)size;
- (AVTSimpleAvatarPickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (BOOL)shouldShowSelectionLayer;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageInsetSize:(unint64_t)size;
- (void)setSelected:(BOOL)selected;
- (void)updateHighlightedState:(BOOL)state animated:(BOOL)animated;
- (void)updateSelectionLayerOpacityAnimated:(BOOL)animated;
- (void)updateWithImage:(id)image animated:(BOOL)animated;
@end

@implementation AVTSimpleAvatarPickerCollectionViewCell

+ (CGPath)selectionPathInBounds:(CGRect)bounds
{
  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:bounds.origin.x cornerRadius:{bounds.origin.y, bounds.size.width, bounds.size.height, 12.0}];
  cGPath = [v3 CGPath];

  return cGPath;
}

+ (double)imageInsetForInsetSize:(unint64_t)size
{
  result = 0.0;
  if (size == 2)
  {
    result = 6.0;
  }

  if (size == 1)
  {
    return 4.0;
  }

  return result;
}

- (AVTSimpleAvatarPickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  v3 = [(AVTSimpleAvatarPickerCollectionViewCell *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    contentView = [(AVTSimpleAvatarPickerCollectionViewCell *)v3 contentView];
    [contentView bounds];
    v6 = [v4 initWithFrame:?];

    v7 = *MEMORY[0x1E69796E8];
    layer = [(UIView *)v6 layer];
    [layer setCornerCurve:v7];

    layer2 = [(UIView *)v6 layer];
    [layer2 setCornerRadius:12.0];

    v10 = +[AVTUIColorRepository simplePickerSelectedBackground];
    [(UIView *)v6 setBackgroundColor:v10];

    [(UIView *)v6 setAutoresizingMask:18];
    [(UIView *)v6 setAlpha:0.0];
    contentView2 = [(AVTSimpleAvatarPickerCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v6];

    selectionLayer = v3->_selectionLayer;
    v3->_selectionLayer = v6;
    v13 = v6;

    v14 = [AVTUIAnimatingImageView alloc];
    contentView3 = [(AVTSimpleAvatarPickerCollectionViewCell *)v3 contentView];
    [contentView3 bounds];
    v16 = [(AVTUIAnimatingImageView *)v14 initWithFrame:?];

    [(AVTUIAnimatingImageView *)v16 setContentMode:1];
    layer3 = [(AVTUIAnimatingImageView *)v16 layer];
    [layer3 setCornerCurve:v7];

    layer4 = [(AVTUIAnimatingImageView *)v16 layer];
    [layer4 setCornerRadius:10.0];

    layer5 = [(AVTUIAnimatingImageView *)v16 layer];
    [layer5 setMasksToBounds:1];

    contentView4 = [(AVTSimpleAvatarPickerCollectionViewCell *)v3 contentView];
    [contentView4 addSubview:v16];

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
  contentView = [(AVTSimpleAvatarPickerCollectionViewCell *)self contentView];
  [contentView bounds];
  v13 = CGRectInset(v12, v4, v4);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;

  imageView = [(AVTSimpleAvatarPickerCollectionViewCell *)self imageView];
  [imageView setFrame:{x, y, width, height}];
}

- (BOOL)shouldShowSelectionLayer
{
  showSelectedState = [(AVTSimpleAvatarPickerCollectionViewCell *)self showSelectedState];
  if (showSelectedState)
  {
    if (([(AVTSimpleAvatarPickerCollectionViewCell *)self isSelected]& 1) != 0)
    {
      LOBYTE(showSelectedState) = 1;
    }

    else
    {

      LOBYTE(showSelectedState) = [(AVTSimpleAvatarPickerCollectionViewCell *)self isHighlighted];
    }
  }

  return showSelectedState;
}

- (void)updateSelectionLayerOpacityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  shouldShowSelectionLayer = [(AVTSimpleAvatarPickerCollectionViewCell *)self shouldShowSelectionLayer];
  v6 = 0.0;
  v7 = 1.0;
  if (!shouldShowSelectionLayer)
  {
    v7 = 0.0;
  }

  v8[1] = 3221225472;
  v8[0] = MEMORY[0x1E69E9820];
  v8[2] = __79__AVTSimpleAvatarPickerCollectionViewCell_updateSelectionLayerOpacityAnimated___block_invoke;
  v8[3] = &unk_1E7F3C300;
  if (animatedCopy)
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

- (void)updateWithImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  imageView = [(AVTSimpleAvatarPickerCollectionViewCell *)self imageView];
  [imageView setImage:imageCopy animated:animatedCopy];
}

- (void)setSelected:(BOOL)selected
{
  v5.receiver = self;
  v5.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  [(AVTSimpleAvatarPickerCollectionViewCell *)&v5 setSelected:selected];
  [MEMORY[0x1E69DD250] inheritedAnimationDuration];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateSelectionLayerOpacityAnimated:v4 > 0.0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  [(AVTSimpleAvatarPickerCollectionViewCell *)&v5 setHighlighted:?];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateHighlightedState:highlightedCopy animated:1];
}

- (void)setImageInsetSize:(unint64_t)size
{
  if (self->_imageInsetSize != size)
  {
    self->_imageInsetSize = size;
    [(AVTSimpleAvatarPickerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AVTSimpleAvatarPickerCollectionViewCell;
  [(AVTSimpleAvatarPickerCollectionViewCell *)&v4 prepareForReuse];
  imageView = [(AVTSimpleAvatarPickerCollectionViewCell *)self imageView];
  [imageView setImage:0];

  [(AVTSimpleAvatarPickerCollectionViewCell *)self setImageInsetSize:0];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateHighlightedState:0 animated:0];
  [(AVTSimpleAvatarPickerCollectionViewCell *)self updateSelectionLayerOpacityAnimated:0];
}

- (void)updateHighlightedState:(BOOL)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVTSimpleAvatarPickerCollectionViewCell_updateHighlightedState_animated___block_invoke;
  block[3] = &unk_1E7F3B910;
  block[4] = self;
  animatedCopy2 = animated;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  memset(&v14, 0, sizeof(v14));
  if (stateCopy)
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
  if (!animatedCopy)
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
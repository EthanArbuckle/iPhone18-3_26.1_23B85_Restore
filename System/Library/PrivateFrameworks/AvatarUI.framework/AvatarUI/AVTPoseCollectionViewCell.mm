@interface AVTPoseCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)a3;
- (AVTPoseCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)cancelAnimations;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateImage:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTPoseCollectionViewCell

+ (CGPath)selectionPathInBounds:(CGRect)a3
{
  v6 = CGRectInset(a3, 6.0, 6.0);
  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v6.origin.x cornerRadius:{v6.origin.y, v6.size.width, v6.size.height, 16.0}];
  v4 = [v3 CGPath];

  return v4;
}

- (AVTPoseCollectionViewCell)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = AVTPoseCollectionViewCell;
  v3 = [(AVTPoseCollectionViewCell *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(AVTPoseCollectionViewCell *)v3 bounds];
    v18 = CGRectInset(v17, 10.0, 10.0);
    v5 = [v4 initWithFrame:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(UIImageView *)v3->_imageView setAccessibilityIgnoresInvertColors:1];
    v7 = [(AVTPoseCollectionViewCell *)v3 contentView];
    [v7 addSubview:v3->_imageView];

    v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
    v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    -[CAShapeLayer setStrokeColor:](v8, "setStrokeColor:", [v9 CGColor]);

    [(CAShapeLayer *)v8 setLineWidth:3.0];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v8, "setFillColor:", [v10 CGColor]);

    [(CAShapeLayer *)v8 setHidden:1];
    selectionLayer = v3->_selectionLayer;
    v3->_selectionLayer = v8;
    v12 = v8;

    v13 = [(AVTPoseCollectionViewCell *)v3 contentView];
    v14 = [v13 layer];
    [v14 addSublayer:v12];
  }

  return v3;
}

- (void)updateImage:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(AVTPoseCollectionViewCell *)self contextIdentifier];
  v8 = [(AVTPoseCollectionViewCell *)self image];

  if (v8 != v6)
  {
    if (v6)
    {
      if (a4)
      {
        v9 = objc_alloc(MEMORY[0x1E69DD278]);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __50__AVTPoseCollectionViewCell_updateImage_animated___block_invoke;
        v32[3] = &unk_1E7F3A9B8;
        v32[4] = self;
        v10 = [v9 initWithDuration:0 curve:v32 animations:0.15];
        [(AVTPoseCollectionViewCell *)self setScaleDownTransformAnimator:v10];

        v11 = objc_alloc(MEMORY[0x1E69DD278]);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __50__AVTPoseCollectionViewCell_updateImage_animated___block_invoke_2;
        v31[3] = &unk_1E7F3A9B8;
        v31[4] = self;
        v12 = [v11 initWithDuration:v31 dampingRatio:0.5 animations:0.6];
        [(AVTPoseCollectionViewCell *)self setScaleUpWithBounceTransformAnimator:v12];

        objc_initWeak(&location, self);
        v13 = [(AVTPoseCollectionViewCell *)self scaleDownTransformAnimator];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __50__AVTPoseCollectionViewCell_updateImage_animated___block_invoke_3;
        v26[3] = &unk_1E7F3BBB8;
        objc_copyWeak(&v29, &location);
        v14 = v7;
        v27 = v14;
        v28 = v6;
        [v13 addCompletion:v26];

        v15 = [(AVTPoseCollectionViewCell *)self scaleUpWithBounceTransformAnimator];
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __50__AVTPoseCollectionViewCell_updateImage_animated___block_invoke_4;
        v23 = &unk_1E7F3BBE0;
        objc_copyWeak(&v25, &location);
        v24 = v14;
        [v15 addCompletion:&v20];

        v16 = [(AVTPoseCollectionViewCell *)self scaleDownTransformAnimator:v20];
        [v16 startAnimation];

        objc_destroyWeak(&v25);
        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
        goto LABEL_8;
      }

      v17 = [(AVTPoseCollectionViewCell *)self imageView];
      v18 = v17;
      v19 = v6;
    }

    else
    {
      v17 = [(AVTPoseCollectionViewCell *)self imageView];
      v18 = v17;
      v19 = 0;
    }

    [v17 setImage:v19];
  }

LABEL_8:
}

void __50__AVTPoseCollectionViewCell_updateImage_animated___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 0.2, 0.2);
  v2 = [*(a1 + 32) imageView];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __50__AVTPoseCollectionViewCell_updateImage_animated___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) imageView];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

void __50__AVTPoseCollectionViewCell_updateImage_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = [WeakRetained contextIdentifier];

  if (v3 == v4)
  {
    v5 = *(a1 + 40);
    v6 = [WeakRetained imageView];
    [v6 setImage:v5];

    CGAffineTransformMakeScale(&v10, 0.2, 0.2);
    v7 = [WeakRetained imageView];
    v9 = v10;
    [v7 setTransform:&v9];

    v8 = [WeakRetained scaleUpWithBounceTransformAnimator];
    [v8 startAnimation];
  }

  else
  {
    [WeakRetained cancelAnimations];
  }
}

void __50__AVTPoseCollectionViewCell_updateImage_animated___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  v4 = [WeakRetained contextIdentifier];

  if (v3 == v4)
  {
    [v5 setScaleDownTransformAnimator:0];
    [v5 setScaleUpWithBounceTransformAnimator:0];
  }

  else
  {
    [v5 cancelAnimations];
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AVTPoseCollectionViewCell;
  [(AVTPoseCollectionViewCell *)&v7 layoutSubviews];
  v3 = objc_opt_class();
  v4 = [(AVTPoseCollectionViewCell *)self contentView];
  [v4 bounds];
  v5 = [v3 selectionPathInBounds:?];
  v6 = [(AVTPoseCollectionViewCell *)self selectionLayer];
  [v6 setPath:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = AVTPoseCollectionViewCell;
  v4 = a3;
  [(AVTPoseCollectionViewCell *)&v11 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(AVTPoseCollectionViewCell *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v9 = [v8 CGColor];
    v10 = [(AVTPoseCollectionViewCell *)self selectionLayer];
    [v10 setStrokeColor:v9];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AVTPoseCollectionViewCell;
  [(AVTPoseCollectionViewCell *)&v6 setSelected:?];
  v5 = [(AVTPoseCollectionViewCell *)self selectionLayer];
  [v5 setHidden:!v3];
}

- (void)cancelAnimations
{
  v3 = [(AVTPoseCollectionViewCell *)self scaleDownTransformAnimator];
  [v3 stopAnimation:1];

  v4 = [(AVTPoseCollectionViewCell *)self scaleUpWithBounceTransformAnimator];
  [v4 stopAnimation:1];

  [(AVTPoseCollectionViewCell *)self setScaleDownTransformAnimator:0];
  [(AVTPoseCollectionViewCell *)self setScaleUpWithBounceTransformAnimator:0];
  v5 = [(AVTPoseCollectionViewCell *)self imageView];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v5 setTransform:v8];

  v7 = [(AVTPoseCollectionViewCell *)self imageView];
  [v7 setImage:0];
}

- (void)prepareForReuse
{
  [(AVTPoseCollectionViewCell *)self cancelAnimations];
  v3.receiver = self;
  v3.super_class = AVTPoseCollectionViewCell;
  [(AVTPoseCollectionViewCell *)&v3 prepareForReuse];
  [(AVTPoseCollectionViewCell *)self setContextIdentifier:0];
}

@end
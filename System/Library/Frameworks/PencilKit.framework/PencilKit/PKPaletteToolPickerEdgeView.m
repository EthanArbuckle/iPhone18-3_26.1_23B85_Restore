@interface PKPaletteToolPickerEdgeView
- (PKPaletteToolPickerEdgeView)init;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPaletteToolPickerEdgeView

- (PKPaletteToolPickerEdgeView)init
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKPaletteToolPickerEdgeView;
  v2 = [(PKPaletteToolPickerEdgeView *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_axis = 0;
    v2->_flipHorizontally = 0;
    v4 = objc_alloc_init(MEMORY[0x1E6979380]);
    gradientLayer = v3->_gradientLayer;
    v3->_gradientLayer = v4;

    [(CAGradientLayer *)v3->_gradientLayer setGeometryFlipped:1];
    v6 = [(PKPaletteToolPickerEdgeView *)v3 layer];
    [v6 insertSublayer:v3->_gradientLayer atIndex:0];

    v7 = objc_alloc_init(MEMORY[0x1E6979380]);
    maskLayer = v3->_maskLayer;
    v3->_maskLayer = v7;

    [(CAGradientLayer *)v3->_maskLayer setGeometryFlipped:1];
    v9 = [MEMORY[0x1E69DC888] blackColor];
    v10 = [v9 colorWithAlphaComponent:1.0];

    v11 = [v10 colorWithAlphaComponent:0.0];
    v15[0] = [v10 CGColor];
    v15[1] = [v11 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(CAGradientLayer *)v3->_maskLayer setColors:v12];

    [(CAGradientLayer *)v3->_gradientLayer setMask:v3->_maskLayer];
    [(PKPaletteToolPickerEdgeView *)v3 _updateUI];
  }

  return v3;
}

- (void)_updateUI
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 traitCollection];
    v3 = [v2 userInterfaceStyle] == 2;

    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [v4 colorWithAlphaComponent:dbl_1C801D170[v3]];

    v6 = [v5 colorWithAlphaComponent:0.0];
    v26[0] = [v5 CGColor];
    v26[1] = [v6 CGColor];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    [*(a1 + 408) setColors:v7];

    v8 = *(a1 + 432);
    if (v8)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    if (v8)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    if (v8)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.5;
    }

    if (v8)
    {
      v12 = 0.5;
    }

    else
    {
      v12 = 1.0;
    }

    if (v8)
    {
      v13 = 0.75;
    }

    else
    {
      v13 = 0.5;
    }

    if (v8)
    {
      v14 = 0.5;
    }

    else
    {
      v14 = 0.75;
    }

    [*(a1 + 408) setStartPoint:{v10, v9}];
    [*(a1 + 408) setEndPoint:{v12, v11}];
    [*(a1 + 416) setStartPoint:{v13, v14}];
    [*(a1 + 416) setEndPoint:{v11, v12}];
    v15 = -1.0;
    if (!*(a1 + 424))
    {
      v15 = 1.0;
    }

    CATransform3DMakeScale(&v25, v15, 1.0, 1.0);
    v16 = *(a1 + 408);
    v24 = v25;
    [v16 setTransform:&v24];
    v17 = *(a1 + 408);
    if (v17)
    {
      [v17 transform];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    if (*(a1 + 425))
    {
      v18 = 1.0;
    }

    else
    {
      v18 = -1.0;
    }

    CATransform3DScale(&v23, &v24, 1.0, v18, 1.0);
    v19 = *(a1 + 408);
    v24 = v23;
    [v19 setTransform:&v24];
    if (v8 == 1)
    {
      v20 = -1.0;
    }

    else
    {
      v20 = 1.0;
    }

    CATransform3DMakeScale(&v22, v20, 1.0, 1.0);
    v21 = *(a1 + 416);
    v24 = v22;
    [v21 setTransform:&v24];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaletteToolPickerEdgeView;
  [(PKPaletteToolPickerEdgeView *)&v3 layoutSubviews];
  [(PKPaletteToolPickerEdgeView *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
  [(PKPaletteToolPickerEdgeView *)self bounds];
  [(CAGradientLayer *)self->_maskLayer setFrame:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKPaletteToolPickerEdgeView;
  v4 = a3;
  [(PKPaletteToolPickerEdgeView *)&v8 traitCollectionDidChange:v4];
  v5 = [(PKPaletteToolPickerEdgeView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(PKPaletteToolPickerEdgeView *)self _updateUI];
  }
}

@end
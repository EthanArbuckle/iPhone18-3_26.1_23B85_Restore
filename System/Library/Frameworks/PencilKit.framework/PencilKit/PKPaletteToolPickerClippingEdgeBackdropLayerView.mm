@interface PKPaletteToolPickerClippingEdgeBackdropLayerView
- (PKPaletteToolPickerClippingEdgeBackdropLayerView)initWithEdge:(unint64_t)a3 isTopBackdropLayer:(BOOL)a4;
- (void)addGradientMaskForEdge:(unint64_t)a3;
- (void)layoutSubviews;
@end

@implementation PKPaletteToolPickerClippingEdgeBackdropLayerView

- (PKPaletteToolPickerClippingEdgeBackdropLayerView)initWithEdge:(unint64_t)a3 isTopBackdropLayer:(BOOL)a4
{
  v4 = a4;
  v13.receiver = self;
  v13.super_class = PKPaletteToolPickerClippingEdgeBackdropLayerView;
  v6 = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E6979310]);
    backdropLayer = v6->_backdropLayer;
    v6->_backdropLayer = v7;

    v6->_isTopBackdropLayer = v4;
    [(CABackdropLayer *)v6->_backdropLayer setCaptureOnly:!v4];
    if (a3 - 1 > 7)
    {
      v9 = &stru_1F476BD20;
    }

    else
    {
      v9 = off_1E82DC0B8[a3 - 1];
    }

    [(CABackdropLayer *)v6->_backdropLayer setGroupName:v9];
    LODWORD(v10) = 1.0;
    [(CABackdropLayer *)v6->_backdropLayer setOpacity:v10];
    if (v4)
    {
      [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)v6 addGradientMaskForEdge:a3];
    }

    v11 = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)v6 layer];
    [v11 addSublayer:v6->_backdropLayer];
  }

  return v6;
}

- (void)layoutSubviews
{
  [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self backdropLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  if ([(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self isTopBackdropLayer])
  {
    [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self layer];
    v20 = [v21 mask];
    [v20 setFrame:{v13, v15, v17, v19}];
  }
}

- (void)addGradientMaskForEdge:(unint64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E6979380] layer];
  [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self bounds];
  [v5 setFrame:?];
  v6 = [MEMORY[0x1E69DC888] blackColor];
  v14[0] = [v6 CGColor];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  v14[1] = [v7 CGColor];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v5 setColors:v8];

  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v9 = 0.5;
        v10 = 1.0;
        v11 = 0.0;
LABEL_8:
        v12 = 0.5;
LABEL_12:
        [v5 setStartPoint:{v11, v9}];
        [v5 setEndPoint:{v10, v12}];
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v12 = 1.0;
    v11 = 0.5;
    v9 = 0.0;
LABEL_11:
    v10 = 0.5;
    goto LABEL_12;
  }

  if (a3 == 4)
  {
    v12 = 0.0;
    v11 = 0.5;
    v9 = 1.0;
    goto LABEL_11;
  }

  if (a3 == 8)
  {
    v9 = 0.5;
    v10 = 0.0;
    v11 = 1.0;
    goto LABEL_8;
  }

LABEL_13:
  v13 = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self layer];
  [v13 setMask:v5];
}

@end
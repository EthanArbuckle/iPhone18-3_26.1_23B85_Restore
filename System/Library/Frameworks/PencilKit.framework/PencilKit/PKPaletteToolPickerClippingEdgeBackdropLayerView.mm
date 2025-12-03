@interface PKPaletteToolPickerClippingEdgeBackdropLayerView
- (PKPaletteToolPickerClippingEdgeBackdropLayerView)initWithEdge:(unint64_t)edge isTopBackdropLayer:(BOOL)layer;
- (void)addGradientMaskForEdge:(unint64_t)edge;
- (void)layoutSubviews;
@end

@implementation PKPaletteToolPickerClippingEdgeBackdropLayerView

- (PKPaletteToolPickerClippingEdgeBackdropLayerView)initWithEdge:(unint64_t)edge isTopBackdropLayer:(BOOL)layer
{
  layerCopy = layer;
  v13.receiver = self;
  v13.super_class = PKPaletteToolPickerClippingEdgeBackdropLayerView;
  v6 = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E6979310]);
    backdropLayer = v6->_backdropLayer;
    v6->_backdropLayer = v7;

    v6->_isTopBackdropLayer = layerCopy;
    [(CABackdropLayer *)v6->_backdropLayer setCaptureOnly:!layerCopy];
    if (edge - 1 > 7)
    {
      v9 = &stru_1F476BD20;
    }

    else
    {
      v9 = off_1E82DC0B8[edge - 1];
    }

    [(CABackdropLayer *)v6->_backdropLayer setGroupName:v9];
    LODWORD(v10) = 1.0;
    [(CABackdropLayer *)v6->_backdropLayer setOpacity:v10];
    if (layerCopy)
    {
      [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)v6 addGradientMaskForEdge:edge];
    }

    layer = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)v6 layer];
    [layer addSublayer:v6->_backdropLayer];
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
  backdropLayer = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self backdropLayer];
  [backdropLayer setFrame:{v4, v6, v8, v10}];

  if ([(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self isTopBackdropLayer])
  {
    [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    layer = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self layer];
    mask = [layer mask];
    [mask setFrame:{v13, v15, v17, v19}];
  }
}

- (void)addGradientMaskForEdge:(unint64_t)edge
{
  v14[2] = *MEMORY[0x1E69E9840];
  layer = [MEMORY[0x1E6979380] layer];
  [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self bounds];
  [layer setFrame:?];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v14[0] = [blackColor CGColor];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v14[1] = [clearColor CGColor];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [layer setColors:v8];

  if (edge <= 3)
  {
    if (edge != 1)
    {
      if (edge == 2)
      {
        v9 = 0.5;
        v10 = 1.0;
        v11 = 0.0;
LABEL_8:
        v12 = 0.5;
LABEL_12:
        [layer setStartPoint:{v11, v9}];
        [layer setEndPoint:{v10, v12}];
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

  if (edge == 4)
  {
    v12 = 0.0;
    v11 = 0.5;
    v9 = 1.0;
    goto LABEL_11;
  }

  if (edge == 8)
  {
    v9 = 0.5;
    v10 = 0.0;
    v11 = 1.0;
    goto LABEL_8;
  }

LABEL_13:
  layer2 = [(PKPaletteToolPickerClippingEdgeBackdropLayerView *)self layer];
  [layer2 setMask:layer];
}

@end
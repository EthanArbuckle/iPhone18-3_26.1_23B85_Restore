@interface PKSqueezePaletteClipIndicatorView
- (PKSqueezePaletteClipIndicatorView)initWithFrame:(CGRect)a3;
- (void)_updateUI;
- (void)layoutSubviews;
@end

@implementation PKSqueezePaletteClipIndicatorView

- (PKSqueezePaletteClipIndicatorView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = PKSqueezePaletteClipIndicatorView;
  v3 = [(PKSqueezePaletteClipIndicatorView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKSqueezePaletteClipIndicatorView *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x1E6979398] layer];
    indicator = v4->_indicator;
    v4->_indicator = v5;

    v7 = [(PKSqueezePaletteClipIndicatorView *)v4 layer];
    [v7 addSublayer:v4->_indicator];

    v8 = [MEMORY[0x1E6979398] layer];
    topMask = v4->_topMask;
    v4->_topMask = v8;

    v10 = [MEMORY[0x1E69DC888] blackColor];
    -[CALayer setBackgroundColor:](v4->_topMask, "setBackgroundColor:", [v10 CGColor]);

    v11 = v4->_topMask;
    v12 = [(PKSqueezePaletteClipIndicatorView *)v4 layer];
    [v12 setMask:v11];

    v13 = [(PKSqueezePaletteClipIndicatorView *)v4 layer];
    [v13 setGeometryFlipped:1];

    v14 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__PKSqueezePaletteClipIndicatorView_initWithFrame___block_invoke;
    v18[3] = &unk_1E82D9908;
    v15 = v4;
    v19 = v15;
    v16 = [(PKSqueezePaletteClipIndicatorView *)v15 registerForTraitChanges:v14 withHandler:v18];

    [(PKSqueezePaletteClipIndicatorView *)v15 _updateUI];
  }

  return v4;
}

- (void)_updateUI
{
  if (a1)
  {
    v3 = PKSqueezePaletteToolClipIndicatorColor();
    v2 = v3;
    [*(a1 + 408) setBackgroundColor:{objc_msgSend(v3, "CGColor")}];
  }
}

- (void)layoutSubviews
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PKSqueezePaletteClipIndicatorView;
  [(PKSqueezePaletteClipIndicatorView *)&v24 layoutSubviews];
  v3 = [(PKSqueezePaletteClipIndicatorView *)self layer];
  [v3 setAllowsEdgeAntialiasing:1];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(PKSqueezePaletteClipIndicatorView *)self layer];
  v5 = [v4 sublayers];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * v9++) setAllowsEdgeAntialiasing:1];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  [(PKSqueezePaletteClipIndicatorView *)self bounds];
  UIRectGetCenter();
  v11 = v10;
  v13 = v12;
  v14 = *&PKSqueezePaletteToolClipIndicatorWidth;
  [(PKSqueezePaletteClipIndicatorView *)self bounds];
  [(CALayer *)self->_indicator setFrame:v11 - v14 * 0.5, v13 - v15 * 0.5, v14];
  v16 = *&PKSqueezePaletteToolClipIndicatorTopMaskHeight;
  [(PKSqueezePaletteClipIndicatorView *)self bounds];
  v18 = v17;
  [(PKSqueezePaletteClipIndicatorView *)self bounds];
  [(CALayer *)self->_topMask setFrame:0.0, v16, v18, v19 - *&PKSqueezePaletteToolClipIndicatorTopMaskHeight];
}

@end
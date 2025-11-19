@interface PKPalettePencilInteractionFeedbackView
- (PKPalettePencilInteractionFeedbackView)init;
- (void)_setCornerRadius:(double)a3;
- (void)layoutSubviews;
- (void)showPreviewForTool:(id)a3 scalingFactor:(double)a4 animated:(BOOL)a5;
@end

@implementation PKPalettePencilInteractionFeedbackView

- (PKPalettePencilInteractionFeedbackView)init
{
  v10.receiver = self;
  v10.super_class = PKPalettePencilInteractionFeedbackView;
  v2 = [(PKPalettePencilInteractionFeedbackView *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    clippingView = v2->_clippingView;
    v2->_clippingView = v3;

    [(UIView *)v2->_clippingView setClipsToBounds:1];
    [(PKPalettePencilInteractionFeedbackView *)v2 addSubview:v2->_clippingView];
    if (_UISolariumEnabled() && !PKIsVisionDevice())
    {
      [(UIView *)v2->_clippingView pk_setGlassBackground];
    }

    v5 = +[PKPaletteView makeBackgroundView];
    backgroundView = v2->_backgroundView;
    v2->_backgroundView = v5;

    if (v2->_backgroundView)
    {
      [(UIView *)v2->_clippingView addSubview:?];
    }

    v7 = objc_alloc_init(PKPaletteToolPreview);
    toolPreview = v2->_toolPreview;
    v2->_toolPreview = v7;

    [(UIView *)v2->_clippingView addSubview:v2->_toolPreview];
  }

  return v2;
}

- (void)_setCornerRadius:(double)a3
{
  v7.receiver = self;
  v7.super_class = PKPalettePencilInteractionFeedbackView;
  [(PKPalettePencilInteractionFeedbackView *)&v7 _setCornerRadius:a3];
  [(PKPalettePencilInteractionFeedbackView *)self _cornerRadius];
  v5 = v4;
  v6 = [(PKPalettePencilInteractionFeedbackView *)self clippingView];
  [v6 _setCornerRadius:v5];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = PKPalettePencilInteractionFeedbackView;
  [(PKPalettePencilInteractionFeedbackView *)&v30 layoutSubviews];
  [(PKPalettePencilInteractionFeedbackView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKPalettePencilInteractionFeedbackView *)self clippingView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PKPalettePencilInteractionFeedbackView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PKPalettePencilInteractionFeedbackView *)self backgroundView];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(PKPalettePencilInteractionFeedbackView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(PKPalettePencilInteractionFeedbackView *)self toolPreview];
  [v29 setFrame:{v22, v24, v26, v28}];
}

- (void)showPreviewForTool:(id)a3 scalingFactor:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(PKPalettePencilInteractionFeedbackView *)self toolPreview];
  [v9 setScalingFactor:a4];

  v10 = [(PKPalettePencilInteractionFeedbackView *)self toolPreview];
  [v10 showPreviewForTool:v8 animated:v5];
}

@end
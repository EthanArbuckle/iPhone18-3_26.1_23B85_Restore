@interface PKPalettePencilInteractionFeedbackView
- (PKPalettePencilInteractionFeedbackView)init;
- (void)_setCornerRadius:(double)radius;
- (void)layoutSubviews;
- (void)showPreviewForTool:(id)tool scalingFactor:(double)factor animated:(BOOL)animated;
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

- (void)_setCornerRadius:(double)radius
{
  v7.receiver = self;
  v7.super_class = PKPalettePencilInteractionFeedbackView;
  [(PKPalettePencilInteractionFeedbackView *)&v7 _setCornerRadius:radius];
  [(PKPalettePencilInteractionFeedbackView *)self _cornerRadius];
  v5 = v4;
  clippingView = [(PKPalettePencilInteractionFeedbackView *)self clippingView];
  [clippingView _setCornerRadius:v5];
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
  clippingView = [(PKPalettePencilInteractionFeedbackView *)self clippingView];
  [clippingView setFrame:{v4, v6, v8, v10}];

  [(PKPalettePencilInteractionFeedbackView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  backgroundView = [(PKPalettePencilInteractionFeedbackView *)self backgroundView];
  [backgroundView setFrame:{v13, v15, v17, v19}];

  [(PKPalettePencilInteractionFeedbackView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  toolPreview = [(PKPalettePencilInteractionFeedbackView *)self toolPreview];
  [toolPreview setFrame:{v22, v24, v26, v28}];
}

- (void)showPreviewForTool:(id)tool scalingFactor:(double)factor animated:(BOOL)animated
{
  animatedCopy = animated;
  toolCopy = tool;
  toolPreview = [(PKPalettePencilInteractionFeedbackView *)self toolPreview];
  [toolPreview setScalingFactor:factor];

  toolPreview2 = [(PKPalettePencilInteractionFeedbackView *)self toolPreview];
  [toolPreview2 showPreviewForTool:toolCopy animated:animatedCopy];
}

@end
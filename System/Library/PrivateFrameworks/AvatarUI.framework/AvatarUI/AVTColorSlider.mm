@interface AVTColorSlider
- (AVTColorSlider)initWithUserInterfaceLayoutDirection:(int64_t)direction;
- (AVTColorSliderDelegate)delegate;
- (CGColor)trackBorderColor;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (id)createThumbView;
- (void)layoutSubviews;
- (void)relayoutSublayers;
- (void)removeTrackLayer:(id)layer animated:(BOOL)animated;
- (void)setTrackLayer:(id)layer animated:(BOOL)animated;
- (void)valueDidChange:(id)change forEvent:(id)event;
@end

@implementation AVTColorSlider

- (AVTColorSlider)initWithUserInterfaceLayoutDirection:(int64_t)direction
{
  v15.receiver = self;
  v15.super_class = AVTColorSlider;
  v4 = [(AVTColorSlider *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v4;
  if (v4)
  {
    v4->_layoutDirection = direction;
    LODWORD(v5) = -1.0;
    [(AVTColorSlider *)v4 setMinimumValue:v5];
    LODWORD(v7) = 1.0;
    [(AVTColorSlider *)v6 setMaximumValue:v7];
    v6->_shouldTriggerFeedback = 0;
    sliderConfiguration = [MEMORY[0x1E69DD4B0] sliderConfiguration];
    v9 = [sliderConfiguration tweakedConfigurationForClass:objc_opt_class() usage:@"sliderEdge"];

    v10 = [objc_alloc(MEMORY[0x1E69DD4A8]) initWithConfiguration:v9 view:v6];
    edgeFeedbackGenerator = v6->_edgeFeedbackGenerator;
    v6->_edgeFeedbackGenerator = v10;

    [(_UIEdgeFeedbackGenerator *)v6->_edgeFeedbackGenerator setAxis:1];
    v12 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    selectionFeedbackGenerator = v6->_selectionFeedbackGenerator;
    v6->_selectionFeedbackGenerator = v12;

    [(UISelectionFeedbackGenerator *)v6->_selectionFeedbackGenerator _setOutputMode:5];
    [(AVTColorSlider *)v6 addTarget:v6 action:sel_valueDidChange_forEvent_ forControlEvents:4096];

    [(AVTColorSlider *)v6 setClipsToBounds:0];
    [(AVTColorSlider *)v6 _setSliderStyle:100];
  }

  return v6;
}

- (void)relayoutSublayers
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  thumbContentLayer = [(AVTColorSlider *)self thumbContentLayer];
  sublayers = [thumbContentLayer sublayers];

  v5 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        thumbContentLayer2 = [(AVTColorSlider *)self thumbContentLayer];
        [thumbContentLayer2 bounds];
        [v9 setFrame:?];

        ++v8;
      }

      while (v6 != v8);
      v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)layoutSubviews
{
  v102.receiver = self;
  v102.super_class = AVTColorSlider;
  [(AVTColorSlider *)&v102 layoutSubviews];
  edgeFeedbackGenerator = [(AVTColorSlider *)self edgeFeedbackGenerator];
  [(AVTColorSlider *)self bounds];
  [edgeFeedbackGenerator setDistance:v4];

  thumbView = [(AVTColorSlider *)self thumbView];
  layer = [thumbView layer];
  [layer bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  thumbContentLayer = [(AVTColorSlider *)self thumbContentLayer];
  [thumbContentLayer setFrame:{v8, v10, v12, v14}];

  [(AVTColorSlider *)self relayoutSublayers];
  thumbClippingLayer = [(AVTColorSlider *)self thumbClippingLayer];
  [thumbClippingLayer frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  thumbView2 = [(AVTColorSlider *)self thumbView];
  [thumbView2 bounds];
  v108.origin.x = v26;
  v108.origin.y = v27;
  v108.size.width = v28;
  v108.size.height = v29;
  v103.origin.x = v18;
  v103.origin.y = v20;
  v103.size.width = v22;
  v103.size.height = v24;
  LOBYTE(thumbContentLayer) = CGRectEqualToRect(v103, v108);

  if ((thumbContentLayer & 1) == 0)
  {
    thumbView3 = [(AVTColorSlider *)self thumbView];
    layer2 = [thumbView3 layer];
    [layer2 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    thumbClippingLayer2 = [(AVTColorSlider *)self thumbClippingLayer];
    [thumbClippingLayer2 setFrame:{v33, v35, v37, v39}];

    v41 = MEMORY[0x1E69DC728];
    thumbView4 = [(AVTColorSlider *)self thumbView];
    layer3 = [thumbView4 layer];
    [layer3 bounds];
    v105 = CGRectInset(v104, 1.0, 1.0);
    v44 = [v41 bezierPathWithOvalInRect:{v105.origin.x, v105.origin.y, v105.size.width, v105.size.height}];
    cGPath = [v44 CGPath];
    thumbClippingLayer3 = [(AVTColorSlider *)self thumbClippingLayer];
    [thumbClippingLayer3 setPath:cGPath];

    thumbView5 = [(AVTColorSlider *)self thumbView];
    layer4 = [thumbView5 layer];
    [layer4 bounds];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    thumbBorderLayer = [(AVTColorSlider *)self thumbBorderLayer];
    [thumbBorderLayer lineWidth];
    v59 = v58 * 0.5;
    thumbBorderLayer2 = [(AVTColorSlider *)self thumbBorderLayer];
    [thumbBorderLayer2 lineWidth];
    v62 = v61 * 0.5;
    v106.origin.x = v50;
    v106.origin.y = v52;
    v106.size.width = v54;
    v106.size.height = v56;
    v107 = CGRectInset(v106, v59, v62);
    x = v107.origin.x;
    y = v107.origin.y;
    width = v107.size.width;
    height = v107.size.height;

    v67 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, height}];
    cGPath2 = [v67 CGPath];
    thumbBorderLayer3 = [(AVTColorSlider *)self thumbBorderLayer];
    [thumbBorderLayer3 setPath:cGPath2];

    thumbView6 = [(AVTColorSlider *)self thumbView];
    layer5 = [thumbView6 layer];
    [layer5 bounds];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    thumbBorderLayer4 = [(AVTColorSlider *)self thumbBorderLayer];
    [thumbBorderLayer4 setFrame:{v73, v75, v77, v79}];

    thumbBorderLayer5 = [(AVTColorSlider *)self thumbBorderLayer];
    path = [thumbBorderLayer5 path];
    thumbView7 = [(AVTColorSlider *)self thumbView];
    layer6 = [thumbView7 layer];
    [layer6 setShadowPath:path];

    thumbBorderLayer6 = [(AVTColorSlider *)self thumbBorderLayer];
    path2 = [thumbBorderLayer6 path];
    thumbSoftShadowLayer = [(AVTColorSlider *)self thumbSoftShadowLayer];
    [thumbSoftShadowLayer setShadowPath:path2];
  }

  trackLayer = [(AVTColorSlider *)self trackLayer];

  if (trackLayer)
  {
    [(AVTColorSlider *)self bounds];
    v90 = v89;
    v92 = v91;
    v94 = v93 + -18.0;
    v96 = v95 + 9.0;
    trackLayer2 = [(AVTColorSlider *)self trackLayer];
    [trackLayer2 setFrame:{v90, v96, v92, v94}];

    trackLayer3 = [(AVTColorSlider *)self trackLayer];
    [trackLayer3 setCornerRadius:v94 * 0.5];

    trackLayer4 = [(AVTColorSlider *)self trackLayer];
    [trackLayer4 setBorderWidth:2.0];

    trackBorderColor = [(AVTColorSlider *)self trackBorderColor];
    trackLayer5 = [(AVTColorSlider *)self trackLayer];
    [trackLayer5 setBorderColor:trackBorderColor];
  }
}

- (void)setTrackLayer:(id)layer animated:(BOOL)animated
{
  animatedCopy = animated;
  layerCopy = layer;
  trackLayer = [(AVTColorSlider *)self trackLayer];

  if (trackLayer)
  {
    trackLayer2 = [(AVTColorSlider *)self trackLayer];
    [(AVTColorSlider *)self removeTrackLayer:trackLayer2 animated:animatedCopy];
  }

  trackLayer = self->_trackLayer;
  self->_trackLayer = layerCopy;

  v10 = *MEMORY[0x1E69796E8];
  trackLayer3 = [(AVTColorSlider *)self trackLayer];
  [trackLayer3 setCornerCurve:v10];

  layer = [(AVTColorSlider *)self layer];
  trackLayer4 = [(AVTColorSlider *)self trackLayer];
  [layer insertSublayer:trackLayer4 atIndex:0];

  if ([(AVTColorSlider *)self layoutDirection]== 1)
  {
    CATransform3DMakeRotation(&v20, 3.14159265, 0.0, 1.0, 0.0);
  }

  else
  {
    v14 = *(MEMORY[0x1E69792E8] + 80);
    *&v20.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v20.m33 = v14;
    v15 = *(MEMORY[0x1E69792E8] + 112);
    *&v20.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v20.m43 = v15;
    v16 = *(MEMORY[0x1E69792E8] + 16);
    *&v20.m11 = *MEMORY[0x1E69792E8];
    *&v20.m13 = v16;
    v17 = *(MEMORY[0x1E69792E8] + 48);
    *&v20.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v20.m23 = v17;
  }

  trackLayer5 = [(AVTColorSlider *)self trackLayer];
  v19 = v20;
  [trackLayer5 setTransform:&v19];

  [(AVTColorSlider *)self setNeedsLayout];
}

- (void)removeTrackLayer:(id)layer animated:(BOOL)animated
{
  layerCopy = layer;
  v6 = layerCopy;
  if (animated)
  {
    [MEMORY[0x1E6979518] begin];
    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v7 setDuration:0.2];
    [v7 setFromValue:&unk_1F39A5AE8];
    [v7 setToValue:&unk_1F39A5CD0];
    [v6 setOpacity:0.0];
    v8 = MEMORY[0x1E6979518];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__AVTColorSlider_removeTrackLayer_animated___block_invoke;
    v10[3] = &unk_1E7F3A9B8;
    v9 = v6;
    v11 = v9;
    [v8 setCompletionBlock:v10];
    [v9 addAnimation:v7 forKey:@"opacity"];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    [layerCopy removeFromSuperlayer];
  }
}

- (CGColor)trackBorderColor
{
  traitCollection = [(AVTColorSlider *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.05];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v4 = ;
  cGColor = [v4 CGColor];

  return cGColor;
}

- (id)createThumbView
{
  thumbView = [(AVTColorSlider *)self thumbView];

  if (!thumbView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(AVTColorSlider *)self setThumbView:v4];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    thumbView2 = [(AVTColorSlider *)self thumbView];
    [thumbView2 setBackgroundColor:clearColor];

    thumbView3 = [(AVTColorSlider *)self thumbView];
    [thumbView3 setContentMode:2];

    thumbView4 = [(AVTColorSlider *)self thumbView];
    [thumbView4 setClipsToBounds:0];

    thumbView5 = [(AVTColorSlider *)self thumbView];
    layer = [thumbView5 layer];
    LODWORD(v11) = 1042536202;
    [layer setShadowOpacity:v11];

    thumbView6 = [(AVTColorSlider *)self thumbView];
    layer2 = [thumbView6 layer];
    [layer2 setShadowOffset:{1.0, 5.5}];

    thumbView7 = [(AVTColorSlider *)self thumbView];
    layer3 = [thumbView7 layer];
    [layer3 setShadowRadius:3.5];

    layer4 = [MEMORY[0x1E6979398] layer];
    [(AVTColorSlider *)self setThumbSoftShadowLayer:layer4];

    thumbSoftShadowLayer = [(AVTColorSlider *)self thumbSoftShadowLayer];
    LODWORD(v18) = 1042536202;
    [thumbSoftShadowLayer setShadowOpacity:v18];

    thumbSoftShadowLayer2 = [(AVTColorSlider *)self thumbSoftShadowLayer];
    [thumbSoftShadowLayer2 setShadowOffset:{0.0, 0.0}];

    thumbSoftShadowLayer3 = [(AVTColorSlider *)self thumbSoftShadowLayer];
    [thumbSoftShadowLayer3 setShadowRadius:6.5];

    thumbView8 = [(AVTColorSlider *)self thumbView];
    layer5 = [thumbView8 layer];
    thumbSoftShadowLayer4 = [(AVTColorSlider *)self thumbSoftShadowLayer];
    [layer5 addSublayer:thumbSoftShadowLayer4];

    layer6 = [MEMORY[0x1E6979398] layer];
    [(AVTColorSlider *)self setThumbContentLayer:layer6];

    thumbView9 = [(AVTColorSlider *)self thumbView];
    layer7 = [thumbView9 layer];
    thumbContentLayer = [(AVTColorSlider *)self thumbContentLayer];
    [layer7 addSublayer:thumbContentLayer];

    v28 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(AVTColorSlider *)self setThumbBorderLayer:v28];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    cGColor = [clearColor2 CGColor];
    thumbBorderLayer = [(AVTColorSlider *)self thumbBorderLayer];
    [thumbBorderLayer setFillColor:cGColor];

    v32 = [MEMORY[0x1E69DC888] colorWithRed:0.972549 green:0.972549 blue:0.972549 alpha:1.0];
    cGColor2 = [v32 CGColor];
    thumbBorderLayer2 = [(AVTColorSlider *)self thumbBorderLayer];
    [thumbBorderLayer2 setStrokeColor:cGColor2];

    thumbBorderLayer3 = [(AVTColorSlider *)self thumbBorderLayer];
    [thumbBorderLayer3 setLineWidth:6.0];

    thumbView10 = [(AVTColorSlider *)self thumbView];
    layer8 = [thumbView10 layer];
    thumbBorderLayer4 = [(AVTColorSlider *)self thumbBorderLayer];
    [layer8 addSublayer:thumbBorderLayer4];

    v39 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(AVTColorSlider *)self setThumbClippingLayer:v39];

    v40 = *MEMORY[0x1E69797F8];
    thumbClippingLayer = [(AVTColorSlider *)self thumbClippingLayer];
    [thumbClippingLayer setFillRule:v40];

    thumbClippingLayer2 = [(AVTColorSlider *)self thumbClippingLayer];
    thumbContentLayer2 = [(AVTColorSlider *)self thumbContentLayer];
    [thumbContentLayer2 setMask:thumbClippingLayer2];
  }

  [(AVTColorSlider *)self thumbView];
  return objc_claimAutoreleasedReturnValue();
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v9.receiver = self;
  v9.super_class = AVTColorSlider;
  [(AVTColorSlider *)&v9 trackRectForBounds:bounds.origin.x, bounds.origin.y];
  v8 = width + height * -0.5;
  result.size.height = v7;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  height = bounds.size.height;
  width = bounds.size.width;
  [(AVTColorSlider *)self minimumValue:bounds.origin.x];
  v9 = value - v8;
  [(AVTColorSlider *)self maximumValue];
  v11 = v10;
  [(AVTColorSlider *)self minimumValue];
  v13 = (v9 / (v11 - v12));
  layoutDirection = [(AVTColorSlider *)self layoutDirection];
  v15 = 1.0 - v13;
  if (layoutDirection != 1)
  {
    v15 = v13;
  }

  v16 = (width - height) * v15;
  v17 = 0.0;
  v18 = height;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)valueDidChange:(id)change forEvent:(id)event
{
  eventCopy = event;
  [(AVTColorSlider *)self value];
  v6 = v5;
  v7 = v5;
  edgeFeedbackGenerator = [(AVTColorSlider *)self edgeFeedbackGenerator];
  edgeFeedbackGenerator2 = [(AVTColorSlider *)self edgeFeedbackGenerator];
  [edgeFeedbackGenerator2 distance];
  [edgeFeedbackGenerator positionUpdated:v10 * v7];

  v11 = -v7;
  if (v6 >= 0.0)
  {
    v11 = v7;
  }

  v12 = v11 + -0.03;
  if (v11 + -0.03 < 0.0)
  {
    v7 = 0.0;
    if (![(AVTColorSlider *)self shouldTriggerFeedback])
    {
      goto LABEL_7;
    }

    selectionFeedbackGenerator = [(AVTColorSlider *)self selectionFeedbackGenerator];
    [selectionFeedbackGenerator selectionChanged];
  }

  [(AVTColorSlider *)self setShouldTriggerFeedback:v12 >= 0.0];
LABEL_7:
  allTouches = [eventCopy allTouches];
  anyObject = [allTouches anyObject];

  phase = [anyObject phase];
  if (phase == 3)
  {
    delegate = [(AVTColorSlider *)self delegate];
    [delegate colorSlider:self didFinishSelectingValue:v7];

    *&v20 = v7;
    [(AVTColorSlider *)self setValue:0 animated:v20];
  }

  else
  {
    if (phase != 1)
    {
      if (phase)
      {
        goto LABEL_13;
      }

      selectionFeedbackGenerator2 = [(AVTColorSlider *)self selectionFeedbackGenerator];
      [selectionFeedbackGenerator2 prepare];
    }

    delegate2 = [(AVTColorSlider *)self delegate];
    [delegate2 colorSlider:self valueChanged:v7];
  }

LABEL_13:
}

- (AVTColorSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
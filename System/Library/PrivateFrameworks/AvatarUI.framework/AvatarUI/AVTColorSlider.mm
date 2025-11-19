@interface AVTColorSlider
- (AVTColorSlider)initWithUserInterfaceLayoutDirection:(int64_t)a3;
- (AVTColorSliderDelegate)delegate;
- (CGColor)trackBorderColor;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (id)createThumbView;
- (void)layoutSubviews;
- (void)relayoutSublayers;
- (void)removeTrackLayer:(id)a3 animated:(BOOL)a4;
- (void)setTrackLayer:(id)a3 animated:(BOOL)a4;
- (void)valueDidChange:(id)a3 forEvent:(id)a4;
@end

@implementation AVTColorSlider

- (AVTColorSlider)initWithUserInterfaceLayoutDirection:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = AVTColorSlider;
  v4 = [(AVTColorSlider *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v4;
  if (v4)
  {
    v4->_layoutDirection = a3;
    LODWORD(v5) = -1.0;
    [(AVTColorSlider *)v4 setMinimumValue:v5];
    LODWORD(v7) = 1.0;
    [(AVTColorSlider *)v6 setMaximumValue:v7];
    v6->_shouldTriggerFeedback = 0;
    v8 = [MEMORY[0x1E69DD4B0] sliderConfiguration];
    v9 = [v8 tweakedConfigurationForClass:objc_opt_class() usage:@"sliderEdge"];

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
  v3 = [(AVTColorSlider *)self thumbContentLayer];
  v4 = [v3 sublayers];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(AVTColorSlider *)self thumbContentLayer];
        [v10 bounds];
        [v9 setFrame:?];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)layoutSubviews
{
  v102.receiver = self;
  v102.super_class = AVTColorSlider;
  [(AVTColorSlider *)&v102 layoutSubviews];
  v3 = [(AVTColorSlider *)self edgeFeedbackGenerator];
  [(AVTColorSlider *)self bounds];
  [v3 setDistance:v4];

  v5 = [(AVTColorSlider *)self thumbView];
  v6 = [v5 layer];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(AVTColorSlider *)self thumbContentLayer];
  [v15 setFrame:{v8, v10, v12, v14}];

  [(AVTColorSlider *)self relayoutSublayers];
  v16 = [(AVTColorSlider *)self thumbClippingLayer];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(AVTColorSlider *)self thumbView];
  [v25 bounds];
  v108.origin.x = v26;
  v108.origin.y = v27;
  v108.size.width = v28;
  v108.size.height = v29;
  v103.origin.x = v18;
  v103.origin.y = v20;
  v103.size.width = v22;
  v103.size.height = v24;
  LOBYTE(v15) = CGRectEqualToRect(v103, v108);

  if ((v15 & 1) == 0)
  {
    v30 = [(AVTColorSlider *)self thumbView];
    v31 = [v30 layer];
    [v31 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [(AVTColorSlider *)self thumbClippingLayer];
    [v40 setFrame:{v33, v35, v37, v39}];

    v41 = MEMORY[0x1E69DC728];
    v42 = [(AVTColorSlider *)self thumbView];
    v43 = [v42 layer];
    [v43 bounds];
    v105 = CGRectInset(v104, 1.0, 1.0);
    v44 = [v41 bezierPathWithOvalInRect:{v105.origin.x, v105.origin.y, v105.size.width, v105.size.height}];
    v45 = [v44 CGPath];
    v46 = [(AVTColorSlider *)self thumbClippingLayer];
    [v46 setPath:v45];

    v47 = [(AVTColorSlider *)self thumbView];
    v48 = [v47 layer];
    [v48 bounds];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = [(AVTColorSlider *)self thumbBorderLayer];
    [v57 lineWidth];
    v59 = v58 * 0.5;
    v60 = [(AVTColorSlider *)self thumbBorderLayer];
    [v60 lineWidth];
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
    v68 = [v67 CGPath];
    v69 = [(AVTColorSlider *)self thumbBorderLayer];
    [v69 setPath:v68];

    v70 = [(AVTColorSlider *)self thumbView];
    v71 = [v70 layer];
    [v71 bounds];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [(AVTColorSlider *)self thumbBorderLayer];
    [v80 setFrame:{v73, v75, v77, v79}];

    v81 = [(AVTColorSlider *)self thumbBorderLayer];
    v82 = [v81 path];
    v83 = [(AVTColorSlider *)self thumbView];
    v84 = [v83 layer];
    [v84 setShadowPath:v82];

    v85 = [(AVTColorSlider *)self thumbBorderLayer];
    v86 = [v85 path];
    v87 = [(AVTColorSlider *)self thumbSoftShadowLayer];
    [v87 setShadowPath:v86];
  }

  v88 = [(AVTColorSlider *)self trackLayer];

  if (v88)
  {
    [(AVTColorSlider *)self bounds];
    v90 = v89;
    v92 = v91;
    v94 = v93 + -18.0;
    v96 = v95 + 9.0;
    v97 = [(AVTColorSlider *)self trackLayer];
    [v97 setFrame:{v90, v96, v92, v94}];

    v98 = [(AVTColorSlider *)self trackLayer];
    [v98 setCornerRadius:v94 * 0.5];

    v99 = [(AVTColorSlider *)self trackLayer];
    [v99 setBorderWidth:2.0];

    v100 = [(AVTColorSlider *)self trackBorderColor];
    v101 = [(AVTColorSlider *)self trackLayer];
    [v101 setBorderColor:v100];
  }
}

- (void)setTrackLayer:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTColorSlider *)self trackLayer];

  if (v7)
  {
    v8 = [(AVTColorSlider *)self trackLayer];
    [(AVTColorSlider *)self removeTrackLayer:v8 animated:v4];
  }

  trackLayer = self->_trackLayer;
  self->_trackLayer = v6;

  v10 = *MEMORY[0x1E69796E8];
  v11 = [(AVTColorSlider *)self trackLayer];
  [v11 setCornerCurve:v10];

  v12 = [(AVTColorSlider *)self layer];
  v13 = [(AVTColorSlider *)self trackLayer];
  [v12 insertSublayer:v13 atIndex:0];

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

  v18 = [(AVTColorSlider *)self trackLayer];
  v19 = v20;
  [v18 setTransform:&v19];

  [(AVTColorSlider *)self setNeedsLayout];
}

- (void)removeTrackLayer:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
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
    [v5 removeFromSuperlayer];
  }
}

- (CGColor)trackBorderColor
{
  v2 = [(AVTColorSlider *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.05];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v4 = ;
  v5 = [v4 CGColor];

  return v5;
}

- (id)createThumbView
{
  v3 = [(AVTColorSlider *)self thumbView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(AVTColorSlider *)self setThumbView:v4];

    v5 = [MEMORY[0x1E69DC888] clearColor];
    v6 = [(AVTColorSlider *)self thumbView];
    [v6 setBackgroundColor:v5];

    v7 = [(AVTColorSlider *)self thumbView];
    [v7 setContentMode:2];

    v8 = [(AVTColorSlider *)self thumbView];
    [v8 setClipsToBounds:0];

    v9 = [(AVTColorSlider *)self thumbView];
    v10 = [v9 layer];
    LODWORD(v11) = 1042536202;
    [v10 setShadowOpacity:v11];

    v12 = [(AVTColorSlider *)self thumbView];
    v13 = [v12 layer];
    [v13 setShadowOffset:{1.0, 5.5}];

    v14 = [(AVTColorSlider *)self thumbView];
    v15 = [v14 layer];
    [v15 setShadowRadius:3.5];

    v16 = [MEMORY[0x1E6979398] layer];
    [(AVTColorSlider *)self setThumbSoftShadowLayer:v16];

    v17 = [(AVTColorSlider *)self thumbSoftShadowLayer];
    LODWORD(v18) = 1042536202;
    [v17 setShadowOpacity:v18];

    v19 = [(AVTColorSlider *)self thumbSoftShadowLayer];
    [v19 setShadowOffset:{0.0, 0.0}];

    v20 = [(AVTColorSlider *)self thumbSoftShadowLayer];
    [v20 setShadowRadius:6.5];

    v21 = [(AVTColorSlider *)self thumbView];
    v22 = [v21 layer];
    v23 = [(AVTColorSlider *)self thumbSoftShadowLayer];
    [v22 addSublayer:v23];

    v24 = [MEMORY[0x1E6979398] layer];
    [(AVTColorSlider *)self setThumbContentLayer:v24];

    v25 = [(AVTColorSlider *)self thumbView];
    v26 = [v25 layer];
    v27 = [(AVTColorSlider *)self thumbContentLayer];
    [v26 addSublayer:v27];

    v28 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(AVTColorSlider *)self setThumbBorderLayer:v28];

    v29 = [MEMORY[0x1E69DC888] clearColor];
    v30 = [v29 CGColor];
    v31 = [(AVTColorSlider *)self thumbBorderLayer];
    [v31 setFillColor:v30];

    v32 = [MEMORY[0x1E69DC888] colorWithRed:0.972549 green:0.972549 blue:0.972549 alpha:1.0];
    v33 = [v32 CGColor];
    v34 = [(AVTColorSlider *)self thumbBorderLayer];
    [v34 setStrokeColor:v33];

    v35 = [(AVTColorSlider *)self thumbBorderLayer];
    [v35 setLineWidth:6.0];

    v36 = [(AVTColorSlider *)self thumbView];
    v37 = [v36 layer];
    v38 = [(AVTColorSlider *)self thumbBorderLayer];
    [v37 addSublayer:v38];

    v39 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(AVTColorSlider *)self setThumbClippingLayer:v39];

    v40 = *MEMORY[0x1E69797F8];
    v41 = [(AVTColorSlider *)self thumbClippingLayer];
    [v41 setFillRule:v40];

    v42 = [(AVTColorSlider *)self thumbClippingLayer];
    v43 = [(AVTColorSlider *)self thumbContentLayer];
    [v43 setMask:v42];
  }

  [(AVTColorSlider *)self thumbView];
  return objc_claimAutoreleasedReturnValue();
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = AVTColorSlider;
  [(AVTColorSlider *)&v9 trackRectForBounds:a3.origin.x, a3.origin.y];
  v8 = width + height * -0.5;
  result.size.height = v7;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a3.size.height;
  width = a3.size.width;
  [(AVTColorSlider *)self minimumValue:a3.origin.x];
  v9 = a5 - v8;
  [(AVTColorSlider *)self maximumValue];
  v11 = v10;
  [(AVTColorSlider *)self minimumValue];
  v13 = (v9 / (v11 - v12));
  v14 = [(AVTColorSlider *)self layoutDirection];
  v15 = 1.0 - v13;
  if (v14 != 1)
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

- (void)valueDidChange:(id)a3 forEvent:(id)a4
{
  v21 = a4;
  [(AVTColorSlider *)self value];
  v6 = v5;
  v7 = v5;
  v8 = [(AVTColorSlider *)self edgeFeedbackGenerator];
  v9 = [(AVTColorSlider *)self edgeFeedbackGenerator];
  [v9 distance];
  [v8 positionUpdated:v10 * v7];

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

    v13 = [(AVTColorSlider *)self selectionFeedbackGenerator];
    [v13 selectionChanged];
  }

  [(AVTColorSlider *)self setShouldTriggerFeedback:v12 >= 0.0];
LABEL_7:
  v14 = [v21 allTouches];
  v15 = [v14 anyObject];

  v16 = [v15 phase];
  if (v16 == 3)
  {
    v19 = [(AVTColorSlider *)self delegate];
    [v19 colorSlider:self didFinishSelectingValue:v7];

    *&v20 = v7;
    [(AVTColorSlider *)self setValue:0 animated:v20];
  }

  else
  {
    if (v16 != 1)
    {
      if (v16)
      {
        goto LABEL_13;
      }

      v17 = [(AVTColorSlider *)self selectionFeedbackGenerator];
      [v17 prepare];
    }

    v18 = [(AVTColorSlider *)self delegate];
    [v18 colorSlider:self valueChanged:v7];
  }

LABEL_13:
}

- (AVTColorSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
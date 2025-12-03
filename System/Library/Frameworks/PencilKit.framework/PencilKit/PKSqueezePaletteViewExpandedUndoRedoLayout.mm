@interface PKSqueezePaletteViewExpandedUndoRedoLayout
- (PKSqueezePaletteView)paletteView;
- (double)_innerRadius;
- (double)_outerRadius;
- (double)_viewCenter;
- (id)initWithContext:(void *)context sliderButtonConfiguration:;
- (void)_didTapSliderButton:(id)button;
- (void)_fadeOutTickAtHead:(void *)head;
- (void)_fadeOutTickAtTail:(void *)tail;
- (void)_hyperInteractorApplyPresentationPoint:(id)point;
- (void)_panGestureHandler:(id)handler;
- (void)_resetUI;
- (void)handlePencilInteractionDidTap:(int64_t)tap;
- (void)setSliderButtonAngle:(double)angle;
- (void)updateUI;
- (void)willTransitionToLayout:(id)layout;
@end

@implementation PKSqueezePaletteViewExpandedUndoRedoLayout

- (id)initWithContext:(void *)context sliderButtonConfiguration:
{
  v6 = a2;
  contextCopy = context;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = PKSqueezePaletteViewExpandedUndoRedoLayout;
    v8 = objc_msgSendSuper2(&v18, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a2);
      objc_storeStrong(self + 11, context);
      v9 = objc_alloc(MEMORY[0x1E69DCCF0]);
      v10 = MEMORY[0x1E69DD600];
      v11 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F47C0F80, &unk_1F47C0F98, 0}];
      v12 = [v10 privateConfigurationForTypes:v11];
      v13 = [v9 initWithConfiguration:v12];
      v14 = self[18];
      self[18] = v13;

      if (v6)
      {
        v15 = v6[2];
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      [v16 addTarget:self action:sel__panGestureHandler_];
    }
  }

  return self;
}

- (void)_resetUI
{
  v67[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    paletteView = [self paletteView];
    if (paletteView)
    {
      WeakRetained = objc_loadWeakRetained((self + 16));
      _undoCount = [(PKSqueezePaletteView *)WeakRetained _undoCount];

      v4 = objc_loadWeakRetained((self + 16));
      _redoCount = [(PKSqueezePaletteView *)v4 _redoCount];

      *(self + 32) = _redoCount + _undoCount;
      *(self + 40) = _redoCount;
      *(self + 48) = _redoCount;
      *(self + 56) = _redoCount;
      ornamentLayer = [self ornamentLayer];
      if (!ornamentLayer)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
        v7 = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:{1.0, 0}];
        ornamentLayer = v6;
        [v6 setFillColor:{objc_msgSend(v7, "CGColor")}];

        layer = [paletteView layer];
        [layer addSublayer:v6];

        [v6 setZPosition:3.0];
        [self setOrnamentLayer:v6];
      }

      v9 = *(self + 24);
      if (!v9 || (v10 = *(v9 + 8)) == 0)
      {
        PKCrash();
      }

      v60 = v10;
      layer2 = [v10 layer];
      [layer2 setZPosition:2.0];

      [v60 center];
      v13 = v12;
      v15 = v14;
      _viewCenter = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _viewCenter];
      v18 = atan2(v15 - v17, v13 - _viewCenter);
      v19 = fmod(v18, 6.28318531);
      if (v18 <= 6.28318531 && v18 >= 0.0)
      {
        v19 = v18;
      }

      if (v19 < 0.0)
      {
        v19 = v19 + 6.28318531;
      }

      if (v19 == 0.0)
      {
        v19 = 0.0;
      }

      *(self + 64) = v19;
      *(self + 72) = v19;
      v21 = *(MEMORY[0x1E695EFD0] + 16);
      v64 = *MEMORY[0x1E695EFD0];
      v65 = v21;
      v66 = *(MEMORY[0x1E695EFD0] + 32);
      [v60 setTransform:{&v64, ornamentLayer}];
      configuration = [v60 configuration];
      v23 = [configuration copy];
      v24 = *(self + 80);
      *(self + 80) = v23;

      sliderButtonConfiguration = [self sliderButtonConfiguration];
      [v60 setConfiguration:sliderButtonConfiguration];

      sliderButtonConstraintCenterX = [self sliderButtonConstraintCenterX];
      LODWORD(sliderButtonConfiguration) = sliderButtonConstraintCenterX == 0;

      if (sliderButtonConfiguration)
      {
        centerXAnchor = [v60 centerXAnchor];
        centerXAnchor2 = [paletteView centerXAnchor];
        v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        [self setSliderButtonConstraintCenterX:v29];

        centerYAnchor = [v60 centerYAnchor];
        centerYAnchor2 = [paletteView centerYAnchor];
        v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [self setSliderButtonConstraintCenterY:v32];

        v33 = MEMORY[0x1E696ACD8];
        sliderButtonConstraintCenterX2 = [self sliderButtonConstraintCenterX];
        v67[0] = sliderButtonConstraintCenterX2;
        sliderButtonConstraintCenterY = [self sliderButtonConstraintCenterY];
        v67[1] = sliderButtonConstraintCenterY;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
        [v33 activateConstraints:v36];
      }

      v37 = [v60 targetForAction:sel__didTapSliderButton_ withSender:0];
      v38 = v37 == 0;

      if (v38)
      {
        [v60 addTarget:self action:sel__didTapSliderButton_ forControlEvents:64];
      }

      panGestureRecognizer = [self panGestureRecognizer];
      v40 = panGestureRecognizer == 0;

      if (v40)
      {
        v41 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__panGestureHandler_];
        [v60 addGestureRecognizer:v41];
        [self setPanGestureRecognizer:v41];
      }

      v59 = [objc_alloc(MEMORY[0x1E69DD530]) initWithDimensions:1];
      [v59 _setDelegate:self];
      [self setHyperInteractor:v59];
      v57 = [objc_alloc(MEMORY[0x1E69DD520]) initWithDimensions:1];
      [v57 _setMaximumDistance:0.13962634];
      [v59 _setExtender:v57];
      v56 = [objc_alloc(MEMORY[0x1E69DD548]) initWithDimensions:1];
      v42 = objc_opt_new();
      if (([self maxUndoIndex] & 0x8000000000000000) == 0)
      {
        v43 = -1;
        v44 = MEMORY[0x1E69E9820];
        do
        {
          v45 = [objc_alloc(MEMORY[0x1E69DD538]) initWithDimensions:1];
          *&v64 = v44;
          *(&v64 + 1) = 3221225472;
          *&v65 = __69__PKSqueezePaletteViewExpandedUndoRedoLayout__installHyperInteractor__block_invoke;
          *(&v65 + 1) = &unk_1E82D6908;
          *&v66 = self;
          *(&v66 + 1) = v43 + 1;
          [v45 _mutateValue:&v64];
          [v42 addObject:v45];

          ++v43;
        }

        while (v43 < [self maxUndoIndex]);
      }

      [v56 _setRegions:v42];
      [v59 _setRegion:v56];
      v46 = [objc_alloc(MEMORY[0x1E69DD528]) initWithDimensions:1];
      [v59 _setAnimator:v46];
      objc_initWeak(&location, self);
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __69__PKSqueezePaletteViewExpandedUndoRedoLayout__installHyperInteractor__block_invoke_2;
      newValue[3] = &unk_1E82D69B8;
      objc_copyWeak(&v62, &location);
      v47 = objc_loadWeakRetained((self + 16));
      v49 = v47;
      if (v47)
      {
        objc_setProperty_nonatomic_copy(v47, v48, newValue, 592);
      }

      objc_destroyWeak(&v62);
      objc_destroyWeak(&location);

      v50 = *(self + 24);
      if (v50)
      {
        v51 = *(v50 + 16);
        v52 = v51;
        if (v51 && ([v51 state] == 1 || objc_msgSend(v52, "state") == 2))
        {
          hyperInteractor = [self hyperInteractor];
          [hyperInteractor _interactionBegan];
        }
      }

      else
      {
        v52 = 0;
      }

      [self updateUI];
    }
  }
}

- (double)_viewCenter
{
  paletteView = [self paletteView];
  [paletteView bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v12.origin.x = v3;
  v12.origin.y = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  CGRectGetMidY(v13);
  return round(MidX);
}

uint64_t __69__PKSqueezePaletteViewExpandedUndoRedoLayout__installHyperInteractor__block_invoke(uint64_t result, double *a2)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *(result + 40);
    [*(result + 32) initialSliderButtonAngle];
    v6 = v5;
    result = [v3 initialUndoIndex];
    v7 = v6 + (v4 - result) * -0.34906585;
  }

  else
  {
    v7 = 0.0;
  }

  *a2 = v7;
  return result;
}

void __69__PKSqueezePaletteViewExpandedUndoRedoLayout__installHyperInteractor__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained hyperInteractor];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__PKSqueezePaletteViewExpandedUndoRedoLayout__layoutSubviews__block_invoke;
    v4[3] = &unk_1E82D6930;
    v4[4] = v3;
    [v2 _mutateUnconstrainedPoint:v4];
    [v3 setSliderButtonAngle:{*objc_msgSend(v2, "_presentationPoint")}];

    WeakRetained = v3;
  }
}

uint64_t __61__PKSqueezePaletteViewExpandedUndoRedoLayout__layoutSubviews__block_invoke(uint64_t a1, double *a2)
{
  v3 = *(a1 + 32);
  result = [v3 modelUndoIndex];
  if (v3)
  {
    v5 = result;
    [v3 initialSliderButtonAngle];
    v7 = v6;
    result = [v3 initialUndoIndex];
    v8 = v7 + (v5 - result) * -0.34906585;
  }

  else
  {
    v8 = 0.0;
  }

  *a2 = v8;
  return result;
}

- (void)setSliderButtonAngle:(double)angle
{
  self->_sliderButtonAngle = angle;
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self updateUI];
  currentUndoIndex = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex];
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
  v6 = v5;
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
  v8 = v7 + (currentUndoIndex - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]+ 1) * -0.34906585;
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
  v10 = v9;
  initialUndoIndex = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex];
  if (v6 <= v8 + 0.174532925)
  {
    maxUndoIndex = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
    paletteView = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
    if (currentUndoIndex >= maxUndoIndex)
    {
      goto LABEL_11;
    }

    v20 = paletteView;
    WeakRetained = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)WeakRetained _didUndo];

    [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setCurrentUndoIndex:[(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex]+ 1];
    [v20 setNeedsLayout];
    currentUndoIndex2 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex];
    if (currentUndoIndex2 != [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex])
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (v6 < v10 + (currentUndoIndex + ~initialUndoIndex) * -0.34906585 + -0.174532925)
  {
    paletteView = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
    goto LABEL_11;
  }

  paletteView = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
  if (currentUndoIndex > 0)
  {
    v20 = paletteView;
    v17 = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)v17 _didRedo];

    [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setCurrentUndoIndex:[(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex]- 1];
    [v20 setNeedsLayout];
    if ([(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex])
    {
LABEL_9:
      v16 = 1025;
      goto LABEL_10;
    }

LABEL_6:
    v16 = 1026;
LABEL_10:
    feedbackGenerator = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self feedbackGenerator];
    senderIDForLastPanGesture = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self senderIDForLastPanGesture];
    [feedbackGenerator _privateNotificationOccurred:v16 atLocation:senderIDForLastPanGesture senderID:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

    paletteView = v20;
  }

LABEL_11:
}

- (void)_didTapSliderButton:(id)button
{
  if (self)
  {
    context = self->_context;
    buttonCopy = button;
    if (context)
    {
      previousLayout = context->_previousLayout;
      goto LABEL_4;
    }
  }

  else
  {
    buttonCopy2 = button;
  }

  previousLayout = 0;
LABEL_4:
  v7 = previousLayout;
  paletteView = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
  [(PKSqueezePaletteView *)paletteView setCurrentLayout:v7];

  [button removeTarget:self action:sel__didTapSliderButton_ forControlEvents:64];
}

- (double)_outerRadius
{
  paletteView = [self paletteView];
  if (paletteView)
  {
    v2 = paletteView[62];
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *&PKSqueezePaletteViewContentHeight;

  return v2 + v3 * 0.5;
}

- (double)_innerRadius
{
  paletteView = [self paletteView];
  if (paletteView)
  {
    v2 = paletteView[62];
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *&PKSqueezePaletteViewContentHeight;

  return v2 + v3 * -0.5;
}

- (void)updateUI
{
  if ([(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isUpdateUIRunning])
  {
    return;
  }

  if (!self)
  {
    [0 setIsUpdateUIRunning:1];
    goto LABEL_60;
  }

  paletteView = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
  _undoCount = [(PKSqueezePaletteView *)paletteView _undoCount];
  _redoCount = [(PKSqueezePaletteView *)paletteView _redoCount];
  if ([(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex]== _redoCount + _undoCount)
  {
    currentUndoIndex = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex];

    if (currentUndoIndex == _redoCount)
    {
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setIsUpdateUIRunning:1];
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
      v8 = v7 + [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self]* -0.34906585;
      maxUndoIndex = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
      v11 = v10 + (maxUndoIndex - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]) * -0.34906585;
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
      v13 = v12;
      maxUndoIndex2 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
      if (v8 >= v13)
      {
        if (v11 <= v13)
        {
          v15 = 1;
          v13 = v8;
        }

        else
        {
          v15 = 0;
          v16 = v8 - (v11 - v13);
          v11 = v13;
          if (maxUndoIndex2 == 17)
          {
            v13 = v16;
          }

          else
          {
            v13 = v8;
          }
        }
      }

      else
      {
        v15 = 0;
        if (maxUndoIndex2 == 17)
        {
          v11 = v13 - v8 + v11;
        }
      }

      v17 = vabdd_f64(v11, v13);
      if (v17 >= 6.28318531)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v11;
      }

      if (v17 >= 6.28318531)
      {
        v19 = 6.28318531;
      }

      else
      {
        v19 = v13;
      }

      if (v17 >= 6.28318531 || (v20 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex], v20 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]>= 11))
      {
        v15 = 0;
      }

      paletteView2 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
      [(PKSqueezePaletteView *)paletteView2 updateUIStartAngle:v15 endAngle:v18 clockwise:v19 animated:?];

      ornamentLayer = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self ornamentLayer];
      if (ornamentLayer)
      {
        _outerRadius = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
        v24 = _outerRadius - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius];
        v25 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:0 radius:-[PKSqueezePaletteViewExpandedUndoRedoLayout _viewCenter](self) startAngle:? endAngle:? clockwise:?];
        cGPath = [v25 CGPath];
        [ornamentLayer miterLimit];
        CopyByStrokingPath = CGPathCreateCopyByStrokingPath(cGPath, 0, v24, (v17 < 6.28318531), kCGLineJoinMiter, v27);
        cGPath2 = [v25 CGPath];
        [ornamentLayer miterLimit];
        v31 = CGPathCreateCopyByStrokingPath(cGPath2, 0, v24 + _outerRadius * -0.025, (v17 < 6.28318531), kCGLineJoinMiter, v30);
        CopyBySubtractingPath = CGPathCreateCopyBySubtractingPath(CopyByStrokingPath, v31, 1);
        CGPathRelease(CopyByStrokingPath);
        CGPathRelease(v31);
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        [ornamentLayer setPath:CopyBySubtractingPath];
        [MEMORY[0x1E6979518] commit];
        CGPathRelease(CopyBySubtractingPath);
      }

      paletteView3 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
      v34 = MEMORY[0x1E695EFF8];
      if (paletteView3)
      {
        v35 = paletteView3;
        tickLayers = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self tickLayers];
        maxUndoIndex3 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
        v38 = 17;
        if (maxUndoIndex3 < 17)
        {
          v38 = maxUndoIndex3;
        }

        v39 = v38 + 1;
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        if ([tickLayers count] != v39)
        {
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setIsTicksFadedOutAtHead:0];
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setIsTicksFadedOutAtTail:0];
          if (!tickLayers)
          {
            tickLayers = objc_opt_new();
          }

          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setTickLayers:tickLayers];
          [tickLayers makeObjectsPerformSelector:sel_removeFromSuperlayer];
          [tickLayers removeAllObjects];
          if (v39)
          {
            v40 = v39;
            v41 = v35;
            v99 = v40;
            v42 = v40;
            do
            {
              layer = [MEMORY[0x1E69794A0] layer];
              v44 = [MEMORY[0x1E69DC888] colorWithWhite:0.83 alpha:1.0];
              [layer setFillColor:{objc_msgSend(v44, "CGColor")}];

              [layer setAnchorPoint:{0.5, 0.5}];
              [layer setZPosition:1.0];
              v45 = v41[69];
              layer2 = [v45 layer];
              [layer2 addSublayer:layer];

              [tickLayers addObject:layer];
              --v42;
            }

            while (v42);
            v34 = MEMORY[0x1E695EFF8];
            v35 = v41;
            v39 = v99;
          }
        }

        _viewCenter = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _viewCenter];
        v100 = v48;
        _outerRadius2 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
        _outerRadius3 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
        _innerRadius = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius];
        if (v39)
        {
          v98 = _outerRadius2 + (_outerRadius3 - _innerRadius) * -0.5;
          v52 = DKDRoundedRectForScale(0.0, 0.0, _outerRadius2 * 0.1156, _outerRadius2 * 0.1156 * 0.18, 1.0);
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v59 = 0;
          v61 = *v34;
          v60 = v34[1];
          do
          {
            v62 = [tickLayers objectAtIndex:v59];
            v63 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v52 cornerRadius:{v54, v56, v58, 2.0}];
            [v62 setPath:{objc_msgSend(v63, "CGPath")}];

            [v62 setPosition:{_viewCenter, v100}];
            [v62 setBounds:{v52, v54, v56, v58}];
            [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
            v64 = _viewCenter;
            v66 = v65 + (v59 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]) * -0.34906585;
            v67 = PKPointOnArc(v61, v60, v98, v66);
            memset(&v103, 0, sizeof(v103));
            CATransform3DMakeTranslation(&v103, v67, v68, 0.0);
            v101 = v103;
            v69 = v66;
            _viewCenter = v64;
            CATransform3DRotate(&v102, &v101, v69, 0.0, 0.0, 1.0);
            v103 = v102;
            [v62 setTransform:&v102];

            ++v59;
          }

          while (v39 != v59);
        }

        [MEMORY[0x1E6979518] commit];
      }

      context = self->_context;
      if (context)
      {
        v71 = context->_sliderButton;
        if (v71)
        {
          _outerRadius4 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
          _innerRadius2 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius];
          _outerRadius5 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
          v75 = (_outerRadius4 - _innerRadius2) * 0.5 - (_outerRadius5 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius]) * 0.88 * 0.5;
          _outerRadius6 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
          v77 = (_outerRadius6 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius]) * 0.88 * 0.5;
          v78 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius]+ v75 + v77;
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
          v80 = PKPointOnArc(*v34, v34[1], v78, v79);
          v82 = v81;
          sliderButtonConstraintCenterX = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonConstraintCenterX];
          [sliderButtonConstraintCenterX setConstant:v80];

          sliderButtonConstraintCenterY = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonConstraintCenterY];
          [sliderButtonConstraintCenterY setConstant:v82];
        }
      }

      else
      {
        v71 = 0;
      }

      maxUndoIndex4 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
      if (maxUndoIndex4 < 18)
      {
        goto LABEL_60;
      }

      v86 = maxUndoIndex4;
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
      v88 = v87;
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
      v90 = v89 + [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self]* -0.34906585;
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
      v92 = v91;
      initialUndoIndex = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex];
      v94 = v90 + -3.14159265;
      if (v88 > v90 || v88 <= v94 || [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isTicksFadedOutAtHead])
      {
        v95 = v92 + (v86 - initialUndoIndex) * -0.34906585 + 3.14159265;
        if (v88 > v94 || v88 <= v95 || ![(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isTicksFadedOutAtHead]&& ![(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isTicksFadedOutAtTail])
        {
          if (v88 <= v95 && ![(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isTicksFadedOutAtTail])
          {
            [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _fadeOutTickAtTail:?];
            [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _fadeOutTickAtHead:?];
          }

          goto LABEL_60;
        }

        selfCopy2 = self;
        v97 = 0;
      }

      else
      {
        selfCopy2 = self;
        v97 = 1;
      }

      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)selfCopy2 _fadeOutTickAtHead:v97];
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _fadeOutTickAtTail:?];
LABEL_60:

      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setIsUpdateUIRunning:0];
      return;
    }
  }

  else
  {
  }

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _resetUI];
}

- (void)willTransitionToLayout:(id)layout
{
  v13[2] = *MEMORY[0x1E69E9840];
  ornamentLayer = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self ornamentLayer];
  [ornamentLayer removeFromSuperlayer];

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setOrnamentLayer:0];
  tickLayers = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self tickLayers];
  [tickLayers enumerateObjectsUsingBlock:&__block_literal_global_1];

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setTickLayers:0];
  v6 = MEMORY[0x1E696ACD8];
  sliderButtonConstraintCenterX = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonConstraintCenterX];
  v13[0] = sliderButtonConstraintCenterX;
  sliderButtonConstraintCenterY = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonConstraintCenterY];
  v13[1] = sliderButtonConstraintCenterY;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v6 deactivateConstraints:v9];

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setSliderButtonConstraintCenterX:0];
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setSliderButtonConstraintCenterY:0];
  originalSliderButtonConfiguration = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self originalSliderButtonConfiguration];
  if (self)
  {
    context = self->_context;
    if (context)
    {
      context = context->_sliderButton;
    }
  }

  else
  {
    context = 0;
  }

  v12 = context;
  [(PKSqueezePaletteViewExpandedUndoRedoLayoutContext *)v12 setConfiguration:originalSliderButtonConfiguration];

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setHyperInteractor:0];
}

- (void)handlePencilInteractionDidTap:(int64_t)tap
{
  context = self->_context;
  if (context)
  {
    context = context->_previousLayout;
  }

  v6 = context;
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);
  [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v6];
}

- (void)_panGestureHandler:(id)handler
{
  handlerCopy = handler;
  paletteView = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
  if (paletteView)
  {
    state = [handlerCopy state];
    hyperInteractor = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self hyperInteractor];
    v8 = hyperInteractor;
    if ((state - 3) < 2)
    {
      _projectedPoint = [hyperInteractor _projectedPoint];
      if (self)
      {
        v33 = *_projectedPoint;
        [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
        v35 = ((v34 + [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self]* -0.34906585 - v33 + 0.174532925) / 0.34906585);
        maxUndoIndex = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
        if (maxUndoIndex >= v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = maxUndoIndex;
        }

        v38 = v37 & ~(v37 >> 63);
      }

      else
      {
        v38 = 0;
      }

      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setModelUndoIndex:v38];
      [v8 _interactionEnded];
    }

    else
    {
      if (state == 2)
      {
LABEL_6:
        [handlerCopy locationInView:paletteView];
        if (self)
        {
          v11 = v9;
          v12 = v10;
          _viewCenter = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _viewCenter];
          v15 = atan2(v12 - v14, v11 - _viewCenter);
          v16 = fmod(v15, 6.28318531);
          if (v15 <= 6.28318531 && v15 >= 0.0)
          {
            v16 = v15;
          }

          if (v16 < 0.0)
          {
            v16 = v16 + 6.28318531;
          }

          if (v16 == 0.0)
          {
            v18 = 0.0;
          }

          else
          {
            v18 = v16;
          }

          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
          v20 = (v19 / 6.28318531);
          v21 = v18 + (v20 + 1) * 6.28318531;
          v22 = v18 + v20 * 6.28318531;
          v23 = vabdd_f64(v21, v19);
          v24 = vabdd_f64(v22, v19);
          v25 = vabdd_f64(v18 + (v20 - 1) * 6.28318531, v19);
          if (v23 >= v25)
          {
            v21 = v18 + (v20 - 1) * 6.28318531;
          }

          if (v24 >= v25)
          {
            v22 = v18 + (v20 - 1) * 6.28318531;
          }

          if (v23 < v24)
          {
            v22 = v21;
          }

          if (vabdd_f64(v22, v19) <= 3.14159265)
          {
            v26 = v22;
          }

          else
          {
            v26 = v19;
          }

          modelUndoIndex = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self modelUndoIndex];
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
          v29 = v26 - (v28 + (modelUndoIndex - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]) * -0.34906585);
        }

        else
        {
          [0 modelUndoIndex];
          v29 = 0.0;
        }

        _activeEvents = [handlerCopy _activeEvents];
        anyObject = [_activeEvents anyObject];

        [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setSenderIDForLastPanGesture:0];
        if ([anyObject _hidEvent])
        {
          [anyObject _hidEvent];
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setSenderIDForLastPanGesture:IOHIDEventGetSenderID()];
        }

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __65__PKSqueezePaletteViewExpandedUndoRedoLayout__panGestureHandler___block_invoke;
        v39[3] = &__block_descriptor_40_e9_v16__0_d8l;
        *&v39[4] = v29;
        [v8 _interactionChangedMutatingTranslation:v39 velocity:&__block_literal_global_28];

        goto LABEL_36;
      }

      if (state == 1)
      {
        [hyperInteractor _interactionBegan];
        goto LABEL_6;
      }
    }

LABEL_36:
  }
}

double __65__PKSqueezePaletteViewExpandedUndoRedoLayout__panGestureHandler___block_invoke(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

- (void)_fadeOutTickAtHead:(void *)head
{
  if ([head isTicksFadedOutAtHead] != a2)
  {
    [head setIsTicksFadedOutAtHead:a2];
    v4 = 1;
    for (i = 17; i != 13; --i)
    {
      if (a2)
      {
        v6 = v4 * 0.1;
      }

      else
      {
        v6 = 1.0;
      }

      v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.83 alpha:v6];
      tickLayers = [head tickLayers];
      v9 = [tickLayers objectAtIndex:i];
      [v9 setFillColor:{objc_msgSend(v7, "CGColor")}];

      ++v4;
    }
  }
}

- (void)_fadeOutTickAtTail:(void *)tail
{
  if ([tail isTicksFadedOutAtTail] != a2)
  {
    [tail setIsTicksFadedOutAtTail:a2];
    maxUndoIndex = [tail maxUndoIndex];
    v5 = maxUndoIndex + 1;
    for (i = 1; i != 5; ++i)
    {
      if (a2)
      {
        v7 = i * 0.1;
      }

      else
      {
        v7 = 1.0;
      }

      v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.83 alpha:v7];
      tickLayers = [tail tickLayers];
      v10 = [tickLayers objectAtIndex:i + maxUndoIndex - 18 * (v5 / 0x12)];
      [v10 setFillColor:{objc_msgSend(v8, "CGColor")}];

      ++v5;
    }
  }
}

- (void)_hyperInteractorApplyPresentationPoint:(id)point
{
  pointCopy = point;
  hyperInteractor = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self hyperInteractor];

  if (hyperInteractor == pointCopy)
  {
    paletteView = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
    [paletteView setNeedsLayout];

    paletteView2 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
    [paletteView2 layoutIfNeeded];
  }
}

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end
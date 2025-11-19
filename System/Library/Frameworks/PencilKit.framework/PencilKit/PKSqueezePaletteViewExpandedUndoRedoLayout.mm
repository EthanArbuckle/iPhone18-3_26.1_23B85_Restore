@interface PKSqueezePaletteViewExpandedUndoRedoLayout
- (PKSqueezePaletteView)paletteView;
- (double)_innerRadius;
- (double)_outerRadius;
- (double)_viewCenter;
- (id)initWithContext:(void *)a3 sliderButtonConfiguration:;
- (void)_didTapSliderButton:(id)a3;
- (void)_fadeOutTickAtHead:(void *)a1;
- (void)_fadeOutTickAtTail:(void *)a1;
- (void)_hyperInteractorApplyPresentationPoint:(id)a3;
- (void)_panGestureHandler:(id)a3;
- (void)_resetUI;
- (void)handlePencilInteractionDidTap:(int64_t)a3;
- (void)setSliderButtonAngle:(double)a3;
- (void)updateUI;
- (void)willTransitionToLayout:(id)a3;
@end

@implementation PKSqueezePaletteViewExpandedUndoRedoLayout

- (id)initWithContext:(void *)a3 sliderButtonConfiguration:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = PKSqueezePaletteViewExpandedUndoRedoLayout;
    v8 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a2);
      objc_storeStrong(a1 + 11, a3);
      v9 = objc_alloc(MEMORY[0x1E69DCCF0]);
      v10 = MEMORY[0x1E69DD600];
      v11 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F47C0F80, &unk_1F47C0F98, 0}];
      v12 = [v10 privateConfigurationForTypes:v11];
      v13 = [v9 initWithConfiguration:v12];
      v14 = a1[18];
      a1[18] = v13;

      if (v6)
      {
        v15 = v6[2];
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      [v16 addTarget:a1 action:sel__panGestureHandler_];
    }
  }

  return a1;
}

- (void)_resetUI
{
  v67[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v58 = [a1 paletteView];
    if (v58)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v3 = [(PKSqueezePaletteView *)WeakRetained _undoCount];

      v4 = objc_loadWeakRetained((a1 + 16));
      v5 = [(PKSqueezePaletteView *)v4 _redoCount];

      *(a1 + 32) = v5 + v3;
      *(a1 + 40) = v5;
      *(a1 + 48) = v5;
      *(a1 + 56) = v5;
      v54 = [a1 ornamentLayer];
      if (!v54)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
        v7 = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:{1.0, 0}];
        v54 = v6;
        [v6 setFillColor:{objc_msgSend(v7, "CGColor")}];

        v8 = [v58 layer];
        [v8 addSublayer:v6];

        [v6 setZPosition:3.0];
        [a1 setOrnamentLayer:v6];
      }

      v9 = *(a1 + 24);
      if (!v9 || (v10 = *(v9 + 8)) == 0)
      {
        PKCrash();
      }

      v60 = v10;
      v11 = [v10 layer];
      [v11 setZPosition:2.0];

      [v60 center];
      v13 = v12;
      v15 = v14;
      v16 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)a1 _viewCenter];
      v18 = atan2(v15 - v17, v13 - v16);
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

      *(a1 + 64) = v19;
      *(a1 + 72) = v19;
      v21 = *(MEMORY[0x1E695EFD0] + 16);
      v64 = *MEMORY[0x1E695EFD0];
      v65 = v21;
      v66 = *(MEMORY[0x1E695EFD0] + 32);
      [v60 setTransform:{&v64, v54}];
      v22 = [v60 configuration];
      v23 = [v22 copy];
      v24 = *(a1 + 80);
      *(a1 + 80) = v23;

      v25 = [a1 sliderButtonConfiguration];
      [v60 setConfiguration:v25];

      v26 = [a1 sliderButtonConstraintCenterX];
      LODWORD(v25) = v26 == 0;

      if (v25)
      {
        v27 = [v60 centerXAnchor];
        v28 = [v58 centerXAnchor];
        v29 = [v27 constraintEqualToAnchor:v28];
        [a1 setSliderButtonConstraintCenterX:v29];

        v30 = [v60 centerYAnchor];
        v31 = [v58 centerYAnchor];
        v32 = [v30 constraintEqualToAnchor:v31];
        [a1 setSliderButtonConstraintCenterY:v32];

        v33 = MEMORY[0x1E696ACD8];
        v34 = [a1 sliderButtonConstraintCenterX];
        v67[0] = v34;
        v35 = [a1 sliderButtonConstraintCenterY];
        v67[1] = v35;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
        [v33 activateConstraints:v36];
      }

      v37 = [v60 targetForAction:sel__didTapSliderButton_ withSender:0];
      v38 = v37 == 0;

      if (v38)
      {
        [v60 addTarget:a1 action:sel__didTapSliderButton_ forControlEvents:64];
      }

      v39 = [a1 panGestureRecognizer];
      v40 = v39 == 0;

      if (v40)
      {
        v41 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:a1 action:sel__panGestureHandler_];
        [v60 addGestureRecognizer:v41];
        [a1 setPanGestureRecognizer:v41];
      }

      v59 = [objc_alloc(MEMORY[0x1E69DD530]) initWithDimensions:1];
      [v59 _setDelegate:a1];
      [a1 setHyperInteractor:v59];
      v57 = [objc_alloc(MEMORY[0x1E69DD520]) initWithDimensions:1];
      [v57 _setMaximumDistance:0.13962634];
      [v59 _setExtender:v57];
      v56 = [objc_alloc(MEMORY[0x1E69DD548]) initWithDimensions:1];
      v42 = objc_opt_new();
      if (([a1 maxUndoIndex] & 0x8000000000000000) == 0)
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
          *&v66 = a1;
          *(&v66 + 1) = v43 + 1;
          [v45 _mutateValue:&v64];
          [v42 addObject:v45];

          ++v43;
        }

        while (v43 < [a1 maxUndoIndex]);
      }

      [v56 _setRegions:v42];
      [v59 _setRegion:v56];
      v46 = [objc_alloc(MEMORY[0x1E69DD528]) initWithDimensions:1];
      [v59 _setAnimator:v46];
      objc_initWeak(&location, a1);
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __69__PKSqueezePaletteViewExpandedUndoRedoLayout__installHyperInteractor__block_invoke_2;
      newValue[3] = &unk_1E82D69B8;
      objc_copyWeak(&v62, &location);
      v47 = objc_loadWeakRetained((a1 + 16));
      v49 = v47;
      if (v47)
      {
        objc_setProperty_nonatomic_copy(v47, v48, newValue, 592);
      }

      objc_destroyWeak(&v62);
      objc_destroyWeak(&location);

      v50 = *(a1 + 24);
      if (v50)
      {
        v51 = *(v50 + 16);
        v52 = v51;
        if (v51 && ([v51 state] == 1 || objc_msgSend(v52, "state") == 2))
        {
          v53 = [a1 hyperInteractor];
          [v53 _interactionBegan];
        }
      }

      else
      {
        v52 = 0;
      }

      [a1 updateUI];
    }
  }
}

- (double)_viewCenter
{
  v1 = [a1 paletteView];
  [v1 bounds];
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

- (void)setSliderButtonAngle:(double)a3
{
  self->_sliderButtonAngle = a3;
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self updateUI];
  v4 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex];
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
  v6 = v5;
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
  v8 = v7 + (v4 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]+ 1) * -0.34906585;
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
  v10 = v9;
  v11 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex];
  if (v6 <= v8 + 0.174532925)
  {
    v13 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
    v12 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
    if (v4 >= v13)
    {
      goto LABEL_11;
    }

    v20 = v12;
    WeakRetained = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)WeakRetained _didUndo];

    [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setCurrentUndoIndex:[(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex]+ 1];
    [v20 setNeedsLayout];
    v15 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex];
    if (v15 != [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex])
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (v6 < v10 + (v4 + ~v11) * -0.34906585 + -0.174532925)
  {
    v12 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
    goto LABEL_11;
  }

  v12 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
  if (v4 > 0)
  {
    v20 = v12;
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
    v18 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self feedbackGenerator];
    v19 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self senderIDForLastPanGesture];
    [v18 _privateNotificationOccurred:v16 atLocation:v19 senderID:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

    v12 = v20;
  }

LABEL_11:
}

- (void)_didTapSliderButton:(id)a3
{
  if (self)
  {
    context = self->_context;
    v5 = a3;
    if (context)
    {
      previousLayout = context->_previousLayout;
      goto LABEL_4;
    }
  }

  else
  {
    v9 = a3;
  }

  previousLayout = 0;
LABEL_4:
  v7 = previousLayout;
  v8 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
  [(PKSqueezePaletteView *)v8 setCurrentLayout:v7];

  [a3 removeTarget:self action:sel__didTapSliderButton_ forControlEvents:64];
}

- (double)_outerRadius
{
  v1 = [a1 paletteView];
  if (v1)
  {
    v2 = v1[62];
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
  v1 = [a1 paletteView];
  if (v1)
  {
    v2 = v1[62];
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

  v3 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
  v4 = [(PKSqueezePaletteView *)v3 _undoCount];
  v5 = [(PKSqueezePaletteView *)v3 _redoCount];
  if ([(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex]== v5 + v4)
  {
    v6 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self currentUndoIndex];

    if (v6 == v5)
    {
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setIsUpdateUIRunning:1];
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
      v8 = v7 + [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self]* -0.34906585;
      v9 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
      v11 = v10 + (v9 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]) * -0.34906585;
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
      v13 = v12;
      v14 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
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
          if (v14 == 17)
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
        if (v14 == 17)
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

      v21 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
      [(PKSqueezePaletteView *)v21 updateUIStartAngle:v15 endAngle:v18 clockwise:v19 animated:?];

      v22 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self ornamentLayer];
      if (v22)
      {
        v23 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
        v24 = v23 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius];
        v25 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:0 radius:-[PKSqueezePaletteViewExpandedUndoRedoLayout _viewCenter](self) startAngle:? endAngle:? clockwise:?];
        v26 = [v25 CGPath];
        [v22 miterLimit];
        CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v26, 0, v24, (v17 < 6.28318531), kCGLineJoinMiter, v27);
        v29 = [v25 CGPath];
        [v22 miterLimit];
        v31 = CGPathCreateCopyByStrokingPath(v29, 0, v24 + v23 * -0.025, (v17 < 6.28318531), kCGLineJoinMiter, v30);
        CopyBySubtractingPath = CGPathCreateCopyBySubtractingPath(CopyByStrokingPath, v31, 1);
        CGPathRelease(CopyByStrokingPath);
        CGPathRelease(v31);
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        [v22 setPath:CopyBySubtractingPath];
        [MEMORY[0x1E6979518] commit];
        CGPathRelease(CopyBySubtractingPath);
      }

      v33 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
      v34 = MEMORY[0x1E695EFF8];
      if (v33)
      {
        v35 = v33;
        v36 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self tickLayers];
        v37 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
        v38 = 17;
        if (v37 < 17)
        {
          v38 = v37;
        }

        v39 = v38 + 1;
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        if ([v36 count] != v39)
        {
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setIsTicksFadedOutAtHead:0];
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setIsTicksFadedOutAtTail:0];
          if (!v36)
          {
            v36 = objc_opt_new();
          }

          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setTickLayers:v36];
          [v36 makeObjectsPerformSelector:sel_removeFromSuperlayer];
          [v36 removeAllObjects];
          if (v39)
          {
            v40 = v39;
            v41 = v35;
            v99 = v40;
            v42 = v40;
            do
            {
              v43 = [MEMORY[0x1E69794A0] layer];
              v44 = [MEMORY[0x1E69DC888] colorWithWhite:0.83 alpha:1.0];
              [v43 setFillColor:{objc_msgSend(v44, "CGColor")}];

              [v43 setAnchorPoint:{0.5, 0.5}];
              [v43 setZPosition:1.0];
              v45 = v41[69];
              v46 = [v45 layer];
              [v46 addSublayer:v43];

              [v36 addObject:v43];
              --v42;
            }

            while (v42);
            v34 = MEMORY[0x1E695EFF8];
            v35 = v41;
            v39 = v99;
          }
        }

        v47 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _viewCenter];
        v100 = v48;
        v49 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
        v50 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
        v51 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius];
        if (v39)
        {
          v98 = v49 + (v50 - v51) * -0.5;
          v52 = DKDRoundedRectForScale(0.0, 0.0, v49 * 0.1156, v49 * 0.1156 * 0.18, 1.0);
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v59 = 0;
          v61 = *v34;
          v60 = v34[1];
          do
          {
            v62 = [v36 objectAtIndex:v59];
            v63 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v52 cornerRadius:{v54, v56, v58, 2.0}];
            [v62 setPath:{objc_msgSend(v63, "CGPath")}];

            [v62 setPosition:{v47, v100}];
            [v62 setBounds:{v52, v54, v56, v58}];
            [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
            v64 = v47;
            v66 = v65 + (v59 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]) * -0.34906585;
            v67 = PKPointOnArc(v61, v60, v98, v66);
            memset(&v103, 0, sizeof(v103));
            CATransform3DMakeTranslation(&v103, v67, v68, 0.0);
            v101 = v103;
            v69 = v66;
            v47 = v64;
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
          v72 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
          v73 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius];
          v74 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
          v75 = (v72 - v73) * 0.5 - (v74 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius]) * 0.88 * 0.5;
          v76 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _outerRadius];
          v77 = (v76 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius]) * 0.88 * 0.5;
          v78 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _innerRadius]+ v75 + v77;
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
          v80 = PKPointOnArc(*v34, v34[1], v78, v79);
          v82 = v81;
          v83 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonConstraintCenterX];
          [v83 setConstant:v80];

          v84 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonConstraintCenterY];
          [v84 setConstant:v82];
        }
      }

      else
      {
        v71 = 0;
      }

      v85 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
      if (v85 < 18)
      {
        goto LABEL_60;
      }

      v86 = v85;
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonAngle];
      v88 = v87;
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
      v90 = v89 + [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self]* -0.34906585;
      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
      v92 = v91;
      v93 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex];
      v94 = v90 + -3.14159265;
      if (v88 > v90 || v88 <= v94 || [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isTicksFadedOutAtHead])
      {
        v95 = v92 + (v86 - v93) * -0.34906585 + 3.14159265;
        if (v88 > v94 || v88 <= v95 || ![(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isTicksFadedOutAtHead]&& ![(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isTicksFadedOutAtTail])
        {
          if (v88 <= v95 && ![(PKSqueezePaletteViewExpandedUndoRedoLayout *)self isTicksFadedOutAtTail])
          {
            [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _fadeOutTickAtTail:?];
            [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _fadeOutTickAtHead:?];
          }

          goto LABEL_60;
        }

        v96 = self;
        v97 = 0;
      }

      else
      {
        v96 = self;
        v97 = 1;
      }

      [(PKSqueezePaletteViewExpandedUndoRedoLayout *)v96 _fadeOutTickAtHead:v97];
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

- (void)willTransitionToLayout:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self ornamentLayer];
  [v4 removeFromSuperlayer];

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setOrnamentLayer:0];
  v5 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self tickLayers];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_1];

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setTickLayers:0];
  v6 = MEMORY[0x1E696ACD8];
  v7 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonConstraintCenterX];
  v13[0] = v7;
  v8 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self sliderButtonConstraintCenterY];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v6 deactivateConstraints:v9];

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setSliderButtonConstraintCenterX:0];
  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setSliderButtonConstraintCenterY:0];
  v10 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self originalSliderButtonConfiguration];
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
  [(PKSqueezePaletteViewExpandedUndoRedoLayoutContext *)v12 setConfiguration:v10];

  [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setHyperInteractor:0];
}

- (void)handlePencilInteractionDidTap:(int64_t)a3
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

- (void)_panGestureHandler:(id)a3
{
  v4 = a3;
  v5 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
  if (v5)
  {
    v6 = [v4 state];
    v7 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self hyperInteractor];
    v8 = v7;
    if ((v6 - 3) < 2)
    {
      v32 = [v7 _projectedPoint];
      if (self)
      {
        v33 = *v32;
        [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
        v35 = ((v34 + [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self]* -0.34906585 - v33 + 0.174532925) / 0.34906585);
        v36 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self maxUndoIndex];
        if (v36 >= v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = v36;
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
      if (v6 == 2)
      {
LABEL_6:
        [v4 locationInView:v5];
        if (self)
        {
          v11 = v9;
          v12 = v10;
          v13 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self _viewCenter];
          v15 = atan2(v12 - v14, v11 - v13);
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

          v27 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self modelUndoIndex];
          [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialSliderButtonAngle];
          v29 = v26 - (v28 + (v27 - [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self initialUndoIndex]) * -0.34906585);
        }

        else
        {
          [0 modelUndoIndex];
          v29 = 0.0;
        }

        v30 = [v4 _activeEvents];
        v31 = [v30 anyObject];

        [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self setSenderIDForLastPanGesture:0];
        if ([v31 _hidEvent])
        {
          [v31 _hidEvent];
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

      if (v6 == 1)
      {
        [v7 _interactionBegan];
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

- (void)_fadeOutTickAtHead:(void *)a1
{
  if ([a1 isTicksFadedOutAtHead] != a2)
  {
    [a1 setIsTicksFadedOutAtHead:a2];
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
      v8 = [a1 tickLayers];
      v9 = [v8 objectAtIndex:i];
      [v9 setFillColor:{objc_msgSend(v7, "CGColor")}];

      ++v4;
    }
  }
}

- (void)_fadeOutTickAtTail:(void *)a1
{
  if ([a1 isTicksFadedOutAtTail] != a2)
  {
    [a1 setIsTicksFadedOutAtTail:a2];
    v4 = [a1 maxUndoIndex];
    v5 = v4 + 1;
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
      v9 = [a1 tickLayers];
      v10 = [v9 objectAtIndex:i + v4 - 18 * (v5 / 0x12)];
      [v10 setFillColor:{objc_msgSend(v8, "CGColor")}];

      ++v5;
    }
  }
}

- (void)_hyperInteractorApplyPresentationPoint:(id)a3
{
  v4 = a3;
  v5 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self hyperInteractor];

  if (v5 == v4)
  {
    v6 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
    [v6 setNeedsLayout];

    v7 = [(PKSqueezePaletteViewExpandedUndoRedoLayout *)self paletteView];
    [v7 layoutIfNeeded];
  }
}

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end
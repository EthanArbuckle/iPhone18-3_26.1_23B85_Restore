@interface PKSqueezePaletteView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)initWithBackgroundView:(void *)a3 radius:(double)a4 contentHeight:(double)a5 layoutFactory:(double)a6 azimuth:;
- (uint64_t)_canRedo;
- (uint64_t)_canSelectTool:(uint64_t)a3 atIndex:;
- (uint64_t)_canUndo;
- (uint64_t)_handleResizing;
- (uint64_t)_redoCount;
- (uint64_t)_undoCount;
- (uint64_t)_updateShadows;
- (uint64_t)setColorUserInterfaceStyle:(uint64_t)result;
- (uint64_t)updateUIStartAngle:(int)a3 endAngle:(double)a4 clockwise:(double)a5 animated:;
- (void)_didRedo;
- (void)_didSelectColor:(uint64_t)a3 isFromExtendedColorPicker:(uint64_t)a4 isContinuousColorSelection:;
- (void)_didSelectTool:(uint64_t)a3 atIndex:;
- (void)_didTapMoreOptionsButton:(uint64_t)a1;
- (void)_didTapMulticolorButton:(void *)a3 currentSelectedColor:;
- (void)_didTapRuler;
- (void)_didTapShapesButton:(uint64_t)a1;
- (void)_didTapSignatureButton:(uint64_t)a1;
- (void)_didTapStickersButton:(uint64_t)a1;
- (void)_didTapTextBoxButton:(uint64_t)a1;
- (void)_didUndo;
- (void)_updateBaseShapeLayerPathAnimated:(uint64_t)a1;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pencilInteractionDidTap:(uint64_t)a1;
- (void)setCurrentLayout:(uint64_t)a1;
- (void)setDelegate:(uint64_t)a1;
@end

@implementation PKSqueezePaletteView

- (id)initWithBackgroundView:(void *)a3 radius:(double)a4 contentHeight:(double)a5 layoutFactory:(double)a6 azimuth:
{
  v93[4] = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = a3;
  if (a1)
  {
    v91.receiver = a1;
    v91.super_class = PKSqueezePaletteView;
    v14 = objc_msgSendSuper2(&v91, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    a1 = v14;
    if (v14)
    {
      v87 = v13;
      v88 = v12;
      objc_storeStrong(v14 + 67, a2);
      *(a1 + 62) = a4;
      *(a1 + 63) = a5;
      a1[64] = 0;
      a1[65] = 0;
      objc_storeStrong(a1 + 70, a3);
      v15 = a1[71];
      a1[71] = 0;

      *(a1 + 66) = a6;
      v16 = [MEMORY[0x1E69794A0] layer];
      v17 = a1[52];
      a1[52] = v16;

      [a1[52] setLineWidth:*(a1 + 63)];
      v18 = *MEMORY[0x1E6979E78];
      [a1[52] setLineCap:*MEMORY[0x1E6979E78]];
      [a1[52] setStrokeStart:0.0];
      [a1[52] setStrokeEnd:1.0];
      [a1[52] setFillColor:0];
      v19 = [MEMORY[0x1E69794A0] layer];
      v20 = a1[53];
      a1[53] = v19;

      [a1[53] setLineWidth:*(a1 + 63)];
      [a1[53] setLineCap:v18];
      [a1[53] setStrokeStart:0.0];
      [a1[53] setStrokeEnd:1.0];
      [a1[53] setFillColor:0];
      v21 = [a1 layer];
      [v21 addSublayer:a1[52]];

      v22 = [a1 layer];
      [v22 addSublayer:a1[53]];

      v23 = a1[67];
      if (v23)
      {
        [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
        [a1 addSubview:a1[67]];
      }

      v24 = objc_alloc_init(PKPalettePassthroughView);
      v25 = a1[68];
      a1[68] = v24;

      [a1[68] setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1[68] setAccessibilityIdentifier:@"MiniPalette-ToolPickerView"];
      [a1 addSubview:a1[68]];
      v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v27 = a1[69];
      a1[69] = v26;

      [a1[69] setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1[69] setAccessibilityIdentifier:@"MiniPalette-ContentView"];
      [a1 addSubview:a1[69]];
      v28 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v29 = a1[54];
      a1[54] = v28;

      [a1[54] setLineWidth:*(a1 + 63)];
      [a1[54] setLineCap:v18];
      [a1[54] setStrokeStart:0.0];
      [a1[54] setStrokeEnd:1.0];
      [a1[54] setFillColor:0];
      v30 = [MEMORY[0x1E69DC888] blackColor];
      [a1[54] setStrokeColor:{objc_msgSend(v30, "CGColor")}];

      v31 = a1[54];
      v32 = [a1[67] layer];
      [v32 setMask:v31];

      v33 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v34 = a1[55];
      a1[55] = v33;

      [a1[55] setLineWidth:*(a1 + 63)];
      [a1[55] setLineCap:v18];
      [a1[55] setStrokeStart:0.0];
      [a1[55] setStrokeEnd:1.0];
      [a1[55] setFillColor:0];
      v35 = [MEMORY[0x1E69DC888] blackColor];
      [a1[55] setStrokeColor:{objc_msgSend(v35, "CGColor")}];

      v36 = a1[55];
      v37 = [a1[69] layer];
      [v37 setMask:v36];

      v38 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v39 = a1[56];
      a1[56] = v38;

      [a1[56] setLineWidth:*&PKSqueezePaletteViewToolsContentClippingShapeMaskExtraLineWidth + *(a1 + 63) + 16.0];
      [a1[56] setLineCap:v18];
      [a1[56] setStrokeStart:0.0];
      [a1[56] setStrokeEnd:1.0];
      [a1[56] setFillColor:0];
      v40 = [MEMORY[0x1E69DC888] blackColor];
      [a1[56] setStrokeColor:{objc_msgSend(v40, "CGColor")}];

      v41 = a1[56];
      v42 = [a1[68] layer];
      [v42 setMask:v41];

      v43 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __90__PKSqueezePaletteView_initWithBackgroundView_radius_contentHeight_layoutFactory_azimuth___block_invoke;
      v89[3] = &unk_1E82D9908;
      a1 = a1;
      v90 = a1;
      v44 = [a1 registerForTraitChanges:v43 withHandler:v89];

      v45 = a1[67];
      if (v45)
      {
        v77 = MEMORY[0x1E696ACD8];
        v85 = [v45 topAnchor];
        v83 = [a1 topAnchor];
        v81 = [v85 constraintEqualToAnchor:v83];
        v93[0] = v81;
        v79 = [a1[67] leadingAnchor];
        v46 = [a1 leadingAnchor];
        v47 = [v79 constraintEqualToAnchor:v46];
        v93[1] = v47;
        v48 = [a1[67] trailingAnchor];
        v49 = [a1 trailingAnchor];
        v50 = [v48 constraintEqualToAnchor:v49];
        v93[2] = v50;
        v51 = [a1[67] bottomAnchor];
        v52 = [a1 bottomAnchor];
        v53 = [v51 constraintEqualToAnchor:v52];
        v93[3] = v53;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:4];
        [v77 activateConstraints:v54];
      }

      v72 = MEMORY[0x1E696ACD8];
      v86 = [a1[68] topAnchor];
      v84 = [a1 topAnchor];
      v82 = [v86 constraintEqualToAnchor:v84];
      v92[0] = v82;
      v80 = [a1[68] leadingAnchor];
      v78 = [a1 leadingAnchor];
      v76 = [v80 constraintEqualToAnchor:v78];
      v92[1] = v76;
      v75 = [a1[68] trailingAnchor];
      v74 = [a1 trailingAnchor];
      v73 = [v75 constraintEqualToAnchor:v74];
      v92[2] = v73;
      v71 = [a1[68] bottomAnchor];
      v70 = [a1 bottomAnchor];
      v69 = [v71 constraintEqualToAnchor:v70];
      v92[3] = v69;
      v68 = [a1[69] topAnchor];
      v67 = [a1 topAnchor];
      v66 = [v68 constraintEqualToAnchor:v67];
      v92[4] = v66;
      v65 = [a1[69] leadingAnchor];
      v55 = [a1 leadingAnchor];
      v56 = [v65 constraintEqualToAnchor:v55];
      v92[5] = v56;
      v57 = [a1[69] trailingAnchor];
      v58 = [a1 trailingAnchor];
      v59 = [v57 constraintEqualToAnchor:v58];
      v92[6] = v59;
      v60 = [a1[69] bottomAnchor];
      v61 = [a1 bottomAnchor];
      v62 = [v60 constraintEqualToAnchor:v61];
      v92[7] = v62;
      v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:8];
      [v72 activateConstraints:v63];

      [(PKSqueezePaletteView *)a1 _updateShadows];
      [a1 setAccessibilityIdentifier:@"Circular-MiniPalette"];

      v13 = v87;
      v12 = v88;
    }
  }

  return a1;
}

uint64_t __90__PKSqueezePaletteView_initWithBackgroundView_radius_contentHeight_layoutFactory_azimuth___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "System trait color appearance did change", v4, 2u);
  }

  return [(PKSqueezePaletteView *)*(a1 + 32) _updateShadows];
}

- (uint64_t)_updateShadows
{
  if (result)
  {
    v1 = result;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    PKSqueezePaletteViewConfigureShadow(*(v1 + 416), 1);
    PKSqueezePaletteViewConfigureShadow(*(v1 + 424), 0);
    v2 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(v1 + 480) radius:*(v1 + 464) startAngle:*(v1 + 472) endAngle:*(v1 + 496) clockwise:{-3.14159265, 9.42477796}];
    [*(v1 + 416) setPath:{objc_msgSend(v2, "CGPath")}];

    v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [*(v1 + 416) setStrokeColor:{objc_msgSend(v3, "CGColor")}];

    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [*(v1 + 424) setStrokeColor:{objc_msgSend(v4, "CGColor")}];

    v5 = MEMORY[0x1E6979518];

    return [v5 commit];
  }

  return result;
}

- (void)dealloc
{
  baseShapeLayerPathForHitTesting = self->_baseShapeLayerPathForHitTesting;
  if (baseShapeLayerPathForHitTesting)
  {
    CGPathRelease(baseShapeLayerPathForHitTesting);
    self->_baseShapeLayerPathForHitTesting = 0;
  }

  v4.receiver = self;
  v4.super_class = PKSqueezePaletteView;
  [(PKSqueezePaletteView *)&v4 dealloc];
}

- (uint64_t)setColorUserInterfaceStyle:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 584) != a2)
    {
      *(result + 584) = a2;
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v3 = *(v2 + 568);

        return [v3 colorUserInterfaceStyleDidChange];
      }
    }
  }

  return result;
}

- (void)setDelegate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 488));

    v3 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak((a1 + 488), obj);
      [*(a1 + 568) updateUI];
      v3 = obj;
    }
  }
}

- (void)setCurrentLayout:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (a1 && *(a1 + 568) != v4)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 568);
      v9 = 138478083;
      v10 = v5;
      v11 = 2113;
      v12 = v7;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Update layout to: %{private}@, from: %{private}@", &v9, 0x16u);
    }

    v8 = *(a1 + 568);
    if (v8)
    {
      [v8 willTransitionToLayout:v5];
    }

    objc_storeStrong((a1 + 568), a2);
    [*(a1 + 568) setPaletteView:a1];
    [*(a1 + 568) setupUI];
  }
}

- (uint64_t)updateUIStartAngle:(int)a3 endAngle:(double)a4 clockwise:(double)a5 animated:
{
  if (result)
  {
    v5 = result;
    *(result + 512) = a4;
    *(result + 520) = a5;
    *(result + 480) = a2;
    [(PKSqueezePaletteView *)result _updateBaseShapeLayerPathAnimated:a3];
    v6 = *(v5 + 568);

    return [v6 updateUI];
  }

  return result;
}

- (void)_updateBaseShapeLayerPathAnimated:(uint64_t)a1
{
  if (a1)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(a1 + 480) radius:*(a1 + 464) startAngle:*(a1 + 472) endAngle:*(a1 + 496) clockwise:{-3.14159265, 9.42477796}];
    [*(a1 + 432) setPath:{objc_msgSend(v3, "CGPath")}];

    [MEMORY[0x1E6979518] commit];
    v4 = *(a1 + 456);
    if (v4)
    {
      CGPathRelease(v4);
      *(a1 + 456) = 0;
    }

    v5 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(a1 + 480) radius:*(a1 + 464) startAngle:*(a1 + 472) endAngle:*(a1 + 496) clockwise:{*(a1 + 512), *(a1 + 520)}];
    v6 = [v5 CGPath];
    [*(a1 + 432) lineWidth];
    v8 = v7;
    [*(a1 + 432) miterLimit];
    *(a1 + 456) = CGPathCreateCopyByStrokingPath(v6, 0, v8, kCGLineCapRound, kCGLineJoinMiter, v9);
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v10 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(a1 + 480) radius:*(a1 + 464) startAngle:*(a1 + 472) endAngle:*(a1 + 496) clockwise:{-3.14159265, 9.42477796}];
    [*(a1 + 440) setPath:{objc_msgSend(v10, "CGPath")}];

    v11 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(a1 + 480) radius:*(a1 + 464) startAngle:*(a1 + 472) endAngle:*(a1 + 496) + (*&PKSqueezePaletteViewToolsContentClippingShapeMaskExtraLineWidth + 16.0) * 0.5 clockwise:{-3.14159265, 9.42477796}];
    [*(a1 + 448) setPath:{objc_msgSend(v11, "CGPath")}];

    [MEMORY[0x1E6979518] commit];
    [(PKSqueezePaletteView *)a1 _updateShadows];
    v12 = (*(a1 + 512) + 3.14159265) / 12.5663706;
    v13 = (*(a1 + 520) + 3.14159265) / 12.5663706;
    if (!*(a1 + 408))
    {
      v14 = [[PKSqueezePaletteViewResizeHandle alloc] initWithStrokeStartPresentationValue:v12 strokeEndPresentationValue:v13];
      v15 = *(a1 + 408);
      *(a1 + 408) = v14;

      [(PKSqueezePaletteView *)a1 _handleResizing];
    }

    objc_initWeak(&location, a1);
    v16 = *(a1 + 408);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__PKSqueezePaletteView__updateBaseShapeLayerPathAnimated___block_invoke;
    v18[3] = &unk_1E82D69B8;
    objc_copyWeak(&v19, &location);
    [(PKSqueezePaletteViewResizeHandle *)v16 resizeToStrokeStart:a2 strokeEnd:v18 animated:0 resizeHandler:v12 completion:v13];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)pencilInteractionDidTap:(uint64_t)a1
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v5)
      {
        v6 = *(a1 + 568);
        v7 = 138477827;
        v8 = v6;
        _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Forward Pencil tap interaction to layout: %{private}@", &v7, 0xCu);
      }

      [*(a1 + 568) handlePencilInteractionDidTap:a2];
    }

    else
    {
      if (v5)
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Ignore Pencil tap interaction.", &v7, 2u);
      }
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(PKSqueezePaletteView *)self convertPoint:self->_toolsContentView toView:x, y];
  v8 = [(UIView *)self->_toolsContentView hitTest:v7 withEvent:?];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PKSqueezePaletteView;
    v9 = [(PKSqueezePaletteView *)&v14 hitTest:v7 withEvent:x, y];
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 == self->_toolsContentView || ![(UIView *)v9 isDescendantOfView:?])
  {
    v16.x = x;
    v16.y = y;
    if (CGPathContainsPoint(self->_baseShapeLayerPathForHitTesting, 0, v16, 0))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v9 = v11;
  }

LABEL_10:
  v12 = v9;

  return v12;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKSqueezePaletteView;
  [(PKSqueezePaletteView *)&v8 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(PKSqueezePaletteView *)self bounds];
  [(CAShapeLayer *)self->_baseShapeLayer setFrame:?];
  [(PKSqueezePaletteView *)self bounds];
  [(CAShapeLayer *)self->_contentClippingShapeMask setFrame:?];
  [(PKSqueezePaletteView *)self bounds];
  [(CAShapeLayer *)self->_toolsContentClippingShapeMask setFrame:?];
  [(PKSqueezePaletteView *)self bounds];
  [(CAShapeLayer *)self->_largeShadow setFrame:?];
  [(PKSqueezePaletteView *)self bounds];
  [(CAShapeLayer *)self->_smallShadow setFrame:?];
  [MEMORY[0x1E6979518] commit];
  [(PKSqueezePaletteView *)self bounds];
  v5 = v4 * 0.5;
  if (self->_viewCenter.x != v3 * 0.5 || self->_viewCenter.y != v5)
  {
    self->_viewCenter.x = v3 * 0.5;
    self->_viewCenter.y = v5;
    [(PKSqueezePaletteView *)self _updateBaseShapeLayerPathAnimated:?];
  }

  layoutSubviewsHandler = self->_layoutSubviewsHandler;
  if (layoutSubviewsHandler)
  {
    layoutSubviewsHandler[2]();
  }
}

- (uint64_t)_handleResizing
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 408);
    v3 = 0.0;
    if (v2)
    {
      [*(v2 + 8) presentationValue];
      v5 = v4;
      v6 = *(v1 + 408);
      if (v6)
      {
        [*(v6 + 16) presentationValue];
        v3 = v7;
      }
    }

    else
    {
      v5 = 0.0;
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [*(v1 + 432) setStrokeStart:v5];
    [*(v1 + 432) setStrokeEnd:v3];
    [*(v1 + 440) setStrokeStart:v5];
    [*(v1 + 440) setStrokeEnd:v3];
    [*(v1 + 448) setStrokeStart:v5];
    [*(v1 + 448) setStrokeEnd:v3];
    [*(v1 + 416) setStrokeStart:v5];
    [*(v1 + 416) setStrokeEnd:v3];
    [*(v1 + 424) setStrokeStart:v5];
    [*(v1 + 424) setStrokeEnd:v3];
    v8 = MEMORY[0x1E6979518];

    return [v8 commit];
  }

  return result;
}

void __58__PKSqueezePaletteView__updateBaseShapeLayerPathAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKSqueezePaletteView *)WeakRetained _handleResizing];
}

- (uint64_t)_redoCount
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 488));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((a1 + 488));
  v5 = [v4 paletteViewRedoCount:a1];

  return v5;
}

- (uint64_t)_undoCount
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 488));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((a1 + 488));
  v5 = [v4 paletteViewUndoCount:a1];

  return v5;
}

- (uint64_t)_canUndo
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 488));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((a1 + 488));
  v5 = [v4 paletteViewCanUndo:a1];

  return v5;
}

- (uint64_t)_canRedo
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 488));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((a1 + 488));
  v5 = [v4 paletteViewCanRedo:a1];

  return v5;
}

- (void)_didUndo
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((a1 + 488));
      [v4 paletteViewDidInvokeUndo:a1];
    }
  }
}

- (void)_didRedo
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((a1 + 488));
      [v4 paletteViewDidInvokeRedo:a1];
    }
  }
}

- (void)_didTapRuler
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((a1 + 488));
      [v4 paletteViewDidTapRuler:a1];
    }
  }
}

- (uint64_t)_canSelectTool:(uint64_t)a3 atIndex:
{
  v5 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 488));
      v9 = [v8 paletteView:a1 canSelectTool:v5 atIndex:a3];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_didSelectTool:(uint64_t)a3 atIndex:
{
  v9 = a2;
  if (a1)
  {
    [(PKMathResultAttribution *)*(a1 + 576) setString:v9];
    v5 = PKDisplayColorForTool(v9);
    [(PKSqueezePaletteViewContext *)*(a1 + 576) setSelectedColor:v5];

    [*(a1 + 568) updateUI];
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 488));
      [v8 paletteView:a1 didSelectTool:v9 atIndex:a3];
    }
  }
}

- (void)_didSelectColor:(uint64_t)a3 isFromExtendedColorPicker:(uint64_t)a4 isContinuousColorSelection:
{
  v10 = a2;
  if (a1)
  {
    [(PKSqueezePaletteViewContext *)*(a1 + 576) setSelectedColor:v10];
    [*(a1 + 568) updateUI];
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained((a1 + 488));
      [v9 paletteView:a1 didSelectColor:v10 isFromExtendedColorPicker:a3 isContinuousColorSelection:a4];
    }
  }
}

- (void)_didTapMulticolorButton:(void *)a3 currentSelectedColor:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 488));
      [v8 paletteViewDidInvokeExtendedColorPicker:a1 currentSelectedColor:v5 sourceView:v9];
    }
  }
}

- (void)_didTapTextBoxButton:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 488));
      [v5 paletteViewDidInvokeAddTextBox:a1 sourceView:v6];
    }
  }
}

- (void)_didTapSignatureButton:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 488));
      [v5 paletteViewDidInvokeSignature:a1 sourceView:v6];
    }
  }
}

- (void)_didTapShapesButton:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 488));
      [v5 paletteViewDidInvokeAddShape:a1 sourceView:v6];
    }
  }
}

- (void)_didTapStickersButton:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 488));
      [v5 paletteViewDidInvokeAddSticker:a1 sourceView:v6];
    }
  }
}

- (void)_didTapMoreOptionsButton:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 488));
      [v5 paletteViewDidInvokeMoreOptions:a1 sourceView:v6];
    }
  }
}

@end
@interface PKSqueezePaletteView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)initWithBackgroundView:(void *)view radius:(double)radius contentHeight:(double)height layoutFactory:(double)factory azimuth:;
- (uint64_t)_canRedo;
- (uint64_t)_canSelectTool:(uint64_t)tool atIndex:;
- (uint64_t)_canUndo;
- (uint64_t)_handleResizing;
- (uint64_t)_redoCount;
- (uint64_t)_undoCount;
- (uint64_t)_updateShadows;
- (uint64_t)setColorUserInterfaceStyle:(uint64_t)result;
- (uint64_t)updateUIStartAngle:(int)angle endAngle:(double)endAngle clockwise:(double)clockwise animated:;
- (void)_didRedo;
- (void)_didSelectColor:(uint64_t)color isFromExtendedColorPicker:(uint64_t)picker isContinuousColorSelection:;
- (void)_didSelectTool:(uint64_t)tool atIndex:;
- (void)_didTapMoreOptionsButton:(uint64_t)button;
- (void)_didTapMulticolorButton:(void *)button currentSelectedColor:;
- (void)_didTapRuler;
- (void)_didTapShapesButton:(uint64_t)button;
- (void)_didTapSignatureButton:(uint64_t)button;
- (void)_didTapStickersButton:(uint64_t)button;
- (void)_didTapTextBoxButton:(uint64_t)button;
- (void)_didUndo;
- (void)_updateBaseShapeLayerPathAnimated:(uint64_t)animated;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pencilInteractionDidTap:(uint64_t)tap;
- (void)setCurrentLayout:(uint64_t)layout;
- (void)setDelegate:(uint64_t)delegate;
@end

@implementation PKSqueezePaletteView

- (id)initWithBackgroundView:(void *)view radius:(double)radius contentHeight:(double)height layoutFactory:(double)factory azimuth:
{
  v93[4] = *MEMORY[0x1E69E9840];
  v12 = a2;
  viewCopy = view;
  if (self)
  {
    v91.receiver = self;
    v91.super_class = PKSqueezePaletteView;
    v14 = objc_msgSendSuper2(&v91, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    self = v14;
    if (v14)
    {
      v87 = viewCopy;
      v88 = v12;
      objc_storeStrong(v14 + 67, a2);
      *(self + 62) = radius;
      *(self + 63) = height;
      self[64] = 0;
      self[65] = 0;
      objc_storeStrong(self + 70, view);
      v15 = self[71];
      self[71] = 0;

      *(self + 66) = factory;
      layer = [MEMORY[0x1E69794A0] layer];
      v17 = self[52];
      self[52] = layer;

      [self[52] setLineWidth:*(self + 63)];
      v18 = *MEMORY[0x1E6979E78];
      [self[52] setLineCap:*MEMORY[0x1E6979E78]];
      [self[52] setStrokeStart:0.0];
      [self[52] setStrokeEnd:1.0];
      [self[52] setFillColor:0];
      layer2 = [MEMORY[0x1E69794A0] layer];
      v20 = self[53];
      self[53] = layer2;

      [self[53] setLineWidth:*(self + 63)];
      [self[53] setLineCap:v18];
      [self[53] setStrokeStart:0.0];
      [self[53] setStrokeEnd:1.0];
      [self[53] setFillColor:0];
      layer3 = [self layer];
      [layer3 addSublayer:self[52]];

      layer4 = [self layer];
      [layer4 addSublayer:self[53]];

      v23 = self[67];
      if (v23)
      {
        [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
        [self addSubview:self[67]];
      }

      v24 = objc_alloc_init(PKPalettePassthroughView);
      v25 = self[68];
      self[68] = v24;

      [self[68] setTranslatesAutoresizingMaskIntoConstraints:0];
      [self[68] setAccessibilityIdentifier:@"MiniPalette-ToolPickerView"];
      [self addSubview:self[68]];
      v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v27 = self[69];
      self[69] = v26;

      [self[69] setTranslatesAutoresizingMaskIntoConstraints:0];
      [self[69] setAccessibilityIdentifier:@"MiniPalette-ContentView"];
      [self addSubview:self[69]];
      v28 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v29 = self[54];
      self[54] = v28;

      [self[54] setLineWidth:*(self + 63)];
      [self[54] setLineCap:v18];
      [self[54] setStrokeStart:0.0];
      [self[54] setStrokeEnd:1.0];
      [self[54] setFillColor:0];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [self[54] setStrokeColor:{objc_msgSend(blackColor, "CGColor")}];

      v31 = self[54];
      layer5 = [self[67] layer];
      [layer5 setMask:v31];

      v33 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v34 = self[55];
      self[55] = v33;

      [self[55] setLineWidth:*(self + 63)];
      [self[55] setLineCap:v18];
      [self[55] setStrokeStart:0.0];
      [self[55] setStrokeEnd:1.0];
      [self[55] setFillColor:0];
      blackColor2 = [MEMORY[0x1E69DC888] blackColor];
      [self[55] setStrokeColor:{objc_msgSend(blackColor2, "CGColor")}];

      v36 = self[55];
      layer6 = [self[69] layer];
      [layer6 setMask:v36];

      v38 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v39 = self[56];
      self[56] = v38;

      [self[56] setLineWidth:*&PKSqueezePaletteViewToolsContentClippingShapeMaskExtraLineWidth + *(self + 63) + 16.0];
      [self[56] setLineCap:v18];
      [self[56] setStrokeStart:0.0];
      [self[56] setStrokeEnd:1.0];
      [self[56] setFillColor:0];
      blackColor3 = [MEMORY[0x1E69DC888] blackColor];
      [self[56] setStrokeColor:{objc_msgSend(blackColor3, "CGColor")}];

      v41 = self[56];
      layer7 = [self[68] layer];
      [layer7 setMask:v41];

      systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __90__PKSqueezePaletteView_initWithBackgroundView_radius_contentHeight_layoutFactory_azimuth___block_invoke;
      v89[3] = &unk_1E82D9908;
      self = self;
      selfCopy = self;
      v44 = [self registerForTraitChanges:systemTraitsAffectingColorAppearance withHandler:v89];

      v45 = self[67];
      if (v45)
      {
        v77 = MEMORY[0x1E696ACD8];
        topAnchor = [v45 topAnchor];
        topAnchor2 = [self topAnchor];
        v81 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v93[0] = v81;
        leadingAnchor = [self[67] leadingAnchor];
        leadingAnchor2 = [self leadingAnchor];
        v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v93[1] = v47;
        trailingAnchor = [self[67] trailingAnchor];
        trailingAnchor2 = [self trailingAnchor];
        v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v93[2] = v50;
        bottomAnchor = [self[67] bottomAnchor];
        bottomAnchor2 = [self bottomAnchor];
        v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v93[3] = v53;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:4];
        [v77 activateConstraints:v54];
      }

      v72 = MEMORY[0x1E696ACD8];
      topAnchor3 = [self[68] topAnchor];
      topAnchor4 = [self topAnchor];
      v82 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v92[0] = v82;
      leadingAnchor3 = [self[68] leadingAnchor];
      leadingAnchor4 = [self leadingAnchor];
      v76 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v92[1] = v76;
      trailingAnchor3 = [self[68] trailingAnchor];
      trailingAnchor4 = [self trailingAnchor];
      v73 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v92[2] = v73;
      bottomAnchor3 = [self[68] bottomAnchor];
      bottomAnchor4 = [self bottomAnchor];
      v69 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v92[3] = v69;
      topAnchor5 = [self[69] topAnchor];
      topAnchor6 = [self topAnchor];
      v66 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v92[4] = v66;
      leadingAnchor5 = [self[69] leadingAnchor];
      leadingAnchor6 = [self leadingAnchor];
      v56 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v92[5] = v56;
      trailingAnchor5 = [self[69] trailingAnchor];
      trailingAnchor6 = [self trailingAnchor];
      v59 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v92[6] = v59;
      bottomAnchor5 = [self[69] bottomAnchor];
      bottomAnchor6 = [self bottomAnchor];
      v62 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v92[7] = v62;
      v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:8];
      [v72 activateConstraints:v63];

      [(PKSqueezePaletteView *)self _updateShadows];
      [self setAccessibilityIdentifier:@"Circular-MiniPalette"];

      viewCopy = v87;
      v12 = v88;
    }
  }

  return self;
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

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [*(v1 + 416) setStrokeColor:{objc_msgSend(systemBackgroundColor, "CGColor")}];

    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [*(v1 + 424) setStrokeColor:{objc_msgSend(systemBackgroundColor2, "CGColor")}];

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

- (void)setDelegate:(uint64_t)delegate
{
  v3 = a2;
  if (delegate)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained((delegate + 488));

    v3 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak((delegate + 488), obj);
      [*(delegate + 568) updateUI];
      v3 = obj;
    }
  }
}

- (void)setCurrentLayout:(uint64_t)layout
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (layout && *(layout + 568) != v4)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(layout + 568);
      v9 = 138478083;
      v10 = v5;
      v11 = 2113;
      v12 = v7;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Update layout to: %{private}@, from: %{private}@", &v9, 0x16u);
    }

    v8 = *(layout + 568);
    if (v8)
    {
      [v8 willTransitionToLayout:v5];
    }

    objc_storeStrong((layout + 568), a2);
    [*(layout + 568) setPaletteView:layout];
    [*(layout + 568) setupUI];
  }
}

- (uint64_t)updateUIStartAngle:(int)angle endAngle:(double)endAngle clockwise:(double)clockwise animated:
{
  if (result)
  {
    v5 = result;
    *(result + 512) = endAngle;
    *(result + 520) = clockwise;
    *(result + 480) = a2;
    [(PKSqueezePaletteView *)result _updateBaseShapeLayerPathAnimated:angle];
    v6 = *(v5 + 568);

    return [v6 updateUI];
  }

  return result;
}

- (void)_updateBaseShapeLayerPathAnimated:(uint64_t)animated
{
  if (animated)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(animated + 480) radius:*(animated + 464) startAngle:*(animated + 472) endAngle:*(animated + 496) clockwise:{-3.14159265, 9.42477796}];
    [*(animated + 432) setPath:{objc_msgSend(v3, "CGPath")}];

    [MEMORY[0x1E6979518] commit];
    v4 = *(animated + 456);
    if (v4)
    {
      CGPathRelease(v4);
      *(animated + 456) = 0;
    }

    v5 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(animated + 480) radius:*(animated + 464) startAngle:*(animated + 472) endAngle:*(animated + 496) clockwise:{*(animated + 512), *(animated + 520)}];
    cGPath = [v5 CGPath];
    [*(animated + 432) lineWidth];
    v8 = v7;
    [*(animated + 432) miterLimit];
    *(animated + 456) = CGPathCreateCopyByStrokingPath(cGPath, 0, v8, kCGLineCapRound, kCGLineJoinMiter, v9);
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v10 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(animated + 480) radius:*(animated + 464) startAngle:*(animated + 472) endAngle:*(animated + 496) clockwise:{-3.14159265, 9.42477796}];
    [*(animated + 440) setPath:{objc_msgSend(v10, "CGPath")}];

    v11 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:*(animated + 480) radius:*(animated + 464) startAngle:*(animated + 472) endAngle:*(animated + 496) + (*&PKSqueezePaletteViewToolsContentClippingShapeMaskExtraLineWidth + 16.0) * 0.5 clockwise:{-3.14159265, 9.42477796}];
    [*(animated + 448) setPath:{objc_msgSend(v11, "CGPath")}];

    [MEMORY[0x1E6979518] commit];
    [(PKSqueezePaletteView *)animated _updateShadows];
    v12 = (*(animated + 512) + 3.14159265) / 12.5663706;
    v13 = (*(animated + 520) + 3.14159265) / 12.5663706;
    if (!*(animated + 408))
    {
      v14 = [[PKSqueezePaletteViewResizeHandle alloc] initWithStrokeStartPresentationValue:v12 strokeEndPresentationValue:v13];
      v15 = *(animated + 408);
      *(animated + 408) = v14;

      [(PKSqueezePaletteView *)animated _handleResizing];
    }

    objc_initWeak(&location, animated);
    v16 = *(animated + 408);
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

- (void)pencilInteractionDidTap:(uint64_t)tap
{
  v9 = *MEMORY[0x1E69E9840];
  if (tap)
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v5)
      {
        v6 = *(tap + 568);
        v7 = 138477827;
        v8 = v6;
        _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Forward Pencil tap interaction to layout: %{private}@", &v7, 0xCu);
      }

      [*(tap + 568) handlePencilInteractionDidTap:a2];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(PKSqueezePaletteView *)self convertPoint:self->_toolsContentView toView:x, y];
  v8 = [(UIView *)self->_toolsContentView hitTest:eventCopy withEvent:?];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PKSqueezePaletteView;
    v9 = [(PKSqueezePaletteView *)&v14 hitTest:eventCopy withEvent:x, y];
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
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 488));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((self + 488));
  v5 = [v4 paletteViewRedoCount:self];

  return v5;
}

- (uint64_t)_undoCount
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 488));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((self + 488));
  v5 = [v4 paletteViewUndoCount:self];

  return v5;
}

- (uint64_t)_canUndo
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 488));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((self + 488));
  v5 = [v4 paletteViewCanUndo:self];

  return v5;
}

- (uint64_t)_canRedo
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 488));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((self + 488));
  v5 = [v4 paletteViewCanRedo:self];

  return v5;
}

- (void)_didUndo
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 488));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((self + 488));
      [v4 paletteViewDidInvokeUndo:self];
    }
  }
}

- (void)_didRedo
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 488));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((self + 488));
      [v4 paletteViewDidInvokeRedo:self];
    }
  }
}

- (void)_didTapRuler
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 488));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((self + 488));
      [v4 paletteViewDidTapRuler:self];
    }
  }
}

- (uint64_t)_canSelectTool:(uint64_t)tool atIndex:
{
  v5 = a2;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 488));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((self + 488));
      v9 = [v8 paletteView:self canSelectTool:v5 atIndex:tool];
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

- (void)_didSelectTool:(uint64_t)tool atIndex:
{
  v9 = a2;
  if (self)
  {
    [(PKMathResultAttribution *)*(self + 576) setString:v9];
    v5 = PKDisplayColorForTool(v9);
    [(PKSqueezePaletteViewContext *)*(self + 576) setSelectedColor:v5];

    [*(self + 568) updateUI];
    WeakRetained = objc_loadWeakRetained((self + 488));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((self + 488));
      [v8 paletteView:self didSelectTool:v9 atIndex:tool];
    }
  }
}

- (void)_didSelectColor:(uint64_t)color isFromExtendedColorPicker:(uint64_t)picker isContinuousColorSelection:
{
  v10 = a2;
  if (self)
  {
    [(PKSqueezePaletteViewContext *)*(self + 576) setSelectedColor:v10];
    [*(self + 568) updateUI];
    WeakRetained = objc_loadWeakRetained((self + 488));
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained((self + 488));
      [v9 paletteView:self didSelectColor:v10 isFromExtendedColorPicker:color isContinuousColorSelection:picker];
    }
  }
}

- (void)_didTapMulticolorButton:(void *)button currentSelectedColor:
{
  v9 = a2;
  buttonCopy = button;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 488));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((self + 488));
      [v8 paletteViewDidInvokeExtendedColorPicker:self currentSelectedColor:buttonCopy sourceView:v9];
    }
  }
}

- (void)_didTapTextBoxButton:(uint64_t)button
{
  v6 = a2;
  if (button)
  {
    WeakRetained = objc_loadWeakRetained((button + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((button + 488));
      [v5 paletteViewDidInvokeAddTextBox:button sourceView:v6];
    }
  }
}

- (void)_didTapSignatureButton:(uint64_t)button
{
  v6 = a2;
  if (button)
  {
    WeakRetained = objc_loadWeakRetained((button + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((button + 488));
      [v5 paletteViewDidInvokeSignature:button sourceView:v6];
    }
  }
}

- (void)_didTapShapesButton:(uint64_t)button
{
  v6 = a2;
  if (button)
  {
    WeakRetained = objc_loadWeakRetained((button + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((button + 488));
      [v5 paletteViewDidInvokeAddShape:button sourceView:v6];
    }
  }
}

- (void)_didTapStickersButton:(uint64_t)button
{
  v6 = a2;
  if (button)
  {
    WeakRetained = objc_loadWeakRetained((button + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((button + 488));
      [v5 paletteViewDidInvokeAddSticker:button sourceView:v6];
    }
  }
}

- (void)_didTapMoreOptionsButton:(uint64_t)button
{
  v6 = a2;
  if (button)
  {
    WeakRetained = objc_loadWeakRetained((button + 488));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((button + 488));
      [v5 paletteViewDidInvokeMoreOptions:button sourceView:v6];
    }
  }
}

@end
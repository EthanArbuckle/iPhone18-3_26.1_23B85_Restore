@interface PKSqueezePaletteViewExpandedInkingToolLayout
- (PKSqueezePaletteView)paletteView;
- (void)_colorAlphaSliderUserDidChangeSlider:(id)slider;
- (void)_didTapDrawingTool:(id)tool;
- (void)_didTapStrokeWeightButton:(id)button;
- (void)_updateToolUIStyle;
- (void)handlePencilInteractionDidTap:(int64_t)tap;
- (void)initWithContext:(void *)context strokeWeightButtons:;
- (void)setupUI;
- (void)updateUI;
- (void)willTransitionToLayout:(id)layout;
@end

@implementation PKSqueezePaletteViewExpandedInkingToolLayout

- (void)initWithContext:(void *)context strokeWeightButtons:
{
  v6 = a2;
  contextCopy = context;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = PKSqueezePaletteViewExpandedInkingToolLayout;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a2);
      v9 = [contextCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

- (void)setupUI
{
  v84[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    context = [(PKSqueezePaletteViewExpandedInkingToolLayout *)self context];
    v69 = context;
    v5 = context;
    if (context)
    {
      v6 = *(context + 24);
      v7 = *(v5 + 8);
      if (self)
      {
LABEL_4:
        strokeWeightButtons = self->_strokeWeightButtons;
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0.0;
      if (self)
      {
        goto LABEL_4;
      }
    }

    strokeWeightButtons = 0;
LABEL_5:
    v70 = strokeWeightButtons;
    centerXAnchor = [v6 centerXAnchor];
    v10 = objc_loadWeakRetained(&self->_paletteView);
    centerXAnchor2 = [v10 centerXAnchor];
    v68 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    centerYAnchor = [v6 centerYAnchor];
    v13 = objc_loadWeakRetained(&self->_paletteView);
    centerYAnchor2 = [v13 centerYAnchor];
    v67 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    v15 = objc_loadWeakRetained(&self->_paletteView);
    v16 = v15;
    if (v15)
    {
      v17 = v15[62];
    }

    else
    {
      v17 = 0.0;
    }

    v18 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v17, v7);
    v20 = v19;

    [v68 setConstant:v18];
    [v67 setConstant:v20];
    v21 = objc_opt_new();
    v84[0] = v68;
    v84[1] = v67;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
    [v21 addObjectsFromArray:v22];

    v66 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v70, "count")}];
    v23 = PKSqueezePaletteButtonInterItemSpacing;
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = v7;
    if (v6)
    {
      v24 = v6[102];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    _configuration = [v25 _configuration];
    v27 = _configuration;
    if (_configuration && ([_configuration supportsStrokeWeight] & 1) != 0)
    {
      v28 = v27[16];

      if (v28)
      {
        objc_initWeak(&location, self);
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __55__PKSqueezePaletteViewExpandedInkingToolLayout_setupUI__block_invoke;
        v71[3] = &unk_1E82D9E68;
        v71[4] = self;
        v74 = &v79;
        v76 = vdupq_n_s64(0x4042800000000000uLL);
        v77 = v23;
        v72 = v21;
        v73 = v66;
        objc_copyWeak(&v75, &location);
        [(NSArray *)v70 enumerateObjectsUsingBlock:v71];
        objc_destroyWeak(&v75);

        objc_destroyWeak(&location);
      }
    }

    else
    {
    }

    if (v6)
    {
      v29 = v6[102];
    }

    else
    {
      v29 = 0;
    }

    centerXAnchor3 = v29;
    _configuration2 = [centerXAnchor3 _configuration];
    v32 = _configuration2;
    if (_configuration2 && [_configuration2 supportsOpacity])
    {
      v33 = v32[17];

      if ((v33 & 1) == 0)
      {
LABEL_27:
        [MEMORY[0x1E696ACD8] activateConstraints:v21];
        v54 = [v21 copy];
        [(PKSqueezePaletteViewExpandedInkingToolLayout *)self setLayoutConstraints:v54];

        v55 = objc_loadWeakRetained(&self->_paletteView);
        [(PKSqueezePaletteView *)v55 updateUIStartAngle:1 endAngle:v80[3] clockwise:v7 animated:?];

        [v6 addTarget:self action:sel__didTapDrawingTool_ forControlEvents:64];
        _Block_object_dispose(&v79, 8);

        return;
      }

      v34 = objc_loadWeakRetained(&self->_paletteView);
      if (v34)
      {
        v35 = v34[62];
      }

      else
      {
        v35 = 0.0;
      }

      v36 = *&PKSqueezePaletteBeforeOpacitySliderSpacing;
      v37 = *&PKSqueezePaletteOpacitySliderAngularWidth;
      v38 = [PKAngularOpacitySlider alloc];
      v39 = objc_loadWeakRetained(&self->_paletteView);
      v40 = v39;
      v41 = v7 + v36 / v35;
      v7 = v41 + v37 / v35;
      if (v39)
      {
        v42 = v39[63];
      }

      else
      {
        v42 = 0.0;
      }

      v43 = [(PKAngularOpacitySlider *)v38 initWithFrame:*(MEMORY[0x1E695F058] + 8) startAngle:*(MEMORY[0x1E695F058] + 16) endAngle:*(MEMORY[0x1E695F058] + 24) arcRadius:v41 arcWidth:v41 + v37 / v35, v35, v42 * *&PKSqueezePaletteOpacitySliderHeighRatio];
      opacitySlider = self->_opacitySlider;
      self->_opacitySlider = v43;

      [(PKAngularOpacitySlider *)self->_opacitySlider setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKAngularOpacitySlider *)self->_opacitySlider setDelegate:self];
      v45 = objc_loadWeakRetained(&self->_paletteView);
      v46 = v45;
      if (v45)
      {
        v47 = *(v45 + 69);
      }

      else
      {
        v47 = 0;
      }

      v48 = v47;
      [v48 addSubview:self->_opacitySlider];

      [(PKSqueezePaletteViewExpandedInkingToolLayout *)self setOpacitySlider:self->_opacitySlider];
      centerXAnchor3 = [(PKAngularOpacitySlider *)self->_opacitySlider centerXAnchor];
      v32 = objc_loadWeakRetained(&self->_paletteView);
      centerXAnchor4 = [v32 centerXAnchor];
      v64 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v83[0] = v64;
      centerYAnchor3 = [(PKAngularOpacitySlider *)self->_opacitySlider centerYAnchor];
      v63 = objc_loadWeakRetained(&self->_paletteView);
      centerYAnchor4 = [v63 centerYAnchor];
      v60 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v83[1] = v60;
      widthAnchor = [(PKAngularOpacitySlider *)self->_opacitySlider widthAnchor];
      v59 = objc_loadWeakRetained(&self->_paletteView);
      widthAnchor2 = [v59 widthAnchor];
      v56 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v83[2] = v56;
      heightAnchor = [(PKAngularOpacitySlider *)self->_opacitySlider heightAnchor];
      v50 = objc_loadWeakRetained(&self->_paletteView);
      heightAnchor2 = [v50 heightAnchor];
      v52 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v83[3] = v52;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
      [v21 addObjectsFromArray:v53];
    }

    goto LABEL_27;
  }
}

void __55__PKSqueezePaletteViewExpandedInkingToolLayout_setupUI__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v50[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addTarget:*(a1 + 32) action:sel__didTapStrokeWeightButton_ forControlEvents:64];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 69);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v8 addSubview:v4];

  v9 = [v4 centerXAnchor];
  v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = [v10 centerXAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];

  v13 = [v4 centerYAnchor];
  v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];

  v17 = *(*(*(a1 + 56) + 8) + 24);
  v18 = *(a1 + 72) + *(a1 + 88);
  v19 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v20 = 0.0;
  v21 = 0.0;
  if (v19)
  {
    v21 = v19[62];
  }

  v22 = v17 - v18 / v21;

  v23 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v24 = v23;
  if (v23)
  {
    v20 = v23[62];
  }

  v25 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v20, v22);
  v27 = v26;

  [v12 setConstant:v25];
  [v16 setConstant:v27];
  v28 = [v4 configuration];
  v29 = [v28 image];
  [v29 size];
  v31 = v30;

  v32 = [v4 configuration];
  v33 = [v32 image];
  [v33 size];
  v35 = v34;

  v36 = *(a1 + 40);
  if (v31 < v35)
  {
    v31 = v35;
  }

  v50[0] = v12;
  v50[1] = v16;
  v37 = [v4 heightAnchor];
  v38 = [v37 constraintEqualToConstant:v31];
  v50[2] = v38;
  v39 = [v4 widthAnchor];
  v40 = [v39 constraintEqualToConstant:v31];
  v50[3] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
  [v36 addObjectsFromArray:v41];

  CGAffineTransformMakeScale(&v49, *(a1 + 72) / v31, *(a1 + 80) / v31);
  location = v49;
  [v4 setTransform:&location];
  *&v42 = v22;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
  [*(a1 + 48) setObject:v43 atIndexedSubscript:a3];

  *(*(*(a1 + 56) + 8) + 24) = v22;
  objc_initWeak(&location, v4);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __55__PKSqueezePaletteViewExpandedInkingToolLayout_setupUI__block_invoke_2;
  v45[3] = &unk_1E82D79E0;
  objc_copyWeak(&v46, &location);
  objc_copyWeak(&v47, (a1 + 64));
  [v4 _set_pk_longSqueezeAction:v45];
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

void __55__PKSqueezePaletteViewExpandedInkingToolLayout_setupUI__block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v2 = objc_loadWeakRetained(&to);

  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _didTapStrokeWeightButton:v4];
  }

  objc_destroyWeak(&to);
}

- (void)updateUI
{
  selfCopy = self;
  if (self)
  {
    self = self->_strokeWeightButtons;
  }

  [(PKSqueezePaletteViewExpandedInkingToolLayout *)self enumerateObjectsUsingBlock:&__block_literal_global_50];
  context = [(PKSqueezePaletteViewExpandedInkingToolLayout *)selfCopy context];
  v4 = context;
  if (context)
  {
    v5 = *(context + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [(PKSqueezePaletteViewExpandedInkingToolLayout *)selfCopy _updateToolUIStyle];
  if (v6)
  {
    v7 = v6[102];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _configuration = [v8 _configuration];
  v10 = _configuration;
  if (_configuration && ([_configuration supportsStrokeWeight] & 1) != 0)
  {
    v11 = v10[16];

    if (v11 == 1)
    {
      if (v6)
      {
        v12 = v6[102];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      [v13 _strokeWeight];
      v15 = v14;

      if (selfCopy)
      {
        strokeWeightButtons = selfCopy->_strokeWeightButtons;
      }

      else
      {
        strokeWeightButtons = 0;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __56__PKSqueezePaletteViewExpandedInkingToolLayout_updateUI__block_invoke_2;
      v26[3] = &__block_descriptor_40_e51_v32__0__PKSqueezePaletteStrokeWeightButton_8Q16_B24l;
      v26[4] = v15;
      [(NSArray *)strokeWeightButtons enumerateObjectsUsingBlock:v26];
    }
  }

  else
  {
  }

  if (v6)
  {
    v17 = v6[102];
  }

  else
  {
    v17 = 0;
  }

  opacitySlider = v17;
  _configuration2 = [opacitySlider _configuration];
  _color = _configuration2;
  if (!_configuration2 || ![_configuration2 supportsOpacity])
  {
    goto LABEL_25;
  }

  v21 = _color[17];

  if (v21 == 1)
  {
    opacitySlider = [(PKSqueezePaletteViewExpandedInkingToolLayout *)selfCopy opacitySlider];
    if (v6)
    {
      v22 = v6[102];
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    _color = [v23 _color];

    color = [opacitySlider color];
    v25 = [color isEqual:_color];

    if ((v25 & 1) == 0)
    {
      [opacitySlider setColor:_color];
    }

LABEL_25:
  }
}

- (void)_updateToolUIStyle
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    if (WeakRetained)
    {
      v3 = WeakRetained[73];
    }

    else
    {
      v3 = 0;
    }

    v7 = WeakRetained;
    v4 = *(self + 24);
    if (v4)
    {
      v5 = *(v4 + 24);
      v6 = v5;
      if (v5 && v5[103] != v3)
      {
        v5[103] = v3;
        [v5[93] setColorUserInterfaceStyle:v3];
      }
    }

    else
    {
      v6 = 0;
    }
  }
}

void __56__PKSqueezePaletteViewExpandedInkingToolLayout_updateUI__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6[93];
  }

  else
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, *(a1 + 32)) < 0.09)
  {
    v8 = v6;
    [v6 setSelected:1];
    v6 = v8;
    *a4 = 1;
  }
}

- (void)willTransitionToLayout:(id)layout
{
  v4 = MEMORY[0x1E696ACD8];
  layoutConstraints = [(PKSqueezePaletteViewExpandedInkingToolLayout *)self layoutConstraints];
  [v4 deactivateConstraints:layoutConstraints];

  if (self)
  {
    strokeWeightButtons = self->_strokeWeightButtons;
  }

  else
  {
    strokeWeightButtons = 0;
  }

  [(NSArray *)strokeWeightButtons makeObjectsPerformSelector:sel_removeFromSuperview];
  context = [(PKSqueezePaletteViewExpandedInkingToolLayout *)self context];
  v10 = context;
  if (context)
  {
    v8 = *(context + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v9 removeTarget:self action:sel__didTapDrawingTool_ forControlEvents:64];
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

- (void)_didTapStrokeWeightButton:(id)button
{
  v22 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  v5 = buttonCopy;
  if (buttonCopy)
  {
    v6 = buttonCopy[93];
  }

  else
  {
    v6 = 0.0;
  }

  v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    v21 = v6;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Tap stroke weight button %f", &v20, 0xCu);
  }

  lastTappedStrokeWeightButton = [(PKSqueezePaletteViewExpandedInkingToolLayout *)self lastTappedStrokeWeightButton];

  context = [(PKSqueezePaletteViewExpandedInkingToolLayout *)self context];
  v10 = context;
  if (lastTappedStrokeWeightButton == v5)
  {
    if (context)
    {
      v19 = *(context + 16);
    }

    else
    {
      v19 = 0;
    }

    v15 = v19;
    WeakRetained = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v15];
    v12 = v10;
  }

  else
  {
    if (context)
    {
      v11 = *(context + 24);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = v12[102];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 _copyWithStrokeWeight:v6];

    [(PKSqueezePaletteDrawingTool *)v12 setTool:v15];
    WeakRetained = objc_loadWeakRetained(&self->_paletteView);
    if (v12)
    {
      v17 = v12[102];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    [(PKSqueezePaletteView *)WeakRetained _didSelectTool:v18 atIndex:1];
  }

  [(PKSqueezePaletteViewExpandedInkingToolLayout *)self setLastTappedStrokeWeightButton:v5];
}

- (void)_didTapDrawingTool:(id)tool
{
  v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Drawing tool tapped", v10, 2u);
  }

  context = [(PKSqueezePaletteViewExpandedInkingToolLayout *)self context];
  v6 = context;
  if (context)
  {
    v7 = *(context + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);
  [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v8];
}

- (void)_colorAlphaSliderUserDidChangeSlider:(id)slider
{
  sliderCopy = slider;
  context = [(PKSqueezePaletteViewExpandedInkingToolLayout *)self context];
  v5 = context;
  if (context)
  {
    v6 = *(context + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = v7[102];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _color = [v9 _color];

  if (_color)
  {
    [_color alphaComponent];
    v12 = v11;
    color = [sliderCopy color];
    [color alphaComponent];
    v15 = v14;

    if (vabdd_f64(v12, v15) >= 0.01)
    {
      v16 = [_color colorWithAlphaComponent:v15];
      if (v7)
      {
        v17 = v7[102];
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      v19 = [v18 _copyWithColor:v16];

      [(PKSqueezePaletteDrawingTool *)v7 setTool:v19];
      WeakRetained = objc_loadWeakRetained(&self->_paletteView);
      [(PKSqueezePaletteView *)WeakRetained _didSelectTool:v19 atIndex:1];
    }
  }
}

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end
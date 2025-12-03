@interface PKSqueezePaletteViewExpandedEraserToolLayout
- (PKSqueezePaletteRoundedButton)lastTappedAttributeButton;
- (PKSqueezePaletteView)paletteView;
- (void)_didTapAttributeButton:(id)button;
- (void)_didTapDrawingTool:(id)tool;
- (void)handlePencilInteractionDidTap:(int64_t)tap;
- (void)initWithContext:(void *)context attributeButtons:;
- (void)setupUI;
- (void)updateUI;
- (void)willTransitionToLayout:(id)layout;
@end

@implementation PKSqueezePaletteViewExpandedEraserToolLayout

- (void)initWithContext:(void *)context attributeButtons:
{
  v6 = a2;
  contextCopy = context;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = PKSqueezePaletteViewExpandedEraserToolLayout;
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
  v45[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (!WeakRetained)
  {
    return;
  }

  context = [(PKSqueezePaletteViewExpandedEraserToolLayout *)self context];
  v5 = context;
  if (!context)
  {
    v6 = 0;
    v7 = 0.0;
    if (self)
    {
      goto LABEL_4;
    }

LABEL_10:
    attributeButtons = 0;
    goto LABEL_5;
  }

  v6 = *(context + 24);
  v7 = v5[1];
  if (!self)
  {
    goto LABEL_10;
  }

LABEL_4:
  attributeButtons = self->_attributeButtons;
LABEL_5:
  v9 = attributeButtons;
  centerXAnchor = [v6 centerXAnchor];
  v11 = objc_loadWeakRetained(&self->_paletteView);
  centerXAnchor2 = [v11 centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  centerYAnchor = [v6 centerYAnchor];
  v15 = objc_loadWeakRetained(&self->_paletteView);
  centerYAnchor2 = [v15 centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  v18 = objc_loadWeakRetained(&self->_paletteView);
  v19 = v18;
  if (v18)
  {
    v20 = v18[62];
  }

  else
  {
    v20 = 0.0;
  }

  v21 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v20, v7);
  v23 = v22;

  [v13 setConstant:v21];
  [v17 setConstant:v23];
  v24 = objc_opt_new();
  v45[0] = v13;
  v45[1] = v17;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  [v24 addObjectsFromArray:v25];

  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_attributeButtons, "count")}];
  v27 = PKSqueezePaletteButtonSize();
  v29 = v28;
  v30 = PKSqueezePaletteButtonInterItemSpacing;
  objc_initWeak(&location, self);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = v7;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __55__PKSqueezePaletteViewExpandedEraserToolLayout_setupUI__block_invoke;
  v35[3] = &unk_1E82DC1C8;
  v35[4] = self;
  v38 = &v40;
  v39[1] = *&v27;
  v39[2] = v29;
  v39[3] = v30;
  v31 = v24;
  v36 = v31;
  v32 = v26;
  v37 = v32;
  objc_copyWeak(v39, &location);
  [(NSArray *)v9 enumerateObjectsUsingBlock:v35];
  [MEMORY[0x1E696ACD8] activateConstraints:v31];
  v33 = [v31 copy];
  [(PKSqueezePaletteViewExpandedEraserToolLayout *)self setLayoutConstraints:v33];

  v34 = objc_loadWeakRetained(&self->_paletteView);
  [(PKSqueezePaletteView *)v34 updateUIStartAngle:1 endAngle:v41[3] clockwise:v7 animated:?];

  [v6 addTarget:self action:sel__didTapDrawingTool_ forControlEvents:64];
  objc_destroyWeak(v39);

  _Block_object_dispose(&v40, 8);
  objc_destroyWeak(&location);
}

void __55__PKSqueezePaletteViewExpandedEraserToolLayout_setupUI__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v41[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addTarget:*(a1 + 32) action:sel__didTapAttributeButton_ forControlEvents:64];
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
  v28 = *(a1 + 40);
  v41[0] = v12;
  v41[1] = v16;
  v29 = [v4 heightAnchor];
  v30 = [v29 constraintEqualToConstant:*(a1 + 80)];
  v41[2] = v30;
  v31 = [v4 widthAnchor];
  v32 = [v31 constraintEqualToConstant:*(a1 + 72)];
  v41[3] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  [v28 addObjectsFromArray:v33];

  *&v34 = v22;
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  [*(a1 + 48) setObject:v35 atIndexedSubscript:a3];

  *(*(*(a1 + 56) + 8) + 24) = v22;
  objc_initWeak(&location, v4);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __55__PKSqueezePaletteViewExpandedEraserToolLayout_setupUI__block_invoke_2;
  v37[3] = &unk_1E82D79E0;
  objc_copyWeak(&v38, &location);
  objc_copyWeak(&v39, (a1 + 64));
  [v4 _set_pk_longSqueezeAction:v37];
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

void __55__PKSqueezePaletteViewExpandedEraserToolLayout_setupUI__block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v2 = objc_loadWeakRetained(&to);

  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _didTapAttributeButton:v4];
  }

  objc_destroyWeak(&to);
}

- (void)updateUI
{
  selfCopy = self;
  if (self)
  {
    self = self->_attributeButtons;
  }

  [(PKSqueezePaletteViewExpandedEraserToolLayout *)self enumerateObjectsUsingBlock:&__block_literal_global_81];
  context = [(PKSqueezePaletteViewExpandedEraserToolLayout *)selfCopy context];
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

  if (v6)
  {
    v7 = v6[102];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v8 width];
  [PKInkingTool _weightForWidth:@"com.apple.ink.eraser" type:?];
  if (selfCopy)
  {
    selfCopy = selfCopy->_attributeButtons;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PKSqueezePaletteViewExpandedEraserToolLayout_updateUI__block_invoke_2;
  v11[3] = &unk_1E82DC210;
  v13 = v9;
  v12 = v8;
  v10 = v8;
  [(PKSqueezePaletteViewExpandedEraserToolLayout *)selfCopy enumerateObjectsUsingBlock:v11];
}

void __56__PKSqueezePaletteViewExpandedEraserToolLayout_updateUI__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
    v7 = v6;
    if (v6)
    {
      v8 = v6[93];
    }

    else
    {
      v8 = 0.0;
    }

    if (vabdd_f64(v8, *(a1 + 40)) < 0.1)
    {
      [v6 setSelected:1];
      *a4 = 1;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![*(a1 + 32) eraserType])
    {
      [v9 setSelected:1];
      *a4 = 1;
    }
  }
}

- (void)willTransitionToLayout:(id)layout
{
  v4 = MEMORY[0x1E696ACD8];
  layoutConstraints = [(PKSqueezePaletteViewExpandedEraserToolLayout *)self layoutConstraints];
  [v4 deactivateConstraints:layoutConstraints];

  if (self)
  {
    attributeButtons = self->_attributeButtons;
  }

  else
  {
    attributeButtons = 0;
  }

  [(NSArray *)attributeButtons makeObjectsPerformSelector:sel_removeFromSuperview];
  context = [(PKSqueezePaletteViewExpandedEraserToolLayout *)self context];
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

- (void)_didTapDrawingTool:(id)tool
{
  v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Drawing tool tapped", v10, 2u);
  }

  context = [(PKSqueezePaletteViewExpandedEraserToolLayout *)self context];
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

- (void)_didTapAttributeButton:(id)button
{
  v23 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  lastTappedAttributeButton = [(PKSqueezePaletteViewExpandedEraserToolLayout *)self lastTappedAttributeButton];

  if (lastTappedAttributeButton == buttonCopy)
  {
    context = [(PKSqueezePaletteViewExpandedEraserToolLayout *)self context];
    v9 = context;
    if (context)
    {
      v16 = *(context + 16);
    }

    else
    {
      v16 = 0;
    }

    v11 = v16;
    WeakRetained = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v11];
  }

  else
  {
    [(PKSqueezePaletteViewExpandedEraserToolLayout *)self setLastTappedAttributeButton:buttonCopy];
    context2 = [(PKSqueezePaletteViewExpandedEraserToolLayout *)self context];
    v7 = context2;
    if (context2)
    {
      v8 = *(context2 + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = v9[102];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (buttonCopy)
      {
        v12 = buttonCopy[93];
      }

      else
      {
        v12 = 0.0;
      }

      v13 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134217984;
        v22 = v12;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Tap stroke weight button %f", &v21, 0xCu);
      }

      v14 = [[PKEraserTool alloc] initWithEraserType:2 weight:v12];
LABEL_19:
      v19 = v14;

      [(PKSqueezePaletteDrawingTool *)v9 setTool:v19];
      v20 = objc_loadWeakRetained(&self->_paletteView);
      [(PKSqueezePaletteView *)v20 _didSelectTool:v19 atIndex:1];

      v11 = v19;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Tap object eraser button", &v21, 2u);
      }

      v14 = [[PKEraserTool alloc] initWithEraserType:0];
      goto LABEL_19;
    }
  }

LABEL_20:
}

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

- (PKSqueezePaletteRoundedButton)lastTappedAttributeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_lastTappedAttributeButton);

  return WeakRetained;
}

@end
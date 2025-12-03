@interface PKSqueezePaletteViewExpandedLassoToolLayout
- (PKSqueezePaletteView)paletteView;
- (id)initWithContext:(id *)context;
- (void)_performDrawingToolTapAction:(uint64_t)action;
- (void)handlePencilInteractionDidTap:(int64_t)tap;
- (void)setupUI;
- (void)updateUI;
- (void)willTransitionToLayout:(id)layout;
@end

@implementation PKSqueezePaletteViewExpandedLassoToolLayout

- (id)initWithContext:(id *)context
{
  v4 = a2;
  if (context)
  {
    v13.receiver = context;
    v13.super_class = PKSqueezePaletteViewExpandedLassoToolLayout;
    v5 = objc_msgSendSuper2(&v13, sel_init);
    context = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 9, a2);
      *(context + 4) = PKSqueezePaletteButtonSize();
      context[5] = v6;
      context[6] = PKSqueezePaletteButtonInterItemSpacing;
      v7 = [PKFloatArray alloc];
      v8 = context[9];
      if (v8)
      {
        v8 = v8[3];
      }

      v9 = v8;
      v10 = -[PKFloatArray initWithCapacity:](v7, [v9 count]);
      v11 = context[7];
      context[7] = v10;
    }
  }

  return context;
}

- (void)_performDrawingToolTapAction:(uint64_t)action
{
  if (action)
  {
    v2 = *(action + 72);
    if (v2)
    {
      v2 = v2[4];
    }

    v4 = v2;
    WeakRetained = objc_loadWeakRetained((action + 64));
    [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v4];
  }
}

- (void)setupUI
{
  v63[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    context = self->_context;
    if (context)
    {
      context = context->_drawingTool;
    }

    v5 = context;
    [(PKSqueezePaletteViewExpandedLassoToolLayoutContext *)v5 addTarget:self action:sel__didTapDrawingTool_ forControlEvents:64];

    objc_initWeak(&location, self);
    v6 = self->_context;
    if (v6)
    {
      v6 = v6->_drawingTool;
    }

    v7 = v6;
    objc_initWeak(&from, v7);

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __54__PKSqueezePaletteViewExpandedLassoToolLayout_setupUI__block_invoke;
    v58[3] = &unk_1E82D79E0;
    objc_copyWeak(&v59, &from);
    objc_copyWeak(&v60, &location);
    v8 = self->_context;
    if (v8)
    {
      v8 = v8->_drawingTool;
    }

    v9 = v8;
    [(PKSqueezePaletteViewExpandedLassoToolLayoutContext *)v9 _set_pk_longSqueezeAction:v58];

    v10 = self->_context;
    if (v10)
    {
      v10 = v10->_drawingTool;
    }

    v11 = v10;
    centerXAnchor = [(PKSqueezePaletteViewExpandedLassoToolLayoutContext *)v11 centerXAnchor];
    v13 = objc_loadWeakRetained(&self->_paletteView);
    centerXAnchor2 = [v13 centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    lassoToolCenterXConstraint = self->_lassoToolCenterXConstraint;
    self->_lassoToolCenterXConstraint = v15;

    v17 = self->_context;
    if (v17)
    {
      v17 = v17->_drawingTool;
    }

    v18 = v17;
    centerYAnchor = [(PKSqueezePaletteViewExpandedLassoToolLayoutContext *)v18 centerYAnchor];
    v20 = objc_loadWeakRetained(&self->_paletteView);
    centerYAnchor2 = [v20 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    lassoToolCenterYConstraint = self->_lassoToolCenterYConstraint;
    self->_lassoToolCenterYConstraint = v22;

    v24 = objc_loadWeakRetained(&self->_paletteView);
    v25 = v24;
    toolAngle = 0.0;
    v27 = 0.0;
    if (v24)
    {
      v27 = v24[62];
    }

    v28 = self->_context;
    if (v28)
    {
      toolAngle = v28->_toolAngle;
    }

    v29 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v27, toolAngle);
    v31 = v30;

    [(NSLayoutConstraint *)self->_lassoToolCenterXConstraint setConstant:v29];
    [(NSLayoutConstraint *)self->_lassoToolCenterYConstraint setConstant:v31];
    v32 = self->_context;
    if (v32)
    {
      v32 = v32->_barButtonItems;
    }

    v33 = MEMORY[0x1E695DF70];
    v34 = v32;
    v35 = [v33 arrayWithCapacity:{-[PKSqueezePaletteViewExpandedLassoToolLayoutContext count](v34, "count")}];

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v36 = self->_context;
    if (v36)
    {
      v57 = v36->_toolAngle;
      v36 = v36->_barButtonItems;
    }

    else
    {
      v57 = 0.0;
    }

    v37 = v36;
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __54__PKSqueezePaletteViewExpandedLassoToolLayout_setupUI__block_invoke_2;
    v50 = &unk_1E82DBC98;
    v38 = v35;
    v51 = v38;
    selfCopy = self;
    v53 = &v54;
    [(PKSqueezePaletteViewExpandedLassoToolLayoutContext *)v37 enumerateObjectsUsingBlock:&v47];

    v39 = [v38 copy];
    barButtons = self->_barButtons;
    self->_barButtons = v39;

    v41 = MEMORY[0x1E696ACD8];
    v42 = self->_lassoToolCenterYConstraint;
    v63[0] = self->_lassoToolCenterXConstraint;
    v63[1] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    [v41 activateConstraints:v43];

    v44 = self->_context;
    if (v44)
    {
      v45 = v44->_toolAngle + 0.0523598776;
    }

    else
    {
      v45 = 0.0523598776;
    }

    v46 = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)v46 updateUIStartAngle:1 endAngle:v55[3] clockwise:v45 animated:?];

    _Block_object_dispose(&v54, 8);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v59);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __54__PKSqueezePaletteViewExpandedLassoToolLayout_setupUI__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v3 = objc_loadWeakRetained((a1 + 32));
    [PKSqueezePaletteViewExpandedLassoToolLayout _performDrawingToolTapAction:v4];
  }
}

void __54__PKSqueezePaletteViewExpandedLassoToolLayout_setupUI__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [[PKPaletteBarButton alloc] initWithBarButtonItem:v4];

  [*(a1 + 32) addObject:v5];
  [(PKPaletteBarButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 69);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v9 addSubview:v5];

  v10 = [(PKPaletteBarButton *)v5 centerXAnchor];
  v11 = objc_loadWeakRetained((*(a1 + 40) + 64));
  v12 = [v11 centerXAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];

  v14 = [(PKPaletteBarButton *)v5 centerYAnchor];
  v15 = objc_loadWeakRetained((*(a1 + 40) + 64));
  v16 = [v15 centerYAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];

  v18 = *(a1 + 40);
  v19 = *(*(*(a1 + 48) + 8) + 24);
  v20 = *(v18 + 32);
  v21 = *(v18 + 48);
  v22 = objc_loadWeakRetained((v18 + 64));
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v24 = v22[62];
  }

  v25 = objc_loadWeakRetained((*(a1 + 40) + 64));
  v26 = v25;
  if (v25)
  {
    v23 = v25[62];
  }

  v27 = v19 - (v20 + v21) / v24;
  v28 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v23, v27);
  v30 = v29;

  [v13 setConstant:v28];
  [v17 setConstant:v30];
  v31 = MEMORY[0x1E696ACD8];
  v38[0] = v13;
  v38[1] = v17;
  v32 = [(PKPaletteBarButton *)v5 heightAnchor];
  v33 = [v32 constraintEqualToConstant:*(*(a1 + 40) + 40)];
  v38[2] = v33;
  v34 = [(PKPaletteBarButton *)v5 widthAnchor];
  v35 = [v34 constraintEqualToConstant:*(*(a1 + 40) + 32)];
  v38[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v31 activateConstraints:v36];

  [(PKFloatArray *)*(*(a1 + 40) + 56) setFloat:a3 atIndex:v27];
  *(*(*(a1 + 48) + 8) + 24) = v27;
}

- (void)updateUI
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    context = self->_context;
    if (context)
    {
      context = context->_drawingTool;
    }

    v5 = context;
    [(PKSqueezePaletteViewExpandedLassoToolLayoutContext *)v5 _pk_show];

    v6 = self->_context;
    if (v6)
    {
      CGAffineTransformMakeRotation(&v12, v6->_toolAngle + 1.57079633);
      drawingTool = v6->_drawingTool;
    }

    else
    {
      CGAffineTransformMakeRotation(&v12, 1.57079633);
      drawingTool = 0;
    }

    v8 = drawingTool;
    v11 = v12;
    [(PKSqueezePaletteDrawingTool *)v8 setTransform:&v11];

    barButtons = self->_barButtons;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__PKSqueezePaletteViewExpandedLassoToolLayout_updateUI__block_invoke;
    v10[3] = &unk_1E82DBCC0;
    v10[4] = self;
    [(NSArray *)barButtons enumerateObjectsUsingBlock:v10];
  }
}

void __55__PKSqueezePaletteViewExpandedLassoToolLayout_updateUI__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(*(a1 + 32) + 56);
  v5 = a2;
  v6 = [(PKFloatArray *)v4 floatAtIndex:a3];
  CGAffineTransformMakeRotation(&v8, v6 + 1.57079633);
  v7 = v8;
  [v5 setTransform:&v7];
}

- (void)willTransitionToLayout:(id)layout
{
  v11[2] = *MEMORY[0x1E69E9840];
  context = self->_context;
  if (context)
  {
    context = context->_drawingTool;
  }

  v5 = context;
  [(PKSqueezePaletteViewExpandedLassoToolLayoutContext *)v5 removeTarget:self action:sel__didTapDrawingTool_ forControlEvents:64];

  v6 = self->_context;
  if (v6)
  {
    v6 = v6->_drawingTool;
  }

  v7 = v6;
  [(PKSqueezePaletteViewExpandedLassoToolLayoutContext *)v7 _set_pk_longSqueezeAction:0];

  v8 = MEMORY[0x1E696ACD8];
  lassoToolCenterYConstraint = self->_lassoToolCenterYConstraint;
  v11[0] = self->_lassoToolCenterXConstraint;
  v11[1] = lassoToolCenterYConstraint;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v8 deactivateConstraints:v10];

  [(NSArray *)self->_barButtons makeObjectsPerformSelector:sel_removeFromSuperview];
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

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end
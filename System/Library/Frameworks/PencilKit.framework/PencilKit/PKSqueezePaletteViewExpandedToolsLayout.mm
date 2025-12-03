@interface PKSqueezePaletteViewExpandedToolsLayout
- (PKSqueezePaletteView)paletteView;
- (id)_selectedTool;
- (id)initWithContext:(void *)context drawingTools:(void *)tools selectedToolIndex:(void *)index visibleToolsCount:;
- (uint64_t)_updateToolsUIStyle;
- (void)_performDrawingToolTapAction:(uint64_t)action;
- (void)handlePencilInteractionDidTap:(int64_t)tap;
- (void)setupUI;
- (void)updateUI;
- (void)willTransitionToLayout:(id)layout;
@end

@implementation PKSqueezePaletteViewExpandedToolsLayout

- (id)initWithContext:(void *)context drawingTools:(void *)tools selectedToolIndex:(void *)index visibleToolsCount:
{
  v10 = a2;
  contextCopy = context;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = PKSqueezePaletteViewExpandedToolsLayout;
    v12 = objc_msgSendSuper2(&v19, sel_init);
    self = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 8, a2);
      v13 = [contextCopy copy];
      v14 = self[9];
      self[9] = v13;

      self[10] = tools;
      self[11] = index;
      v15 = PKSqueezePaletteToolContainerWidth;
      self[1] = PKSqueezePaletteToolsInterItemSpacing;
      self[2] = v15;
      v16 = -[PKFloatArray initWithCapacity:]([PKFloatArray alloc], [self[9] count]);
      v17 = self[3];
      self[3] = v16;
    }
  }

  return self;
}

- (void)_performDrawingToolTapAction:(uint64_t)action
{
  v3 = a2;
  if (action)
  {
    v25 = v3;
    v4 = [*(action + 72) indexOfObject:v3];
    WeakRetained = objc_loadWeakRetained((action + 56));
    v6 = [WeakRetained expandedToolsLayout:action canSelectTool:v25 atIndex:v4];

    v3 = v25;
    if (v6)
    {
      if (v25)
      {
        v7 = v25[102];
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      _isRulerTool = [v8 _isRulerTool];

      if (_isRulerTool)
      {
        v10 = [[PKSqueezePaletteViewTapRulerAction alloc] initWithRulerTool:v25];
        [(PKSqueezePaletteViewTapRulerAction *)v10 performAction];
        v11 = objc_loadWeakRetained((action + 48));
        [(PKSqueezePaletteView *)v11 _didTapRuler];
      }

      else
      {
        _selectedTool = [(PKSqueezePaletteViewExpandedToolsLayout *)action _selectedTool];
        v10 = _selectedTool;
        if (_selectedTool && _selectedTool == v25)
        {
          v13 = *(action + 64);
          if (v13)
          {
            v13 = v13[1];
          }

          v11 = v13;
          v14 = (action + 48);
        }

        else
        {
          [(PKSqueezePaletteDrawingTool *)_selectedTool setSelected:1 animated:0 completion:?];
          [(PKSqueezePaletteDrawingTool *)v25 setSelected:1 animated:0 completion:?];
          if (v4 >= *(action + 88))
          {
            v15 = [*(action + 72) mutableCopy];
            [v15 removeObjectAtIndex:v4];
            [v15 insertObject:v25 atIndex:1];
            v16 = [v15 copy];
            v17 = *(action + 72);
            *(action + 72) = v16;

            *(action + 80) = 1;
            v18 = objc_loadWeakRetained((action + 56));
            [v18 expandedToolsLayout:action didChangeDrawingTools:*(action + 72)];
          }

          else
          {
            *(action + 80) = v4;
          }

          v19 = objc_loadWeakRetained((action + 56));
          [v19 expandedToolsLayout:action didChangeSelectedToolIndex:*(action + 80)];

          v14 = (action + 48);
          v20 = objc_loadWeakRetained((action + 48));
          if (v25)
          {
            v21 = v25[102];
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;
          [(PKSqueezePaletteView *)v20 _didSelectTool:v22 atIndex:*(action + 80)];

          v23 = *(action + 64);
          if (v23)
          {
            v23 = v23[1];
          }

          v11 = v23;
        }

        v24 = objc_loadWeakRetained(v14);
        [(PKSqueezePaletteView *)v24 setCurrentLayout:v11];
      }

      v3 = v25;
    }
  }
}

- (id)_selectedTool
{
  if (self)
  {
    if (*(self + 80) == 0x7FFFFFFFFFFFFFFFLL)
    {
      self = 0;

      return self;
    }

    self = [*(self + 72) objectAtIndexedSubscript:v1];
  }

  return self;
}

- (void)setupUI
{
  v49 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v4 = self->_drawingTools;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v5)
    {
      v6 = *v44;
      v7 = MEMORY[0x1E69E9820];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v44 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          objc_initWeak(from, v9);
          v40[0] = v7;
          v40[1] = 3221225472;
          v40[2] = __50__PKSqueezePaletteViewExpandedToolsLayout_setupUI__block_invoke;
          v40[3] = &unk_1E82D79E0;
          objc_copyWeak(&v41, from);
          objc_copyWeak(&v42, &location);
          [v9 _set_pk_longSqueezeAction:v40];
          objc_destroyWeak(&v42);
          objc_destroyWeak(&v41);
          objc_destroyWeak(from);
        }

        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v5);
    }

    from[0] = 0;
    from[1] = from;
    from[2] = 0x2020000000;
    v10 = objc_loadWeakRetained(&self->_paletteView);
    if (v10)
    {
      v11 = v10[64];
    }

    else
    {
      v11 = 0;
    }

    from[3] = v11;
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_drawingTools, "count")}];
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_drawingTools, "count")}];
    drawingTools = self->_drawingTools;
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __50__PKSqueezePaletteViewExpandedToolsLayout_setupUI__block_invoke_2;
    v34 = &unk_1E82D7A08;
    selfCopy = self;
    v38 = from;
    v15 = v12;
    v36 = v15;
    v16 = v13;
    v37 = v16;
    [(NSArray *)drawingTools enumerateObjectsUsingBlock:&v31];
    [(PKSqueezePaletteViewExpandedToolsLayout *)self _updateToolsUIStyle];
    v17 = [v15 copy];
    toolCenterXConstraints = self->_toolCenterXConstraints;
    self->_toolCenterXConstraints = v17;

    v19 = [v16 copy];
    toolCenterYConstraints = self->_toolCenterYConstraints;
    self->_toolCenterYConstraints = v19;

    lastFloat = [(PKFloatArray *)self->_toolAngles lastFloat];
    toolWidth = self->_toolWidth;
    v23 = objc_loadWeakRetained(&self->_paletteView);
    if (v23)
    {
      v24 = v23[62];
    }

    else
    {
      v24 = 0.0;
    }

    v25 = objc_loadWeakRetained(&self->_paletteView);
    v26 = v25;
    if (v25)
    {
      v27 = v25[64];
    }

    else
    {
      v27 = 0.0;
    }

    v28 = objc_loadWeakRetained(&self->_paletteView);
    v29 = v28;
    if (v28)
    {
      v30 = *(v28 + 480);
    }

    else
    {
      v30 = 0;
    }

    [(PKSqueezePaletteView *)v26 updateUIStartAngle:1 endAngle:v27 clockwise:lastFloat + toolWidth / 6.0 / v24 animated:?];

    _Block_object_dispose(from, 8);
    objc_destroyWeak(&location);
  }
}

void __50__PKSqueezePaletteViewExpandedToolsLayout_setupUI__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v3 = objc_loadWeakRetained((a1 + 32));
    [(PKSqueezePaletteViewExpandedToolsLayout *)v4 _performDrawingToolTapAction:v3];
  }
}

void __50__PKSqueezePaletteViewExpandedToolsLayout_setupUI__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  [v6 addTarget:v5 action:sel__didTapDrawingTool_ forControlEvents:64];
  v7 = [v6 centerXAnchor];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v9 = [WeakRetained centerXAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];

  v11 = [v6 centerYAnchor];

  v12 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v13 = [v12 centerYAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];

  v15 = *(*(*(a1 + 56) + 8) + 24);
  if (a3)
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 16) + *(v16 + 8);
    v18 = objc_loadWeakRetained((v16 + 48));
    if (v18)
    {
      v19 = v18[62];
    }

    else
    {
      v19 = 0.0;
    }

    v15 = v15 + v17 / v19;
  }

  v20 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v21 = v20;
  if (v20)
  {
    v22 = v20[62];
  }

  else
  {
    v22 = 0.0;
  }

  v23 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v22, v15);
  v25 = v24;

  [v10 setConstant:v23];
  [v14 setConstant:v25];
  v26 = MEMORY[0x1E696ACD8];
  v28[0] = v10;
  v28[1] = v14;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [v26 activateConstraints:v27];

  [*(a1 + 40) addObject:v10];
  [*(a1 + 48) addObject:v14];
  [(PKFloatArray *)*(*(a1 + 32) + 24) setFloat:a3 atIndex:v15];
  *(*(*(a1 + 56) + 8) + 24) = v15;
}

- (uint64_t)_updateToolsUIStyle
{
  if (result)
  {
    v1 = *(result + 72);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __62__PKSqueezePaletteViewExpandedToolsLayout__updateToolsUIStyle__block_invoke;
    v2[3] = &unk_1E82D7998;
    v2[4] = result;
    return [v1 enumerateObjectsUsingBlock:v2];
  }

  return result;
}

- (void)updateUI
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    drawingTools = self->_drawingTools;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__PKSqueezePaletteViewExpandedToolsLayout_updateUI__block_invoke;
    v6[3] = &unk_1E82D7998;
    v6[4] = self;
    [(NSArray *)drawingTools enumerateObjectsUsingBlock:v6];
    _selectedTool = [(PKSqueezePaletteViewExpandedToolsLayout *)self _selectedTool];
    [_selectedTool setSelected:1];
  }
}

void __51__PKSqueezePaletteViewExpandedToolsLayout_updateUI__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 _pk_show];
  v6 = [(PKFloatArray *)*(*(a1 + 32) + 24) floatAtIndex:a3];
  CGAffineTransformMakeRotation(&v8, v6 + 1.57079633);
  v7 = v8;
  [v5 setTransform:&v7];
}

- (void)willTransitionToLayout:(id)layout
{
  v24 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_toolCenterXConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_toolCenterYConstraints];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_drawingTools;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v18 + 1) + 8 * i) removeTarget:self action:sel__didTapDrawingTool_ forControlEvents:64];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_drawingTools;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * j) _set_pk_longSqueezeAction:{0, v14}];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)handlePencilInteractionDidTap:(int64_t)tap
{
  _selectedTool = [(PKSqueezePaletteViewExpandedToolsLayout *)self _selectedTool];
  [(PKSqueezePaletteViewExpandedToolsLayout *)self _performDrawingToolTapAction:_selectedTool];
}

void __62__PKSqueezePaletteViewExpandedToolsLayout__updateToolsUIStyle__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained[73];
  }

  else
  {
    v5 = 0;
  }

  v6 = WeakRetained;
  if (v3 && *(v3 + 103) != v5)
  {
    *(v3 + 103) = v5;
    [*(v3 + 93) setColorUserInterfaceStyle:?];
  }
}

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end
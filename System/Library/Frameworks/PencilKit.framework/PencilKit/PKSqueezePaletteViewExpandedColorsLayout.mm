@interface PKSqueezePaletteViewExpandedColorsLayout
- (PKSqueezePaletteView)paletteView;
- (id)_currentSelectedButton;
- (id)initWithContext:(void *)a3 colorButtons:(void *)a4 selectedColorIndex:(void *)a5 backButton:;
- (uint64_t)_updateColorUIStyle;
- (void)_performBackButtonTapAction;
- (void)_performColorButtonTapAction:(uint64_t)a1;
- (void)_performMulticolorButtonTapAction:(id *)a1;
- (void)_updateSelectedToolColorWithColor:(uint64_t)a3 isFromExtendedColorPicker:(uint64_t)a4 isContinuousColorSelection:;
- (void)dealloc;
- (void)handlePencilInteractionDidTap:(int64_t)a3;
- (void)setupUI;
- (void)updateUI;
- (void)willTransitionToLayout:(id)a3;
@end

@implementation PKSqueezePaletteViewExpandedColorsLayout

- (id)initWithContext:(void *)a3 colorButtons:(void *)a4 selectedColorIndex:(void *)a5 backButton:
{
  v44 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v27 = a3;
  v26 = a5;
  if (a1)
  {
    v42.receiver = a1;
    v42.super_class = PKSqueezePaletteViewExpandedColorsLayout;
    v10 = objc_msgSendSuper2(&v42, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 7, a2);
      a1[9] = a4;
      *(a1 + 1) = PKSqueezePaletteButtonSize();
      a1[2] = v11;
      v12 = [v27 copy];
      v13 = a1[8];
      a1[8] = v12;

      a1[3] = malloc_type_malloc(8 * [a1[8] count], 0x100004000313F17uLL);
      a1[4] = PKSqueezePaletteButtonInterItemSpacing;
      objc_storeStrong(a1 + 10, a5);
      objc_initWeak(&location, a1);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = a1[8];
      v15 = [v14 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v15)
      {
        v16 = *v38;
        v17 = MEMORY[0x1E69E9820];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v37 + 1) + 8 * i);
            objc_initWeak(&from, v19);
            v33[0] = v17;
            v33[1] = 3221225472;
            v33[2] = __103__PKSqueezePaletteViewExpandedColorsLayout_initWithContext_colorButtons_selectedColorIndex_backButton___block_invoke;
            v33[3] = &unk_1E82D79E0;
            objc_copyWeak(&v34, &location);
            objc_copyWeak(&v35, &from);
            [v19 _set_pk_longSqueezeAction:v33];
            objc_destroyWeak(&v35);
            objc_destroyWeak(&v34);
            objc_destroyWeak(&from);
          }

          v15 = [v14 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v15);
      }

      v20 = a1[7];
      if (v20)
      {
        v20 = v20[2];
      }

      v21 = v20;
      objc_initWeak(&from, v21);

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __103__PKSqueezePaletteViewExpandedColorsLayout_initWithContext_colorButtons_selectedColorIndex_backButton___block_invoke_2;
      v30[3] = &unk_1E82D79E0;
      objc_copyWeak(&v31, &location);
      objc_copyWeak(&v32, &from);
      v22 = a1[7];
      if (v22)
      {
        v22 = v22[2];
      }

      v23 = v22;
      [v23 _set_pk_longSqueezeAction:v30];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __103__PKSqueezePaletteViewExpandedColorsLayout_initWithContext_colorButtons_selectedColorIndex_backButton___block_invoke_3;
      v28[3] = &unk_1E82D69B8;
      objc_copyWeak(&v29, &location);
      [a1[10] _set_pk_longSqueezeAction:v28];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void __103__PKSqueezePaletteViewExpandedColorsLayout_initWithContext_colorButtons_selectedColorIndex_backButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [(PKSqueezePaletteViewExpandedColorsLayout *)WeakRetained _performColorButtonTapAction:v2];
}

- (void)_performColorButtonTapAction:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Color button tapped", v12, 2u);
    }

    v5 = [(PKSqueezePaletteViewExpandedColorsLayout *)a1 _currentSelectedButton];
    v6 = v5;
    if (v5 && v5 == v3)
    {
      v7 = *(a1 + 56);
      if (v7)
      {
        v7 = v7[4];
      }

      v8 = v7;
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v8];
    }

    else
    {
      [v5 setSelected:0];
      *(a1 + 72) = [*(a1 + 64) indexOfObject:v3];
      [v3 setSelected:1];
      if (v3)
      {
        v10 = v3[94];
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      v8 = [v11 color];

      [(PKSqueezePaletteViewExpandedColorsLayout *)a1 _updateSelectedToolColorWithColor:v8 isFromExtendedColorPicker:0 isContinuousColorSelection:0];
    }
  }
}

void __103__PKSqueezePaletteViewExpandedColorsLayout_initWithContext_colorButtons_selectedColorIndex_backButton___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [(PKSqueezePaletteViewExpandedColorsLayout *)WeakRetained _performMulticolorButtonTapAction:v2];
}

- (void)_performMulticolorButtonTapAction:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Multicolor button tapped", buf, 2u);
    }

    objc_initWeak(buf, a1);
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __78__PKSqueezePaletteViewExpandedColorsLayout__performMulticolorButtonTapAction___block_invoke;
    newValue[3] = &unk_1E82D7A50;
    objc_copyWeak(&v12, buf);
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      objc_setProperty_nonatomic_copy(WeakRetained, v6, newValue, 600);
    }

    if (v3)
    {
      v8 = v3[94];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = objc_loadWeakRetained(a1 + 6);
    [(PKSqueezePaletteView *)v10 _didTapMulticolorButton:v3 currentSelectedColor:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __103__PKSqueezePaletteViewExpandedColorsLayout_initWithContext_colorButtons_selectedColorIndex_backButton___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKSqueezePaletteViewExpandedColorsLayout *)WeakRetained _performBackButtonTapAction];
}

- (void)_performBackButtonTapAction
{
  if (a1)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Back button tapped", v6, 2u);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      v3 = v3[4];
    }

    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v4];
  }
}

- (void)dealloc
{
  buttonAngles = self->_buttonAngles;
  if (buttonAngles)
  {
    free(buttonAngles);
    self->_buttonAngles = 0;
  }

  v4.receiver = self;
  v4.super_class = PKSqueezePaletteViewExpandedColorsLayout;
  [(PKSqueezePaletteViewExpandedColorsLayout *)&v4 dealloc];
}

void __78__PKSqueezePaletteViewExpandedColorsLayout__performMulticolorButtonTapAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (WeakRetained)
  {
    v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v18 = v6;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Update multicolor button color from extended color picker, color: %{private}@", buf, 0xCu);
    }

    v8 = WeakRetained;
    if (WeakRetained[9] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = WeakRetained[9];
        *buf = 134283521;
        v18 = v10;
        _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Unselect color swatch at index: %{private}ld", buf, 0xCu);
      }

      v11 = [(PKSqueezePaletteViewExpandedColorsLayout *)WeakRetained _currentSelectedButton];
      [v11 setSelected:0];

      v8 = WeakRetained;
      WeakRetained[9] = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12 = v8[7];
    if (v12)
    {
      v12 = v12[2];
    }

    v13 = v12;
    [v13 setSelected:1];

    v14 = WeakRetained[7];
    if (v14)
    {
      v14 = v14[2];
    }

    v15 = v14;
    [(PKSqueezePaletteMulticolorSwatchButton *)v15 setColor:v6];

    [(PKSqueezePaletteViewExpandedColorsLayout *)WeakRetained _updateSelectedToolColorWithColor:v6 isFromExtendedColorPicker:1 isContinuousColorSelection:a3];
  }
}

- (id)_currentSelectedButton
{
  if (*(a1 + 72) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 64) objectAtIndexedSubscript:v1];
  }

  return v3;
}

- (void)_updateSelectedToolColorWithColor:(uint64_t)a3 isFromExtendedColorPicker:(uint64_t)a4 isContinuousColorSelection:
{
  v18 = a2;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(v7 + 8);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 102);
      goto LABEL_4;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_4:
  v11 = v10;

  v12 = [v11 _configuration];
  v13 = [v12 supportsColor];

  if (v13)
  {
    v14 = [v11 _copyWithColor:v18];
    if (v14)
    {
      v15 = *(a1 + 56);
      if (v15)
      {
        v15 = v15[1];
      }

      v16 = v15;
      [(PKSqueezePaletteDrawingTool *)v16 setTool:v14];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [(PKSqueezePaletteView *)WeakRetained _didSelectColor:v18 isFromExtendedColorPicker:a3 isContinuousColorSelection:a4];
  }
}

- (uint64_t)_updateColorUIStyle
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 48));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = *(WeakRetained + 73);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v1 + 56);
    if (v5)
    {
      v6 = *(v5 + 16);
      v7 = v6;
      if (v6)
      {
        if (*(v6 + 95) != v4)
        {
          *(v6 + 95) = v4;
          [(PKSqueezePaletteMulticolorSwatchButton *)v6 _updateUI];
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v1 + 64);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PKSqueezePaletteViewExpandedColorsLayout__updateColorUIStyle__block_invoke;
    v9[3] = &unk_1E82D8628;
    v9[4] = v1;
    return [v8 enumerateObjectsUsingBlock:v9];
  }

  return result;
}

void __63__PKSqueezePaletteViewExpandedColorsLayout__updateColorUIStyle__block_invoke(uint64_t a1, void *a2)
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
  if (v3 && v3[95] != v5)
  {
    v3[95] = v5;
    [(PKPaletteColorSwatch *)v3[93] setColorUserInterfaceStyle:v5];
  }
}

- (void)setupUI
{
  v45[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    context = self->_context;
    if (context)
    {
      context = context->_multicolorButton;
    }

    v34 = context;
    [(PKSqueezePaletteViewExpandedColorsLayoutContext *)v34 addTarget:self action:sel__didTapMulticolorButton_ forControlEvents:64];
    [(UIButton *)self->_backButton addTarget:self action:sel__didTapBackButton_ forControlEvents:64];
    v5 = self->_context;
    if (v5)
    {
      multicolorButtonAngle = v5->_multicolorButtonAngle;
    }

    else
    {
      multicolorButtonAngle = 0.0;
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = multicolorButtonAngle;
    colorButtons = self->_colorButtons;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __51__PKSqueezePaletteViewExpandedColorsLayout_setupUI__block_invoke;
    v40[3] = &unk_1E82D8650;
    v40[4] = self;
    v40[5] = &v41;
    [(NSArray *)colorButtons enumerateObjectsUsingBlock:v40];
    if (self->_selectedColorIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(NSArray *)self->_colorButtons objectAtIndexedSubscript:?];
      [v8 setSelected:1];
    }

    v9 = v42[3];
    width = self->_buttonSize.width;
    interButtonSpace = self->_interButtonSpace;
    v12 = objc_loadWeakRetained(&self->_paletteView);
    if (v12)
    {
      v13 = v12[62];
    }

    else
    {
      v13 = 0.0;
    }

    self->_backButtonAngle = v9 - (width + interButtonSpace) / v13;

    v14 = objc_loadWeakRetained(&self->_paletteView);
    v15 = v14;
    if (v14)
    {
      v16 = v14[62];
    }

    else
    {
      v16 = 0.0;
    }

    v17 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v16, self->_backButtonAngle);
    v19 = v18;

    [(UIButton *)self->_backButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = objc_loadWeakRetained(&self->_paletteView);
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 69);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    [v23 addSubview:self->_backButton];

    v35 = MEMORY[0x1E696ACD8];
    v38 = [(UIButton *)self->_backButton centerXAnchor];
    v39 = objc_loadWeakRetained(&self->_paletteView);
    v37 = [v39 centerXAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:v17];
    v45[0] = v36;
    v24 = [(UIButton *)self->_backButton centerYAnchor];
    v25 = objc_loadWeakRetained(&self->_paletteView);
    v26 = [v25 centerYAnchor];
    v27 = [v24 constraintEqualToAnchor:v26 constant:v19];
    v45[1] = v27;
    v28 = [(UIButton *)self->_backButton heightAnchor];
    v29 = [v28 constraintEqualToConstant:self->_buttonSize.height];
    v45[2] = v29;
    v30 = [(UIButton *)self->_backButton widthAnchor];
    v31 = [v30 constraintEqualToConstant:self->_buttonSize.width];
    v45[3] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    [v35 activateConstraints:v32];

    v33 = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)v33 updateUIStartAngle:1 endAngle:self->_backButtonAngle clockwise:multicolorButtonAngle animated:?];

    _Block_object_dispose(&v41, 8);
  }
}

void __51__PKSqueezePaletteViewExpandedColorsLayout_setupUI__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addTarget:*(a1 + 32) action:sel__didTapColorButton_ forControlEvents:64];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
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

  v10 = [v5 centerXAnchor];
  v11 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v12 = [v11 centerXAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];

  v14 = [v5 centerYAnchor];
  v15 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v16 = [v15 centerYAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];

  v18 = *(a1 + 32);
  v19 = *(*(*(a1 + 40) + 8) + 24);
  v20 = *(v18 + 8);
  v21 = *(v18 + 32);
  v22 = objc_loadWeakRetained((v18 + 48));
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v24 = v22[62];
  }

  v25 = objc_loadWeakRetained((*(a1 + 32) + 48));
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
  v37[0] = v13;
  v37[1] = v17;
  v32 = [v5 heightAnchor];
  v33 = [v32 constraintEqualToConstant:*(*(a1 + 32) + 16)];
  v37[2] = v33;
  v34 = [v5 widthAnchor];

  v35 = [v34 constraintEqualToConstant:*(*(a1 + 32) + 8)];
  v37[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v31 activateConstraints:v36];

  *(*(*(a1 + 32) + 24) + 8 * a3) = v27;
  *(*(*(a1 + 40) + 8) + 24) = v27;
}

- (void)updateUI
{
  [(NSArray *)self->_colorButtons enumerateObjectsUsingBlock:&__block_literal_global_31];
  if (self->_selectedColorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    context = self->_context;
    if (context)
    {
      context = context->_multicolorButton;
    }

    v4 = context;
    [(PKSqueezePaletteMulticolorSwatchButton *)v4 setColor:?];
  }

  CGAffineTransformMakeRotation(&v7, self->_backButtonAngle + 1.57079633);
  backButton = self->_backButton;
  v6 = v7;
  [(UIButton *)backButton setTransform:&v6];
  [(PKSqueezePaletteViewExpandedColorsLayout *)self _updateColorUIStyle];
}

- (void)willTransitionToLayout:(id)a3
{
  [(NSArray *)self->_colorButtons enumerateObjectsUsingBlock:&__block_literal_global_15_0];
  context = self->_context;
  if (context)
  {
    context = context->_multicolorButton;
  }

  v6 = context;
  [(PKSqueezePaletteViewExpandedColorsLayoutContext *)v6 removeTarget:self action:sel__didTapMulticolorButton_ forControlEvents:64];
  [(UIButton *)self->_backButton removeFromSuperview];
  backButton = self->_backButton;
  self->_backButton = 0;
}

- (void)handlePencilInteractionDidTap:(int64_t)a3
{
  context = self->_context;
  if (a3 == 3)
  {
    if (context)
    {
      context = context->_multicolorButton;
    }

    v6 = context;
    [(PKSqueezePaletteViewExpandedColorsLayout *)&self->super.isa _performMulticolorButtonTapAction:v6];
  }

  else
  {
    if (context)
    {
      context = context->_previousLayout;
    }

    v6 = context;
    WeakRetained = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v6];
  }
}

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end
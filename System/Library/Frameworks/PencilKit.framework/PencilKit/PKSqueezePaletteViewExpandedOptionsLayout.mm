@interface PKSqueezePaletteViewExpandedOptionsLayout
- (PKSqueezePaletteView)paletteView;
- (id)initWithContext:(void *)a3 backButton:(void *)a4 textBoxButton:(void *)a5 signatureButton:(void *)a6 shapesButton:(void *)a7 stickersButton:(void *)a8 gearButton:;
- (void)_performButtonAction:(uint64_t)a1;
- (void)dealloc;
- (void)handlePencilInteractionDidTap:(int64_t)a3;
- (void)setupUI;
- (void)updateUI;
@end

@implementation PKSqueezePaletteViewExpandedOptionsLayout

- (id)initWithContext:(void *)a3 backButton:(void *)a4 textBoxButton:(void *)a5 signatureButton:(void *)a6 shapesButton:(void *)a7 stickersButton:(void *)a8 gearButton:
{
  v53[5] = *MEMORY[0x1E69E9840];
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  if (a1)
  {
    v51.receiver = a1;
    v51.super_class = PKSqueezePaletteViewExpandedOptionsLayout;
    v16 = objc_msgSendSuper2(&v51, sel_init);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 7, a2);
      objc_storeStrong(a1 + 8, a3);
      objc_storeStrong(a1 + 9, a4);
      objc_storeStrong(a1 + 10, a5);
      objc_storeStrong(a1 + 11, a6);
      objc_storeStrong(a1 + 12, a7);
      objc_storeStrong(a1 + 13, a8);
      *(a1 + 1) = PKSqueezePaletteButtonSize();
      a1[2] = v17;
      a1[3] = PKSqueezePaletteButtonInterItemSpacing;
      v18 = objc_alloc(MEMORY[0x1E695DF70]);
      v20 = a1[10];
      v19 = a1[11];
      v53[0] = a1[13];
      v53[1] = v19;
      v22 = a1[8];
      v21 = a1[9];
      v53[2] = v20;
      v53[3] = v21;
      v53[4] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:5];
      v41 = [v18 initWithArray:v23];

      v24 = a1[12];
      if (v24)
      {
        [v41 insertObject:v24 atIndex:{objc_msgSend(v41, "indexOfObject:", a1[8])}];
      }

      v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v41];
      v26 = a1[4];
      a1[4] = v25;

      a1[5] = malloc_type_malloc(8 * [a1[4] count], 0x100004000313F17uLL);
      objc_initWeak(&location, a1);
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v27 = a1[4];
      v28 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v28)
      {
        v29 = *v47;
        v30 = MEMORY[0x1E69E9820];
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v46 + 1) + 8 * i);
            objc_initWeak(&from, v32);
            v42[0] = v30;
            v42[1] = 3221225472;
            v42[2] = __141__PKSqueezePaletteViewExpandedOptionsLayout_initWithContext_backButton_textBoxButton_signatureButton_shapesButton_stickersButton_gearButton___block_invoke;
            v42[3] = &unk_1E82D79E0;
            objc_copyWeak(&v43, &location);
            objc_copyWeak(&v44, &from);
            [v32 _set_pk_longSqueezeAction:v42];
            objc_destroyWeak(&v44);
            objc_destroyWeak(&v43);
            objc_destroyWeak(&from);
          }

          v28 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v28);
      }

      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void __141__PKSqueezePaletteViewExpandedOptionsLayout_initWithContext_backButton_textBoxButton_signatureButton_shapesButton_stickersButton_gearButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [(PKSqueezePaletteViewExpandedOptionsLayout *)WeakRetained _performButtonAction:v2];
}

- (void)_performButtonAction:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 64) == v3)
    {
      v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Did tap on back button", buf, 2u);
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        v9 = v9[2];
      }

      v7 = v9;
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [(PKSqueezePaletteView *)WeakRetained setCurrentLayout:v7];
    }

    else if (*(a1 + 104) == v3)
    {
      v11 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Did tap on gear button", v20, 2u);
      }

      v7 = objc_loadWeakRetained((a1 + 48));
      [(PKSqueezePaletteView *)v7 _didTapMoreOptionsButton:v4];
    }

    else if (*(a1 + 96) == v3)
    {
      v12 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "Did tap on stickers button", v19, 2u);
      }

      v7 = objc_loadWeakRetained((a1 + 48));
      [(PKSqueezePaletteView *)v7 _didTapStickersButton:v4];
    }

    else if (*(a1 + 88) == v3)
    {
      v13 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Did tap on shapes button", v18, 2u);
      }

      v7 = objc_loadWeakRetained((a1 + 48));
      [(PKSqueezePaletteView *)v7 _didTapShapesButton:v4];
    }

    else if (*(a1 + 80) == v3)
    {
      v14 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Did tap on signatures button", v17, 2u);
      }

      v7 = objc_loadWeakRetained((a1 + 48));
      [(PKSqueezePaletteView *)v7 _didTapSignatureButton:v4];
    }

    else
    {
      v5 = *(a1 + 72);
      v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      v7 = v6;
      if (v5 == v4)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Did tap on text-box button", v16, 2u);
        }

        v7 = objc_loadWeakRetained((a1 + 48));
        [(PKSqueezePaletteView *)v7 _didTapTextBoxButton:v4];
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_FAULT, "Unhandled button action", v15, 2u);
      }
    }
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
  v4.super_class = PKSqueezePaletteViewExpandedOptionsLayout;
  [(PKSqueezePaletteViewExpandedOptionsLayout *)&v4 dealloc];
}

- (void)setupUI
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    context = self->_context;
    if (context)
    {
      moreButtonAngle = context->_moreButtonAngle;
    }

    else
    {
      moreButtonAngle = 0.0;
    }

    v15 = moreButtonAngle;
    buttons = self->_buttons;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__PKSqueezePaletteViewExpandedOptionsLayout_setupUI__block_invoke;
    v11[3] = &unk_1E82DC4A8;
    v11[4] = self;
    v11[5] = &v12;
    [(NSArray *)buttons enumerateObjectsUsingBlock:v11];
    v7 = objc_loadWeakRetained(&self->_paletteView);
    v8 = v7;
    v9 = self->_context;
    if (v9)
    {
      v10 = v9->_moreButtonAngle;
    }

    else
    {
      v10 = 0.0;
    }

    [(PKSqueezePaletteView *)v7 updateUIStartAngle:1 endAngle:v13[3] clockwise:v10 animated:?];

    _Block_object_dispose(&v12, 8);
  }
}

void __52__PKSqueezePaletteViewExpandedOptionsLayout_setupUI__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addTarget:*(a1 + 32) action:sel__didTapButton_ forControlEvents:64];
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

  v18 = *(*(*(a1 + 40) + 8) + 24);
  v19 = 0.0;
  v20 = 0.0;
  if (a3)
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 8) + *(v21 + 24);
    v23 = objc_loadWeakRetained((v21 + 48));
    if (v23)
    {
      v24 = v23[62];
    }

    else
    {
      v24 = 0.0;
    }

    v20 = v22 / v24;
  }

  v37 = a3;
  v25 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v26 = v25;
  if (v25)
  {
    v19 = v25[62];
  }

  v27 = v18 - v20;
  v28 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v19, v27);
  v30 = v29;

  [v13 setConstant:v28];
  [v17 setConstant:v30];
  v31 = MEMORY[0x1E696ACD8];
  v38[0] = v13;
  v38[1] = v17;
  v32 = [v5 heightAnchor];
  v33 = [v32 constraintEqualToConstant:*(*(a1 + 32) + 16)];
  v38[2] = v33;
  v34 = [v5 widthAnchor];
  v35 = [v34 constraintEqualToConstant:*(*(a1 + 32) + 8)];
  v38[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v31 activateConstraints:v36];

  *(*(*(a1 + 32) + 40) + 8 * v37) = v27;
  *(*(*(a1 + 40) + 8) + 24) = v27;
}

- (void)updateUI
{
  buttons = self->_buttons;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PKSqueezePaletteViewExpandedOptionsLayout_updateUI__block_invoke;
  v3[3] = &unk_1E82DC4D0;
  v3[4] = self;
  [(NSArray *)buttons enumerateObjectsUsingBlock:v3];
}

void __53__PKSqueezePaletteViewExpandedOptionsLayout_updateUI__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 _pk_show];
  CGAffineTransformMakeRotation(&v7, *(*(*(a1 + 32) + 40) + 8 * a3) + 1.57079633);
  v6 = v7;
  [v5 setTransform:&v6];
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

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end
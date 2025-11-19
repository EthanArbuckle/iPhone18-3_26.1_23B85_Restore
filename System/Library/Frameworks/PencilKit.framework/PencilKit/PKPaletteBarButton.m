@interface PKPaletteBarButton
+ (id)_imageByApplyingDefaultImageSymbolConfigurationWithImage:(id)a3;
- (PKPaletteBarButton)initWithBarButtonItem:(id)a3;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_resolvedButton;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_checkCurrentBarButtonItemState;
- (void)_handleTouchUpInside:(id)a3 event:(id)a4;
- (void)_updateForButtonItemChange;
- (void)_updateMenu;
- (void)dismissContextMenu;
- (void)layoutSubviews;
- (void)setCustomView:(id)a3;
- (void)setScalingFactor:(double)a3;
- (void)setTintColor:(id)a3;
@end

@implementation PKPaletteBarButton

- (PKPaletteBarButton)initWithBarButtonItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PKPaletteBarButton;
  v6 = [(PKPaletteButton *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barButtonItem, a3);
    [(PKPaletteBarButton *)v7 _updateForButtonItemChange];
    [(PKPaletteBarButton *)v7 addTarget:v7 action:sel__handleTouchUpInside_event_ forControlEvents:64];
    [(UIBarButtonItem *)v7->_barButtonItem _setViewOwner:v7];
    v8 = [(PKPaletteButton *)v7 button];
    [(UIBarButtonItem *)v7->_barButtonItem setView:v8];
  }

  return v7;
}

- (id)_resolvedButton
{
  if (a1)
  {
    a1 = [a1 button];
    v1 = vars8;
  }

  return a1;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PKPaletteBarButton;
  [(PKPaletteButton *)&v26 layoutSubviews];
  v3 = [(PKPaletteBarButton *)self customView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v23 = *MEMORY[0x1E695EFD0];
  v24 = v4;
  v25 = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:&v23];

  [(PKPaletteBarButton *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PKPaletteBarButton *)self customView];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(PKPaletteButton *)self button];
  v15 = v14;
  if (v14)
  {
    [v14 transform];
  }

  else
  {
    v19 = 0u;
    v21 = 0u;
    v17 = 0u;
  }

  v16 = [(PKPaletteBarButton *)self customView:v17];
  v23 = v18;
  v24 = v20;
  v25 = v22;
  [v16 setTransform:&v23];
}

- (void)setCustomView:(id)a3
{
  v5 = a3;
  customView = self->_customView;
  v8 = v5;
  if (customView != v5)
  {
    v7 = [(UIView *)customView superview];

    if (v7 == self)
    {
      [(UIView *)self->_customView removeFromSuperview];
    }

    objc_storeStrong(&self->_customView, a3);
    if (self->_customView)
    {
      [(PKPaletteBarButton *)self addSubview:?];
    }
  }
}

- (void)dismissContextMenu
{
  v4.receiver = self;
  v4.super_class = PKPaletteBarButton;
  [(PKPaletteButton *)&v4 dismissContextMenu];
  if ([(PKPaletteButton *)self hasContextMenuVisible])
  {
    v3 = [(PKPaletteBarButton *)self contextMenuInteraction];
    [v3 dismissMenu];

    [(PKPaletteBarButton *)self setContextMenuInteractionEnabled:0];
    [(PKPaletteBarButton *)self setContextMenuInteractionEnabled:1];
  }
}

- (void)setScalingFactor:(double)a3
{
  v4.receiver = self;
  v4.super_class = PKPaletteBarButton;
  [(PKPaletteButton *)&v4 setScalingFactor:a3];
  [(PKPaletteBarButton *)self setNeedsLayout];
}

- (void)_updateForButtonItemChange
{
  v3 = [(PKPaletteBarButton *)self barButtonItem];
  v4 = [v3 customView];

  if (v4)
  {
    v5 = [(PKPaletteButton *)self button];
    [v5 setHidden:1];

    v6 = [(PKPaletteBarButton *)self barButtonItem];
    v7 = [v6 customView];
    [(PKPaletteBarButton *)self setCustomView:v7];
    goto LABEL_9;
  }

  [(PKPaletteBarButton *)self setCustomView:0];
  v8 = [(PKPaletteButton *)self button];
  [v8 setHidden:0];

  v9 = [(PKPaletteBarButton *)self barButtonItem];
  v6 = [v9 _imageForState:0 compact:0 type:5];

  v10 = [(PKPaletteBarButton *)self barButtonItem];
  v7 = [v10 resolvedTitle];

  v11 = [(PKPaletteBarButton *)self _resolvedButton];
  v12 = v11;
  if (v6)
  {
    v13 = [objc_opt_class() _imageByApplyingDefaultImageSymbolConfigurationWithImage:v6];
    [v12 setImage:v13 forState:0];
    [v12 setTitle:0 forState:0];
  }

  else
  {
    [v11 setImage:0 forState:0];
    if (!v7)
    {
      [v12 setTitle:0 forState:0];
      goto LABEL_8;
    }

    [v12 setTitle:v7 forState:0];
    v13 = [v12 titleLabel];
    [v13 setLineBreakMode:4];
  }

LABEL_8:
LABEL_9:

  v14 = [(PKPaletteBarButton *)self barButtonItem];
  v15 = [v14 accessibilityIdentifier];
  v16 = [(PKPaletteButton *)self button];
  [v16 setAccessibilityIdentifier:v15];

  v17 = [(PKPaletteBarButton *)self barButtonItem];
  -[PKPaletteButton setEnabled:](self, "setEnabled:", [v17 isEnabled]);

  v18 = [(PKPaletteBarButton *)self barButtonItem];
  -[PKPaletteButton setHidden:](self, "setHidden:", [v18 isHidden]);

  v19 = [(PKPaletteBarButton *)self barButtonItem];
  -[PKPaletteButton setSelected:](self, "setSelected:", [v19 isSelected]);

  [(PKPaletteBarButton *)self _updateMenu];
}

- (void)_updateMenu
{
  v3 = [(PKPaletteBarButton *)self barButtonItem];
  v4 = [v3 menu];

  v5 = [(PKPaletteBarButton *)self barButtonItem];
  v6 = [v5 _menuIsPrimary];

  v7 = [(PKPaletteBarButton *)self barButtonItem];
  v8 = [v7 _secondaryActionsProvider];

  if (v8)
  {
    v9 = [(PKPaletteBarButton *)self barButtonItem];
    objc_initWeak(&location, v9);

    if (v6)
    {
      v10 = v20;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __33__PKPaletteBarButton__updateMenu__block_invoke;
      v20[3] = &unk_1E82D9C18;
      v20[4] = v8;
      v11 = &v21;
      objc_copyWeak(&v21, &location);
      [(PKPaletteBarButton *)self setMenuProvider:v20];
    }

    else
    {
      v10 = v18;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __33__PKPaletteBarButton__updateMenu__block_invoke_3;
      v18[3] = &unk_1E82D9C18;
      v18[4] = v8;
      v11 = &v19;
      objc_copyWeak(&v19, &location);
      [(PKPaletteBarButton *)self setMenuProvider:v18];
    }

    objc_destroyWeak(v11);

    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __33__PKPaletteBarButton__updateMenu__block_invoke_4;
    v16 = &unk_1E82D9C40;
    v17 = v4;
    [(PKPaletteBarButton *)self setMenuProvider:&v13];
  }

  else
  {
    [(PKPaletteBarButton *)self setMenuProvider:0];
  }

  [(PKPaletteBarButton *)self setContextMenuInteractionEnabled:self->_menuProvider != 0, v13, v14, v15, v16];
  [(PKPaletteBarButton *)self setShowsMenuAsPrimaryAction:v6];
  v12 = [(PKPaletteBarButton *)self barButtonItem];
  [(PKPaletteBarButton *)self _setProxySender:v12];
}

id __33__PKPaletteBarButton__updateMenu__block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = (*(v4 + 16))(v4, WeakRetained, v3);

  if (!v6)
  {
    v7 = MEMORY[0x1E69DC628];
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 title];
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 image];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __33__PKPaletteBarButton__updateMenu__block_invoke_2;
    v16[3] = &unk_1E82D9BF0;
    objc_copyWeak(&v17, (a1 + 40));
    v12 = [v7 actionWithTitle:v9 image:v11 identifier:0 handler:v16];

    v13 = MEMORY[0x1E69DCC60];
    v18[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v6 = [v13 menuWithTitle:&stru_1F476BD20 children:v14];

    objc_destroyWeak(&v17);
  }

  return v6;
}

void __33__PKPaletteBarButton__updateMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerActionForEvent:0];
}

id __33__PKPaletteBarButton__updateMenu__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = (*(v3 + 16))(v3, WeakRetained, v4);

  return v6;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = MEMORY[0x1E69DC8D8];
  v6 = [(PKPaletteBarButton *)self menuProvider:a3];
  v7 = [v5 configurationWithIdentifier:@"PK-UIBarButtonItemContextMenu" previewProvider:0 actionProvider:v6];

  v8 = [(PKPaletteBarButton *)self barButtonItem];
  [v7 setPreferredMenuElementOrder:{objc_msgSend(v8, "preferredMenuElementOrder")}];

  return v7;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v33.receiver = self;
  v33.super_class = PKPaletteBarButton;
  v5 = [(PKPaletteBarButton *)&v33 _contextMenuInteraction:a3 styleForMenuWithConfiguration:a4];
  v6 = [(PKPaletteBarButton *)self window];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(PKPaletteBarButton *)self window];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [(PKPaletteBarButton *)self window];
    [v17 actualSceneBounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v35.origin.x = v10;
    v35.origin.y = v12;
    v35.size.width = v14;
    v35.size.height = v16;
    v38.origin.x = v19;
    v38.origin.y = v21;
    v38.size.width = v23;
    v38.size.height = v25;
    if (!CGRectEqualToRect(v35, v38))
    {
      v26 = *MEMORY[0x1E69DDCE0];
      v27 = *(MEMORY[0x1E69DDCE0] + 8);
      v28 = *(MEMORY[0x1E69DDCE0] + 16);
      v29 = [(PKPaletteBarButton *)self window];
      [v29 bounds];
      Width = CGRectGetWidth(v36);
      v37.origin.x = v19;
      v37.origin.y = v21;
      v37.size.width = v23;
      v37.size.height = v25;
      v31 = Width - CGRectGetWidth(v37);

      [v5 setPreferredEdgeInsets:{v26, v27, v28, v31}];
    }
  }

  return v5;
}

- (void)setTintColor:(id)a3
{
  if (a3)
  {
    v3.receiver = self;
    v3.super_class = PKPaletteBarButton;
    [(PKPaletteBarButton *)&v3 setTintColor:?];
  }
}

- (void)_handleTouchUpInside:(id)a3 event:(id)a4
{
  v5 = a4;
  [(PKPaletteBarButton *)self _checkCurrentBarButtonItemState];
  v6 = [(PKPaletteBarButton *)self barButtonItem];
  [v6 _triggerActionForEvent:v5];
}

- (void)_checkCurrentBarButtonItemState
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteBarButton *)self barButtonItem];
  v4 = [v3 view];

  v5 = [(PKPaletteBarButton *)self barButtonItem];
  v6 = [v5 _viewOwner];

  v7 = [(PKPaletteButton *)self button];

  if (v4 != v7 || v6 != self)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = [v8 stringWithFormat:@"Unexpected view(%@) or viewOwner(%@) for UIBarButtonItem represented by PKPaletteBarButton", v9, objc_opt_class()];
    v11 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    [(UIBarButtonItem *)self->_barButtonItem _setViewOwner:self];
    v12 = [(PKPaletteBarButton *)self _resolvedButton];
    [(UIBarButtonItem *)self->_barButtonItem setView:v12];
  }
}

+ (id)_imageByApplyingDefaultImageSymbolConfigurationWithImage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 isSymbolImage])
  {
    v5 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
    v6 = [v4 imageByApplyingSymbolConfiguration:v5];

    v4 = v6;
  }

  return v4;
}

@end
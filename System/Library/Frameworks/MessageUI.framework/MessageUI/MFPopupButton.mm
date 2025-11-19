@interface MFPopupButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (MFPopupButton)initWithFrame:(CGRect)a3;
- (MFPopupButtonDelegate)delegate;
- (NSArray)combinedItems;
- (UIFont)font;
- (id)actionForItem:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_didSelectItem:(id)a3;
- (void)_updateUI;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)dismissMenu;
- (void)setDeferredItems:(id)a3;
- (void)setFont:(id)a3;
- (void)setItems:(id)a3;
- (void)setSelectedItem:(id)a3;
- (void)sizeToFit;
- (void)updateItem:(id)a3;
@end

@implementation MFPopupButton

- (MFPopupButton)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MFPopupButton;
  v3 = [(MFPopupButton *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    items = v3->_items;
    v6 = MEMORY[0x1E695E0F0];
    v3->_items = MEMORY[0x1E695E0F0];

    deferredItems = v4->_deferredItems;
    v4->_deferredItems = v6;

    v8 = objc_alloc_init(MFActivityIndicatorLabel);
    label = v4->_label;
    v4->_label = v8;

    [(MFPopupButton *)v4 bounds];
    [(MFActivityIndicatorLabel *)v4->_label setFrame:?];
    v10 = [(MFActivityIndicatorLabel *)v4->_label textLabel];
    [v10 setTextAlignment:4];

    [(MFPopupButton *)v4 addSubview:v4->_label];
    [(UIView *)v4->_label mf_pinToView:v4 layoutMarginEdges:0 flexibleEdges:13];
    [(MFPopupButton *)v4 setContextMenuInteractionEnabled:0];
    [(MFPopupButton *)v4 setShowsMenuAsPrimaryAction:1];
  }

  return v4;
}

- (void)setSelectedItem:(id)a3
{
  v6 = a3;
  if (![(MFPopupButtonItem *)self->_selectedItem isEqual:?])
  {
    v4 = [v6 copy];
    selectedItem = self->_selectedItem;
    self->_selectedItem = v4;

    [(MFPopupButton *)self updateItem:v6];
    [(MFPopupButton *)self _updateUI];
  }
}

- (void)setItems:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  if (([v8 isEqualToArray:self->_items] & 1) == 0)
  {
    [(MFPopupButton *)self dismissMenu];
    objc_storeStrong(&self->_items, v7);
    [(MFPopupButton *)self setContextMenuInteractionEnabled:[(NSArray *)self->_items count]!= 0];
    [(MFPopupButton *)self _updateUI];
  }
}

- (void)setDeferredItems:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  if (([v8 isEqualToArray:self->_deferredItems] & 1) == 0)
  {
    objc_storeStrong(&self->_deferredItems, v7);
    [(MFPopupButton *)self _updateUI];
  }
}

- (NSArray)combinedItems
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [(MFPopupButton *)self items];
  v8[0] = v3;
  v4 = [(MFPopupButton *)self deferredItems];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v5 ef_flatten];

  return v6;
}

- (void)updateItem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(MFPopupButton *)self combinedItems];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 popupTitle];
        v10 = [v4 popupTitle];
        if ([v9 isEqualToString:v10])
        {
          v11 = [v8 title];
          v12 = [v4 title];
          v13 = [v11 isEqualToString:v12];

          if ((v13 & 1) == 0)
          {
            v14 = [v4 title];
            [v8 setTitle:v14];

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

LABEL_12:
}

- (UIFont)font
{
  v2 = [(MFPopupButton *)self label];
  v3 = [v2 textLabel];
  v4 = [v3 font];

  return v4;
}

- (void)setFont:(id)a3
{
  v6 = a3;
  v4 = [(MFPopupButton *)self label];
  v5 = [v4 textLabel];
  [v5 setFont:v6];
}

- (void)dismissMenu
{
  v2 = [(MFPopupButton *)self contextMenuInteraction];
  [v2 dismissMenu];
}

- (void)sizeToFit
{
  v5.receiver = self;
  v5.super_class = MFPopupButton;
  [(MFPopupButton *)&v5 sizeToFit];
  v3 = [(MFPopupButton *)self label];
  [v3 sizeToFit];

  v4 = [(MFPopupButton *)self label];
  [v4 frame];
  [(MFPopupButton *)self setBounds:?];
}

- (void)_updateUI
{
  v3 = [MEMORY[0x1E69DC888] mailSenderAddressPickerColorNormalTextColor];
  v4 = [(MFPopupButton *)self selectedItem];
  [(MFPopupButton *)self updateItem:v4];
  if (v4 && (-[MFPopupButton combinedItems](self, "combinedItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v4], v5, v6))
  {
    v7 = [(MFPopupButton *)self selectedItem];
    v13 = [v7 title];

    if ([v4 style] == 1)
    {
      v8 = [MEMORY[0x1E69DC888] mailSenderAddressPickerUnsafeDomainColorTextColor];

      v3 = v8;
    }
  }

  else
  {
    v13 = &stru_1F3CF3758;
  }

  v9 = [(MFPopupButton *)self label];
  v10 = [v9 textLabel];
  [v10 setText:v13];

  v11 = [(MFPopupButton *)self label];
  v12 = [v11 textLabel];
  [v12 setTextColor:v3];
}

- (void)_didSelectItem:(id)a3
{
  v7 = a3;
  v4 = [(MFPopupButton *)self delegate];
  v5 = [(MFPopupButton *)self combinedItems];
  v6 = [v5 containsObject:v7];

  if (v6)
  {
    [(MFPopupButton *)self setSelectedItem:v7];
    if (objc_opt_respondsToSelector())
    {
      [v4 popupButton:self didSelectItem:v7];
    }
  }
}

- (id)actionForItem:(id)a3
{
  v4 = a3;
  v5 = [(MFPopupButton *)self selectedItem];
  v6 = [v4 isEqual:v5];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC628];
  v8 = [v4 popupTitle];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __31__MFPopupButton_actionForItem___block_invoke;
  v14[3] = &unk_1E806F490;
  objc_copyWeak(&v16, &location);
  v9 = v4;
  v15 = v9;
  v10 = [v7 actionWithTitle:v8 image:0 identifier:0 handler:v14];

  v11 = [v9 subtitle];
  [v10 setSubtitle:v11];

  if ([v9 style] == 1)
  {
    v12 = 2;
  }

  else
  {
    if ([v9 style] != 2)
    {
      goto LABEL_6;
    }

    v12 = 1;
  }

  [v10 setAttributes:v12];
LABEL_6:
  [v10 setState:v6];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __31__MFPopupButton_actionForItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didSelectItem:*(a1 + 32)];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC8D8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MFPopupButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v7[3] = &unk_1E8070680;
  objc_copyWeak(&v8, &location);
  v5 = [v4 configurationWithIdentifier:0 previewProvider:0 actionProvider:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __71__MFPopupButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = [v2 menuForPopupButton:WeakRetained];

  return v3;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v10.receiver = self;
  v10.super_class = MFPopupButton;
  [(MFPopupButton *)&v10 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:v8];
  v9 = [(MFPopupButton *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 popupButtonWillPresentMenu:self animator:v8];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v10.receiver = self;
  v10.super_class = MFPopupButton;
  [(MFPopupButton *)&v10 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:v8];
  v9 = [(MFPopupButton *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 popupButtonWillDismissMenu:self animator:v8];
  }
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v4 = [(MFPopupButton *)self effectiveUserInterfaceLayoutDirection];
  [(MFPopupButton *)self bounds];
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  MaxX = v5;
  if (v4 == 1)
  {
    MaxX = CGRectGetMaxX(*&v5);
  }

  v17.origin.x = v9;
  v17.origin.y = v10;
  v17.size.width = v11;
  v17.size.height = v12;
  MaxY = CGRectGetMaxY(v17);
  v15 = MaxX;
  result.y = MaxY;
  result.x = v15;
  return result;
}

- (MFPopupButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
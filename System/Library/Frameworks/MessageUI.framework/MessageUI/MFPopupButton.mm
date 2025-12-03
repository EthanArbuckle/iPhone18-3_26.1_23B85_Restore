@interface MFPopupButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (MFPopupButton)initWithFrame:(CGRect)frame;
- (MFPopupButtonDelegate)delegate;
- (NSArray)combinedItems;
- (UIFont)font;
- (id)actionForItem:(id)item;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)_didSelectItem:(id)item;
- (void)_updateUI;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)dismissMenu;
- (void)setDeferredItems:(id)items;
- (void)setFont:(id)font;
- (void)setItems:(id)items;
- (void)setSelectedItem:(id)item;
- (void)sizeToFit;
- (void)updateItem:(id)item;
@end

@implementation MFPopupButton

- (MFPopupButton)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MFPopupButton;
  v3 = [(MFPopupButton *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    textLabel = [(MFActivityIndicatorLabel *)v4->_label textLabel];
    [textLabel setTextAlignment:4];

    [(MFPopupButton *)v4 addSubview:v4->_label];
    [(UIView *)v4->_label mf_pinToView:v4 layoutMarginEdges:0 flexibleEdges:13];
    [(MFPopupButton *)v4 setContextMenuInteractionEnabled:0];
    [(MFPopupButton *)v4 setShowsMenuAsPrimaryAction:1];
  }

  return v4;
}

- (void)setSelectedItem:(id)item
{
  itemCopy = item;
  if (![(MFPopupButtonItem *)self->_selectedItem isEqual:?])
  {
    v4 = [itemCopy copy];
    selectedItem = self->_selectedItem;
    self->_selectedItem = v4;

    [(MFPopupButton *)self updateItem:itemCopy];
    [(MFPopupButton *)self _updateUI];
  }
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy copy];
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

- (void)setDeferredItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy copy];
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
  items = [(MFPopupButton *)self items];
  v8[0] = items;
  deferredItems = [(MFPopupButton *)self deferredItems];
  v8[1] = deferredItems;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  ef_flatten = [v5 ef_flatten];

  return ef_flatten;
}

- (void)updateItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
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
        popupTitle = [v8 popupTitle];
        popupTitle2 = [itemCopy popupTitle];
        if ([popupTitle isEqualToString:popupTitle2])
        {
          title = [v8 title];
          title2 = [itemCopy title];
          v13 = [title isEqualToString:title2];

          if ((v13 & 1) == 0)
          {
            title3 = [itemCopy title];
            [v8 setTitle:title3];

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
  label = [(MFPopupButton *)self label];
  textLabel = [label textLabel];
  font = [textLabel font];

  return font;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  label = [(MFPopupButton *)self label];
  textLabel = [label textLabel];
  [textLabel setFont:fontCopy];
}

- (void)dismissMenu
{
  contextMenuInteraction = [(MFPopupButton *)self contextMenuInteraction];
  [contextMenuInteraction dismissMenu];
}

- (void)sizeToFit
{
  v5.receiver = self;
  v5.super_class = MFPopupButton;
  [(MFPopupButton *)&v5 sizeToFit];
  label = [(MFPopupButton *)self label];
  [label sizeToFit];

  label2 = [(MFPopupButton *)self label];
  [label2 frame];
  [(MFPopupButton *)self setBounds:?];
}

- (void)_updateUI
{
  mailSenderAddressPickerColorNormalTextColor = [MEMORY[0x1E69DC888] mailSenderAddressPickerColorNormalTextColor];
  selectedItem = [(MFPopupButton *)self selectedItem];
  [(MFPopupButton *)self updateItem:selectedItem];
  if (selectedItem && (-[MFPopupButton combinedItems](self, "combinedItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:selectedItem], v5, v6))
  {
    selectedItem2 = [(MFPopupButton *)self selectedItem];
    title = [selectedItem2 title];

    if ([selectedItem style] == 1)
    {
      mailSenderAddressPickerUnsafeDomainColorTextColor = [MEMORY[0x1E69DC888] mailSenderAddressPickerUnsafeDomainColorTextColor];

      mailSenderAddressPickerColorNormalTextColor = mailSenderAddressPickerUnsafeDomainColorTextColor;
    }
  }

  else
  {
    title = &stru_1F3CF3758;
  }

  label = [(MFPopupButton *)self label];
  textLabel = [label textLabel];
  [textLabel setText:title];

  label2 = [(MFPopupButton *)self label];
  textLabel2 = [label2 textLabel];
  [textLabel2 setTextColor:mailSenderAddressPickerColorNormalTextColor];
}

- (void)_didSelectItem:(id)item
{
  itemCopy = item;
  delegate = [(MFPopupButton *)self delegate];
  combinedItems = [(MFPopupButton *)self combinedItems];
  v6 = [combinedItems containsObject:itemCopy];

  if (v6)
  {
    [(MFPopupButton *)self setSelectedItem:itemCopy];
    if (objc_opt_respondsToSelector())
    {
      [delegate popupButton:self didSelectItem:itemCopy];
    }
  }
}

- (id)actionForItem:(id)item
{
  itemCopy = item;
  selectedItem = [(MFPopupButton *)self selectedItem];
  v6 = [itemCopy isEqual:selectedItem];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC628];
  popupTitle = [itemCopy popupTitle];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __31__MFPopupButton_actionForItem___block_invoke;
  v14[3] = &unk_1E806F490;
  objc_copyWeak(&v16, &location);
  v9 = itemCopy;
  v15 = v9;
  v10 = [v7 actionWithTitle:popupTitle image:0 identifier:0 handler:v14];

  subtitle = [v9 subtitle];
  [v10 setSubtitle:subtitle];

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

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
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

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v10.receiver = self;
  v10.super_class = MFPopupButton;
  [(MFPopupButton *)&v10 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animatorCopy];
  delegate = [(MFPopupButton *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate popupButtonWillPresentMenu:self animator:animatorCopy];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v10.receiver = self;
  v10.super_class = MFPopupButton;
  [(MFPopupButton *)&v10 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animatorCopy];
  delegate = [(MFPopupButton *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate popupButtonWillDismissMenu:self animator:animatorCopy];
  }
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  effectiveUserInterfaceLayoutDirection = [(MFPopupButton *)self effectiveUserInterfaceLayoutDirection];
  [(MFPopupButton *)self bounds];
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  MaxX = v5;
  if (effectiveUserInterfaceLayoutDirection == 1)
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
@interface MFComposeFromView
+ (id)log;
- (ECEmailAddressConvertible)selectedAddress;
- (MFComposeFromView)initWithFrame:(CGRect)a3;
- (MFPopupButton)popupButton;
- (NSArray)availableAddresses;
- (NSArray)deferredAddresses;
- (id)_buttonItemWithAddress:(void *)a1;
- (id)_hideMyEmailButtonItemWithAddress:(uint64_t)a1;
- (id)menuForPopupButton:(id)a3;
- (void)didMoveToWindow;
- (void)popupButton:(id)a3 didSelectItem:(id)a4;
- (void)popupButtonWillPresentMenu:(id)a3 animator:(id)a4;
- (void)refreshPreferredContentSize;
- (void)setAvailableAddresses:(id)a3;
- (void)setDeferredAddresses:(id)a3;
- (void)setSelectedAddress:(id)a3;
- (void)setSelectedAddressToHME:(id)a3;
- (void)showLoadingState:(BOOL)a3;
@end

@implementation MFComposeFromView

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__MFComposeFromView_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __24__MFComposeFromView_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.messageui", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (MFComposeFromView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MFComposeFromView;
  v3 = [(MFComposeFromView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"FROM" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeFromView *)v3 setLabel:v5];
  }

  return v3;
}

- (MFPopupButton)popupButton
{
  v21[2] = *MEMORY[0x1E69E9840];
  popupButton = self->_popupButton;
  if (!popupButton)
  {
    v4 = [MFPopupButton alloc];
    v5 = [(MFPopupButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_popupButton;
    self->_popupButton = v5;

    [(MFPopupButton *)self->_popupButton setOpaque:0];
    v7 = [objc_opt_class() defaultFont];
    [(MFPopupButton *)self->_popupButton setFont:v7];

    [(MFPopupButton *)self->_popupButton setDelegate:self];
    [(MFPopupButton *)self->_popupButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFComposeFromView *)self addSubview:self->_popupButton];
    [(UIView *)self->_popupButton mf_pinToView:self layoutMarginEdges:8 flexibleEdges:2];
    v8 = MEMORY[0x1E696ACD8];
    v20 = [(MFPopupButton *)self->_popupButton leadingAnchor];
    v19 = [(MFComposeFromView *)self labelView];
    v18 = [v19 trailingAnchor];
    v17 = [v20 constraintEqualToSystemSpacingAfterAnchor:1.0 multiplier:?];
    v21[0] = v17;
    v9 = [(MFPopupButton *)self->_popupButton label];
    v10 = [v9 textLabel];
    v11 = [v10 firstBaselineAnchor];
    v12 = [(MFComposeFromView *)self labelView];
    v13 = [v12 firstBaselineAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v21[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v8 activateConstraints:v15];

    popupButton = self->_popupButton;
  }

  return popupButton;
}

- (id)_buttonItemWithAddress:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v6 = [v3 isEqualToString:v5];

    if (v6)
    {
      [(MFComposeFromView *)a1 _hideMyEmailButtonItemWithAddress:v3];
    }

    else
    {
      [MFPopupButtonItem itemWithTitle:v3 style:MFAddressHasSafeDomain(v3) ^ 1];
    }
    a1 = ;
  }

  return a1;
}

- (id)_hideMyEmailButtonItemWithAddress:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"HIDE_MY_EMAIL_DESCRIPTION" value:&stru_1F3CF3758 table:@"Main"];
    v8 = [MFPopupButtonItem itemWithTitle:v3 popupTitle:v5 subtitle:v7 style:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)showLoadingState:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFPopupButton *)self->_popupButton label];
  v6 = v5;
  if (v3)
  {
    [v5 startAnimating];

    popupButton = self->_popupButton;

    [(MFPopupButton *)popupButton disableMenu];
  }

  else
  {
    [v5 stopAnimating];

    v8 = self->_popupButton;

    [(MFPopupButton *)v8 enableMenu];
  }
}

- (void)refreshPreferredContentSize
{
  v6.receiver = self;
  v6.super_class = MFComposeFromView;
  [(MFComposeFromView *)&v6 refreshPreferredContentSize];
  v3 = [MEMORY[0x1E69963A0] sharedFontMetricCache];
  [v3 ensureCacheIsValid];

  v4 = [objc_opt_class() defaultFont];
  v5 = [(MFComposeFromView *)self popupButton];
  [v5 setFont:v4];

  [(MFComposeFromView *)self setNeedsLayout];
}

- (void)setSelectedAddress:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [(MFComposeFromView *)self _buttonItemWithAddress:v4];
    v6 = [(MFComposeFromView *)self popupButton];
    [v6 setSelectedItem:v5];
  }

  else
  {
    v5 = [(MFComposeFromView *)self popupButton];
    [v5 setSelectedItem:0];
  }
}

- (void)setSelectedAddressToHME:(id)a3
{
  v5 = [(MFComposeFromView *)self _hideMyEmailButtonItemWithAddress:a3];
  v4 = [(MFComposeFromView *)self popupButton];
  [v4 setSelectedItem:v5];
}

- (ECEmailAddressConvertible)selectedAddress
{
  v2 = [(MFComposeFromView *)self popupButton];
  v3 = [v2 selectedItem];
  v4 = [v3 title];

  return v4;
}

- (void)setAvailableAddresses:(id)a3
{
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MFComposeFromView_setAvailableAddresses___block_invoke;
  v8[3] = &unk_1E806CCA8;
  v8[4] = self;
  v6 = [v5 ef_map:v8];
  v7 = [(MFComposeFromView *)self popupButton];
  [v7 setItems:v6];
}

id __43__MFComposeFromView_setAvailableAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = [(MFComposeFromView *)*(a1 + 32) _buttonItemWithAddress:a2];

  return v2;
}

- (NSArray)availableAddresses
{
  v2 = [(MFComposeFromView *)self popupButton];
  v3 = [v2 items];
  v4 = [v3 ef_mapSelector:sel_title];

  return v4;
}

- (void)setDeferredAddresses:(id)a3
{
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__MFComposeFromView_setDeferredAddresses___block_invoke;
  v8[3] = &unk_1E806CCA8;
  v8[4] = self;
  v6 = [v5 ef_map:v8];
  v7 = [(MFComposeFromView *)self popupButton];
  [v7 setDeferredItems:v6];
}

id __42__MFComposeFromView_setDeferredAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = [(MFComposeFromView *)*(a1 + 32) _buttonItemWithAddress:a2];

  return v2;
}

- (NSArray)deferredAddresses
{
  v2 = [(MFComposeFromView *)self popupButton];
  v3 = [v2 deferredItems];
  v4 = [v3 ef_mapSelector:sel_title];

  return v4;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MFComposeFromView;
  [(MFComposeFromView *)&v3 didMoveToWindow];
  v2 = [MEMORY[0x1E699ACD8] sharedInstance];
  [v2 isAvailable:&__block_literal_global_5];
}

- (id)menuForPopupButton:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MFComposeFromView_menuForPopupButton___block_invoke;
  v10[3] = &unk_1E806CD18;
  v10[4] = self;
  v5 = [MEMORY[0x1E69DC928] elementWithProvider:v10];
  [v4 addObject:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MFComposeFromView_menuForPopupButton___block_invoke_3;
  v9[3] = &unk_1E806CD18;
  v9[4] = self;
  v6 = [MEMORY[0x1E69DC928] elementWithProvider:v9];
  [v4 addObject:v6];
  v7 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3CF3758 children:v4];

  return v7;
}

void __40__MFComposeFromView_menuForPopupButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) popupButton];
  v5 = [v4 items];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MFComposeFromView_menuForPopupButton___block_invoke_2;
  v7[3] = &unk_1E806CCF0;
  v7[4] = *(a1 + 32);
  v6 = [v5 ef_map:v7];

  v3[2](v3, v6);
}

id __40__MFComposeFromView_menuForPopupButton___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) popupButton];
  v5 = [v4 actionForItem:v3];

  return v5;
}

void __40__MFComposeFromView_menuForPopupButton___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699ACD8] sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__MFComposeFromView_menuForPopupButton___block_invoke_4;
  v6[3] = &unk_1E806CD40;
  v6[4] = *(a1 + 32);
  v5 = v3;
  v7 = v5;
  [v4 isAvailable:v6];
}

void __40__MFComposeFromView_menuForPopupButton___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[MFComposeFromView log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __40__MFComposeFromView_menuForPopupButton___block_invoke_4_cold_1(v5, v6);
    }

    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  v7 = [*(a1 + 32) popupButton];
  v8 = [v7 deferredItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MFComposeFromView_menuForPopupButton___block_invoke_46;
  v10[3] = &unk_1E806CCF0;
  v10[4] = *(a1 + 32);
  v9 = [v8 ef_map:v10];

  (*(*(a1 + 40) + 16))();
LABEL_8:
}

id __40__MFComposeFromView_menuForPopupButton___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) popupButton];
  v5 = [v4 actionForItem:v3];

  return v5;
}

- (void)popupButton:(id)a3 didSelectItem:(id)a4
{
  v7 = a4;
  v5 = [(MFComposeFromView *)self delegate];
  v6 = [v7 popupTitle];
  [v5 composeFromView:self didSelectAddress:v6];
}

- (void)popupButtonWillPresentMenu:(id)a3 animator:(id)a4
{
  if (a4)
  {
    v5 = [(MFComposeFromView *)self backgroundColor];
    v6 = [MEMORY[0x1E69DC888] separatorColor];
    [(MFComposeFromView *)self setBackgroundColor:v6];

    v7 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__MFComposeFromView_popupButtonWillPresentMenu_animator___block_invoke;
    v9[3] = &unk_1E806C520;
    v9[4] = self;
    v8 = v5;
    v10 = v8;
    [v7 animateWithDuration:0x20000 delay:v9 options:0 animations:0.76 completion:0.0];
  }
}

void __40__MFComposeFromView_menuForPopupButton___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "Unable to determine if user has iCloud+: %@", &v2, 0xCu);
}

@end
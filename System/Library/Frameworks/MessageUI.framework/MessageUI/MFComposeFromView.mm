@interface MFComposeFromView
+ (id)log;
- (ECEmailAddressConvertible)selectedAddress;
- (MFComposeFromView)initWithFrame:(CGRect)frame;
- (MFPopupButton)popupButton;
- (NSArray)availableAddresses;
- (NSArray)deferredAddresses;
- (id)_buttonItemWithAddress:(void *)address;
- (id)_hideMyEmailButtonItemWithAddress:(uint64_t)address;
- (id)menuForPopupButton:(id)button;
- (void)didMoveToWindow;
- (void)popupButton:(id)button didSelectItem:(id)item;
- (void)popupButtonWillPresentMenu:(id)menu animator:(id)animator;
- (void)refreshPreferredContentSize;
- (void)setAvailableAddresses:(id)addresses;
- (void)setDeferredAddresses:(id)addresses;
- (void)setSelectedAddress:(id)address;
- (void)setSelectedAddressToHME:(id)e;
- (void)showLoadingState:(BOOL)state;
@end

@implementation MFComposeFromView

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__MFComposeFromView_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (MFComposeFromView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MFComposeFromView;
  v3 = [(MFComposeFromView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    defaultFont = [objc_opt_class() defaultFont];
    [(MFPopupButton *)self->_popupButton setFont:defaultFont];

    [(MFPopupButton *)self->_popupButton setDelegate:self];
    [(MFPopupButton *)self->_popupButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFComposeFromView *)self addSubview:self->_popupButton];
    [(UIView *)self->_popupButton mf_pinToView:self layoutMarginEdges:8 flexibleEdges:2];
    v8 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(MFPopupButton *)self->_popupButton leadingAnchor];
    labelView = [(MFComposeFromView *)self labelView];
    trailingAnchor = [labelView trailingAnchor];
    v17 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:1.0 multiplier:?];
    v21[0] = v17;
    label = [(MFPopupButton *)self->_popupButton label];
    textLabel = [label textLabel];
    firstBaselineAnchor = [textLabel firstBaselineAnchor];
    labelView2 = [(MFComposeFromView *)self labelView];
    firstBaselineAnchor2 = [labelView2 firstBaselineAnchor];
    v14 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v21[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v8 activateConstraints:v15];

    popupButton = self->_popupButton;
  }

  return popupButton;
}

- (id)_buttonItemWithAddress:(void *)address
{
  v3 = a2;
  if (address)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v6 = [v3 isEqualToString:v5];

    if (v6)
    {
      [(MFComposeFromView *)address _hideMyEmailButtonItemWithAddress:v3];
    }

    else
    {
      [MFPopupButtonItem itemWithTitle:v3 style:MFAddressHasSafeDomain(v3) ^ 1];
    }
    address = ;
  }

  return address;
}

- (id)_hideMyEmailButtonItemWithAddress:(uint64_t)address
{
  v3 = a2;
  if (address)
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

- (void)showLoadingState:(BOOL)state
{
  stateCopy = state;
  label = [(MFPopupButton *)self->_popupButton label];
  v6 = label;
  if (stateCopy)
  {
    [label startAnimating];

    popupButton = self->_popupButton;

    [(MFPopupButton *)popupButton disableMenu];
  }

  else
  {
    [label stopAnimating];

    v8 = self->_popupButton;

    [(MFPopupButton *)v8 enableMenu];
  }
}

- (void)refreshPreferredContentSize
{
  v6.receiver = self;
  v6.super_class = MFComposeFromView;
  [(MFComposeFromView *)&v6 refreshPreferredContentSize];
  mEMORY[0x1E69963A0] = [MEMORY[0x1E69963A0] sharedFontMetricCache];
  [mEMORY[0x1E69963A0] ensureCacheIsValid];

  defaultFont = [objc_opt_class() defaultFont];
  popupButton = [(MFComposeFromView *)self popupButton];
  [popupButton setFont:defaultFont];

  [(MFComposeFromView *)self setNeedsLayout];
}

- (void)setSelectedAddress:(id)address
{
  addressCopy = address;
  v7 = addressCopy;
  if (addressCopy)
  {
    popupButton2 = [(MFComposeFromView *)self _buttonItemWithAddress:addressCopy];
    popupButton = [(MFComposeFromView *)self popupButton];
    [popupButton setSelectedItem:popupButton2];
  }

  else
  {
    popupButton2 = [(MFComposeFromView *)self popupButton];
    [popupButton2 setSelectedItem:0];
  }
}

- (void)setSelectedAddressToHME:(id)e
{
  v5 = [(MFComposeFromView *)self _hideMyEmailButtonItemWithAddress:e];
  popupButton = [(MFComposeFromView *)self popupButton];
  [popupButton setSelectedItem:v5];
}

- (ECEmailAddressConvertible)selectedAddress
{
  popupButton = [(MFComposeFromView *)self popupButton];
  selectedItem = [popupButton selectedItem];
  title = [selectedItem title];

  return title;
}

- (void)setAvailableAddresses:(id)addresses
{
  addressesCopy = MEMORY[0x1E695E0F0];
  if (addresses)
  {
    addressesCopy = addresses;
  }

  v5 = addressesCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MFComposeFromView_setAvailableAddresses___block_invoke;
  v8[3] = &unk_1E806CCA8;
  v8[4] = self;
  v6 = [v5 ef_map:v8];
  popupButton = [(MFComposeFromView *)self popupButton];
  [popupButton setItems:v6];
}

id __43__MFComposeFromView_setAvailableAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = [(MFComposeFromView *)*(a1 + 32) _buttonItemWithAddress:a2];

  return v2;
}

- (NSArray)availableAddresses
{
  popupButton = [(MFComposeFromView *)self popupButton];
  items = [popupButton items];
  v4 = [items ef_mapSelector:sel_title];

  return v4;
}

- (void)setDeferredAddresses:(id)addresses
{
  addressesCopy = MEMORY[0x1E695E0F0];
  if (addresses)
  {
    addressesCopy = addresses;
  }

  v5 = addressesCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__MFComposeFromView_setDeferredAddresses___block_invoke;
  v8[3] = &unk_1E806CCA8;
  v8[4] = self;
  v6 = [v5 ef_map:v8];
  popupButton = [(MFComposeFromView *)self popupButton];
  [popupButton setDeferredItems:v6];
}

id __42__MFComposeFromView_setDeferredAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = [(MFComposeFromView *)*(a1 + 32) _buttonItemWithAddress:a2];

  return v2;
}

- (NSArray)deferredAddresses
{
  popupButton = [(MFComposeFromView *)self popupButton];
  deferredItems = [popupButton deferredItems];
  v4 = [deferredItems ef_mapSelector:sel_title];

  return v4;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MFComposeFromView;
  [(MFComposeFromView *)&v3 didMoveToWindow];
  mEMORY[0x1E699ACD8] = [MEMORY[0x1E699ACD8] sharedInstance];
  [mEMORY[0x1E699ACD8] isAvailable:&__block_literal_global_5];
}

- (id)menuForPopupButton:(id)button
{
  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MFComposeFromView_menuForPopupButton___block_invoke;
  v10[3] = &unk_1E806CD18;
  v10[4] = self;
  v5 = [MEMORY[0x1E69DC928] elementWithProvider:v10];
  [array addObject:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MFComposeFromView_menuForPopupButton___block_invoke_3;
  v9[3] = &unk_1E806CD18;
  v9[4] = self;
  v6 = [MEMORY[0x1E69DC928] elementWithProvider:v9];
  [array addObject:v6];
  v7 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3CF3758 children:array];

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

- (void)popupButton:(id)button didSelectItem:(id)item
{
  itemCopy = item;
  delegate = [(MFComposeFromView *)self delegate];
  popupTitle = [itemCopy popupTitle];
  [delegate composeFromView:self didSelectAddress:popupTitle];
}

- (void)popupButtonWillPresentMenu:(id)menu animator:(id)animator
{
  if (animator)
  {
    backgroundColor = [(MFComposeFromView *)self backgroundColor];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(MFComposeFromView *)self setBackgroundColor:separatorColor];

    v7 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__MFComposeFromView_popupButtonWillPresentMenu_animator___block_invoke;
    v9[3] = &unk_1E806C520;
    v9[4] = self;
    v8 = backgroundColor;
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
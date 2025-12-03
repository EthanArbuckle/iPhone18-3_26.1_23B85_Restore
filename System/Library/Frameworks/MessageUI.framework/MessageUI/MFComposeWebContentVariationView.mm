@interface MFComposeWebContentVariationView
- (MFComposeWebContentVariationView)initWithFrame:(CGRect)frame;
- (id)_generateActionsForTitles:(id)titles currentSelection:(unint64_t)selection handler:(id)handler;
- (void)_flashBackground;
- (void)layoutSubviews;
- (void)refreshPreferredContentSize;
- (void)setSelectedContentVariationLabel:(id)label;
- (void)setupMenuItemTitles:(id)titles currentSelection:(unint64_t)selection handler:(id)handler;
@end

@implementation MFComposeWebContentVariationView

- (MFComposeWebContentVariationView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = MFComposeWebContentVariationView;
  v3 = [(MFComposeWebContentVariationView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"SEND_WEB_CONTENT_AS" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeWebContentVariationView *)v3 setLabel:v5];

    objc_initWeak(&location, v3);
    v6 = objc_alloc(MEMORY[0x1E69DC738]);
    v7 = MEMORY[0x1E69DC628];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __50__MFComposeWebContentVariationView_initWithFrame___block_invoke;
    v19 = &unk_1E806D678;
    objc_copyWeak(&v20, &location);
    v8 = [v7 actionWithTitle:@"No Action Selected" image:0 identifier:@"0" handler:&v16];
    v9 = [v6 initWithFrame:v8 primaryAction:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v16, v17, v18, v19}];
    webContentVariableButton = v3->_webContentVariableButton;
    v3->_webContentVariableButton = v9;

    [(UIButton *)v3->_webContentVariableButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_webContentVariableButton setContextMenuIsPrimary:1];
    [(UIButton *)v3->_webContentVariableButton _setDisableAutomaticTitleAnimations:1];
    defaultFont = [objc_opt_class() defaultFont];
    titleLabel = [(UIButton *)v3->_webContentVariableButton titleLabel];
    [titleLabel setFont:defaultFont];

    v13 = v3->_webContentVariableButton;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIButton *)v13 setTitleColor:labelColor forState:0];

    [(UIButton *)v3->_webContentVariableButton setAccessibilityIdentifier:*MEMORY[0x1E69ADB38]];
    [(MFComposeWebContentVariationView *)v3 addSubview:v3->_webContentVariableButton];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __50__MFComposeWebContentVariationView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _flashBackground];
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = MFComposeWebContentVariationView;
  [(MFComposeWebContentVariationView *)&v20 layoutSubviews];
  effectiveUserInterfaceLayoutDirection = [(MFComposeWebContentVariationView *)self effectiveUserInterfaceLayoutDirection];
  [(MFComposeWebContentVariationView *)self _contentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFComposeWebContentVariationView *)self bounds];
  v13 = v12;
  labelView = [(MFComposeWebContentVariationView *)self labelView];
  [labelView frame];
  Width = CGRectGetWidth(v21);
  if (v13 >= v11)
  {
    v16 = v13;
  }

  else
  {
    v16 = v11;
  }

  v17 = v16 + -4.0;
  v18 = Width + 5.0;

  v19 = 0.0;
  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    v19 = v18;
  }

  [(UIButton *)self->_webContentVariableButton setFrame:v5 + v19, v7, v9 - v18, v17];
  [(UIButton *)self->_webContentVariableButton setContentHorizontalAlignment:4];
}

- (void)setupMenuItemTitles:(id)titles currentSelection:(unint64_t)selection handler:(id)handler
{
  titlesCopy = titles;
  handlerCopy = handler;
  if ([titlesCopy count])
  {
    v9 = MEMORY[0x1E69DCC60];
    v10 = [(MFComposeWebContentVariationView *)self _generateActionsForTitles:titlesCopy currentSelection:selection handler:handlerCopy];
    v11 = [v9 menuWithTitle:&stru_1F3CF3758 children:v10];
    [(UIButton *)self->_webContentVariableButton setMenu:v11];

    [(MFComposeWebContentVariationView *)self layoutIfNeeded];
  }
}

- (id)_generateActionsForTitles:(id)titles currentSelection:(unint64_t)selection handler:(id)handler
{
  titlesCopy = titles;
  handlerCopy = handler;
  webContentVariableButton = [(MFComposeWebContentVariationView *)self webContentVariableButton];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__MFComposeWebContentVariationView__generateActionsForTitles_currentSelection_handler___block_invoke;
  aBlock[3] = &unk_1E806D6A0;
  v22 = webContentVariableButton;
  v30 = v22;
  v19 = handlerCopy;
  v31 = v19;
  v21 = _Block_copy(aBlock);
  v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v10 setNumberStyle:0];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(titlesCopy, "count")}];
  for (i = 0; i < [titlesCopy count]; ++i)
  {
    v13 = [titlesCopy objectAtIndexedSubscript:i];
    if (selection == i)
    {
      v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x1E696ADA0] ef_formatUnsignedInteger:i withGrouping:0];
    v16 = MEMORY[0x1E69DC628];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __87__MFComposeWebContentVariationView__generateActionsForTitles_currentSelection_handler___block_invoke_2;
    v23[3] = &unk_1E806D6C8;
    v24 = v10;
    v25 = v22;
    selfCopy = self;
    v27 = titlesCopy;
    v28 = v21;
    v17 = [v16 actionWithTitle:v13 image:v14 identifier:v15 handler:v23];
    [v11 addObject:v17];
  }

  return v11;
}

void __87__MFComposeWebContentVariationView__generateActionsForTitles_currentSelection_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 title];
  [v4 setTitle:v5 forState:0];

  [*(a1 + 32) layoutIfNeeded];
  (*(*(a1 + 40) + 16))();
}

void __87__MFComposeWebContentVariationView__generateActionsForTitles_currentSelection_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 identifier];
  v6 = [v4 numberFromString:v5];
  v7 = [v6 unsignedIntValue];

  v8 = MEMORY[0x1E69DCC60];
  v9 = [*(a1 + 48) _generateActionsForTitles:*(a1 + 56) currentSelection:v7 handler:*(a1 + 64)];
  v10 = [v8 menuWithTitle:&stru_1F3CF3758 children:v9];
  [*(a1 + 40) setMenu:v10];

  (*(*(a1 + 64) + 16))();
}

- (void)setSelectedContentVariationLabel:(id)label
{
  labelCopy = label;
  webContentVariableButton = [(MFComposeWebContentVariationView *)self webContentVariableButton];
  [webContentVariableButton setTitle:labelCopy forState:0];

  [(MFComposeWebContentVariationView *)self setNeedsLayout];
}

- (void)refreshPreferredContentSize
{
  v7.receiver = self;
  v7.super_class = MFComposeWebContentVariationView;
  [(MFComposeWebContentVariationView *)&v7 refreshPreferredContentSize];
  mEMORY[0x1E69963A0] = [MEMORY[0x1E69963A0] sharedFontMetricCache];
  [mEMORY[0x1E69963A0] ensureCacheIsValid];

  webContentVariableButton = [(MFComposeWebContentVariationView *)self webContentVariableButton];
  titleLabel = [webContentVariableButton titleLabel];
  defaultFont = [objc_opt_class() defaultFont];
  [titleLabel setFont:defaultFont];

  [(MFComposeWebContentVariationView *)self setNeedsLayout];
}

- (void)_flashBackground
{
  background = [(MFComposeWebContentVariationView *)self background];

  if (!background)
  {
    [(MFComposeWebContentVariationView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    separator = [(MFComposeWebContentVariationView *)self separator];
    [separator frame];
    v14 = v13;

    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v7 + v14 * -2.0, v9, v11 + v14 * 2.0}];
    v16 = MEMORY[0x1E69DCAB8];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    v18 = [v16 mf_imageWithColor:separatorColor size:{1.0, 1.0}];
    [v15 setImage:v18];

    [v15 setAutoresizingMask:2];
    labelView = [(MFComposeWebContentVariationView *)self labelView];
    [(MFComposeWebContentVariationView *)self insertSubview:v15 belowSubview:labelView];

    [(MFComposeWebContentVariationView *)self setBackground:v15];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__MFComposeWebContentVariationView__flashBackground__block_invoke;
  v21[3] = &unk_1E806C570;
  v21[4] = self;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52__MFComposeWebContentVariationView__flashBackground__block_invoke_2;
  v20[3] = &unk_1E806D6F0;
  v20[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v21 animations:v20 completion:0.3];
}

void __52__MFComposeWebContentVariationView__flashBackground__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) background];
  [v1 setAlpha:1.0];
}

uint64_t __52__MFComposeWebContentVariationView__flashBackground__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__MFComposeWebContentVariationView__flashBackground__block_invoke_3;
  v2[3] = &unk_1E806C570;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.3];
}

void __52__MFComposeWebContentVariationView__flashBackground__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) background];
  [v1 setAlpha:0.0];
}

@end
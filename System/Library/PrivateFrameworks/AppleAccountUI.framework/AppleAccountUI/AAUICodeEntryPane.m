@interface AAUICodeEntryPane
- (AAUICodeEntryPane)initWithFrame:(CGRect)a3;
- (CGRect)_availableHeaderRect;
- (double)keyboardHeightOffset;
- (id)_createFooterButton;
- (void)_availableHeaderRect;
- (void)_didFinishResizingHeaderView;
- (void)_didFinishResizingPinView;
- (void)_keyboardLayoutChanged;
- (void)_layoutContainerView;
- (void)_layoutHeaderRect;
- (void)_layoutPinView;
- (void)_layoutSubviews;
- (void)_startListeningForKeyboardEvents;
- (void)dealloc;
- (void)handleEscapeAction:(id)a3;
- (void)layoutSubviews;
- (void)setContext:(id)a3;
@end

@implementation AAUICodeEntryPane

- (AAUICodeEntryPane)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20.receiver = self;
  v20.super_class = AAUICodeEntryPane;
  v7 = [(DevicePINPane *)&v20 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{x, y, width, height}];
    containerView = v7->_containerView;
    v7->_containerView = v8;

    [(UIScrollView *)v7->_containerView setKeyboardDismissMode:0];
    [(AAUICodeEntryPane *)v7 addSubview:v7->_containerView];
    [(UIScrollView *)v7->_containerView addSubview:*(&v7->super.super.super.super.super.isa + *MEMORY[0x1E69C5790])];
    v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AAUICodeEntryPane *)v7 setBackgroundColor:v10];

    v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIScrollView *)v7->_containerView setBackgroundColor:v11];

    v12 = [AAUIPaneHeaderView alloc];
    v13 = [(AAUICodeEntryContext *)v7->_context promptTitle];
    v14 = [(AAUICodeEntryContext *)v7->_context promptMessage];
    v15 = [(AAUIPaneHeaderView *)v12 initWithTitle:v13 detailText:v14 icon:0];
    headerView = v7->_headerView;
    v7->_headerView = v15;

    [(UIScrollView *)v7->_containerView addSubview:v7->_headerView];
    v17 = v7->_containerView;
    v18 = [(AAUICodeEntryPane *)v7 _createFooterButton];
    [(UIScrollView *)v17 addSubview:v18];

    [(AAUICodeEntryPane *)v7 _startListeningForKeyboardEvents];
  }

  return v7;
}

- (id)_createFooterButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
  footerButton = self->_footerButton;
  self->_footerButton = v3;

  v5 = [(UIButton *)self->_footerButton titleLabel];
  [v5 setNumberOfLines:0];

  LODWORD(v5) = +[AAUIFeatureFlags isNaturalUIEnabled];
  v6 = [(UIButton *)self->_footerButton titleLabel];
  v7 = v6;
  if (v5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  [v6 setTextAlignment:v8];

  [(UIButton *)self->_footerButton setAutoresizingMask:12];
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    v9 = MEMORY[0x1E69DCAD8];
    v10 = [(UIButton *)self->_footerButton titleLabel];
    v11 = [v10 font];
    v12 = [v9 configurationWithFont:v11];

    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle.fill"];
    v14 = [v13 imageByApplyingSymbolConfiguration:v12];

    [(UIButton *)self->_footerButton setImage:v14 forState:0];
    v15 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    v16 = [v15 updatedConfigurationForButton:self->_footerButton];

    [v16 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [v16 setImagePadding:6.0];
    [v16 setImagePlacement:2];
    [(UIButton *)self->_footerButton setConfiguration:v16];
  }

  v17 = self->_footerButton;

  return v17;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AAUICodeEntryPane;
  [(DevicePINPane *)&v4 dealloc];
}

- (void)_startListeningForKeyboardEvents
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__keyboardLayoutChanged name:*MEMORY[0x1E69DDFD0] object:0];
}

- (void)_keyboardLayoutChanged
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AAUICodeEntryPane__keyboardLayoutChanged__block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (double)keyboardHeightOffset
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 226.0;
  }

  v6 = MEMORY[0x1E69DCBB8];
  v7 = [(PSEditingPane *)self viewController];
  [v6 sizeForInterfaceOrientation:{objc_msgSend(v7, "interfaceOrientation")}];
  v31 = v8;

  v9 = [(PSEditingPane *)self viewController];
  v10 = [v9 view];
  v11 = [(PSEditingPane *)self viewController];
  v12 = [v11 view];
  [v12 bounds];
  [v10 convertRect:0 toView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v32.origin.x = v23;
  v32.origin.y = v25;
  v32.size.width = v27;
  v32.size.height = v29;
  MaxY = CGRectGetMaxY(v32);
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  return fmax(v31 - (MaxY - CGRectGetMaxY(v33)), 0.0);
}

- (void)layoutSubviews
{
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 552)];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_7(&dword_1C5355000, v2, v3, "Starting layout with KB offset: %@", v4, v5, v6, v7, v8);
}

- (void)_layoutSubviews
{
  [(AAUICodeEntryPane *)self keyboardHeightOffset];
  self->_keyboardOffset = v3;
  [(AAUICodeEntryPane *)self _layoutContainerView];
  [(AAUICodeEntryPane *)self _layoutHeaderRect];

  [(AAUICodeEntryPane *)self _layoutPinView];
}

- (CGRect)_availableHeaderRect
{
  [(UIScrollView *)self->_containerView bounds];
  Width = CGRectGetWidth(v12);
  [(UIScrollView *)self->_containerView bounds];
  v4 = CGRectGetHeight(v13) - self->_keyboardOffset;
  [(AAUICodeEntryPane *)self _desiredMinPinHeight];
  v6 = v4 - v5;
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(AAUICodeEntryPane *)Width _availableHeaderRect];
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = Width;
  v11 = v6;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_layoutContainerView
{
  containerView = self->_containerView;
  v5 = [(PSEditingPane *)self viewController];
  v3 = [v5 view];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
  [(UIScrollView *)containerView setFrame:?];
}

- (void)_layoutHeaderRect
{
  [(AAUIPaneHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[AAUIFeatureFlags isNaturalUIEnabled])
  {
    v3 = [(AAUIPaneHeaderView *)self->_headerView widthAnchor];
    v4 = [(UIScrollView *)self->_containerView widthAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:-76.0];
    [v5 setActive:1];
  }

  headerView = self->_headerView;
  [(AAUICodeEntryPane *)self _availableHeaderRect];
  [(AAUIPaneHeaderView *)headerView setFrame:?];
  if (!+[AAUIFeatureFlags isNaturalUIEnabled])
  {
    v7 = [(AAUIPaneHeaderView *)self->_headerView widthAnchor];
    [(UIScrollView *)self->_containerView bounds];
    v9 = [v7 constraintEqualToConstant:v8 + -24.0];
    [v9 setActive:1];
  }

  v10 = [(AAUIPaneHeaderView *)self->_headerView centerXAnchor];
  v11 = [(UIScrollView *)self->_containerView centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  [(AAUIPaneHeaderView *)self->_headerView layoutSubviews];

  [(AAUICodeEntryPane *)self _didFinishResizingHeaderView];
}

- (void)_didFinishResizingHeaderView
{
  [*(a1 + 568) bounds];
  v1 = NSStringFromCGRect(v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_7(&dword_1C5355000, v2, v3, "Available frame for remote secret view: %@", v4, v5, v6, v7, v8);
}

- (void)_layoutPinView
{
  v4 = NSStringFromCGRect(*&a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_7(&dword_1C5355000, v5, v6, "Laid out pin view: %@", v7, v8, v9, v10, v11);
}

- (void)_didFinishResizingPinView
{
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x1E69C5790]) frame];
  v3 = CGRectGetMaxY(v64) + self->_keyboardOffset;
  [(UIScrollView *)self->_containerView setContentSize:0.0, v3];
  containerView = self->_containerView;
  [(UIScrollView *)containerView frame];
  v56 = v3;
  [(UIScrollView *)containerView setContentOffset:0.0, fmax(v3 - CGRectGetHeight(v65), 0.0)];
  if ([(AAUICodeEntryPane *)self _isSmallScreen])
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 24.0;
  }

  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v7 scaledValueForValue:v5];
  v9 = v8;

  v10 = MEMORY[0x1E69DB878];
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  v12 = [v11 traitCollection];
  v13 = [v10 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v12];
  v14 = [(UIButton *)self->_footerButton titleLabel];
  [v14 setFont:v13];

  [(UIButton *)self->_footerButton frame];
  v60 = v16;
  v61 = v15;
  v17 = +[AAUIFeatureFlags isSolariumEnabled];
  footerButton = self->_footerButton;
  if (v17)
  {
    [(AAUICodeEntryPane *)self frame];
    [(UIButton *)footerButton sizeThatFits:CGRectGetWidth(v66), 1.79769313e308];
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v23 = [(UIButton *)self->_footerButton titleLabel];
    [(AAUICodeEntryPane *)self frame];
    [v23 sizeThatFits:{CGRectGetWidth(v67), 1.79769313e308}];
    v20 = v24;
    v22 = v25;
  }

  v26 = *MEMORY[0x1E69C5788];
  v27 = [*(&self->super.super.super.super.super.isa + v26) superview];
  [v27 frame];
  v29 = v28;
  v58 = v30;
  v59 = v28;
  v32 = v31;
  v57 = v31;
  v33 = v30;
  v35 = v34;

  v68.origin.x = v29;
  v68.origin.y = v32;
  v68.size.width = v33;
  v68.size.height = v35;
  Height = CGRectGetHeight(v68);
  [(AAUICodeEntryPane *)self _desiredMinPinHeight];
  v38 = v37;
  v39 = v9 + v22;
  [(AAUICodeEntryPane *)self bounds];
  v40 = v9;
  MidX = CGRectGetMidX(v69);
  v70.origin.y = v60;
  v70.origin.x = v61;
  v70.size.width = v20;
  v70.size.height = v22;
  Width = CGRectGetWidth(v70);
  v43 = 0.0;
  if (Height > v38)
  {
    v43 = v39;
  }

  v44 = v35 - v43;
  v45 = MidX + Width * -0.5;
  v46 = 8.0;
  if (Height > v38)
  {
    v46 = v40;
  }

  v62 = v46;
  v71.origin.x = v59;
  v71.origin.y = v57;
  v71.size.width = v58;
  v71.size.height = v44;
  MaxY = CGRectGetMaxY(v71);
  if (+[AAUIFeatureFlags isNaturalUIEnabled])
  {
    v45 = 38.0;
  }

  [(UIButton *)self->_footerButton setFrame:v45, MaxY, v20, v22];
  v48 = [*(&self->super.super.super.super.super.isa + v26) superview];
  [v48 setFrame:{v59, v57, v58, v44}];

  v49 = *(&self->super.super.super.super.super.isa + v26);
  v50 = [v49 superview];
  [v50 bounds];
  [v49 setFrame:?];

  v72.origin.x = v45;
  v72.origin.y = MaxY;
  v72.size.width = v20;
  v72.size.height = v22;
  [(UIScrollView *)self->_containerView setContentSize:0.0, v62 + CGRectGetMaxY(v72) + self->_keyboardOffset];
  v51 = [(UIButton *)self->_footerButton superview];

  if (v51)
  {
    v52 = self->_containerView;
    [(UIScrollView *)v52 frame];
    [(UIScrollView *)v52 setContentOffset:0.0, fmax(v56 - CGRectGetHeight(v73), 0.0)];
    v53 = [MEMORY[0x1E69DC938] currentDevice];
    v54 = [v53 userInterfaceIdiom];

    if ((v54 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v55 = self->_containerView;

      [(UIScrollView *)v55 setContentInset:0.0, 0.0, 10.0, 0.0];
    }
  }
}

- (void)setContext:(id)a3
{
  v13 = a3;
  objc_storeStrong(&self->_context, a3);
  headerView = self->_headerView;
  v6 = [(AAUICodeEntryContext *)self->_context promptTitle];
  [(AAUIPaneHeaderView *)headerView setTitleText:v6];

  v7 = self->_headerView;
  v8 = [(AAUICodeEntryContext *)self->_context promptMessage];
  [(AAUIPaneHeaderView *)v7 setDetailText:v8];

  v9 = [(AAUICodeEntryContext *)self->_context escapeTitle];

  footerButton = self->_footerButton;
  if (v9)
  {
    [(UIButton *)footerButton addTarget:self action:sel_handleEscapeAction_ forControlEvents:64];
    v11 = self->_footerButton;
    v12 = [(AAUICodeEntryContext *)self->_context escapeTitle];
    [(UIButton *)v11 setTitle:v12 forState:0];
  }

  else
  {
    [(UIButton *)footerButton removeFromSuperview];
  }
}

- (void)handleEscapeAction:(id)a3
{
  v4 = [(PSEditingPane *)self viewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v5 = [(AAUICodeEntryContext *)self->_context escapeAction];

  if (v5)
  {
    v6 = [(AAUICodeEntryContext *)self->_context escapeAction];
    v6[2]();
  }
}

- (void)_availableHeaderRect
{
  v10.size.height = a2;
  v10.size.width = a1;
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v2 = NSStringFromCGRect(v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_7(&dword_1C5355000, v3, v4, "Available header rect: %@", v5, v6, v7, v8, v9);
}

@end
@interface AXCLFPrivacyLinkDisplayView
- (AXCLFPrivacyLinkDisplayView)initWithBundleIdentifier:(id)a3 withViewController:(id)a4;
- (void)_contentSizeCategoryDidChange:(id)a3;
@end

@implementation AXCLFPrivacyLinkDisplayView

- (AXCLFPrivacyLinkDisplayView)initWithBundleIdentifier:(id)a3 withViewController:(id)a4
{
  v42[4] = *MEMORY[0x1E69E9840];
  v40 = a4;
  v41.receiver = self;
  v41.super_class = AXCLFPrivacyLinkDisplayView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = a3;
  v11 = [(AXCLFPrivacyLinkDisplayView *)&v41 initWithFrame:v6, v7, v8, v9];
  v12 = [MEMORY[0x1E69B7D50] linkWithBundleIdentifier:v10];

  privacyController = v11->_privacyController;
  v11->_privacyController = v12;

  v14 = [(OBPrivacyLinkController *)v11->_privacyController view];
  privacyView = v11->_privacyView;
  v11->_privacyView = v14;

  [(UIView *)v11->_privacyView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  [v16 addSubview:v11->_privacyView];

  v32 = MEMORY[0x1E696ACD8];
  v38 = [(UIView *)v11->_privacyView topAnchor];
  v39 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  v37 = [v39 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v42[0] = v36;
  v34 = [(UIView *)v11->_privacyView leadingAnchor];
  v35 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  v33 = [v35 leadingAnchor];
  v31 = [v34 constraintEqualToAnchor:v33 constant:10.0];
  v42[1] = v31;
  v17 = [(UIView *)v11->_privacyView trailingAnchor];
  v18 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:-10.0];
  v42[2] = v20;
  v21 = [(UIView *)v11->_privacyView bottomAnchor];
  v22 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:25.0];
  v42[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v32 activateConstraints:v25];

  v26 = v40;
  v27 = [v40 parentViewController];
  NSClassFromString(&cfstr_Clarityuiappse.isa);
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;

    v26 = v28;
  }

  [v26 addChildViewController:v11->_privacyController];
  [(OBPrivacyLinkController *)v11->_privacyController didMoveToParentViewController:v26];
  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  [v29 addObserver:v11 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v11;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AXCLFPrivacyLinkDisplayView__contentSizeCategoryDidChange___block_invoke;
  block[3] = &unk_1E812DCA8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end
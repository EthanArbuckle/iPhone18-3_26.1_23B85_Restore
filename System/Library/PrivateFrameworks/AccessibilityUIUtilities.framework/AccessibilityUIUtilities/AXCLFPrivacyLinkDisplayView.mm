@interface AXCLFPrivacyLinkDisplayView
- (AXCLFPrivacyLinkDisplayView)initWithBundleIdentifier:(id)identifier withViewController:(id)controller;
- (void)_contentSizeCategoryDidChange:(id)change;
@end

@implementation AXCLFPrivacyLinkDisplayView

- (AXCLFPrivacyLinkDisplayView)initWithBundleIdentifier:(id)identifier withViewController:(id)controller
{
  v42[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v41.receiver = self;
  v41.super_class = AXCLFPrivacyLinkDisplayView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  identifierCopy = identifier;
  v11 = [(AXCLFPrivacyLinkDisplayView *)&v41 initWithFrame:v6, v7, v8, v9];
  v12 = [MEMORY[0x1E69B7D50] linkWithBundleIdentifier:identifierCopy];

  privacyController = v11->_privacyController;
  v11->_privacyController = v12;

  view = [(OBPrivacyLinkController *)v11->_privacyController view];
  privacyView = v11->_privacyView;
  v11->_privacyView = view;

  [(UIView *)v11->_privacyView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  [contentView addSubview:v11->_privacyView];

  v32 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIView *)v11->_privacyView topAnchor];
  contentView2 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  topAnchor2 = [contentView2 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[0] = v36;
  leadingAnchor = [(UIView *)v11->_privacyView leadingAnchor];
  contentView3 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v42[1] = v31;
  trailingAnchor = [(UIView *)v11->_privacyView trailingAnchor];
  contentView4 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v42[2] = v20;
  bottomAnchor = [(UIView *)v11->_privacyView bottomAnchor];
  contentView5 = [(AXCLFPrivacyLinkDisplayView *)v11 contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:25.0];
  v42[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v32 activateConstraints:v25];

  v26 = controllerCopy;
  parentViewController = [controllerCopy parentViewController];
  NSClassFromString(&cfstr_Clarityuiappse.isa);
  if (objc_opt_isKindOfClass())
  {
    v28 = parentViewController;

    v26 = v28;
  }

  [v26 addChildViewController:v11->_privacyController];
  [(OBPrivacyLinkController *)v11->_privacyController didMoveToParentViewController:v26];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v11 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v11;
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AXCLFPrivacyLinkDisplayView__contentSizeCategoryDidChange___block_invoke;
  block[3] = &unk_1E812DCA8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end
@interface ASCredentialRequestPaneContext
- (ASCredentialRequestPaneContext)initWithPaneViewController:(id)controller stackView:(id)view;
- (ASCredentialRequestPaneViewController)paneViewController;
- (void)addEmptyViewWithSpacing:(double)spacing;
- (void)addHeaderWithConfiguration:(id)configuration;
- (void)addSubPane:(id)pane withCustomSpacingAfter:(double)after;
@end

@implementation ASCredentialRequestPaneContext

- (ASCredentialRequestPaneContext)initWithPaneViewController:(id)controller stackView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = ASCredentialRequestPaneContext;
  v8 = [(ASCredentialRequestPaneContext *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_paneViewController, controllerCopy);
    objc_storeStrong(&v9->_stackView, view);
    v10 = v9;
  }

  return v9;
}

- (void)addSubPane:(id)pane withCustomSpacingAfter:(double)after
{
  paneCopy = pane;
  stackView = [(ASCredentialRequestPaneContext *)self stackView];
  [paneCopy addToStackView:stackView withCustomSpacingAfter:self context:after];
}

- (void)addEmptyViewWithSpacing:(double)spacing
{
  v7 = objc_alloc_init(_ASStackSpacerView);
  stackView = [(ASCredentialRequestPaneContext *)self stackView];
  [stackView addArrangedSubview:v7];

  stackView2 = [(ASCredentialRequestPaneContext *)self stackView];
  [stackView2 setCustomSpacing:v7 afterView:spacing];
}

- (void)addHeaderWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getPMCredentialRequestPaneHeaderClass_softClass;
  v13 = getPMCredentialRequestPaneHeaderClass_softClass;
  if (!getPMCredentialRequestPaneHeaderClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getPMCredentialRequestPaneHeaderClass_block_invoke;
    v9[3] = &unk_1E7AF7948;
    v9[4] = &v10;
    __getPMCredentialRequestPaneHeaderClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [[v5 alloc] initWithHeaderConfiguration:configurationCopy];
  header = self->_header;
  self->_header = v7;

  [(ASCredentialRequestPaneContext *)self addSubPane:self->_header withCustomSpacingAfter:0.0];
}

- (ASCredentialRequestPaneViewController)paneViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_paneViewController);

  return WeakRetained;
}

@end
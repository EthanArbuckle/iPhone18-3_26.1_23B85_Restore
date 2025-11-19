@interface ASCredentialRequestPaneContext
- (ASCredentialRequestPaneContext)initWithPaneViewController:(id)a3 stackView:(id)a4;
- (ASCredentialRequestPaneViewController)paneViewController;
- (void)addEmptyViewWithSpacing:(double)a3;
- (void)addHeaderWithConfiguration:(id)a3;
- (void)addSubPane:(id)a3 withCustomSpacingAfter:(double)a4;
@end

@implementation ASCredentialRequestPaneContext

- (ASCredentialRequestPaneContext)initWithPaneViewController:(id)a3 stackView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ASCredentialRequestPaneContext;
  v8 = [(ASCredentialRequestPaneContext *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_paneViewController, v6);
    objc_storeStrong(&v9->_stackView, a4);
    v10 = v9;
  }

  return v9;
}

- (void)addSubPane:(id)a3 withCustomSpacingAfter:(double)a4
{
  v6 = a3;
  v7 = [(ASCredentialRequestPaneContext *)self stackView];
  [v6 addToStackView:v7 withCustomSpacingAfter:self context:a4];
}

- (void)addEmptyViewWithSpacing:(double)a3
{
  v7 = objc_alloc_init(_ASStackSpacerView);
  v5 = [(ASCredentialRequestPaneContext *)self stackView];
  [v5 addArrangedSubview:v7];

  v6 = [(ASCredentialRequestPaneContext *)self stackView];
  [v6 setCustomSpacing:v7 afterView:a3];
}

- (void)addHeaderWithConfiguration:(id)a3
{
  v4 = a3;
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
  v7 = [[v5 alloc] initWithHeaderConfiguration:v4];
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
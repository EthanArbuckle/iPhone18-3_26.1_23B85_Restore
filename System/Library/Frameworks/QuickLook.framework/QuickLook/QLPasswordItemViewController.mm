@interface QLPasswordItemViewController
- (void)invalidate;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)loadView;
- (void)previewDidAppear:(BOOL)appear;
- (void)userDidEnterPassword:(id)password forPasswordView:(id)view;
@end

@implementation QLPasswordItemViewController

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75450]);
  previewTitle = [(QLPreviewContext *)self->_context previewTitle];
  v5 = [v3 initWithDocumentName:previewTitle];

  [v5 setPasswordDelegate:self];
  [(QLPasswordItemViewController *)self setView:v5];
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  handlerCopy = handler;
  v9 = _Block_copy(handlerCopy);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v9;
}

- (void)previewDidAppear:(BOOL)appear
{
  v4 = dispatch_time(0, 10000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__QLPasswordItemViewController_previewDidAppear___block_invoke;
  block[3] = &unk_278B57190;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __49__QLPasswordItemViewController_previewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passwordView];
  v1 = [v2 passwordField];
  [v1 becomeFirstResponder];
}

- (void)invalidate
{
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;
  MEMORY[0x2821F96F8]();
}

- (void)userDidEnterPassword:(id)password forPasswordView:(id)view
{
  [(QLPreviewContext *)self->_context setPassword:password, view];
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, 0);
    v6 = self->_completionBlock;
    self->_completionBlock = 0;
  }
}

@end
@interface QLPasswordItemViewController
- (void)invalidate;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)loadView;
- (void)previewDidAppear:(BOOL)a3;
- (void)userDidEnterPassword:(id)a3 forPasswordView:(id)a4;
@end

@implementation QLPasswordItemViewController

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75450]);
  v4 = [(QLPreviewContext *)self->_context previewTitle];
  v5 = [v3 initWithDocumentName:v4];

  [v5 setPasswordDelegate:self];
  [(QLPasswordItemViewController *)self setView:v5];
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  objc_storeStrong(&self->_context, a4);
  v11 = a4;
  v8 = a5;
  v9 = _Block_copy(v8);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v9;
}

- (void)previewDidAppear:(BOOL)a3
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

- (void)userDidEnterPassword:(id)a3 forPasswordView:(id)a4
{
  [(QLPreviewContext *)self->_context setPassword:a3, a4];
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, 0);
    v6 = self->_completionBlock;
    self->_completionBlock = 0;
  }
}

@end
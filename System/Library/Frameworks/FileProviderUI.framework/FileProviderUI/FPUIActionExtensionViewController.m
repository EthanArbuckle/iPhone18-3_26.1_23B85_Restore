@interface FPUIActionExtensionViewController
- (void)_configureWithDomainIdentifier:(id)a3;
- (void)_prepareAuthenticationUsingServerURL:(id)a3;
- (void)_prepareAuthenticationUsingURL:(id)a3;
- (void)_prepareForActionWithIdentifier:(id)a3 items:(id)a4;
- (void)_prepareForError:(id)a3;
- (void)_prepareForServerCreation;
- (void)_setBrowserUserInterfaceStyle:(unint64_t)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)prepareAuthenticationUsingServerURL:(id)a3;
@end

@implementation FPUIActionExtensionViewController

- (void)_setBrowserUserInterfaceStyle:(unint64_t)a3
{
  if (self->_browserUserInterfaceStyle != a3)
  {
    self->_browserUserInterfaceStyle = a3;
    [(FPUIActionExtensionViewController *)self _browserUserInterfaceStyleDidChange];
  }
}

- (void)_prepareForActionWithIdentifier:(id)a3 items:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__FPUIActionExtensionViewController__prepareForActionWithIdentifier_items___block_invoke;
  v10[3] = &unk_278A514B0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  CallBlockOnMainThread(v10);
}

- (void)_prepareForServerCreation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62__FPUIActionExtensionViewController__prepareForServerCreation__block_invoke;
  v2[3] = &unk_278A51370;
  v2[4] = self;
  CallBlockOnMainThread(v2);
}

- (void)_prepareAuthenticationUsingURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__FPUIActionExtensionViewController__prepareAuthenticationUsingURL___block_invoke;
  v6[3] = &unk_278A512D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  CallBlockOnMainThread(v6);
}

- (void)_prepareAuthenticationUsingServerURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__FPUIActionExtensionViewController__prepareAuthenticationUsingServerURL___block_invoke;
  v6[3] = &unk_278A512D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  CallBlockOnMainThread(v6);
}

- (void)_configureWithDomainIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__FPUIActionExtensionViewController__configureWithDomainIdentifier___block_invoke;
  v6[3] = &unk_278A512D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  CallBlockOnMainThread(v6);
}

void __68__FPUIActionExtensionViewController__configureWithDomainIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) extensionContext];
  [v2 setDomainIdentifier:v1];
}

- (void)_prepareForError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__FPUIActionExtensionViewController__prepareForError___block_invoke;
  v6[3] = &unk_278A512D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  CallBlockOnMainThread(v6);
}

uint64_t __54__FPUIActionExtensionViewController__prepareForError___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _extensionImplementsSelector:sel_prepareForError_] & 1) != 0 || !objc_msgSend(*(a1 + 32), "_extensionImplementsSelector:", sel_prepareForAuthentication))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 prepareForError:v5];
  }

  else
  {
    v2 = *(a1 + 32);

    return [v2 prepareForAuthentication];
  }
}

- (void)prepareAuthenticationUsingServerURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__FPUIActionExtensionViewController_prepareAuthenticationUsingServerURL___block_invoke;
  v6[3] = &unk_278A512D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  CallBlockOnMainThread(v6);
}

void __73__FPUIActionExtensionViewController_prepareAuthenticationUsingServerURL___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) extensionContext];
  [v2 setInitialURL:v1];
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = FPUIActionExtensionViewController;
  [(FPUIActionExtensionViewController *)&v6 beginRequestWithExtensionContext:v4];
  v5 = gExtensionContext;
  gExtensionContext = v4;
}

@end
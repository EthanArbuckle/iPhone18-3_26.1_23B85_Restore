@interface AAUICDPHelper
+ (AAUICDPHelper)helperWithPresenter:(id)a3;
+ (BOOL)isWalrusEnabled;
+ (id)cdpContextForPrimaryAccountWithAuthenticationResults:(id)a3;
+ (void)isWalrusEnabled;
- (UIViewController)presentingViewController;
- (id)cdpStateControllerForPrimaryAccount;
- (id)cdpStateControllerWithContext:(id)a3;
@end

@implementation AAUICDPHelper

+ (AAUICDPHelper)helperWithPresenter:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeWeak(v4 + 1, v3);

  return v4;
}

+ (id)cdpContextForPrimaryAccountWithAuthenticationResults:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69977E8]) initWithAuthenticationResults:v4];
  }

  else
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "No authentication results pased in, fetching CDPContext for primary account.", v9, 2u);
    }

    v5 = [a1 cdpContextForPrimaryAccount];
  }

  v7 = v5;

  return v7;
}

- (id)cdpStateControllerForPrimaryAccount
{
  v3 = [objc_opt_class() cdpContextForPrimaryAccount];
  v4 = [(AAUICDPHelper *)self cdpStateControllerWithContext:v3];

  return v4;
}

- (id)cdpStateControllerWithContext:(id)a3
{
  v4 = MEMORY[0x1E6997800];
  v5 = a3;
  v6 = [[v4 alloc] initWithContext:v5];

  v7 = objc_alloc(MEMORY[0x1E6997858]);
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v9 = [v7 initWithPresentingViewController:WeakRetained];

  [v9 setForceInlinePresentation:{-[AAUICDPHelper forceInline](self, "forceInline")}];
  [v6 setUiProvider:v9];

  return v6;
}

+ (BOOL)isWalrusEnabled
{
  v3 = objc_alloc_init(MEMORY[0x1E6997808]);
  v9 = 0;
  v4 = [v3 walrusStatus:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[(AAUICDPHelper *)a1];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4 == 1;
  }

  return v7;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

+ (void)isWalrusEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromClass(a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1C5355000, a3, OS_LOG_TYPE_ERROR, "%@: Error while fetching walrus status: %@", &v6, 0x16u);
}

@end
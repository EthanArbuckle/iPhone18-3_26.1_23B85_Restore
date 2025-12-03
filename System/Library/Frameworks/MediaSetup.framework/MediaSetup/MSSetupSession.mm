@interface MSSetupSession
- (BOOL)startWithError:(NSError *)error;
- (MSSetupSession)initWithServiceAccount:(id)account test:(unint64_t)test;
- (id)presentationContext;
@end

@implementation MSSetupSession

- (MSSetupSession)initWithServiceAccount:(id)account test:(unint64_t)test
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = MSSetupSession;
  v8 = [(MSSetupSession *)&v10 self];

  if (v8)
  {
    objc_storeStrong(&v8->_account, account);
    v8->_testFlags = test;
  }

  return v8;
}

- (BOOL)startWithError:(NSError *)error
{
  v5 = [[MSSetupViewController alloc] initWithServiceAccount:self->_account testFlags:self->_testFlags];
  viewController = self->_viewController;
  self->_viewController = v5;

  WeakRetained = objc_loadWeakRetained(&self->_presentationContext);
  if (WeakRetained)
  {
    connectedScenes = objc_loadWeakRetained(&self->_presentationContext);
    presentationAnchor = [connectedScenes presentationAnchor];
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    connectedScenes = [mEMORY[0x277D75128] connectedScenes];

    v11 = [connectedScenes na_firstObjectPassingTest:&__block_literal_global];
    windows = [v11 windows];
    presentationAnchor = [windows firstObject];
  }

  rootViewController = [presentationAnchor rootViewController];
  v14 = rootViewController;
  if (rootViewController)
  {
    [rootViewController presentViewController:self->_viewController animated:1 completion:0];
  }

  else
  {
    NSLog(&cfstr_NoViewControll.isa);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.mediasetup.serviceonboarding.errorDomain" code:6 userInfo:0];
    }
  }

  return v14 != 0;
}

- (id)presentationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContext);

  return WeakRetained;
}

@end
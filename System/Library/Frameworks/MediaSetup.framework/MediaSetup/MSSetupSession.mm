@interface MSSetupSession
- (BOOL)startWithError:(NSError *)error;
- (MSSetupSession)initWithServiceAccount:(id)a3 test:(unint64_t)a4;
- (id)presentationContext;
@end

@implementation MSSetupSession

- (MSSetupSession)initWithServiceAccount:(id)a3 test:(unint64_t)a4
{
  v7 = a3;
  v10.receiver = self;
  v10.super_class = MSSetupSession;
  v8 = [(MSSetupSession *)&v10 self];

  if (v8)
  {
    objc_storeStrong(&v8->_account, a3);
    v8->_testFlags = a4;
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
    v8 = objc_loadWeakRetained(&self->_presentationContext);
    v9 = [v8 presentationAnchor];
  }

  else
  {
    v10 = [MEMORY[0x277D75128] sharedApplication];
    v8 = [v10 connectedScenes];

    v11 = [v8 na_firstObjectPassingTest:&__block_literal_global];
    v12 = [v11 windows];
    v9 = [v12 firstObject];
  }

  v13 = [v9 rootViewController];
  v14 = v13;
  if (v13)
  {
    [v13 presentViewController:self->_viewController animated:1 completion:0];
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
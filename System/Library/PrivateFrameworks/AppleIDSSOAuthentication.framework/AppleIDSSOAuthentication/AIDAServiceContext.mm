@interface AIDAServiceContext
+ (id)contextWithContext:(id)a3;
- (AIDAServiceContext)init;
- (CDPStateUIProvider)cdpUiProvider;
@end

@implementation AIDAServiceContext

+ (id)contextWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4[1] copy];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  objc_storeStrong(v5 + 4, v4[4]);
  *(v5 + 16) = *(v4 + 16);
  *(v5 + 3) = v4[3];
  v8 = [v4[7] copy];
  v9 = *(v5 + 7);
  *(v5 + 7) = v8;

  v10 = [v4[8] copy];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  objc_storeStrong(v5 + 5, v4[5]);
  objc_storeStrong(v5 + 6, v4[6]);
  WeakRetained = objc_loadWeakRetained(v4 + 9);
  objc_storeWeak(v5 + 9, WeakRetained);

  v13 = [v4[10] mutableCopy];
  v14 = *(v5 + 10);
  *(v5 + 10) = v13;

  return v5;
}

- (AIDAServiceContext)init
{
  v7.receiver = self;
  v7.super_class = AIDAServiceContext;
  v2 = [(AIDAServiceContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    authenticationResults = v2->_authenticationResults;
    v2->_authenticationResults = 0;

    viewController = v3->_viewController;
    v3->_viewController = 0;

    v3->_shouldForceOperation = 0;
    v3->_operationUIPermissions = 0;
  }

  return v3;
}

- (CDPStateUIProvider)cdpUiProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_cdpUiProvider);

  return WeakRetained;
}

@end
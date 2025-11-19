@interface VSRestrictionsCenter
+ (id)defaultRestrictionsCenter;
- (BOOL)_canInstallAppsAtAll;
- (BOOL)canInstallAppWithRating:(int64_t)a3;
- (VSRestrictionsCenter)init;
- (void)_updateAccountModificationAllowed;
- (void)dealloc;
- (void)profileConnectionSettingsChanged:(id)a3;
@end

@implementation VSRestrictionsCenter

+ (id)defaultRestrictionsCenter
{
  if (defaultRestrictionsCenter___vs_lazy_init_predicate != -1)
  {
    +[VSRestrictionsCenter defaultRestrictionsCenter];
  }

  v3 = defaultRestrictionsCenter___vs_lazy_init_variable;

  return v3;
}

uint64_t __49__VSRestrictionsCenter_defaultRestrictionsCenter__block_invoke()
{
  defaultRestrictionsCenter___vs_lazy_init_variable = objc_alloc_init(VSRestrictionsCenter);

  return MEMORY[0x2821F96F8]();
}

- (VSRestrictionsCenter)init
{
  v7.receiver = self;
  v7.super_class = VSRestrictionsCenter;
  v2 = [(VSRestrictionsCenter *)&v7 init];
  if (v2)
  {
    v3 = +[VSManagedProfileConnection sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = v3;
    v5 = v3;

    [(VSManagedProfileConnection *)v5 registerObserver:v2];
    [(VSRestrictionsCenter *)v2 _updateAccountModificationAllowed];
  }

  return v2;
}

- (void)dealloc
{
  [(VSManagedProfileConnection *)self->_profileConnection unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = VSRestrictionsCenter;
  [(VSRestrictionsCenter *)&v3 dealloc];
}

- (void)_updateAccountModificationAllowed
{
  v4 = [(VSRestrictionsCenter *)self profileConnection];
  v3 = [v4 accountModificationAllowed] != 2 && objc_msgSend(v4, "TVProviderModificationAllowed") != 2;
  [(VSRestrictionsCenter *)self setAccountModificationAllowed:v3];
}

- (BOOL)_canInstallAppsAtAll
{
  v2 = [(VSRestrictionsCenter *)self profileConnection];
  v3 = [v2 appInstallationAllowed] != 2 && objc_msgSend(v2, "UIAppInstallationAllowed") != 2;

  return v3;
}

- (BOOL)canInstallAppWithRating:(int64_t)a3
{
  v5 = [(VSRestrictionsCenter *)self _canInstallAppsAtAll];
  v6 = [(VSRestrictionsCenter *)self profileConnection];
  v7 = [v6 maximumAppsRating];
  v8 = v7 >= a3 && v5;
  if (a3 < 0)
  {
    v8 = 0;
  }

  if (v7 == 1000)
  {
    v8 = v5;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)profileConnectionSettingsChanged:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__VSRestrictionsCenter_profileConnectionSettingsChanged___block_invoke;
  v3[3] = &unk_278B733D8;
  v3[4] = self;
  VSPerformBlockOnMainThread(v3);
}

@end
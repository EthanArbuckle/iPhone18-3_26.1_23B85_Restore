@interface AAUISpinnerManager
- (AAUISpinnerManager)init;
- (AAUISpinnerManager)initWithNavigationItem:(id)a3 hideBackButton:(BOOL)a4;
- (void)startNavigationSpinner;
- (void)startSpinnerInSpecifier:(id)a3 forKey:(id)a4;
- (void)stopAllSpinners;
- (void)stopAnimatingForKey:(id)a3;
@end

@implementation AAUISpinnerManager

- (AAUISpinnerManager)init
{
  v7.receiver = self;
  v7.super_class = AAUISpinnerManager;
  v2 = [(AAUISpinnerManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    spinnerControllers = v2->_spinnerControllers;
    v2->_spinnerControllers = v3;

    v2->_controllersLock._os_unfair_lock_opaque = 0;
    navItem = v2->_navItem;
    v2->_navItem = 0;
  }

  return v2;
}

- (AAUISpinnerManager)initWithNavigationItem:(id)a3 hideBackButton:(BOOL)a4
{
  v7 = a3;
  v8 = [(AAUISpinnerManager *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_navItem, a3);
    v9->_shouldHideBackButton = a4;
  }

  return v9;
}

- (void)startNavigationSpinner
{
  if (self->_navItem)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __44__AAUISpinnerManager_startNavigationSpinner__block_invoke;
    v4[3] = &unk_1E820B8F0;
    v4[4] = self;
    os_unfair_lock_lock(&self->_controllersLock);
    __44__AAUISpinnerManager_startNavigationSpinner__block_invoke(v4);
    os_unfair_lock_unlock(&self->_controllersLock);
  }

  else
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AAUISpinnerManager startNavigationSpinner];
    }
  }
}

void __44__AAUISpinnerManager_startNavigationSpinner__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"_AAUINavSpinnerKey"];

  if (v2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __44__AAUISpinnerManager_startNavigationSpinner__block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [[AAUINavigationItemSpinnerController alloc] initWithNavigationItem:*(*(a1 + 32) + 24) hideBackButton:*(*(a1 + 32) + 32)];
    [(AAUINavigationItemSpinnerController *)v4 startSpinning];
    [*(*(a1 + 32) + 8) setObject:v4 forKeyedSubscript:@"_AAUINavSpinnerKey"];
  }
}

- (void)startSpinnerInSpecifier:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AAUISpinnerManager_startSpinnerInSpecifier_forKey___block_invoke;
  v10[3] = &unk_1E820BF58;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  os_unfair_lock_lock(&self->_controllersLock);
  __53__AAUISpinnerManager_startSpinnerInSpecifier_forKey___block_invoke(v10);
  os_unfair_lock_unlock(&self->_controllersLock);
}

void __53__AAUISpinnerManager_startSpinnerInSpecifier_forKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__AAUISpinnerManager_startSpinnerInSpecifier_forKey___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [[AAUISpecifierSpinnerController alloc] initWithSpecifier:a1[6]];
    [(AAUISpecifierSpinnerController *)v4 startSpinning];
    [*(a1[4] + 8) setObject:v4 forKeyedSubscript:a1[5]];
  }
}

- (void)stopAllSpinners
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_spinnerControllers allKeys];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AAUISpinnerManager *)self stopAnimatingForKey:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)stopAnimatingForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AAUISpinnerManager_stopAnimatingForKey___block_invoke;
  v6[3] = &unk_1E820BEB8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_lock(&self->_controllersLock);
  __42__AAUISpinnerManager_stopAnimatingForKey___block_invoke(v6);
  os_unfair_lock_unlock(&self->_controllersLock);
}

void __42__AAUISpinnerManager_stopAnimatingForKey___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 stopSpinning];
    [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__AAUISpinnerManager_stopAnimatingForKey___block_invoke_cold_1();
    }
  }
}

@end
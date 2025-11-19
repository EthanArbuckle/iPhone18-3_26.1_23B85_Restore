@interface BLSHDefaultsObserver
- (BLSHDefaultsObserver)init;
- (void)addHandlerForKey:(id)a3 attributes:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation BLSHDefaultsObserver

- (BLSHDefaultsObserver)init
{
  v25[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = BLSHDefaultsObserver;
  v2 = [(BLSHDefaultsObserver *)&v20 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
    observedDefaults = v2->_observedDefaults;
    v2->_observedDefaults = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:512 capacity:4];
    handlers = v2->_handlers;
    v2->_handlers = v5;

    v7 = [MEMORY[0x277CF0840] alwaysFillFlipbook];
    v25[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"alwaysFillFlipbook" attributes:v8];

    v9 = [MEMORY[0x277CF0900] disableWatchdogs];
    v24 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"backlightWatchdogsDisabled" attributes:v10];

    v11 = [MEMORY[0x277CF0910] disableFlipbook];
    v23[0] = v11;
    v12 = [MEMORY[0x277CF0980] pauseOnSystemSleep];
    v23[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"disableFlipbook" attributes:v13];

    v14 = [MEMORY[0x277CF09E0] transparentFlipbook];
    v22 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"transparentFlipbook" attributes:v15];

    v16 = [MEMORY[0x277CF0998] usePseudoFlipbook];
    v21 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"usePseudoFlipbook" attributes:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)addHandlerForKey:(id)a3 attributes:(id)a4
{
  handlers = self->_handlers;
  v8 = a3;
  v7 = [BLSHDefaultHandler handlerForKey:v8 attributes:a4];
  [(NSMapTable *)handlers setObject:v7 forKey:v8];

  [(NSUserDefaults *)self->_observedDefaults addObserver:self forKeyPath:v8 options:5 context:v8];
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self invalidated]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"BLSHDefaultsObserver.m";
    v9 = 1024;
    v10 = 71;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  [(BLSHDefaultsObserver *)self setInvalidated:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = NSAllMapTableValues(self->_handlers);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(NSMapTable *)self->_handlers objectForKey:a6];
  if (v13 && ![(BLSHDefaultsObserver *)self invalidated])
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = 0;
    }

    [v13 updateForNewValue:v15];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = BLSHDefaultsObserver;
    [(BLSHDefaultsObserver *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

@end
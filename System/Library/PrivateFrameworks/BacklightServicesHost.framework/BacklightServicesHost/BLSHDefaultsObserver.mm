@interface BLSHDefaultsObserver
- (BLSHDefaultsObserver)init;
- (void)addHandlerForKey:(id)key attributes:(id)attributes;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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

    alwaysFillFlipbook = [MEMORY[0x277CF0840] alwaysFillFlipbook];
    v25[0] = alwaysFillFlipbook;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"alwaysFillFlipbook" attributes:v8];

    disableWatchdogs = [MEMORY[0x277CF0900] disableWatchdogs];
    v24 = disableWatchdogs;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"backlightWatchdogsDisabled" attributes:v10];

    disableFlipbook = [MEMORY[0x277CF0910] disableFlipbook];
    v23[0] = disableFlipbook;
    pauseOnSystemSleep = [MEMORY[0x277CF0980] pauseOnSystemSleep];
    v23[1] = pauseOnSystemSleep;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"disableFlipbook" attributes:v13];

    transparentFlipbook = [MEMORY[0x277CF09E0] transparentFlipbook];
    v22 = transparentFlipbook;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"transparentFlipbook" attributes:v15];

    usePseudoFlipbook = [MEMORY[0x277CF0998] usePseudoFlipbook];
    v21 = usePseudoFlipbook;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [(BLSHDefaultsObserver *)v2 addHandlerForKey:@"usePseudoFlipbook" attributes:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)addHandlerForKey:(id)key attributes:(id)attributes
{
  handlers = self->_handlers;
  keyCopy = key;
  v7 = [BLSHDefaultHandler handlerForKey:keyCopy attributes:attributes];
  [(NSMapTable *)handlers setObject:v7 forKey:keyCopy];

  [(NSUserDefaults *)self->_observedDefaults addObserver:self forKeyPath:keyCopy options:5 context:keyCopy];
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self invalidated]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = [(NSMapTable *)self->_handlers objectForKey:context];
  if (v13 && ![(BLSHDefaultsObserver *)self invalidated])
  {
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v14 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [v13 updateForNewValue:bOOLValue];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = BLSHDefaultsObserver;
    [(BLSHDefaultsObserver *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

@end
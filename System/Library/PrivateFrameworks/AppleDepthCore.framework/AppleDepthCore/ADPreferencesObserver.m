@interface ADPreferencesObserver
- (id)initForPreferences:(id)a3 updateHandlerBlock:(id)a4 keys:(id)a5 invokeOnInit:(BOOL)a6;
- (void)dealloc;
@end

@implementation ADPreferencesObserver

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_keys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained(&self->_preferences);
        [WeakRetained removeObserver:self forKeyPath:v7 context:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9.receiver = self;
  v9.super_class = ADPreferencesObserver;
  [(ADPreferencesObserver *)&v9 dealloc];
}

- (id)initForPreferences:(id)a3 updateHandlerBlock:(id)a4 keys:(id)a5 invokeOnInit:(BOOL)a6
{
  v6 = a6;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v24 = a5;
  v29.receiver = self;
  v29.super_class = ADPreferencesObserver;
  v12 = [(ADPreferencesObserver *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_preferences, v10);
    objc_storeStrong(&v13->_keys, a5);
    v14 = MEMORY[0x245CC1A30](v11);
    updateHandlerBlock = v13->_updateHandlerBlock;
    v13->_updateHandlerBlock = v14;

    if (v6)
    {
      v16 = 7;
    }

    else
    {
      v16 = 3;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v13->_keys;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v18)
    {
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v25 + 1) + 8 * v20);
          WeakRetained = objc_loadWeakRetained(&v13->_preferences);
          [WeakRetained addObserver:v13 forKeyPath:v21 options:v16 context:0];

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }
  }

  return v13;
}

@end
@interface AXUIEventManager
+ (id)sharedEventManager;
- (BOOL)_handleUIEvent:(id)a3;
- (id)_init;
- (void)registerEventHandler:(id)a3;
- (void)unregisterEventHandler:(id)a3;
@end

@implementation AXUIEventManager

+ (id)sharedEventManager
{
  if (sharedEventManager_onceToken[0] != -1)
  {
    +[AXUIEventManager sharedEventManager];
  }

  v3 = sharedEventManager__SharedEventManager;

  return v3;
}

uint64_t __38__AXUIEventManager_sharedEventManager__block_invoke()
{
  sharedEventManager__SharedEventManager = [[AXUIEventManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = AXUIEventManager;
  v2 = [(AXUIEventManager *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CE7E18] sharedInstance];
    v2->_laserEnabled = [v3 laserEnabled];
  }

  return v2;
}

- (BOOL)_handleUIEvent:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(AXUIEventManager *)self laserEnabled])
  {
    v5 = _AXUIPointerEventFromHIDEvent([v4 _hidEvent]);
    if (v5)
    {
      v6 = [(AXUIEventManager *)self eventHandlers];
      v7 = [v6 allObjects];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v11 |= [v14 handlePointerEvent:{v5, v17}];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (void)registerEventHandler:(id)a3
{
  v4 = a3;
  v5 = [(AXUIEventManager *)self eventHandlers];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(AXUIEventManager *)self setEventHandlers:v6];
  }

  v7 = [(AXUIEventManager *)self eventHandlers];
  [v7 addObject:v4];
}

- (void)unregisterEventHandler:(id)a3
{
  v4 = a3;
  v5 = [(AXUIEventManager *)self eventHandlers];
  [v5 removeObject:v4];

  v6 = [(AXUIEventManager *)self eventHandlers];
  v7 = [v6 count];

  if (!v7)
  {

    [(AXUIEventManager *)self setEventHandlers:0];
  }
}

@end
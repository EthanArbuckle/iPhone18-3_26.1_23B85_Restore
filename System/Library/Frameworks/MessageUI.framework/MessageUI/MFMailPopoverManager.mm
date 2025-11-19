@interface MFMailPopoverManager
+ (id)managerForWindow:(id)a3 createIfNeeded:(BOOL)a4;
+ (void)enumerateManagersUsingBlock:(id)a3;
- (MFMailPopoverManager)init;
- (id)_init;
- (id)allPassThroughViews;
- (void)dealloc;
@end

@implementation MFMailPopoverManager

+ (id)managerForWindow:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (pthread_main_np() != 1)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"MFMailPopoverManager.m" lineNumber:35 description:@"Current thread must be main"];

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"MFMailPopoverManager.m" lineNumber:36 description:@"window can't be nil"];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = [sManagersMap objectForKey:v7];
  v9 = v8;
  if (v8 || !v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = [[MFMailPopoverManager alloc] _init];
    v11 = sManagersMap;
    if (!sManagersMap)
    {
      v12 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v13 = sManagersMap;
      sManagersMap = v12;

      v11 = sManagersMap;
    }

    [v11 setObject:v10 forKey:v7];
  }

  return v10;
}

+ (void)enumerateManagersUsingBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"MFMailPopoverManager.m" lineNumber:50 description:@"Current thread must be main"];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [sManagersMap objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 0;
      v5[2](v5, v10, &v12);
      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (MFMailPopoverManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MFMailPopoverManager.m" lineNumber:61 description:@"Don't instantiate this class directly.  Use +managerForWindow:createIfNeeded:."];

  return 0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = MFMailPopoverManager;
  v2 = [(MFMailPopoverManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    passThroughProviders = v2->_passThroughProviders;
    v2->_passThroughProviders = v3;
  }

  return v2;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (pthread_main_np() != 1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MFMailPopoverManager.m" lineNumber:73 description:@"Current thread must be main"];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [sManagersMap keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [sManagersMap objectForKey:v8];
        v10 = v9;
        if (v9 == self)
        {
          [sManagersMap removeObjectForKey:v8];

          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12.receiver = self;
  v12.super_class = MFMailPopoverManager;
  [(MFMailPopoverManager *)&v12 dealloc];
}

- (id)allPassThroughViews
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_passThroughProviders;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) passthroughViews];
        [v3 addObjectsFromArray:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

@end
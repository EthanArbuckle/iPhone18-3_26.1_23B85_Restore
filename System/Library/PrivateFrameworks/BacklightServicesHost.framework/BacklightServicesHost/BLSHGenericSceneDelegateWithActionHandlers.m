@interface BLSHGenericSceneDelegateWithActionHandlers
- (BLSHGenericSceneDelegateWithActionHandlers)init;
- (id)actionHandlers;
- (void)addActionHandler:(id)a3 forScene:(id)a4;
- (void)removeActionHandler:(id)a3 forScene:(id)a4;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
@end

@implementation BLSHGenericSceneDelegateWithActionHandlers

- (BLSHGenericSceneDelegateWithActionHandlers)init
{
  v7.receiver = self;
  v7.super_class = BLSHGenericSceneDelegateWithActionHandlers;
  v2 = [(BLSHGenericSceneDelegateWithActionHandlers *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEB18] array];
    actionHandlers = v3->_actionHandlers;
    v3->_actionHandlers = v4;
  }

  return v3;
}

- (void)addActionHandler:(id)a3 forScene:(id)a4
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_actionHandlers addObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeActionHandler:(id)a3 forScene:(id)a4
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_actionHandlers removeObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)actionHandlers
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    v2 = [*(a1 + 8) copy];
    os_unfair_lock_unlock((a1 + 16));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BLSHGenericSceneDelegateWithActionHandlers *)self actionHandlers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 = [*(*(&v15 + 1) + 8 * v12) respondToActions:v13 forFBScene:v6];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end
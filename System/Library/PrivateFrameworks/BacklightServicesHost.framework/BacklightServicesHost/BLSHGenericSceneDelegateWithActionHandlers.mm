@interface BLSHGenericSceneDelegateWithActionHandlers
- (BLSHGenericSceneDelegateWithActionHandlers)init;
- (id)actionHandlers;
- (void)addActionHandler:(id)handler forScene:(id)scene;
- (void)removeActionHandler:(id)handler forScene:(id)scene;
- (void)scene:(id)scene didReceiveActions:(id)actions;
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
    array = [MEMORY[0x277CBEB18] array];
    actionHandlers = v3->_actionHandlers;
    v3->_actionHandlers = array;
  }

  return v3;
}

- (void)addActionHandler:(id)handler forScene:(id)scene
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_actionHandlers addObject:handlerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeActionHandler:(id)handler forScene:(id)scene
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_actionHandlers removeObject:handlerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)actionHandlers
{
  if (self)
  {
    os_unfair_lock_lock((self + 16));
    v2 = [*(self + 8) copy];
    os_unfair_lock_unlock((self + 16));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  v20 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  actionsCopy = actions;
  actionHandlers = [(BLSHGenericSceneDelegateWithActionHandlers *)self actionHandlers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [actionHandlers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      v13 = actionsCopy;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(actionHandlers);
        }

        actionsCopy = [*(*(&v15 + 1) + 8 * v12) respondToActions:v13 forFBScene:sceneCopy];

        ++v12;
        v13 = actionsCopy;
      }

      while (v10 != v12);
      v10 = [actionHandlers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end
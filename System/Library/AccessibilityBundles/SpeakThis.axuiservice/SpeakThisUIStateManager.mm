@interface SpeakThisUIStateManager
+ (SpeakThisUIStateManager)sharedInstance;
- (SpeakThisUIStateManager)init;
- (void)_updateObservers;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setCurrentControllerTitle:(id)a3;
@end

@implementation SpeakThisUIStateManager

+ (SpeakThisUIStateManager)sharedInstance
{
  if (qword_38510 != -1)
  {
    sub_1BBC8();
  }

  v3 = qword_38518;

  return v3;
}

- (SpeakThisUIStateManager)init
{
  v8.receiver = self;
  v8.super_class = SpeakThisUIStateManager;
  v2 = [(SpeakThisUIStateManager *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_inTabMode = 1;
    v2->_currentState = 0;
    v5 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    collapseTimer = v2->_collapseTimer;
    v2->_collapseTimer = v5;
  }

  return v2;
}

- (void)setCurrentControllerTitle:(id)a3
{
  objc_storeStrong(&self->_currentControllerTitle, a3);

  [(SpeakThisUIStateManager *)self _updateObservers];
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SpeakThisUIStateManager *)self observers];
    [v5 addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SpeakThisUIStateManager *)self observers];
    [v5 removeObject:v4];
  }
}

- (void)_updateObservers
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SpeakThisUIStateManager *)self observers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) uiStateChanged];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end
@interface ATXUserEducationSuggestionClient
+ (id)sharedInstance;
- (ATXUserEducationSuggestionClient)init;
- (void)logUserEducationSuggestionFeedback:(id)a3;
- (void)notifyObserversOfSuggestionEvent:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation ATXUserEducationSuggestionClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ATXUserEducationSuggestionClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken7_10 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_10, block);
  }

  v2 = sharedInstance__pasExprOnceResult_15;

  return v2;
}

void __50__ATXUserEducationSuggestionClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_15;
  sharedInstance__pasExprOnceResult_15 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXUserEducationSuggestionClient)init
{
  v10.receiver = self;
  v10.super_class = ATXUserEducationSuggestionClient;
  v2 = [(ATXUserEducationSuggestionClient *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [ATXUserEducationSuggestionConnector alloc];
    v6 = [[ATXUserEducationSuggestionClientRequestHandler alloc] initWithClient:v2];
    v7 = [(ATXUserEducationSuggestionConnector *)v5 initWithOurInterfaceFactory:ATXUserEducationSuggestionClientXPCInterface theirInterfaceFactory:ATXUserEducationSuggestionServerXPCInterface ourServiceName:@"com.apple.proactive.UserEducationSuggestion.client-listener.xpc" theirServiceName:@"com.apple.proactive.UserEducationSuggestion.server-listener.xpc" requestHandler:v6];
    connector = v2->_connector;
    v2->_connector = v7;
  }

  return v2;
}

- (void)registerObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)unregisterObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)logUserEducationSuggestionFeedback:(id)a3
{
  connector = self->_connector;
  v4 = a3;
  v5 = [(ATXUserEducationSuggestionConnector *)connector remoteObjectProxy];
  [v5 logUserEducationSuggestionFeedback:v4];
}

- (void)notifyObserversOfSuggestionEvent:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_observers;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) didReceiveUserEducationSuggestionEvent:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

@end
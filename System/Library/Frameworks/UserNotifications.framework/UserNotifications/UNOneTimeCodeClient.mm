@interface UNOneTimeCodeClient
+ (id)currentClient;
- (UNOneTimeCodeClient)init;
- (id)_init;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)oneTimeCodeServiceConnection:(id)connection detectedOneTimeCodes:(id)codes;
- (void)removeObserver:(id)observer;
@end

@implementation UNOneTimeCodeClient

+ (id)currentClient
{
  if (currentClient_onceToken != -1)
  {
    +[UNOneTimeCodeClient currentClient];
  }

  v3 = currentClient___sharedInstance;

  return v3;
}

uint64_t __36__UNOneTimeCodeClient_currentClient__block_invoke()
{
  currentClient___sharedInstance = [[UNOneTimeCodeClient alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (UNOneTimeCodeClient)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UNOneTimeCodeClient.m" lineNumber:36 description:@"use +currentClient"];

  return 0;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = UNOneTimeCodeClient;
  v2 = [(UNOneTimeCodeClient *)&v10 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.usernotifications.UNOneTimeCodeClient", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  observers = v2->_observers;
  v2->_observers = weakObjectsHashTable;

  v8 = +[UNOneTimeCodeServiceConnection sharedInstance];
  [v8 addObserver:v2];

  return v2;
}

- (void)dealloc
{
  v3 = +[UNOneTimeCodeServiceConnection sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = UNOneTimeCodeClient;
  [(UNOneTimeCodeClient *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__UNOneTimeCodeClient_addObserver___block_invoke;
  v7[3] = &unk_1E7CFF910;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

void __35__UNOneTimeCodeClient_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v1 = +[UNOneTimeCodeServiceConnection sharedInstance];
  [v1 registerForUpdates];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__UNOneTimeCodeClient_removeObserver___block_invoke;
  v7[3] = &unk_1E7CFF910;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)oneTimeCodeServiceConnection:(id)connection detectedOneTimeCodes:(id)codes
{
  codesCopy = codes;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__UNOneTimeCodeClient_oneTimeCodeServiceConnection_detectedOneTimeCodes___block_invoke;
  v8[3] = &unk_1E7CFF910;
  v8[4] = self;
  v9 = codesCopy;
  v7 = codesCopy;
  dispatch_async(queue, v8);
}

void __73__UNOneTimeCodeClient_oneTimeCodeServiceConnection_detectedOneTimeCodes___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) oneTimeCodeClient:*(a1 + 32) detectedOneTimeCodes:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end
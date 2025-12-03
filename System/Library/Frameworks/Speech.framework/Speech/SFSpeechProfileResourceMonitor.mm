@interface SFSpeechProfileResourceMonitor
+ (id)sharedMonitor;
- (SFSpeechProfileResourceMonitor)init;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation SFSpeechProfileResourceMonitor

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFSpeechProfileResourceMonitor_removeObserver___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __49__SFSpeechProfileResourceMonitor_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 _stopSession];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFSpeechProfileResourceMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __46__SFSpeechProfileResourceMonitor_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = *(a1 + 32);

    [v5 _startSession];
  }
}

- (SFSpeechProfileResourceMonitor)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)sharedMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFSpeechProfileResourceMonitor_sharedMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, block);
  }

  v2 = sharedMonitor_sharedMonitor;

  return v2;
}

void __47__SFSpeechProfileResourceMonitor_sharedMonitor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 cStringUsingEncoding:4];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
  v9 = dispatch_queue_create(v4, v6);

  v7 = [[SFSpeechProfileResourceMonitor alloc] _initWithQueue:v9];
  v8 = sharedMonitor_sharedMonitor;
  sharedMonitor_sharedMonitor = v7;
}

@end
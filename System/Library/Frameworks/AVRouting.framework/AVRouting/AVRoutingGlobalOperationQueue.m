@interface AVRoutingGlobalOperationQueue
+ (id)defaultQueue;
- (AVRoutingGlobalOperationQueue)init;
- (id)description;
- (void)dealloc;
@end

@implementation AVRoutingGlobalOperationQueue

+ (id)defaultQueue
{
  if (defaultQueue_sSharedManagerOnce != -1)
  {
    +[AVRoutingGlobalOperationQueue defaultQueue];
  }

  return defaultQueue_sDefaultQueue;
}

AVRoutingGlobalOperationQueue *__45__AVRoutingGlobalOperationQueue_defaultQueue__block_invoke()
{
  result = objc_alloc_init(AVRoutingGlobalOperationQueue);
  defaultQueue_sDefaultQueue = result;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVRoutingGlobalOperationQueue;
  [(AVRoutingGlobalOperationQueue *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, unfinishedOperations=%@>", NSStringFromClass(v4), self, -[AVRoutingGlobalOperationQueue unfinishedOperations](self, "unfinishedOperations")];
}

- (AVRoutingGlobalOperationQueue)init
{
  v5.receiver = self;
  v5.super_class = AVRoutingGlobalOperationQueue;
  v2 = [(AVRoutingGlobalOperationQueue *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v2->_operationQueue = v3;
    -[NSOperationQueue setName:](v3, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.avfoundation.globaloperationqueue.%p", v2]);
  }

  return v2;
}

@end
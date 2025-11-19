@interface AVGlobalOperationQueue
+ (id)defaultQueue;
- (id)description;
- (void)dealloc;
@end

@implementation AVGlobalOperationQueue

+ (id)defaultQueue
{
  if (defaultQueue_sSharedManagerOnce != -1)
  {
    +[AVGlobalOperationQueue defaultQueue];
  }

  return defaultQueue_sDefaultQueue;
}

AVGlobalOperationQueue *__38__AVGlobalOperationQueue_defaultQueue__block_invoke()
{
  result = objc_alloc_init(AVGlobalOperationQueue);
  defaultQueue_sDefaultQueue = result;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVGlobalOperationQueue;
  [(AVGlobalOperationQueue *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, unfinishedOperations=%@>", NSStringFromClass(v4), self, -[AVGlobalOperationQueue unfinishedOperations](self, "unfinishedOperations")];
}

@end
@interface _PHAnimatedImageLoadOperation
+ (id)_animatedImageSharedLoadingQueue;
+ (id)_inq_animatedImageLoadingOperations;
+ (id)_removeOperation:(int64_t)operation;
+ (id)_requestIsolationQueue;
+ (void)_registerOperation:(id)operation forRequestID:(int64_t)d;
- (_PHAnimatedImageLoadOperation)initWithURL:(id)l cachingStrategy:(int64_t)strategy useSharedDecoding:(BOOL)decoding;
- (void)main;
@end

@implementation _PHAnimatedImageLoadOperation

- (void)main
{
  if (([(_PHAnimatedImageLoadOperation *)self isCancelled]& 1) == 0)
  {
    v3 = [[PHAnimatedImage alloc] initWithURL:self->_animatedImageURL cachingStrategy:self->_cacheStrategy useSharedDecoding:self->_useSharedImageDecoding];
    [(_PHAnimatedImageLoadOperation *)self setAnimatedImage:v3];
  }
}

- (_PHAnimatedImageLoadOperation)initWithURL:(id)l cachingStrategy:(int64_t)strategy useSharedDecoding:(BOOL)decoding
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = _PHAnimatedImageLoadOperation;
  v9 = [(_PHAnimatedImageLoadOperation *)&v13 init];
  if (v9)
  {
    v10 = [lCopy copy];
    animatedImageURL = v9->_animatedImageURL;
    v9->_animatedImageURL = v10;

    v9->_cacheStrategy = strategy;
    v9->_useSharedImageDecoding = decoding;
  }

  return v9;
}

+ (id)_requestIsolationQueue
{
  if (_requestIsolationQueue_onceToken != -1)
  {
    dispatch_once(&_requestIsolationQueue_onceToken, &__block_literal_global_6);
  }

  v3 = _requestIsolationQueue__requestIsolation;

  return v3;
}

+ (id)_inq_animatedImageLoadingOperations
{
  if (_inq_animatedImageLoadingOperations_onceToken != -1)
  {
    dispatch_once(&_inq_animatedImageLoadingOperations_onceToken, &__block_literal_global_3_2838);
  }

  v3 = _inq_animatedImageLoadingOperations__loadingOperations;

  return v3;
}

+ (id)_animatedImageSharedLoadingQueue
{
  if (_animatedImageSharedLoadingQueue_onceToken != -1)
  {
    dispatch_once(&_animatedImageSharedLoadingQueue_onceToken, &__block_literal_global_2839);
  }

  v3 = _animatedImageSharedLoadingQueue__loadingQueue;

  return v3;
}

+ (id)_removeOperation:(int64_t)operation
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2842;
  v13 = __Block_byref_object_dispose__2843;
  v14 = 0;
  _requestIsolationQueue = [self _requestIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___PHAnimatedImageLoadOperation__removeOperation___block_invoke;
  block[3] = &unk_1E75A87C8;
  block[4] = &v9;
  block[5] = self;
  block[6] = operation;
  dispatch_sync(_requestIsolationQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

+ (void)_registerOperation:(id)operation forRequestID:(int64_t)d
{
  operationCopy = operation;
  _requestIsolationQueue = [self _requestIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___PHAnimatedImageLoadOperation__registerOperation_forRequestID___block_invoke;
  block[3] = &unk_1E75A7EB0;
  v10 = operationCopy;
  selfCopy = self;
  dCopy = d;
  v8 = operationCopy;
  dispatch_sync(_requestIsolationQueue, block);
}

@end
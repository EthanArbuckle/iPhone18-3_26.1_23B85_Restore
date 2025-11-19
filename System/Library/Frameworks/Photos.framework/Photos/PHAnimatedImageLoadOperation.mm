@interface PHAnimatedImageLoadOperation
@end

@implementation PHAnimatedImageLoadOperation

void __55___PHAnimatedImageLoadOperation__requestIsolationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.PHAnimatedImage.isolation", v2);
  v1 = _requestIsolationQueue__requestIsolation;
  _requestIsolationQueue__requestIsolation = v0;
}

uint64_t __68___PHAnimatedImageLoadOperation__inq_animatedImageLoadingOperations__block_invoke()
{
  _inq_animatedImageLoadingOperations__loadingOperations = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65___PHAnimatedImageLoadOperation__animatedImageSharedLoadingQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _animatedImageSharedLoadingQueue__loadingQueue;
  _animatedImageSharedLoadingQueue__loadingQueue = v0;

  [_animatedImageSharedLoadingQueue__loadingQueue setQualityOfService:25];
  v2 = _animatedImageSharedLoadingQueue__loadingQueue;

  return [v2 setMaxConcurrentOperationCount:3];
}

void __50___PHAnimatedImageLoadOperation__removeOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _inq_animatedImageLoadingOperations];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v8 = [*(a1 + 40) _inq_animatedImageLoadingOperations];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  [v8 removeObjectForKey:v7];
}

void __65___PHAnimatedImageLoadOperation__registerOperation_forRequestID___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 40) _inq_animatedImageLoadingOperations];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  [v4 setObject:v2 forKey:v3];
}

@end
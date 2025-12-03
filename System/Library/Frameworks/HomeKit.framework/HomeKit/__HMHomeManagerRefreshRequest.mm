@interface __HMHomeManagerRefreshRequest
- (__HMHomeManagerRefreshRequest)initWithGenerationCounter:(unint64_t)counter timeout:(double)timeout;
@end

@implementation __HMHomeManagerRefreshRequest

- (__HMHomeManagerRefreshRequest)initWithGenerationCounter:(unint64_t)counter timeout:(double)timeout
{
  v6.receiver = self;
  v6.super_class = __HMHomeManagerRefreshRequest;
  result = [(HMFOperation *)&v6 initWithTimeout:timeout];
  if (result)
  {
    result->_generationCounter = counter;
  }

  return result;
}

@end
@interface __HMHomeManagerRefreshRequest
- (__HMHomeManagerRefreshRequest)initWithGenerationCounter:(unint64_t)a3 timeout:(double)a4;
@end

@implementation __HMHomeManagerRefreshRequest

- (__HMHomeManagerRefreshRequest)initWithGenerationCounter:(unint64_t)a3 timeout:(double)a4
{
  v6.receiver = self;
  v6.super_class = __HMHomeManagerRefreshRequest;
  result = [(HMFOperation *)&v6 initWithTimeout:a4];
  if (result)
  {
    result->_generationCounter = a3;
  }

  return result;
}

@end
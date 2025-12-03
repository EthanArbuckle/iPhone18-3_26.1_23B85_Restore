@interface AVAssetCustomURLRequest
+ (id)requestWithRequest:(__CFDictionary *)request id:(unint64_t)id;
- (AVAssetCustomURLRequest)initWithRequest:(__CFDictionary *)request id:(unint64_t)id;
- (void)dealloc;
- (void)setCustomURLRequest:(__CFDictionary *)request;
- (void)setCustomURLResponse:(__CFDictionary *)response;
@end

@implementation AVAssetCustomURLRequest

+ (id)requestWithRequest:(__CFDictionary *)request id:(unint64_t)id
{
  v4 = [[AVAssetCustomURLRequest alloc] initWithRequest:request id:id];

  return v4;
}

- (AVAssetCustomURLRequest)initWithRequest:(__CFDictionary *)request id:(unint64_t)id
{
  v18.receiver = self;
  v18.super_class = AVAssetCustomURLRequest;
  v7 = [(AVAssetCustomURLRequest *)&v18 init];
  v8 = v7;
  if (v7)
  {
    if (!request)
    {
      v11 = v7;
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v12, v13, v14, v15, v16, "request"), 0}];
      objc_exception_throw(v17);
    }

    v9 = CFRetain(request);
    v8->_requestID = id;
    v8->_customURLRequest = v9;
  }

  return v8;
}

- (void)dealloc
{
  customURLRequest = self->_customURLRequest;
  if (customURLRequest)
  {
    CFRelease(customURLRequest);
  }

  customURLResponse = self->_customURLResponse;
  if (customURLResponse)
  {
    CFRelease(customURLResponse);
  }

  v5.receiver = self;
  v5.super_class = AVAssetCustomURLRequest;
  [(AVAssetCustomURLRequest *)&v5 dealloc];
}

- (void)setCustomURLRequest:(__CFDictionary *)request
{
  customURLRequest = self->_customURLRequest;
  self->_customURLRequest = request;
  if (request)
  {
    CFRetain(request);
  }

  if (customURLRequest)
  {

    CFRelease(customURLRequest);
  }
}

- (void)setCustomURLResponse:(__CFDictionary *)response
{
  customURLResponse = self->_customURLResponse;
  self->_customURLResponse = response;
  if (response)
  {
    CFRetain(response);
  }

  if (customURLResponse)
  {

    CFRelease(customURLResponse);
  }
}

@end
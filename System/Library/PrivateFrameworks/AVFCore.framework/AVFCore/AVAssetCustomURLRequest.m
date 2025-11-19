@interface AVAssetCustomURLRequest
+ (id)requestWithRequest:(__CFDictionary *)a3 id:(unint64_t)a4;
- (AVAssetCustomURLRequest)initWithRequest:(__CFDictionary *)a3 id:(unint64_t)a4;
- (void)dealloc;
- (void)setCustomURLRequest:(__CFDictionary *)a3;
- (void)setCustomURLResponse:(__CFDictionary *)a3;
@end

@implementation AVAssetCustomURLRequest

+ (id)requestWithRequest:(__CFDictionary *)a3 id:(unint64_t)a4
{
  v4 = [[AVAssetCustomURLRequest alloc] initWithRequest:a3 id:a4];

  return v4;
}

- (AVAssetCustomURLRequest)initWithRequest:(__CFDictionary *)a3 id:(unint64_t)a4
{
  v18.receiver = self;
  v18.super_class = AVAssetCustomURLRequest;
  v7 = [(AVAssetCustomURLRequest *)&v18 init];
  v8 = v7;
  if (v7)
  {
    if (!a3)
    {
      v11 = v7;
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v12, v13, v14, v15, v16, "request"), 0}];
      objc_exception_throw(v17);
    }

    v9 = CFRetain(a3);
    v8->_requestID = a4;
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

- (void)setCustomURLRequest:(__CFDictionary *)a3
{
  customURLRequest = self->_customURLRequest;
  self->_customURLRequest = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (customURLRequest)
  {

    CFRelease(customURLRequest);
  }
}

- (void)setCustomURLResponse:(__CFDictionary *)a3
{
  customURLResponse = self->_customURLResponse;
  self->_customURLResponse = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (customURLResponse)
  {

    CFRelease(customURLResponse);
  }
}

@end
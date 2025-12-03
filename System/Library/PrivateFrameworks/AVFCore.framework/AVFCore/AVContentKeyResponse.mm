@interface AVContentKeyResponse
+ (AVContentKeyResponse)contentKeyResponseWithAuthorizationTokenData:(NSData *)authorizationTokenData;
+ (AVContentKeyResponse)contentKeyResponseWithClearKeyData:(NSData *)keyData initializationVector:(NSData *)initializationVector;
+ (AVContentKeyResponse)contentKeyResponseWithFairPlayStreamingKeyResponseData:(NSData *)keyResponseData;
+ (AVContentKeyResponse)contentKeyResponseWithFairPlayStreamingKeyResponseData:(id)data renewalDate:(id)date;
- (AVContentKeyResponse)initWithKeySystem:(id)system;
- (void)dealloc;
@end

@implementation AVContentKeyResponse

+ (AVContentKeyResponse)contentKeyResponseWithFairPlayStreamingKeyResponseData:(NSData *)keyResponseData
{
  v3 = [[AVContentKeyResponseFairPlayStreaming alloc] initWithKeyData:keyResponseData renewalDate:0];

  return v3;
}

+ (AVContentKeyResponse)contentKeyResponseWithFairPlayStreamingKeyResponseData:(id)data renewalDate:(id)date
{
  v4 = [[AVContentKeyResponseFairPlayStreaming alloc] initWithKeyData:data renewalDate:date];

  return v4;
}

+ (AVContentKeyResponse)contentKeyResponseWithClearKeyData:(NSData *)keyData initializationVector:(NSData *)initializationVector
{
  v4 = [[AVContentKeyResponseClearKey alloc] initWithKeyData:keyData initializationVector:initializationVector];

  return v4;
}

+ (AVContentKeyResponse)contentKeyResponseWithAuthorizationTokenData:(NSData *)authorizationTokenData
{
  v3 = [[AVContentKeyResponseAuthorizationToken alloc] initWithAuthorizationTokenData:authorizationTokenData];

  return v3;
}

- (AVContentKeyResponse)initWithKeySystem:(id)system
{
  v7.receiver = self;
  v7.super_class = AVContentKeyResponse;
  v4 = [(AVContentKeyResponse *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVContentKeyResponseInternal);
    v4->_keyResponse = v5;
    if (v5)
    {
      v4->_keyResponse->_keySystem = system;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  keyResponse = self->_keyResponse;
  if (keyResponse)
  {

    keyResponse = self->_keyResponse;
  }

  v4.receiver = self;
  v4.super_class = AVContentKeyResponse;
  [(AVContentKeyResponse *)&v4 dealloc];
}

@end
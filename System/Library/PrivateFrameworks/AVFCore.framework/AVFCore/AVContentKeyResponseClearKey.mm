@interface AVContentKeyResponseClearKey
- (AVContentKeyResponseClearKey)initWithKeyData:(id)data initializationVector:(id)vector;
- (void)dealloc;
@end

@implementation AVContentKeyResponseClearKey

- (AVContentKeyResponseClearKey)initWithKeyData:(id)data initializationVector:(id)vector
{
  v8.receiver = self;
  v8.super_class = AVContentKeyResponseClearKey;
  v6 = [(AVContentKeyResponse *)&v8 initWithKeySystem:@"ClearKeySystem"];
  if (v6)
  {
    v6->_keyData = [data copy];
    v6->_initializationVector = [vector copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVContentKeyResponseClearKey;
  [(AVContentKeyResponse *)&v3 dealloc];
}

@end
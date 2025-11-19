@interface AVContentKeyResponseClearKey
- (AVContentKeyResponseClearKey)initWithKeyData:(id)a3 initializationVector:(id)a4;
- (void)dealloc;
@end

@implementation AVContentKeyResponseClearKey

- (AVContentKeyResponseClearKey)initWithKeyData:(id)a3 initializationVector:(id)a4
{
  v8.receiver = self;
  v8.super_class = AVContentKeyResponseClearKey;
  v6 = [(AVContentKeyResponse *)&v8 initWithKeySystem:@"ClearKeySystem"];
  if (v6)
  {
    v6->_keyData = [a3 copy];
    v6->_initializationVector = [a4 copy];
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
@interface AVHapticProcessTaskToken
- (AVHapticProcessTaskToken)initWithCoder:(id)a3;
- (AVHapticProcessTaskToken)initWithXPCDictionary:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVHapticProcessTaskToken

- (void)dealloc
{
  taskTokenDictionary = self->_taskTokenDictionary;
  self->_taskTokenDictionary = 0;

  v4.receiver = self;
  v4.super_class = AVHapticProcessTaskToken;
  [(AVHapticProcessTaskToken *)&v4 dealloc];
}

- (AVHapticProcessTaskToken)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 raise:*MEMORY[0x1E695D940] format:{@"An %@ can only be decoded with an instance of NSXPCCoder; attempting to decode with %@", v7, v9}];
  }

  v10 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"XPC_ProcessTaskToken"];
  v11 = [(AVHapticProcessTaskToken *)self initWithXPCDictionary:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      [v9 encodeXPCObject:self->_taskTokenDictionary forKey:@"XPC_ProcessTaskToken"];
    }
  }

  else
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v4 raise:*MEMORY[0x1E695D940] format:{@"An %@ can only be encoded with an instance of NSXPCCoder; attempting to encode with %@", v6, v8}];
  }
}

- (AVHapticProcessTaskToken)initWithXPCDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVHapticProcessTaskToken;
  v6 = [(AVHapticProcessTaskToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskTokenDictionary, a3);
  }

  return v7;
}

@end
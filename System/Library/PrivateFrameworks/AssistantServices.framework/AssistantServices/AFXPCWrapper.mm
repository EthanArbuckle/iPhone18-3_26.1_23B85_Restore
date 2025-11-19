@interface AFXPCWrapper
- (AFXPCWrapper)initWithCoder:(id)a3;
- (AFXPCWrapper)initWithXPCObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFXPCWrapper

- (AFXPCWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9F08] forKey:@"_xpcObject"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(AFXPCWrapper *)self initWithXPCObject:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self->_xpcObject)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 encodeXPCObject:self->_xpcObject forKey:@"_xpcObject"];
    }
  }
}

- (AFXPCWrapper)initWithXPCObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AFXPCWrapper;
  v6 = [(AFXPCWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcObject, a3);
  }

  return v7;
}

@end
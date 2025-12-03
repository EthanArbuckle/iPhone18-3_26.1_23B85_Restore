@interface AFXPCWrapper
- (AFXPCWrapper)initWithCoder:(id)coder;
- (AFXPCWrapper)initWithXPCObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFXPCWrapper

- (AFXPCWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9F08] forKey:@"_xpcObject"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(AFXPCWrapper *)self initWithXPCObject:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_xpcObject)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [coderCopy encodeXPCObject:self->_xpcObject forKey:@"_xpcObject"];
    }
  }
}

- (AFXPCWrapper)initWithXPCObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = AFXPCWrapper;
  v6 = [(AFXPCWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcObject, object);
  }

  return v7;
}

@end
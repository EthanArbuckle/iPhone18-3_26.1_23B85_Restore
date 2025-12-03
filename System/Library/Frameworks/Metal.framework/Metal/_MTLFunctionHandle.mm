@interface _MTLFunctionHandle
- (_MTLFunctionHandle)initWithFunctionType:(unint64_t)type name:(id)name device:(id)device;
- (void)dealloc;
@end

@implementation _MTLFunctionHandle

- (_MTLFunctionHandle)initWithFunctionType:(unint64_t)type name:(id)name device:(id)device
{
  v11.receiver = self;
  v11.super_class = _MTLFunctionHandle;
  v8 = [(_MTLFunctionHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_functionType = type;
    v8->_name = name;
    v9->_device = device;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLFunctionHandle;
  [(_MTLFunctionHandle *)&v3 dealloc];
}

@end
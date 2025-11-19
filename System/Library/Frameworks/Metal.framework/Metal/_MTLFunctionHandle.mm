@interface _MTLFunctionHandle
- (_MTLFunctionHandle)initWithFunctionType:(unint64_t)a3 name:(id)a4 device:(id)a5;
- (void)dealloc;
@end

@implementation _MTLFunctionHandle

- (_MTLFunctionHandle)initWithFunctionType:(unint64_t)a3 name:(id)a4 device:(id)a5
{
  v11.receiver = self;
  v11.super_class = _MTLFunctionHandle;
  v8 = [(_MTLFunctionHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_functionType = a3;
    v8->_name = a4;
    v9->_device = a5;
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
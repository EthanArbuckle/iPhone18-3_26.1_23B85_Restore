@interface AGXG18PFamilyFunctionHandle
- (AGXG18PFamilyFunctionHandle)initWithHandleType:(int)a3 name:(id)a4 device:(id)a5 handle:(unint64_t)a6 dylib:(id)a7;
- (MTLResourceID)gpuResourceID;
- (id).cxx_construct;
- (unint64_t)resourceIndex;
- (void)dealloc;
@end

@implementation AGXG18PFamilyFunctionHandle

- (id).cxx_construct
{
  *(self + 8) = 3;
  *(self + 5) = -1;
  return self;
}

- (unint64_t)resourceIndex
{
  if (self->_impl.handle_type == 1)
  {
    return self->_impl.value & 0xFFFFFFF;
  }

  else
  {
    return 0;
  }
}

- (MTLResourceID)gpuResourceID
{
  if (self->_impl.handle_type == 1)
  {
    return self->_impl.value;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AGXG18PFamilyFunctionHandle;
  [(_MTLFunctionHandle *)&v2 dealloc];
}

- (AGXG18PFamilyFunctionHandle)initWithHandleType:(int)a3 name:(id)a4 device:(id)a5 handle:(unint64_t)a6 dylib:(id)a7
{
  v10 = 5;
  if (a3 != 2)
  {
    v10 = 6;
  }

  if (a3 == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v13.receiver = self;
  v13.super_class = AGXG18PFamilyFunctionHandle;
  result = [(_MTLFunctionHandle *)&v13 initWithFunctionType:v11 name:a4 device:a5];
  if (result)
  {
    result->_impl.handle_type = a3;
    result->_impl.value = a6;
    result->_binary_dylib = a7;
  }

  return result;
}

@end
@interface AGXG18PFamilyFunctionHandle
- (AGXG18PFamilyFunctionHandle)initWithHandleType:(int)type name:(id)name device:(id)device handle:(unint64_t)handle dylib:(id)dylib;
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

- (AGXG18PFamilyFunctionHandle)initWithHandleType:(int)type name:(id)name device:(id)device handle:(unint64_t)handle dylib:(id)dylib
{
  v10 = 5;
  if (type != 2)
  {
    v10 = 6;
  }

  if (type == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v13.receiver = self;
  v13.super_class = AGXG18PFamilyFunctionHandle;
  result = [(_MTLFunctionHandle *)&v13 initWithFunctionType:v11 name:name device:device];
  if (result)
  {
    result->_impl.handle_type = type;
    result->_impl.value = handle;
    result->_binary_dylib = dylib;
  }

  return result;
}

@end
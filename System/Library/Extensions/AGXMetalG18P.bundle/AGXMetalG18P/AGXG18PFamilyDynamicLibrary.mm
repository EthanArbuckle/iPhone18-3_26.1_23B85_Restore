@interface AGXG18PFamilyDynamicLibrary
- (AGXG18PFamilyDynamicLibrary)initWithBinaryData:(id)data name:(id)name device:(id)device;
- (AGXG18PFamilyDynamicLibrary)initWithCompilerReply:(const void *)reply name:(id)name device:(id)device;
- (AGXG18PFamilyDynamicLibrary)initWithLibrary:(id)library binaryData:(id)data device:(id)device error:(id *)error;
- (AGXG18PFamilyDynamicLibrary)initWithURL:(id)l device:(id)device options:(unint64_t)options error:(id *)error;
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyDynamicLibrary

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (AGXG18PFamilyDynamicLibrary)initWithCompilerReply:(const void *)reply name:(id)name device:(id)device
{
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyDynamicLibrary;
  if ([(_MTLObjectWithLabel *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (AGXG18PFamilyDynamicLibrary)initWithBinaryData:(id)data name:(id)name device:(id)device
{
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyDynamicLibrary;
  if ([(_MTLObjectWithLabel *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (AGXG18PFamilyDynamicLibrary)initWithURL:(id)l device:(id)device options:(unint64_t)options error:(id *)error
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyDynamicLibrary;
  if ([_MTLDynamicLibrary initWithURL:sel_initWithURL_device_options_error_ device:l options:? error:?])
  {
    operator new();
  }

  return 0;
}

- (AGXG18PFamilyDynamicLibrary)initWithLibrary:(id)library binaryData:(id)data device:(id)device error:(id *)error
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyDynamicLibrary;
  if ([_MTLDynamicLibrary initWithLibrary:sel_initWithLibrary_binaryData_device_error_ binaryData:library device:? error:?])
  {
    operator new();
  }

  return 0;
}

@end
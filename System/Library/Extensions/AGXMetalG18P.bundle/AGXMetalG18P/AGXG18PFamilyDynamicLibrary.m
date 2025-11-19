@interface AGXG18PFamilyDynamicLibrary
- (AGXG18PFamilyDynamicLibrary)initWithBinaryData:(id)a3 name:(id)a4 device:(id)a5;
- (AGXG18PFamilyDynamicLibrary)initWithCompilerReply:(const void *)a3 name:(id)a4 device:(id)a5;
- (AGXG18PFamilyDynamicLibrary)initWithLibrary:(id)a3 binaryData:(id)a4 device:(id)a5 error:(id *)a6;
- (AGXG18PFamilyDynamicLibrary)initWithURL:(id)a3 device:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyDynamicLibrary

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (AGXG18PFamilyDynamicLibrary)initWithCompilerReply:(const void *)a3 name:(id)a4 device:(id)a5
{
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyDynamicLibrary;
  if ([(_MTLObjectWithLabel *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (AGXG18PFamilyDynamicLibrary)initWithBinaryData:(id)a3 name:(id)a4 device:(id)a5
{
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyDynamicLibrary;
  if ([(_MTLObjectWithLabel *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (AGXG18PFamilyDynamicLibrary)initWithURL:(id)a3 device:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyDynamicLibrary;
  if ([_MTLDynamicLibrary initWithURL:sel_initWithURL_device_options_error_ device:a3 options:? error:?])
  {
    operator new();
  }

  return 0;
}

- (AGXG18PFamilyDynamicLibrary)initWithLibrary:(id)a3 binaryData:(id)a4 device:(id)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyDynamicLibrary;
  if ([_MTLDynamicLibrary initWithLibrary:sel_initWithLibrary_binaryData_device_error_ binaryData:a3 device:? error:?])
  {
    operator new();
  }

  return 0;
}

@end
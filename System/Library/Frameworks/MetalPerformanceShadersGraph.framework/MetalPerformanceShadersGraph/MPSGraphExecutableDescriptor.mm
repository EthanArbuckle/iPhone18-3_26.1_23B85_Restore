@interface MPSGraphExecutableDescriptor
- (MPSGraphExecutableDescriptor)init;
@end

@implementation MPSGraphExecutableDescriptor

- (MPSGraphExecutableDescriptor)init
{
  v7.receiver = self;
  v7.super_class = MPSGraphExecutableDescriptor;
  v2 = [(MPSGraphExecutableDescriptor *)&v7 init];
  v3 = objc_opt_new();
  compilationDescriptor = v2->_compilationDescriptor;
  v2->_compilationDescriptor = v3;

  v2->_isCoreMLBytecode = 0;
  perDeviceDescriptorCompilationOptions = v2->_perDeviceDescriptorCompilationOptions;
  v2->_perDeviceDescriptorCompilationOptions = 0;

  return v2;
}

@end
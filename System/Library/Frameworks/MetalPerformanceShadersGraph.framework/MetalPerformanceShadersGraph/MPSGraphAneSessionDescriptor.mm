@interface MPSGraphAneSessionDescriptor
- (MPSGraphAneSessionDescriptor)init;
@end

@implementation MPSGraphAneSessionDescriptor

- (MPSGraphAneSessionDescriptor)init
{
  v8.receiver = self;
  v8.super_class = MPSGraphAneSessionDescriptor;
  v2 = [(MPSGraphAneSessionDescriptor *)&v8 init];
  v3 = objc_opt_new();
  compilationDescriptor = v2->_compilationDescriptor;
  v2->_compilationDescriptor = v3;

  v2->_energyEffecientWorkload = 0;
  v2->_aneSessionSignal = 0;
  shapedEntryPoint = v2->_shapedEntryPoint;
  v2->_shapedEntryPoint = 0;

  perEntryPointToSymbolAndFileNameMap = v2->_perEntryPointToSymbolAndFileNameMap;
  v2->_perEntryPointToSymbolAndFileNameMap = 0;

  return v2;
}

@end
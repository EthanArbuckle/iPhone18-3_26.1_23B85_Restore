@interface MPSGraphDeviceCompilationOptions
- (MPSGraphDeviceCompilationOptions)init;
@end

@implementation MPSGraphDeviceCompilationOptions

- (MPSGraphDeviceCompilationOptions)init
{
  v6.receiver = self;
  v6.super_class = MPSGraphDeviceCompilationOptions;
  v2 = [(MPSGraphDeviceCompilationOptions *)&v6 init];
  v3 = objc_opt_new();
  aneCompilerOptions = v2->_aneCompilerOptions;
  v2->_aneCompilerOptions = v3;

  return v2;
}

@end
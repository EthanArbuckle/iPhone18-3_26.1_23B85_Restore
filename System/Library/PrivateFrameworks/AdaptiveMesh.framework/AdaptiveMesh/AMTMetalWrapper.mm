@interface AMTMetalWrapper
+ (id)createDefaultLibraryWithDevice:(id)device;
@end

@implementation AMTMetalWrapper

+ (id)createDefaultLibraryWithDevice:(id)device
{
  deviceCopy = device;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = 0;
  v5 = [deviceCopy newDefaultLibraryWithBundle:v4 error:&v9];
  v6 = v9;
  if (!v5)
  {
    NSLog(&cfstr_ErrorCanTCreat.isa, v6);
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:@"LibraryCreationError" reason:@"Could not create default Metal library." userInfo:0];
    objc_exception_throw(v8);
  }

  return v5;
}

@end
@interface CIWarpKernel
+ (id)PFKernelWithString:(id)string;
@end

@implementation CIWarpKernel

+ (id)PFKernelWithString:(id)string
{
  if (qword_8CB18 != -1)
  {
    sub_4A170();
  }

  v4 = qword_8CB10;

  return [CIWarpKernel kernelWithString:string fromMetalLibraryData:v4];
}

@end
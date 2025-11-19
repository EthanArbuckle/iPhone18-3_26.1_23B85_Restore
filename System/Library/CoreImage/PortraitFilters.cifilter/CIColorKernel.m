@interface CIColorKernel
+ (id)PFKernelWithString:(id)a3;
@end

@implementation CIColorKernel

+ (id)PFKernelWithString:(id)a3
{
  if (qword_8CB18 != -1)
  {
    sub_4A170();
  }

  v4 = qword_8CB10;

  return [CIColorKernel kernelWithString:a3 fromMetalLibraryData:v4];
}

@end
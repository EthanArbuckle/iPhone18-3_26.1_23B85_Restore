@interface CIColorKernel
+ (id)PFKernelWithString:(id)string;
@end

@implementation CIColorKernel

+ (id)PFKernelWithString:(id)string
{
  if (qword_8CB18 != -1)
  {
    sub_4A170();
  }

  v4 = qword_8CB10;

  return [CIColorKernel kernelWithString:string fromMetalLibraryData:v4];
}

@end
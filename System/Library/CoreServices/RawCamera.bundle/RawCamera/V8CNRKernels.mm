@interface V8CNRKernels
+ (id)kernelWithName:(id)a3;
@end

@implementation V8CNRKernels

+ (id)kernelWithName:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_sharedKernels(RAWKernels, v4, v5, v6, v7);
  v11 = objc_msgSend_kernelWithName_group_(v8, v9, v3, @"V8CNR", v10);

  return v11;
}

@end
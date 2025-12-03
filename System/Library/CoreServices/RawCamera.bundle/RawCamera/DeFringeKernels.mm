@interface DeFringeKernels
+ (id)kernelWithName:(id)name;
@end

@implementation DeFringeKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_sharedKernels(RAWKernels, v4, v5, v6, v7);
  v11 = objc_msgSend_kernelWithName_group_(v8, v9, nameCopy, @"DeFringe", v10);

  return v11;
}

@end
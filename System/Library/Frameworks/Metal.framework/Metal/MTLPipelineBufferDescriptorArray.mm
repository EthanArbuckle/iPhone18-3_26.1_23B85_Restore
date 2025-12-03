@interface MTLPipelineBufferDescriptorArray
+ (MTLPipelineBufferDescriptorArray)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLPipelineBufferDescriptorArray

+ (MTLPipelineBufferDescriptorArray)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLPipelineBufferDescriptorArrayInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLPipelineBufferDescriptorArray;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end
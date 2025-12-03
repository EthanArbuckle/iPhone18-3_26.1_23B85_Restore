@interface MTLRenderPassSampleBufferAttachmentDescriptorArray
+ (MTLRenderPassSampleBufferAttachmentDescriptorArray)allocWithZone:(_NSZone *)zone;
@end

@implementation MTLRenderPassSampleBufferAttachmentDescriptorArray

+ (MTLRenderPassSampleBufferAttachmentDescriptorArray)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLRenderPassSampleBufferAttachmentDescriptorArrayInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLRenderPassSampleBufferAttachmentDescriptorArray;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end
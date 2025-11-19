@interface MTLBlitPassSampleBufferAttachmentDescriptorArray
+ (MTLBlitPassSampleBufferAttachmentDescriptorArray)allocWithZone:(_NSZone *)a3;
@end

@implementation MTLBlitPassSampleBufferAttachmentDescriptorArray

+ (MTLBlitPassSampleBufferAttachmentDescriptorArray)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLBlitPassSampleBufferAttachmentDescriptorArrayInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLBlitPassSampleBufferAttachmentDescriptorArray;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

@end
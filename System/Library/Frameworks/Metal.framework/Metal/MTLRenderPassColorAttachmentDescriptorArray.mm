@interface MTLRenderPassColorAttachmentDescriptorArray
+ (MTLRenderPassColorAttachmentDescriptorArray)alloc;
@end

@implementation MTLRenderPassColorAttachmentDescriptorArray

+ (MTLRenderPassColorAttachmentDescriptorArray)alloc
{
  if (objc_opt_class() == self)
  {

    return [MTLRenderPassColorAttachmentDescriptorArrayInternal alloc];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___MTLRenderPassColorAttachmentDescriptorArray;
    return objc_msgSendSuper2(&v4, sel_alloc);
  }
}

@end
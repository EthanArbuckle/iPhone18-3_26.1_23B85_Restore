@interface MTLRenderPipelineColorAttachmentDescriptorArray
+ (MTLRenderPipelineColorAttachmentDescriptorArray)allocWithZone:(_NSZone *)zone;
- (void)reset;
@end

@implementation MTLRenderPipelineColorAttachmentDescriptorArray

+ (MTLRenderPipelineColorAttachmentDescriptorArray)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLRenderPipelineColorAttachmentDescriptorArrayInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLRenderPipelineColorAttachmentDescriptorArray;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)reset
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(MTLRenderPipelineColorAttachmentDescriptorArray *)self reset];
  }
}

@end
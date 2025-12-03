@interface MTLRenderPipelineColorAttachmentDescriptor
+ (MTLRenderPipelineColorAttachmentDescriptor)allocWithZone:(_NSZone *)zone;
- (void)reset;
@end

@implementation MTLRenderPipelineColorAttachmentDescriptor

+ (MTLRenderPipelineColorAttachmentDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLRenderPipelineColorAttachmentDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLRenderPipelineColorAttachmentDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)reset
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(MTLRenderPipelineColorAttachmentDescriptor *)self reset];
  }
}

@end
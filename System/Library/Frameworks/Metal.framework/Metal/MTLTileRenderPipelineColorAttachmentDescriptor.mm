@interface MTLTileRenderPipelineColorAttachmentDescriptor
+ (MTLTileRenderPipelineColorAttachmentDescriptor)allocWithZone:(_NSZone *)zone;
- (void)reset;
@end

@implementation MTLTileRenderPipelineColorAttachmentDescriptor

+ (MTLTileRenderPipelineColorAttachmentDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLTileRenderPipelineColorAttachmentDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLTileRenderPipelineColorAttachmentDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)reset
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(MTLTileRenderPipelineColorAttachmentDescriptor *)self reset];
  }
}

@end
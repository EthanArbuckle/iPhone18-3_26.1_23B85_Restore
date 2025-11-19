@interface MTLTileRenderPipelineColorAttachmentDescriptor
+ (MTLTileRenderPipelineColorAttachmentDescriptor)allocWithZone:(_NSZone *)a3;
- (void)reset;
@end

@implementation MTLTileRenderPipelineColorAttachmentDescriptor

+ (MTLTileRenderPipelineColorAttachmentDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLTileRenderPipelineColorAttachmentDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLTileRenderPipelineColorAttachmentDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
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
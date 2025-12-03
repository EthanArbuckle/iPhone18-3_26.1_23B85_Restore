@interface MTLTileRenderPipelineColorAttachmentDescriptorArray
+ (MTLTileRenderPipelineColorAttachmentDescriptorArray)allocWithZone:(_NSZone *)zone;
- (void)reset;
@end

@implementation MTLTileRenderPipelineColorAttachmentDescriptorArray

+ (MTLTileRenderPipelineColorAttachmentDescriptorArray)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLTileRenderPipelineColorAttachmentDescriptorArray;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)reset
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(MTLTileRenderPipelineColorAttachmentDescriptorArray *)self reset];
  }
}

@end
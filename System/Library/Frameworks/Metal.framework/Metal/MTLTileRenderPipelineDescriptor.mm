@interface MTLTileRenderPipelineDescriptor
+ (MTLTileRenderPipelineDescriptor)allocWithZone:(_NSZone *)a3;
- (void)setRequiredThreadsPerThreadgroup:(id *)a3;
@end

@implementation MTLTileRenderPipelineDescriptor

+ (MTLTileRenderPipelineDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLTileRenderPipelineDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLTileRenderPipelineDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (void)setRequiredThreadsPerThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_requiredThreadsPerThreadgroup.depth = a3->var2;
  *&self->_requiredThreadsPerThreadgroup.width = v3;
}

@end
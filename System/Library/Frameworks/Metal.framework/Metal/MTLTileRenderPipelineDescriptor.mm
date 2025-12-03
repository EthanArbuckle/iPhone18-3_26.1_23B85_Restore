@interface MTLTileRenderPipelineDescriptor
+ (MTLTileRenderPipelineDescriptor)allocWithZone:(_NSZone *)zone;
- (void)setRequiredThreadsPerThreadgroup:(id *)threadgroup;
@end

@implementation MTLTileRenderPipelineDescriptor

+ (MTLTileRenderPipelineDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLTileRenderPipelineDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLTileRenderPipelineDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)setRequiredThreadsPerThreadgroup:(id *)threadgroup
{
  v3 = *&threadgroup->var0;
  self->_requiredThreadsPerThreadgroup.depth = threadgroup->var2;
  *&self->_requiredThreadsPerThreadgroup.width = v3;
}

@end
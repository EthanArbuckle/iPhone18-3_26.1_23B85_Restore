@interface MTLRenderPipelineColorAttachmentDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (MTLRenderPipelineColorAttachmentDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLRenderPipelineColorAttachmentDescriptorInternal

- (MTLRenderPipelineColorAttachmentDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLRenderPipelineColorAttachmentDescriptorInternal;
  v2 = [(MTLRenderPipelineColorAttachmentDescriptorInternal *)&v4 init];
  [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v2 reset];
  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLRenderPipelineColorAttachmentDescriptorInternal;
  [(MTLRenderPipelineColorAttachmentDescriptorInternal *)&v2 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && self->_private.var0.var1.var0 == *(equal + 1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 1) = self->_private.var0.var1.var0;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLRenderPipelineColorAttachmentDescriptorInternal;
  v6 = [(MTLRenderPipelineColorAttachmentDescriptorInternal *)&v8 description];
  return [v5 stringWithFormat:@"%@%@", v6, pipelineColorAttachmentFormattedDescription(description + 4, self)];
}

@end
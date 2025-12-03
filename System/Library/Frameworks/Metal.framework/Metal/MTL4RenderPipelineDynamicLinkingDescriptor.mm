@interface MTL4RenderPipelineDynamicLinkingDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4RenderPipelineDynamicLinkingDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)releaseLinkingDescriptors;
- (void)reset;
@end

@implementation MTL4RenderPipelineDynamicLinkingDescriptor

- (MTL4RenderPipelineDynamicLinkingDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTL4RenderPipelineDynamicLinkingDescriptor;
  v2 = [(MTL4RenderPipelineDynamicLinkingDescriptor *)&v4 init];
  [(MTL4RenderPipelineDynamicLinkingDescriptor *)v2 reset];
  return v2;
}

- (void)releaseLinkingDescriptors
{
  meshLinkingDescriptor = self->_meshLinkingDescriptor;
}

- (void)dealloc
{
  [(MTL4RenderPipelineDynamicLinkingDescriptor *)self releaseLinkingDescriptors];
  v3.receiver = self;
  v3.super_class = MTL4RenderPipelineDynamicLinkingDescriptor;
  [(MTL4RenderPipelineDynamicLinkingDescriptor *)&v3 dealloc];
}

- (void)reset
{
  [(MTL4RenderPipelineDynamicLinkingDescriptor *)self releaseLinkingDescriptors];
  self->_vertexLinkingDescriptor = objc_alloc_init(MTL4PipelineStageDynamicLinkingDescriptor);
  self->_fragmentLinkingDescriptor = objc_alloc_init(MTL4PipelineStageDynamicLinkingDescriptor);
  self->_tileLinkingDescriptor = objc_alloc_init(MTL4PipelineStageDynamicLinkingDescriptor);
  self->_objectLinkingDescriptor = objc_alloc_init(MTL4PipelineStageDynamicLinkingDescriptor);
  self->_meshLinkingDescriptor = objc_alloc_init(MTL4PipelineStageDynamicLinkingDescriptor);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[1] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_vertexLinkingDescriptor copyWithZone:zone];
  v5[2] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_fragmentLinkingDescriptor copyWithZone:zone];

  v5[3] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_tileLinkingDescriptor copyWithZone:zone];
  v5[4] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_objectLinkingDescriptor copyWithZone:zone];

  v5[5] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_meshLinkingDescriptor copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_16;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  vertexLinkingDescriptor = self->_vertexLinkingDescriptor;
  if (vertexLinkingDescriptor == *(equal + 1) || (v6 = [(MTL4PipelineStageDynamicLinkingDescriptor *)vertexLinkingDescriptor isEqual:?]))
  {
    fragmentLinkingDescriptor = self->_fragmentLinkingDescriptor;
    if (fragmentLinkingDescriptor == *(equal + 2) || (v6 = [(MTL4PipelineStageDynamicLinkingDescriptor *)fragmentLinkingDescriptor isEqual:?]))
    {
      tileLinkingDescriptor = self->_tileLinkingDescriptor;
      if (tileLinkingDescriptor == *(equal + 3) || (v6 = [(MTL4PipelineStageDynamicLinkingDescriptor *)tileLinkingDescriptor isEqual:?]))
      {
        objectLinkingDescriptor = self->_objectLinkingDescriptor;
        if (objectLinkingDescriptor == *(equal + 4) || (v6 = [(MTL4PipelineStageDynamicLinkingDescriptor *)objectLinkingDescriptor isEqual:?]))
        {
          meshLinkingDescriptor = self->_meshLinkingDescriptor;
          if (meshLinkingDescriptor != *(equal + 5))
          {

            LOBYTE(v6) = [(MTL4PipelineStageDynamicLinkingDescriptor *)meshLinkingDescriptor isEqual:?];
            return v6;
          }

LABEL_16:
          LOBYTE(v6) = 1;
        }
      }
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v4, 0x28uLL);
  v4[0] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_vertexLinkingDescriptor hash];
  v4[1] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_fragmentLinkingDescriptor hash];
  v4[2] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_tileLinkingDescriptor hash];
  v4[3] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_objectLinkingDescriptor hash];
  v4[4] = [(MTL4PipelineStageDynamicLinkingDescriptor *)self->_meshLinkingDescriptor hash];
  return _MTLHashState(v4, 0x28uLL);
}

@end
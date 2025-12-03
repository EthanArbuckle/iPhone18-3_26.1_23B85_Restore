@interface MTL4PipelineDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4PipelineDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
@end

@implementation MTL4PipelineDescriptor

- (MTL4PipelineDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4PipelineDescriptor;
  result = [(MTL4PipelineDescriptor *)&v3 init];
  result->_forceResourceIndex = 0;
  result->_resourceIndex = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLabel:{-[MTL4PipelineDescriptor label](self, "label")}];
  [v4 setOptions:{-[MTL4PipelineDescriptor options](self, "options")}];
  *(v4 + 8) = self->_forceResourceIndex;
  *(v4 + 32) = self->_resourceIndex;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4PipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  options = self->_options;
  if (options == *(equal + 3) || (v6 = [(MTL4PipelineOptions *)options isEqual:?]) != 0)
  {
    label = self->_label;
    if (label == *(equal + 2) || (v6 = [(NSString *)label isEqual:?]) != 0)
    {
      if (*(equal + 8) == self->_forceResourceIndex)
      {
        LOBYTE(v6) = *(equal + 4) == self->_resourceIndex;
        return v6;
      }

LABEL_9:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v6, 0x20uLL);
  v6[0] = [(NSString *)self->_label hash];
  v3 = [(MTL4PipelineOptions *)self->_options hash];
  forceResourceIndex = self->_forceResourceIndex;
  v6[1] = v3;
  v6[2] = forceResourceIndex;
  v6[3] = self->_resourceIndex;
  return _MTLHashState(v6, 0x20uLL);
}

- (void)reset
{
  self->_label = 0;

  self->_forceResourceIndex = 0;
  self->_options = 0;
  self->_resourceIndex = 0;
}

@end
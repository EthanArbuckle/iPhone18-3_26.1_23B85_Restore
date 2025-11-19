@interface MTL4PipelineDataSetSerializerDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4PipelineDataSetSerializerDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MTL4PipelineDataSetSerializerDescriptor

- (MTL4PipelineDataSetSerializerDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4PipelineDataSetSerializerDescriptor;
  return [(MTL4PipelineDataSetSerializerDescriptor *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_configuration;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && *(a3 + 1) == self->_configuration;
}

@end
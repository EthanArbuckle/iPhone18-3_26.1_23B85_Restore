@interface MTL4PipelineDataSetSerializerDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4PipelineDataSetSerializerDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MTL4PipelineDataSetSerializerDescriptor

- (MTL4PipelineDataSetSerializerDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4PipelineDataSetSerializerDescriptor;
  return [(MTL4PipelineDataSetSerializerDescriptor *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_configuration;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && *(equal + 1) == self->_configuration;
}

@end
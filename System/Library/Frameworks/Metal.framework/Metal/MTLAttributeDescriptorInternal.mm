@interface MTLAttributeDescriptorInternal
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBufferIndex:(unint64_t)a3;
@end

@implementation MTLAttributeDescriptorInternal

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_vertexFormat;
  *(result + 2) = self->_offset;
  *(result + 3) = self->_bufferIndex;
  return result;
}

- (void)setBufferIndex:(unint64_t)a3
{
  if (a3 >= 0x1F)
  {
    [MTLAttributeDescriptorInternal setBufferIndex:];
  }

  self->_bufferIndex = a3;
}

@end
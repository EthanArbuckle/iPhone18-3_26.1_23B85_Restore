@interface MTLAttributeDescriptorInternal
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBufferIndex:(unint64_t)index;
@end

@implementation MTLAttributeDescriptorInternal

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_vertexFormat;
  *(result + 2) = self->_offset;
  *(result + 3) = self->_bufferIndex;
  return result;
}

- (void)setBufferIndex:(unint64_t)index
{
  if (index >= 0x1F)
  {
    [MTLAttributeDescriptorInternal setBufferIndex:];
  }

  self->_bufferIndex = index;
}

@end
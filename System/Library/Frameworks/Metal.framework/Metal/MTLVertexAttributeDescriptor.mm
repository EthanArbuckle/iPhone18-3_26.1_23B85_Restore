@interface MTLVertexAttributeDescriptor
+ (MTLVertexAttributeDescriptor)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation MTLVertexAttributeDescriptor

+ (MTLVertexAttributeDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLVertexAttributeDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLVertexAttributeDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  format = [(MTLVertexAttributeDescriptor *)self format];
  if (format != [equal format])
  {
    return 0;
  }

  offset = [(MTLVertexAttributeDescriptor *)self offset];
  if (offset != [equal offset])
  {
    return 0;
  }

  bufferIndex = [(MTLVertexAttributeDescriptor *)self bufferIndex];
  return bufferIndex == [equal bufferIndex];
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(MTLVertexAttributeDescriptor *)self format];
  v4[1] = [(MTLVertexAttributeDescriptor *)self offset];
  v4[2] = [(MTLVertexAttributeDescriptor *)self bufferIndex];
  return _MTLHashState(v4, 0x18uLL);
}

@end
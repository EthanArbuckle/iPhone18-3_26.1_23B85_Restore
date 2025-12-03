@interface MTLVertexBufferLayoutDescriptor
+ (MTLVertexBufferLayoutDescriptor)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation MTLVertexBufferLayoutDescriptor

+ (MTLVertexBufferLayoutDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLVertexBufferLayoutDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLVertexBufferLayoutDescriptor;
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

  stride = [(MTLVertexBufferLayoutDescriptor *)self stride];
  if (stride != [equal stride])
  {
    return 0;
  }

  stepFunction = [(MTLVertexBufferLayoutDescriptor *)self stepFunction];
  if (stepFunction != [equal stepFunction])
  {
    return 0;
  }

  stepRate = [(MTLVertexBufferLayoutDescriptor *)self stepRate];
  return stepRate == [equal stepRate];
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(MTLVertexBufferLayoutDescriptor *)self stride];
  v4[1] = [(MTLVertexBufferLayoutDescriptor *)self stepFunction];
  v4[2] = [(MTLVertexBufferLayoutDescriptor *)self stepRate];
  return _MTLHashState(v4, 0x18uLL);
}

@end
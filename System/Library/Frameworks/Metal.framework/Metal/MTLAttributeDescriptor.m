@interface MTLAttributeDescriptor
+ (MTLAttributeDescriptor)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation MTLAttributeDescriptor

+ (MTLAttributeDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLAttributeDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLAttributeDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    return 0;
  }

  v6 = [(MTLAttributeDescriptor *)self format];
  if (v6 != [a3 format])
  {
    return 0;
  }

  v7 = [(MTLAttributeDescriptor *)self offset];
  if (v7 != [a3 offset])
  {
    return 0;
  }

  v8 = [(MTLAttributeDescriptor *)self bufferIndex];
  return v8 == [a3 bufferIndex];
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(MTLAttributeDescriptor *)self format];
  v4[1] = [(MTLAttributeDescriptor *)self offset];
  v4[2] = [(MTLAttributeDescriptor *)self bufferIndex];
  return _MTLHashState(v4, 0x18uLL);
}

@end
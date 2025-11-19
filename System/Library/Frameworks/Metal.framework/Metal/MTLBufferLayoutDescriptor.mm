@interface MTLBufferLayoutDescriptor
+ (MTLBufferLayoutDescriptor)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation MTLBufferLayoutDescriptor

+ (MTLBufferLayoutDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLBufferLayoutDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLBufferLayoutDescriptor;
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

  v6 = [(MTLBufferLayoutDescriptor *)self stride];
  if (v6 != [a3 stride])
  {
    return 0;
  }

  v7 = [(MTLBufferLayoutDescriptor *)self stepFunction];
  if (v7 != [a3 stepFunction])
  {
    return 0;
  }

  v8 = [(MTLBufferLayoutDescriptor *)self stepRate];
  return v8 == [a3 stepRate];
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(MTLBufferLayoutDescriptor *)self stride];
  v4[1] = [(MTLBufferLayoutDescriptor *)self stepFunction];
  v4[2] = [(MTLBufferLayoutDescriptor *)self stepRate];
  return _MTLHashState(v4, 0x18uLL);
}

@end
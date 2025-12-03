@interface MTLVertexDescriptor
+ (MTLVertexDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLVertexDescriptor)vertexDescriptor;
@end

@implementation MTLVertexDescriptor

+ (MTLVertexDescriptor)vertexDescriptor
{
  v2 = objc_alloc_init(MTLVertexDescriptorInternal);

  return v2;
}

+ (MTLVertexDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLVertexDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLVertexDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end
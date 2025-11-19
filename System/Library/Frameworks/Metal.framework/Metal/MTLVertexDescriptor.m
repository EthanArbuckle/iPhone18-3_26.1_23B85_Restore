@interface MTLVertexDescriptor
+ (MTLVertexDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLVertexDescriptor)vertexDescriptor;
@end

@implementation MTLVertexDescriptor

+ (MTLVertexDescriptor)vertexDescriptor
{
  v2 = objc_alloc_init(MTLVertexDescriptorInternal);

  return v2;
}

+ (MTLVertexDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLVertexDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLVertexDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

@end
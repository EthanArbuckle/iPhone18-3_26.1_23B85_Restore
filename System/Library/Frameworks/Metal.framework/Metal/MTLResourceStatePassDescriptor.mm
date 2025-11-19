@interface MTLResourceStatePassDescriptor
+ (MTLResourceStatePassDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLResourceStatePassDescriptor)resourceStatePassDescriptor;
@end

@implementation MTLResourceStatePassDescriptor

+ (MTLResourceStatePassDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLResourceStatePassDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLResourceStatePassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (MTLResourceStatePassDescriptor)resourceStatePassDescriptor
{
  v2 = objc_alloc_init(MTLResourceStatePassDescriptorInternal);

  return v2;
}

@end
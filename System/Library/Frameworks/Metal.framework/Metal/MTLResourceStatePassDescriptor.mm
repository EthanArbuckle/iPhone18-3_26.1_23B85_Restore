@interface MTLResourceStatePassDescriptor
+ (MTLResourceStatePassDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLResourceStatePassDescriptor)resourceStatePassDescriptor;
@end

@implementation MTLResourceStatePassDescriptor

+ (MTLResourceStatePassDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLResourceStatePassDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLResourceStatePassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (MTLResourceStatePassDescriptor)resourceStatePassDescriptor
{
  v2 = objc_alloc_init(MTLResourceStatePassDescriptorInternal);

  return v2;
}

@end
@interface MTLCommandQueueDescriptor
+ (MTLCommandQueueDescriptor)allocWithZone:(_NSZone *)zone;
+ (id)commandQueueDescriptor;
@end

@implementation MTLCommandQueueDescriptor

+ (MTLCommandQueueDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLCommandQueueDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLCommandQueueDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (id)commandQueueDescriptor
{
  v2 = objc_alloc_init(MTLCommandQueueDescriptorInternal);

  return v2;
}

@end
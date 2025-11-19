@interface MTLCommandQueueDescriptor
+ (MTLCommandQueueDescriptor)allocWithZone:(_NSZone *)a3;
+ (id)commandQueueDescriptor;
@end

@implementation MTLCommandQueueDescriptor

+ (MTLCommandQueueDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLCommandQueueDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLCommandQueueDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (id)commandQueueDescriptor
{
  v2 = objc_alloc_init(MTLCommandQueueDescriptorInternal);

  return v2;
}

@end
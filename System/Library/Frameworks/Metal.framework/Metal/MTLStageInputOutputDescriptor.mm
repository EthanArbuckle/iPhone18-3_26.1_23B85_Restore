@interface MTLStageInputOutputDescriptor
+ (MTLStageInputOutputDescriptor)allocWithZone:(_NSZone *)zone;
+ (MTLStageInputOutputDescriptor)stageInputOutputDescriptor;
@end

@implementation MTLStageInputOutputDescriptor

+ (MTLStageInputOutputDescriptor)stageInputOutputDescriptor
{
  v2 = objc_alloc_init(MTLStageInputOutputDescriptorInternal);

  return v2;
}

+ (MTLStageInputOutputDescriptor)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [MTLStageInputOutputDescriptorInternal allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MTLStageInputOutputDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end
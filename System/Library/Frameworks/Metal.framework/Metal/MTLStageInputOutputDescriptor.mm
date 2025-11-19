@interface MTLStageInputOutputDescriptor
+ (MTLStageInputOutputDescriptor)allocWithZone:(_NSZone *)a3;
+ (MTLStageInputOutputDescriptor)stageInputOutputDescriptor;
@end

@implementation MTLStageInputOutputDescriptor

+ (MTLStageInputOutputDescriptor)stageInputOutputDescriptor
{
  v2 = objc_alloc_init(MTLStageInputOutputDescriptorInternal);

  return v2;
}

+ (MTLStageInputOutputDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLStageInputOutputDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLStageInputOutputDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

@end
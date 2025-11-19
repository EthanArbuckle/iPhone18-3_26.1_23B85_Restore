@interface NSKVOUsesBaseClassObservationInfoImplementationForClass
@end

@implementation NSKVOUsesBaseClassObservationInfoImplementationForClass

IMP ___NSKVOUsesBaseClassObservationInfoImplementationForClass_block_invoke()
{
  v0 = objc_opt_class();
  _MergedGlobals_101 = class_getMethodImplementation(v0, sel_observationInfo);
  v1 = objc_opt_class();
  result = class_getMethodImplementation(v1, sel_setObservationInfo_);
  qword_1ED43F680 = result;
  return result;
}

@end
@interface NSKVONotifyingCreateInfoWithOriginalClass
@end

@implementation NSKVONotifyingCreateInfoWithOriginalClass

os_log_t ___NSKVONotifyingCreateInfoWithOriginalClass_block_invoke()
{
  result = os_log_create("com.apple.foundation.kvo", "general");
  qword_1ED43F690 = result;
  return result;
}

IMP ___NSKVONotifyingCreateInfoWithOriginalClass_block_invoke_18()
{
  v0 = objc_opt_class();
  qword_1ED43F6A8 = class_getMethodImplementation(v0, sel_willChangeValueForKey_);
  v1 = objc_opt_class();
  result = class_getMethodImplementation(v1, sel_didChangeValueForKey_);
  qword_1ED43F6B0 = result;
  return result;
}

@end
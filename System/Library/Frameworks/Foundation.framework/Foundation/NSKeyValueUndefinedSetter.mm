@interface NSKeyValueUndefinedSetter
- (NSKeyValueUndefinedSetter)initWithContainerClassID:(id)a3 key:(id)a4 containerIsa:(Class)a5;
@end

@implementation NSKeyValueUndefinedSetter

- (NSKeyValueUndefinedSetter)initWithContainerClassID:(id)a3 key:(id)a4 containerIsa:(Class)a5
{
  v15 = *MEMORY[0x1E69E9840];
  InstanceMethod = class_getInstanceMethod(a5, sel_setValue_forUndefinedKey_);
  Implementation = method_getImplementation(InstanceMethod);
  if (_NSKVONotifyingMutatorsShouldNotifyForIsaAndKey(a5, a4))
  {
    return [(NSKeyValueAccessor *)&v13 initWithContainerClassID:a3 key:a4 implementation:_NSSetValueAndNotifyForUndefinedKey selector:sel_setValue_forUndefinedKey_ extraArguments:&v14 count:2, v12.receiver, v12.super_class, self, NSKeyValueUndefinedSetter, a4, Implementation, 0, v15];
  }

  else
  {
    return [(NSKeyValueAccessor *)&v12 initWithContainerClassID:a3 key:a4 implementation:Implementation selector:sel_setValue_forUndefinedKey_ extraArguments:&v14 count:1, self, NSKeyValueUndefinedSetter, v13.receiver, v13.super_class, a4, 0, 0, v15];
  }
}

@end
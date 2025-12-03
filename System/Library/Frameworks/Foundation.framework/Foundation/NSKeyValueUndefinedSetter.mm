@interface NSKeyValueUndefinedSetter
- (NSKeyValueUndefinedSetter)initWithContainerClassID:(id)d key:(id)key containerIsa:(Class)isa;
@end

@implementation NSKeyValueUndefinedSetter

- (NSKeyValueUndefinedSetter)initWithContainerClassID:(id)d key:(id)key containerIsa:(Class)isa
{
  v15 = *MEMORY[0x1E69E9840];
  InstanceMethod = class_getInstanceMethod(isa, sel_setValue_forUndefinedKey_);
  Implementation = method_getImplementation(InstanceMethod);
  if (_NSKVONotifyingMutatorsShouldNotifyForIsaAndKey(isa, key))
  {
    return [(NSKeyValueAccessor *)&v13 initWithContainerClassID:d key:key implementation:_NSSetValueAndNotifyForUndefinedKey selector:sel_setValue_forUndefinedKey_ extraArguments:&v14 count:2, v12.receiver, v12.super_class, self, NSKeyValueUndefinedSetter, key, Implementation, 0, v15];
  }

  else
  {
    return [(NSKeyValueAccessor *)&v12 initWithContainerClassID:d key:key implementation:Implementation selector:sel_setValue_forUndefinedKey_ extraArguments:&v14 count:1, self, NSKeyValueUndefinedSetter, v13.receiver, v13.super_class, key, 0, 0, v15];
  }
}

@end
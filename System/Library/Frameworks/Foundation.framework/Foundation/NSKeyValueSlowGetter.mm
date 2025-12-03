@interface NSKeyValueSlowGetter
- (NSKeyValueSlowGetter)initWithContainerClassID:(id)d key:(id)key containerIsa:(Class)isa;
@end

@implementation NSKeyValueSlowGetter

- (NSKeyValueSlowGetter)initWithContainerClassID:(id)d key:(id)key containerIsa:(Class)isa
{
  v12[3] = *MEMORY[0x1E69E9840];
  InstanceMethod = class_getInstanceMethod(isa, sel_valueForKey_);
  Implementation = method_getImplementation(InstanceMethod);
  v12[1] = 0;
  v12[2] = 0;
  v11.receiver = self;
  v11.super_class = NSKeyValueSlowGetter;
  v12[0] = key;
  return [(NSKeyValueAccessor *)&v11 initWithContainerClassID:d key:key implementation:Implementation selector:sel_valueForKey_ extraArguments:v12 count:1];
}

@end
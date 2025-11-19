@interface GCControllerInputComponentDescription
@end

@implementation GCControllerInputComponentDescription

void __56___GCControllerInputComponentDescription_initWithCoder___block_invoke()
{
  v4 = [MEMORY[0x1E695DFA8] set];
  v0 = _GCGamepadEventSourceDescription_Classes();
  [v4 unionSet:v0];

  v1 = _GCCollectionEventSourceDescription_Classes();
  [v4 unionSet:v1];

  [v4 addObject:objc_opt_class()];
  v2 = [v4 copy];
  v3 = initWithCoder__BindingClasses_0;
  initWithCoder__BindingClasses_0 = v2;
}

id __60___GCControllerInputComponentDescription_createWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 makeParameters];

  return v2;
}

@end
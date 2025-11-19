@interface GCControllerComponentDescription
@end

@implementation GCControllerComponentDescription

void __51___GCControllerComponentDescription_initWithCoder___block_invoke()
{
  v7 = [MEMORY[0x1E695DFA8] set];
  [v7 addObject:objc_opt_class()];
  v0 = _GCHIDEventSourceDescription_Classes();
  [v7 unionSet:v0];

  v1 = _GCGamepadEventSourceDescription_Classes();
  [v7 unionSet:v1];

  v2 = _GCKeyboardEventSourceDescription_Classes();
  [v7 unionSet:v2];

  v3 = _GCMotionEventSourceDescription_Classes();
  [v7 unionSet:v3];

  v4 = _GCCollectionEventSourceDescription_Classes();
  [v7 unionSet:v4];

  [v7 addObject:objc_opt_class()];
  v5 = [v7 copy];
  v6 = initWithCoder__BindingClasses;
  initWithCoder__BindingClasses = v5;
}

void ___GCControllerComponentDescription_Classes_block_invoke()
{
  v13 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v13 initWithObjects:{v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = _GCControllerComponentDescription_Classes_Classes;
  _GCControllerComponentDescription_Classes_Classes = v10;
}

@end
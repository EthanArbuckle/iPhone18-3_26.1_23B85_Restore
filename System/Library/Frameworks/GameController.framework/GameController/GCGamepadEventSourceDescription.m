@interface GCGamepadEventSourceDescription
@end

@implementation GCGamepadEventSourceDescription

void ___GCGamepadEventSourceDescription_Classes_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = _GCGamepadEventSourceDescription_Classes_Classes;
  _GCGamepadEventSourceDescription_Classes_Classes = v3;
}

@end
@interface NSExtensionDummyExtensionContext
@end

@implementation NSExtensionDummyExtensionContext

uint64_t ___NSExtensionDummyExtensionContext_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696ABD8]);
  _NSExtensionDummyExtensionContext_context = [v0 initWithInputItems:MEMORY[0x1E695E0F0] contextUUID:0];

  return MEMORY[0x1EEE66BB8]();
}

@end
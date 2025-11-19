@interface PerformTestingSwizzles
@end

@implementation PerformTestingSwizzles

uint64_t ___PerformTestingSwizzles_block_invoke()
{
  [MEMORY[0x1E69DCEB0] _performSwiftUITestingOverrides];
  v0 = MEMORY[0x1E69DC7F0];

  return [v0 _performSwiftUITestingOverrides];
}

@end
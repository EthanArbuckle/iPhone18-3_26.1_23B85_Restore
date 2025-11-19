@interface GPU
@end

@implementation GPU

CFDictionaryRef __get_disable_GPU_provider_options_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGImagePreferGPUForColorConversion";
  values = *MEMORY[0x1E695E4C0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  get_disable_GPU_provider_options_options_singleton = result;
  return result;
}

@end
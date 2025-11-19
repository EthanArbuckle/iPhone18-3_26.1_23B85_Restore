@interface IOHIDLoadConnectionPluginBundles
@end

@implementation IOHIDLoadConnectionPluginBundles

void ___IOHIDLoadConnectionPluginBundles_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1E74A9B20;
  v0 = CFArrayCreate(*MEMORY[0x1E695E480], &v2, 2, MEMORY[0x1E695E9C0]);
  __hidConnectionPluginBundles = __IOHIDPlugInLoadBundles(v0);
  CFRelease(v0);
  v1 = *MEMORY[0x1E69E9840];
}

@end
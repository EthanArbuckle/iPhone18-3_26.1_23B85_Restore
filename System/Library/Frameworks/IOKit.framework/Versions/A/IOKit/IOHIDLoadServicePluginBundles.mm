@interface IOHIDLoadServicePluginBundles
@end

@implementation IOHIDLoadServicePluginBundles

void ___IOHIDLoadServicePluginBundles_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1E74A9AE8;
  v3 = @"/usr/appleinternal/lib/HIDPlugins/ServicePlugins";
  v0 = CFArrayCreate(*MEMORY[0x1E695E480], &v2, 3, MEMORY[0x1E695E9C0]);
  __hidServicePluginBundles = __IOHIDPlugInLoadBundles(v0);
  CFRelease(v0);
  v1 = *MEMORY[0x1E69E9840];
}

@end
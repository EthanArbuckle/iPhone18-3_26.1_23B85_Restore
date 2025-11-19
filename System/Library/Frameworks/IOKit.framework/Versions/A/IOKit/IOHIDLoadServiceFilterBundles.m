@interface IOHIDLoadServiceFilterBundles
@end

@implementation IOHIDLoadServiceFilterBundles

void ___IOHIDLoadServiceFilterBundles_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1E74A9AA8;
  v2[1] = *off_1E74A9AB8;
  v0 = CFArrayCreate(*MEMORY[0x1E695E480], v2, 4, MEMORY[0x1E695E9C0]);
  __hidServiceFilterBundles = __IOHIDPlugInLoadBundles(v0);
  CFRelease(v0);
  v1 = *MEMORY[0x1E69E9840];
}

@end
@interface C3DDeformerStackCFCopyDebugDescription
@end

@implementation C3DDeformerStackCFCopyDebugDescription

void ___C3DDeformerStackCFCopyDebugDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  CFStringAppendFormat(v4, 0, @"  %@: %p\n", v6, a3);
}

void ___C3DDeformerStackCFCopyDebugDescription_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  CFStringAppendFormat(v4, 0, @"  %@: %p\n", v6, a3);
}

@end
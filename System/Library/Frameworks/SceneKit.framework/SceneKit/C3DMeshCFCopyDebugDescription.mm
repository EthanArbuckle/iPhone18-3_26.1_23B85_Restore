@interface C3DMeshCFCopyDebugDescription
@end

@implementation C3DMeshCFCopyDebugDescription

void ___C3DMeshCFCopyDebugDescription_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = C3DMeshSourceSemanticToSemanticString(a3);
  if (a4 < 1)
  {
    CFStringAppendFormat(v8, 0, @"  source %@ (channel:%d) : %@\n", v9, a5, a2);
  }

  else
  {
    CFStringAppendFormat(v8, 0, @"  source %@%d (channel:%d) : %@\n", v9, a4, a5, a2);
  }
}

void ___C3DMeshCFCopyDebugDescription_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = C3DMeshSourceSemanticToSemanticString(a3);
  if (a4 < 1)
  {
    CFStringAppendFormat(v6, 0, @"  renderable source %@: %@\n", v7, a2);
  }

  else
  {
    CFStringAppendFormat(v6, 0, @"  renderable source %@%d: %@\n", v7, a4, a2);
  }
}

@end
@interface NUIIsDebuggerAttached
@end

@implementation NUIIsDebuggerAttached

uint64_t ___NUIIsDebuggerAttached_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  *v4 = 0xE00000001;
  v5 = 1;
  v6 = getpid();
  v1 = 648;
  result = sysctl(v4, 4u, v2, &v1, 0, 0);
  if (!result)
  {
    _MergedGlobals = (v3 & 0x800) != 0;
  }

  return result;
}

@end
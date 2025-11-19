@interface NEIPSecDBInitialize
@end

@implementation NEIPSecDBInitialize

uint64_t ____NEIPSecDBInitialize_block_invoke()
{
  g_IPSecDBSessions = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  result = _CFRuntimeRegisterClass();
  __kNEIPSecDBTypeID = result;
  return result;
}

@end
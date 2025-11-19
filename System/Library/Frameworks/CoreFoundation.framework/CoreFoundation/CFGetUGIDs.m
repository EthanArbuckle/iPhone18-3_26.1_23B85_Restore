@interface CFGetUGIDs
@end

@implementation CFGetUGIDs

uint64_t ____CFGetUGIDs_block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (pthread_getugid_np(v2, v2 + 1))
  {
    LODWORD(v2[0]) = geteuid();
    HIDWORD(v2[0]) = getegid();
  }

  result = v2[0];
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ____CFGetUGIDs_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  __CFGetUGIDs_cachedUGIDs = result;
  return result;
}

@end
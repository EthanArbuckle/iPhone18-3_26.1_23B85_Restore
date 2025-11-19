@interface SFWebProcessPlugIn
@end

@implementation SFWebProcessPlugIn

FILE *__61___SFWebProcessPlugIn_webProcessPlugIn_initializeWithObject___block_invoke(uint64_t a1)
{
  result = fopen([*(a1 + 40) fileSystemRepresentation], "a");
  *(*(a1 + 32) + 24) = result;
  return result;
}

@end
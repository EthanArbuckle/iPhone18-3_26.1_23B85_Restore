@interface NSData
@end

@implementation NSData

uint64_t __32__NSData_GZip__dataGZipDeflated__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(*(*(a1 + 48) + 8) + 32) = a2;
  *(*(*(a1 + 48) + 8) + 40) = a4;
  v5 = *(*(a1 + 48) + 8);
  do
  {
    do
    {
      [*(a1 + 32) _resizeOutputBuffer:*(a1 + 40) forStream:v5 + 32];
      result = deflate((*(*(a1 + 48) + 8) + 32), 0);
      v5 = *(*(a1 + 48) + 8);
    }

    while (!*(v5 + 64));
  }

  while (*(v5 + 40));
  return result;
}

@end
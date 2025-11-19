@interface NSMutableData
@end

@implementation NSMutableData

uint64_t __84__NSMutableData_NSMutableDataCompression___compressUsingCompressionAlgorithm_error___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    return [*(result + 32) setData:a2];
  }

  return result;
}

uint64_t __86__NSMutableData_NSMutableDataCompression___decompressUsingCompressionAlgorithm_error___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    return [*(result + 32) setData:a2];
  }

  return result;
}

@end
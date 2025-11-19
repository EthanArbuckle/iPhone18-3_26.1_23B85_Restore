@interface UTGetActiveTypeForIdentifier
@end

@implementation UTGetActiveTypeForIdentifier

uint64_t *___UTGetActiveTypeForIdentifier_block_invoke(uint64_t a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>((a2 + 48), (a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(result + 5);
  }

  return result;
}

uint64_t ___UTGetActiveTypeForIdentifier_block_invoke_2(uint64_t result, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  if (*(a4 + 8))
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *(*(*(result + 40) + 8) + 24) = a4;
    *a5 = 1;
  }

  return result;
}

@end
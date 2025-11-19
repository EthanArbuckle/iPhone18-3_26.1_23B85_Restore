@interface UTDynamicTypeRecord
@end

@implementation UTDynamicTypeRecord

uint64_t __48___UTDynamicTypeRecord_isChildOfTypeIdentifier___block_invoke(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  result = UTTypeEqual(*(a1 + 32), a2);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t *__113___UTDynamicTypeRecord__enumerateRelatedTypeUnitsOrDynamicIdsWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>((*(a1[5] + 8) + 48), &v11);
  if (!result)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>((*(a1[5] + 8) + 48), &v11);
    v7 = a1[4];
    v8[0] = 0;
    v8[1] = a4 + 1;
    v9 = v11;
    v10 = 1;
    return (*(v7 + 16))(v7, v8, *(a1[6] + 8) + 24);
  }

  return result;
}

@end
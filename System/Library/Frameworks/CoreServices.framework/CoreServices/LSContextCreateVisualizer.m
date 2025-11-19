@interface LSContextCreateVisualizer
@end

@implementation LSContextCreateVisualizer

void ___LSContextCreateVisualizer_block_invoke(uint64_t a1, id *a2)
{
  if (a2)
  {

    JUMPOUT(0x1865D6250);
  }
}

void ___LSContextCreateVisualizer_block_invoke_17(uint64_t a1, unsigned int a2, void *a3)
{
  v9 = a2;
  std::vector<unsigned int>::push_back[abi:nn200100]((*(*(a1 + 32) + 8) + 48), &v9);
  v5 = [a3 copy];
  v6 = *(*(a1 + 40) + 8);
  v10 = &v9;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,NSString * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v6 + 48), &v9);
  v8 = v7[3];
  v7[3] = v5;
}

id ___LSContextCreateVisualizer_block_invoke_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a1 + 32))(*(a1 + 64), a3, a4);

  return v4;
}

id ___LSContextCreateVisualizer_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v9 = [MEMORY[0x1E6999190] newWithStore:-[_LSDatabase store](**(a1 + 40)) buffer:v8];
  [v9 setVisualizer:v7];
  v10 = [v7 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"Options"];
  v12 = [v11 unsignedLongLongValue];

  [v9 setElidesEmptyValues:(v12 & 8) == 0];
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = [v9 link:a3 unit:a4];
    [v9 write:v13 string:v14];
  }

  if ((*(a1 + 56))(*(a1 + 40), a3, a4, v9))
  {
    v15 = [v8 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
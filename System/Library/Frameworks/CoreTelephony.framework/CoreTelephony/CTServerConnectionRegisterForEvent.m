@interface CTServerConnectionRegisterForEvent
@end

@implementation CTServerConnectionRegisterForEvent

void ___CTServerConnectionRegisterForEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(__CFDictionary const*)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(__CFDictionary const*)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(__CFDictionary const*)>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(*(a1 + 48) + 32, (a1 + 56));
  v5 = v4[5];
  v4[5] = v3;
  if (v5)
  {
    _Block_release(v5);
  }
}

@end
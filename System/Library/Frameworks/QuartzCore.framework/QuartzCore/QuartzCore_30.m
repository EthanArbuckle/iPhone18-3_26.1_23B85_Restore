uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 120);
  if (v5)
  {
    v6 = result;
    result = ns_object_from_render_object(a5, v5, 0);
    if (result)
    {
      v7 = result;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toValue"];

      return [v6 setValue:v7 forKey:v8];
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 112);
  if (v5)
  {
    v6 = result;
    result = ns_object_from_render_object(a5, v5, 0);
    if (result)
    {
      v7 = result;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"fromValue"];

      return [v6 setValue:v7 forKey:v8];
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 128);
  if (v5)
  {
    v6 = result;
    result = ns_object_from_render_object(a5, v5, 0);
    if (result)
    {
      v7 = result;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"byValue"];

      return [v6 setValue:v7 forKey:v8];
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v3 = CA::Render::key_path_copy_string(*(a2 + 96), a2);
  if (v3)
  {
    v4 = v3;
    [a1 setKeyPath:v3];

    CFRelease(v4);
  }
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_(void *a1, const char *a2, double a3, double a4, double a5)
{
  LODWORD(a3) = *(a2 + 6);
  LODWORD(a4) = *(a2 + 7);
  LODWORD(a5) = *(a2 + 8);
  return [a1 setPreferredFrameRateRange:{a3, a4, a5}];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:*(a2 + 88)];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"highFrameRateReason"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 9) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"additive"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

CAValueFunction *_ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = *(a2 + 104);
  result = id_from_value<void,CA::Render::Function *>(v6);
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"valueFunction"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

CAValueFunction *id_from_value<void,CA::Render::Function *>(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  if ((*(*v2 + 96))(v2) != 1)
  {
    __assert_rtn("id_from_value", "CAReverseSerialization.mm", 475, "false");
  }

  v3 = (*(**a1 + 120))();
  if (v3 > 0xC || !*off_1E6DED148[v3])
  {
    return 0;
  }

  return [CAValueFunction functionWithName:?];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 15) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t _ZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEv()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v4, 0x40uLL);
  snake_case_to_camel_case("begin_time", 10, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 853, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("speed", 5, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 854, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("duration", 8, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 855, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("time_offset", 11, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 856, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("autoreverses", 12, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 857, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("fill_mode", 9, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 867, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("repeatDuration", 14, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 871, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("repeatCount", 11, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 875, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::SpringAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&_ZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavE10timing_map, v4);
  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v4);
}

void sub_183C731D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void *_ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    if ((*(v2 + 13) & 8) == 0)
    {
      v3 = *(v2 + 24);
      *&v3 = v3;
      return [a1 setRepeatCount:v3];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    if ((*(v2 + 13) & 8) != 0)
    {
      return [a1 setRepeatDuration:*(v2 + 24)];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    v3 = *(v2 + 12);
    if ((v3 & 0x200) != 0)
    {
      if ((v3 & 0x400) != 0)
      {
        v4 = &kCAFillModeBoth;
      }

      else
      {
        v4 = &kCAFillModeForwards;
      }
    }

    else
    {
      if ((v3 & 0x400) == 0)
      {
        return a1;
      }

      v4 = &kCAFillModeBackwards;
    }

    return [a1 setFillMode:*v4];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setAutoreverses:(*(v2 + 12) >> 8) & 1];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setTimeOffset:*(v2 + 48)];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setDuration:*(v2 + 32)];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2, double a3)
{
  v3 = *(a2 + 5);
  if (v3)
  {
    LODWORD(a3) = *(v3 + 16);
    return [a1 setSpeed:a3];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render15SpringAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setBeginTime:*(v2 + 40)];
  }

  return a1;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = *(a2 + 24);
  v6 = v3;
  result = [MEMORY[0x1E696B098] valueWithBytes:&v5 objCType:"{CAFrameRateRange=fff}"];
  if (result)
  {
    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "preferredFrameRateRange")}];
  }

  return result;
}

CAMediaTimingFunction *_ZZZ20get_setters_for_typeIN2CA6Render15SpringAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(CAMediaTimingFunction *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v6 = result;
    result = nsobject_from_values<CAMediaTimingFunction *,double>((v4 + 24), *(v4 + 16));
    if (result)
    {
      v7 = result;
      if (*(a4 + 23) >= 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = *a4;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

      return [(CAMediaTimingFunction *)v6 setValue:v7 forKey:v9];
    }
  }

  return result;
}

CAMediaTimingFunction *nsobject_from_values<CAMediaTimingFunction *,double>(double *a1, unsigned int a2)
{
  if (a2 <= 3)
  {
    __assert_rtn("nsobject_from_values", "CAReverseSerialization.mm", 283, "count >= 4");
  }

  v3 = *a1;
  v4 = a1[1];
  *&v3 = *a1;
  *&v4 = v4;
  v5 = a1[2];
  v6 = a1[3];
  *&v5 = v5;
  *&v6 = v6;

  return [CAMediaTimingFunction functionWithControlPoints:v3];
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE_clEv()
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  snake_case_to_camel_case("timing_function", 15, v8);
  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1192, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v8, "preferredFrameRateRange");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), v8))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1193, "Duplicated Entry !! && map.map.find (preferredFrameRateRange) == map.map.end ()");
  }

  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v8, "preferredFrameRateRange");
  __p[0] = v8;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, v8)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  snake_case_to_camel_case("removed_on_completion", 21, v8);
  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1196, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if ((atomic_load_explicit(&_ZGVZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavE10timing_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavE10timing_map))
  {
    _ZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEv();
    __cxa_guard_release(&_ZGVZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavE10timing_map);
  }

  *v8 = 0u;
  v9 = 0u;
  v10 = dword_1EA8524F0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v8, qword_1EA8524D8);
  v0 = qword_1EA8524E0;
  if (qword_1EA8524E0)
  {
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(v8, (v0 + 2));
      v0 = *v0;
    }

    while (v0);
  }

  for (i = v9; i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(v6, (i + 2));
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&_ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE13animation_map, v6);
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v8);
  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v6);
}

void sub_183C73838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_guard_abort(&_ZGVZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavE10timing_map);
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEv()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  for (i = qword_1EA852450; i; i = *i)
  {
    v1 = *(i + 39);
    if (v1 >= 0)
    {
      v2 = (i + 16);
    }

    else
    {
      v2 = *(i + 16);
    }

    if (v1 >= 0)
    {
      v3 = *(i + 39);
    }

    else
    {
      v3 = *(i + 24);
    }

    v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
    v5 = v4;
    v6 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_25;
    }

    v7 = vcnt_s8(*(&v19 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v19 + 1))
      {
        v9 = v4 % *(&v19 + 1);
      }
    }

    else
    {
      v9 = (*(&v19 + 1) - 1) & v4;
    }

    v10 = *(v19 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_25;
      }

LABEL_24:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, (i + 16)))
    {
      goto LABEL_24;
    }
  }

  snake_case_to_camel_case("discretizes_time", 16, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1211, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "valueFunction");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1213, "Duplicated Entry !! && map.map.find (valueFunction) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "valueFunction");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "additive");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1214, "Duplicated Entry !! && map.map.find (additive) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "additive");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "highFrameRateReason");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1215, "Duplicated Entry !! && map.map.find (highFrameRateReason) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "highFrameRateReason");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  snake_case_to_camel_case("preferredFrameRateRangeMinimum", 30, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1222, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangeMaximum");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1223, "Duplicated Entry !! && map.map.find (preferredFrameRateRangeMaximum) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangeMaximum");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangePreferred");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1224, "Duplicated Entry !! && map.map.find (preferredFrameRateRangePreferred) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangePreferred");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  snake_case_to_camel_case("cumulative", 10, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1228, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("property", 8, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1235, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "beginTimeMode");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1239, "Duplicated Entry !! && map.map.find (beginTimeMode) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "beginTimeMode");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "delegate");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1240, "Duplicated Entry !! && map.map.find (delegate) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "delegate");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "keyPath");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1241, "Duplicated Entry !! && map.map.find (keyPath) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "keyPath");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "frameInterval");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1245, "Duplicated Entry !! && map.map.find (frameInterval) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "frameInterval");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE11_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFramesPerSecond");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1246, "Duplicated Entry !! && map.map.find (preferredFramesPerSecond) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFramesPerSecond");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE12_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v13 = v19;
  v19 = 0uLL;
  _ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE17property_anim_map = v13;
  xmmword_1EA852480 = v20;
  dword_1EA852490 = v21;
  if (*(&v20 + 1))
  {
    v14 = *(v20 + 8);
    if ((*(&v13 + 1) & (*(&v13 + 1) - 1)) != 0)
    {
      if (v14 >= *(&v13 + 1))
      {
        v14 %= *(&v13 + 1);
      }
    }

    else
    {
      v14 &= *(&v13 + 1) - 1;
    }

    *(v13 + 8 * v14) = &xmmword_1EA852480;
    v20 = 0uLL;
  }

  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&v19);
}

void sub_183C744BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEv()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  for (i = xmmword_1EA852480; i; i = *i)
  {
    v1 = *(i + 39);
    if (v1 >= 0)
    {
      v2 = i + 2;
    }

    else
    {
      v2 = i[2];
    }

    if (v1 >= 0)
    {
      v3 = *(i + 39);
    }

    else
    {
      v3 = i[3];
    }

    v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
    v5 = v4;
    v6 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_25;
    }

    v7 = vcnt_s8(*(&v19 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v19 + 1))
      {
        v9 = v4 % *(&v19 + 1);
      }
    }

    else
    {
      v9 = (*(&v19 + 1) - 1) & v4;
    }

    v10 = *(v19 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_25;
      }

LABEL_24:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, i + 2))
    {
      goto LABEL_24;
    }
  }

  snake_case_to_camel_case("bias_values", 11, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1304, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("continuity_values", 17, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1305, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("path", 4, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1306, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("tension_values", 14, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1307, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("timing_functions", 16, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1308, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("values", 6, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1309, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "keyTimes");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1310, "Duplicated Entry !! && map.map.find (keyTimes) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "keyTimes");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "calculationMode");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1311, "Duplicated Entry !! && map.map.find (calculationMode) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "calculationMode");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  snake_case_to_camel_case("rotation_mode", 13, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1317, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = v19;
  v19 = 0uLL;
  _ZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavE17keyframe_anim_map = v13;
  xmmword_1EA8524B0 = v20;
  dword_1EA8524C0 = v21;
  if (*(&v20 + 1))
  {
    v14 = *(v20 + 8);
    if ((*(&v13 + 1) & (*(&v13 + 1) - 1)) != 0)
    {
      if (v14 >= *(&v13 + 1))
      {
        v14 %= *(&v13 + 1);
      }
    }

    else
    {
      v14 &= *(&v13 + 1) - 1;
    }

    *(v13 + 8 * v14) = &xmmword_1EA8524B0;
    v20 = 0uLL;
  }

  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&v19);
}

void sub_183C74F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAKeyframeAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SD_SM_SP_(void *a1, const char *a2)
{
  v2 = *(a2 + 3);
  if ((v2 & 0x2000000) != 0)
  {
    v3 = &kCAAnimationRotateAuto;
    return [a1 setRotationMode:*v3];
  }

  if ((v2 & 0x4000000) != 0)
  {
    v3 = &kCAAnimationRotateAutoReverse;
    return [a1 setRotationMode:*v3];
  }

  return a1;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 144);
  if (v3 > 4)
  {
    v4 = &kCAAnimationLinear;
  }

  else
  {
    v4 = off_1E6DED1B0[v3];
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"calculationMode"];

    return [v2 setValue:v5 forKey:v6];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  result = id_from_value<NSArray,CA::Render::Vector *>(*(a2 + 120));
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"keyTimes"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

void *id_from_value<NSArray,CA::Render::Vector *>(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
  if (v2)
  {
    v4 = (a1 + 24);
    do
    {
      v5 = *v4++;
      [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v5)}];
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = *(a2 + 112);
  if (v5)
  {
    v8 = result;
    result = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v5 + 16)];
    v9 = result;
    if (*(v5 + 16))
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + 24 + 8 * v10);
        if (v11)
        {
          v12 = ns_object_from_render_object(a5, v11, 0);
        }

        else
        {
          v12 = 0;
        }

        result = [v9 addObject:v12];
        ++v10;
      }

      while (v10 < *(v5 + 16));
    }

    if (v9)
    {
      if (*(a4 + 23) >= 0)
      {
        v13 = a4;
      }

      else
      {
        v13 = *a4;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];

      return [v8 setValue:v9 forKey:v14];
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a2 + 128);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5 < 4 || (*(v4 + 16) & 3) != 0)
    {
      __assert_rtn("id_from_value", "CAReverseSerialization.mm", 357, "count >=4 && count % 4 == 0");
    }

    v8 = result;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v4 + 16)];
    v10 = (v4 + 48);
    v11 = 3;
    do
    {
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      *&v12 = v12;
      *&v13 = v13;
      v14 = *(v10 - 1);
      v15 = *v10;
      *&v14 = v14;
      *&v15 = *v10;
      result = [v9 addObject:{+[CAMediaTimingFunction functionWithControlPoints::::](CAMediaTimingFunction, "functionWithControlPoints::::", v12, v13, v14, v15)}];
      v16 = v11 + 1;
      v11 += 4;
      v10 += 4;
    }

    while (v16 < v5);
    if (v9)
    {
      if (*(a4 + 23) >= 0)
      {
        v17 = a4;
      }

      else
      {
        v17 = *a4;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];

      return [v8 setValue:v9 forKey:v18];
    }
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = id_from_value<NSArray,CA::Render::Vector *>(*(a2 + 152));
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

CGPath *_ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *(a2 + 136);
  result = id_from_value<void,CA::Render::Path *>(v10);
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

CGPath *id_from_value<void,CA::Render::Path *>(uint64_t *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v5[0] = Mutable;
  CA::Render::path_iterate<ReverseSerializationPathIterator>(*a1, v5);
  CGPathRetain(Mutable);
  v3 = Mutable;
  CGPathRelease(Mutable);
  return v3;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = id_from_value<NSArray,CA::Render::Vector *>(*(a2 + 160));
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE1_clEvENUlP19CAKeyframeAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = id_from_value<NSArray,CA::Render::Vector *>(*(a2 + 168));
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v3 = CA::Render::key_path_copy_string(*(a2 + 96), a2);
  if (v3)
  {
    v4 = v3;
    [a1 setKeyPath:v3];

    CFRelease(v4);
  }
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_(void *a1, const char *a2, double a3, double a4, double a5)
{
  LODWORD(a3) = *(a2 + 6);
  LODWORD(a4) = *(a2 + 7);
  LODWORD(a5) = *(a2 + 8);
  return [a1 setPreferredFrameRateRange:{a3, a4, a5}];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:*(a2 + 88)];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"highFrameRateReason"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 9) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"additive"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

CAValueFunction *_ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = *(a2 + 104);
  result = id_from_value<void,CA::Render::Function *>(v6);
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"valueFunction"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 15) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t _ZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEv()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v4, 0x40uLL);
  snake_case_to_camel_case("begin_time", 10, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 853, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("speed", 5, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 854, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("duration", 8, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 855, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("time_offset", 11, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 856, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("autoreverses", 12, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 857, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("fill_mode", 9, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 867, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("repeatDuration", 14, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 871, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("repeatCount", 11, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 875, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::KeyframeAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&_ZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavE10timing_map, v4);
  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v4);
}

void sub_183C76964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void *_ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    if ((*(v2 + 13) & 8) == 0)
    {
      v3 = *(v2 + 24);
      *&v3 = v3;
      return [a1 setRepeatCount:v3];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    if ((*(v2 + 13) & 8) != 0)
    {
      return [a1 setRepeatDuration:*(v2 + 24)];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    v3 = *(v2 + 12);
    if ((v3 & 0x200) != 0)
    {
      if ((v3 & 0x400) != 0)
      {
        v4 = &kCAFillModeBoth;
      }

      else
      {
        v4 = &kCAFillModeForwards;
      }
    }

    else
    {
      if ((v3 & 0x400) == 0)
      {
        return a1;
      }

      v4 = &kCAFillModeBackwards;
    }

    return [a1 setFillMode:*v4];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setAutoreverses:(*(v2 + 12) >> 8) & 1];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setTimeOffset:*(v2 + 48)];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setDuration:*(v2 + 32)];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2, double a3)
{
  v3 = *(a2 + 5);
  if (v3)
  {
    LODWORD(a3) = *(v3 + 16);
    return [a1 setSpeed:a3];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render17KeyframeAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setBeginTime:*(v2 + 40)];
  }

  return a1;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = *(a2 + 24);
  v6 = v3;
  result = [MEMORY[0x1E696B098] valueWithBytes:&v5 objCType:"{CAFrameRateRange=fff}"];
  if (result)
  {
    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "preferredFrameRateRange")}];
  }

  return result;
}

CAMediaTimingFunction *_ZZZ20get_setters_for_typeIN2CA6Render17KeyframeAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(CAMediaTimingFunction *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v6 = result;
    result = nsobject_from_values<CAMediaTimingFunction *,double>((v4 + 24), *(v4 + 16));
    if (result)
    {
      v7 = result;
      if (*(a4 + 23) >= 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = *a4;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

      return [(CAMediaTimingFunction *)v6 setValue:v7 forKey:v9];
    }
  }

  return result;
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE_clEv()
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  snake_case_to_camel_case("timing_function", 15, v8);
  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1192, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v8, "preferredFrameRateRange");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), v8))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1193, "Duplicated Entry !! && map.map.find (preferredFrameRateRange) == map.map.end ()");
  }

  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v8, "preferredFrameRateRange");
  __p[0] = v8;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, v8)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  snake_case_to_camel_case("removed_on_completion", 21, v8);
  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v6[0], *(&v6[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1196, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  v5 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if ((atomic_load_explicit(&_ZGVZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavE10timing_map, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavE10timing_map))
  {
    _ZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEv();
    __cxa_guard_release(&_ZGVZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavE10timing_map);
  }

  *v8 = 0u;
  v9 = 0u;
  v10 = dword_1EA852430;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v8, qword_1EA852418);
  v0 = qword_1EA852420;
  if (qword_1EA852420)
  {
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(v8, (v0 + 2));
      v0 = *v0;
    }

    while (v0);
  }

  for (i = v9; i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(v6, (i + 2));
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&_ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE13animation_map, v6);
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v8);
  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v6);
}

void sub_183C76F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_guard_abort(&_ZGVZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavE10timing_map);
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEv()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  for (i = qword_1EA852390; i; i = *i)
  {
    v1 = *(i + 39);
    if (v1 >= 0)
    {
      v2 = (i + 16);
    }

    else
    {
      v2 = *(i + 16);
    }

    if (v1 >= 0)
    {
      v3 = *(i + 39);
    }

    else
    {
      v3 = *(i + 24);
    }

    v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
    v5 = v4;
    v6 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_25;
    }

    v7 = vcnt_s8(*(&v19 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v19 + 1))
      {
        v9 = v4 % *(&v19 + 1);
      }
    }

    else
    {
      v9 = (*(&v19 + 1) - 1) & v4;
    }

    v10 = *(v19 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_25;
      }

LABEL_24:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, (i + 16)))
    {
      goto LABEL_24;
    }
  }

  snake_case_to_camel_case("discretizes_time", 16, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1211, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "valueFunction");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1213, "Duplicated Entry !! && map.map.find (valueFunction) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "valueFunction");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "additive");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1214, "Duplicated Entry !! && map.map.find (additive) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "additive");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "highFrameRateReason");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1215, "Duplicated Entry !! && map.map.find (highFrameRateReason) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "highFrameRateReason");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  snake_case_to_camel_case("preferredFrameRateRangeMinimum", 30, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1222, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangeMaximum");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1223, "Duplicated Entry !! && map.map.find (preferredFrameRateRangeMaximum) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangeMaximum");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangePreferred");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1224, "Duplicated Entry !! && map.map.find (preferredFrameRateRangePreferred) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFrameRateRangePreferred");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  snake_case_to_camel_case("cumulative", 10, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1228, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("property", 8, v22);
  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1235, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v22);
  v18 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "beginTimeMode");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1239, "Duplicated Entry !! && map.map.find (beginTimeMode) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "beginTimeMode");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "delegate");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1240, "Duplicated Entry !! && map.map.find (delegate) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "delegate");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "keyPath");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1241, "Duplicated Entry !! && map.map.find (keyPath) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "keyPath");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "frameInterval");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1245, "Duplicated Entry !! && map.map.find (frameInterval) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "frameInterval");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE11_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFramesPerSecond");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v22))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1246, "Duplicated Entry !! && map.map.find (preferredFramesPerSecond) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preferredFramesPerSecond");
  __p[0] = v22;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v22)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE12_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v13 = v19;
  v19 = 0uLL;
  _ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE17property_anim_map = v13;
  xmmword_1EA8523C0 = v20;
  dword_1EA8523D0 = v21;
  if (*(&v20 + 1))
  {
    v14 = *(v20 + 8);
    if ((*(&v13 + 1) & (*(&v13 + 1) - 1)) != 0)
    {
      if (v14 >= *(&v13 + 1))
      {
        v14 %= *(&v13 + 1);
      }
    }

    else
    {
      v14 &= *(&v13 + 1) - 1;
    }

    *(v13 + 8 * v14) = &xmmword_1EA8523C0;
    v20 = 0uLL;
  }

  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&v19);
}

void sub_183C77BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

uint64_t _ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEv()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  for (i = xmmword_1EA8523C0; i; i = *i)
  {
    v1 = *(i + 39);
    if (v1 >= 0)
    {
      v2 = i + 2;
    }

    else
    {
      v2 = i[2];
    }

    if (v1 >= 0)
    {
      v3 = *(i + 39);
    }

    else
    {
      v3 = i[3];
    }

    v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
    v5 = v4;
    v6 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_25;
    }

    v7 = vcnt_s8(*(&v19 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *(&v19 + 1))
      {
        v9 = v4 % *(&v19 + 1);
      }
    }

    else
    {
      v9 = (*(&v19 + 1) - 1) & v4;
    }

    v10 = *(v19 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_25;
      }

LABEL_24:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, i + 2))
    {
      goto LABEL_24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "byValue");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1260, "Duplicated Entry !! && map.map.find (byValue) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "byValue");
  v16[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "fromValue");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1261, "Duplicated Entry !! && map.map.find (fromValue) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "fromValue");
  v16[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "toValue");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1262, "Duplicated Entry !! && map.map.find (toValue) == map.map.end ()");
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "toValue");
  v16[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("end_angle", 9, __p);
  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v16))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1263, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  v18 = v16;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v16)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  snake_case_to_camel_case("start_angle", 11, __p);
  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v16))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1264, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  v18 = v16;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v16)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  snake_case_to_camel_case("rounds_to_integer", 17, __p);
  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v19, *(&v19 + 1), v16))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 1267, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v16, __p);
  v18 = v16;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, v16)[5] = _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SD_SM_SP_;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v13 = v19;
  v19 = 0uLL;
  _ZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavE14basic_anim_map = v13;
  xmmword_1EA8523F0 = v20;
  dword_1EA852400 = v21;
  if (*(&v20 + 1))
  {
    v14 = *(v20 + 8);
    if ((*(&v13 + 1) & (*(&v13 + 1) - 1)) != 0)
    {
      if (v14 >= *(&v13 + 1))
      {
        v14 %= *(&v13 + 1);
      }
    }

    else
    {
      v14 &= *(&v13 + 1) - 1;
    }

    *(v13 + 8 * v14) = &xmmword_1EA8523F0;
    v20 = 0uLL;
  }

  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&v19);
}

void sub_183C78430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABasicAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 136)];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 144)];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 120);
  if (v5)
  {
    v6 = result;
    result = ns_object_from_render_object(a5, v5, 0);
    if (result)
    {
      v7 = result;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toValue"];

      return [v6 setValue:v7 forKey:v8];
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 112);
  if (v5)
  {
    v6 = result;
    result = ns_object_from_render_object(a5, v5, 0);
    if (result)
    {
      v7 = result;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"fromValue"];

      return [v6 setValue:v7 forKey:v8];
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE1_clEvENUlP16CABasicAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 128);
  if (v5)
  {
    v6 = result;
    result = ns_object_from_render_object(a5, v5, 0);
    if (result)
    {
      v7 = result;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"byValue"];

      return [v6 setValue:v7 forKey:v8];
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAPropertyAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v3 = CA::Render::key_path_copy_string(*(a2 + 96), a2);
  if (v3)
  {
    v4 = v3;
    [a1 setKeyPath:v3];

    CFRelease(v4);
  }
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SD_SM_SP_(void *a1, const char *a2, double a3, double a4, double a5)
{
  LODWORD(a3) = *(a2 + 6);
  LODWORD(a4) = *(a2 + 7);
  LODWORD(a5) = *(a2 + 8);
  return [a1 setPreferredFrameRateRange:{a3, a4, a5}];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:*(a2 + 88)];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"highFrameRateReason"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 9) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"additive"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

CAValueFunction *_ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = *(a2 + 104);
  result = id_from_value<void,CA::Render::Function *>(v6);
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"valueFunction"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE0_clEvENUlP19CAPropertyAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 15) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)> const&>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t _ZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEv()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v4, 0x40uLL);
  snake_case_to_camel_case("begin_time", 10, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 853, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("speed", 5, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 854, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("duration", 8, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 855, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("time_offset", 11, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 856, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("autoreverses", 12, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 857, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("fill_mode", 9, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 867, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("repeatDuration", 14, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 871, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("repeatCount", 11, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 875, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAAnimation *,CA::Render::BasicAnimation const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES6_S8_SB_SK_SN_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&_ZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavE10timing_map, v4);
  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v4);
}

void sub_183C79A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void *_ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    if ((*(v2 + 13) & 8) == 0)
    {
      v3 = *(v2 + 24);
      *&v3 = v3;
      return [a1 setRepeatCount:v3];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    if ((*(v2 + 13) & 8) != 0)
    {
      return [a1 setRepeatDuration:*(v2 + 24)];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    v3 = *(v2 + 12);
    if ((v3 & 0x200) != 0)
    {
      if ((v3 & 0x400) != 0)
      {
        v4 = &kCAFillModeBoth;
      }

      else
      {
        v4 = &kCAFillModeForwards;
      }
    }

    else
    {
      if ((v3 & 0x400) == 0)
      {
        return a1;
      }

      v4 = &kCAFillModeBackwards;
    }

    return [a1 setFillMode:*v4];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setAutoreverses:(*(v2 + 12) >> 8) & 1];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setTimeOffset:*(v2 + 48)];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setDuration:*(v2 + 32)];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2, double a3)
{
  v3 = *(a2 + 5);
  if (v3)
  {
    LODWORD(a3) = *(v3 + 16);
    return [a1 setSpeed:a3];
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render14BasicAnimationE11CAAnimationEDavENKUlvE_clEvENUlPS3_PKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES6_S8_SB_SK_SN_(void *a1, const char *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    return [a1 setBeginTime:*(v2 + 40)];
  }

  return a1;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SD_SM_SP_(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = *(a2 + 24);
  v6 = v3;
  result = [MEMORY[0x1E696B098] valueWithBytes:&v5 objCType:"{CAFrameRateRange=fff}"];
  if (result)
  {
    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "preferredFrameRateRange")}];
  }

  return result;
}

CAMediaTimingFunction *_ZZZ20get_setters_for_typeIN2CA6Render14BasicAnimationEERKDavENKUlvE_clEvENUlP11CAAnimationPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SD_SM_SP_(CAMediaTimingFunction *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v6 = result;
    result = nsobject_from_values<CAMediaTimingFunction *,double>((v4 + 24), *(v4 + 16));
    if (result)
    {
      v7 = result;
      if (*(a4 + 23) >= 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = *a4;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

      return [(CAMediaTimingFunction *)v6 setValue:v7 forKey:v9];
    }
  }

  return result;
}

void ___Z20get_setters_for_typeIN2CA6Render6FilterEERKDav_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(vcvtps_u32_f32(8.0 / *&dword_1EA852260));
  snake_case_to_camel_case("name", 4, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1174, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavEUb_ENUlP8CAFilterPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "enabled");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1175, "Duplicated Entry !! && map.map.find (enabled) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "enabled");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavEUb_ENUlP8CAFilterPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  snake_case_to_camel_case("accessibility", 13, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1178, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavEUb_ENUlP8CAFilterPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("caches_input_image", 18, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1181, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavEUb_ENUlP8CAFilterPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("inputs", 6, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1182, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavEUb_ENUlP8CAFilterPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_183C7A070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1);
  if (prime > *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1))
  {
    v3 = vcvtps_u32_f32(qword_1EA852258 / *&dword_1EA852260);
    if (*(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1) < 3uLL || (v4 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = _ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map;
      *&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAFilter *,CA::Render::Filter const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = v4;
  v6 = *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1))
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavE3map + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
  {
    goto LABEL_20;
  }

  return v11;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavEUb_ENUlP8CAFilterPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, CGColorSpace **a5)
{
  v5 = *(a2 + 40);
  if (v5 && *(v5 + 16))
  {
    v7 = result;
    v8 = 0;
    v9 = v5 + 24;
    do
    {
      String = CAAtomGetString(*(*(v9 + 8 * v8) + 16));
      v11 = ns_object_from_render_object(a5, *(*(v9 + 8 * v8) + 24), [objc_msgSend(v7 CAMLTypeForKey:{String), "UTF8String"}]);
      if (!v11)
      {
        __assert_rtn("set_filter_inputs", "CAReverseSerialization.mm", 819, "input_value != nil");
      }

      result = [v7 setValue:v11 forKey:String];
      ++v8;
    }

    while (v8 < *(v5 + 16));
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavEUb_ENUlP8CAFilterPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 8) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enabled"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render6FilterEERKDavEUb_ENUlP8CAFilterPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v6 = result;
    result = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4 + 28];
    if (result)
    {
      v7 = result;
      if (*(a4 + 23) >= 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = *a4;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

      return [v6 setValue:v7 forKey:v9];
    }
  }

  return result;
}

CGColorRef _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE91_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, CGColorSpace **a5)
{
  v6 = a3[8].i64[1];
  if (v6)
  {
    v7 = *(v6 + 80);
  }

  else
  {
    v7 = 0;
  }

  result = cg_color_from_pattern_or_color(a5, v7, a3[1]);
  if (result)
  {

    return [a1 setValue:result forKey:@"backgroundColor"];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE90_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 144);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v8 = result;
      v9 = (v5 + 24);
      do
      {
        v10 = *v9++;
        result = [v8 addAnimation:animation_from_render_animation(a5 forKey:{v10), *(v10 + 56)}];
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE89_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 112);
  if ((*(a3 + 13) & 0x20) != 0)
  {
    if (v7)
    {
      v12[0] = calayer_from_render_layer(a5, *(a3 + 112));
      return [v6 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v12, 1), @"sublayers"}];
    }
  }

  else if (v7)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v7 + 16)];
    if (*(v7 + 16))
    {
      v9 = 0;
      do
      {
        v10 = *(v7 + 24 + 8 * v9);
        if (v10)
        {
          v11 = calayer_from_render_layer(a5, v10);
        }

        else
        {
          v11 = 0;
        }

        [v8 addObject:v11];
        ++v9;
      }

      while (v9 < *(v7 + 16));
    }

    return [v6 setValue:v8 forKey:@"sublayers"];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE88_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 23) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowsColorMatching"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE87_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = *(v3 + 280);
  }

  else
  {
    v4 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  if (result)
  {
    v6 = result;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"displayMaximumDesiredEDR"];

    return [a1 setValue:v6 forKey:v7];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE86_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = *(v3 + 268);
  }

  else
  {
    v4 = 1.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  if (result)
  {
    v6 = result;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contentsEDRStrength"];

    return [a1 setValue:v6 forKey:v7];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE85_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = *(v3 + 264);
  }

  else
  {
    v4 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  if (result)
  {
    v6 = result;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contentsCDRStrength"];

    return [a1 setValue:v6 forKey:v7];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE84_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = *(v3 + 276);
  }

  else
  {
    v4 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  if (result)
  {
    v6 = result;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contentsMaximumDesiredEDR"];

    return [a1 setValue:v6 forKey:v7];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE83_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 1) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toneMapToStandardDynamicRange"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE82_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 136);
  if (v2)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      v4 = result;
      result = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v3 + 16)];
      v5 = result;
      if (*(v3 + 16))
      {
        v6 = 0;
        do
        {
          if (*(v3 + 24 + 8 * v6))
          {
            if (x_log_get_utilities::once != -1)
            {
              dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
            }

            v7 = x_log_get_utilities::log;
            if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
            {
              *v8 = 0;
              _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "Presentation Modifiers reverse serialization not implemented !", v8, 2u);
            }
          }

          result = [v5 addObject:0];
          ++v6;
        }

        while (v6 < *(v3 + 16));
      }

      if (v5)
      {
        return [v4 setValue:v5 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "presentationModifiers")}];
      }
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE81_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = *(v3 + 312);
  }

  else
  {
    v4 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  if (result)
  {
    v6 = result;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"minificationFilterBias"];

    return [a1 setValue:v6 forKey:v7];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE80_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 42) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hidden"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE79_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 43) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"geometryFlipped"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE78_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 44) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"doubleSided"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE77_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = *(v3 + 316);
  }

  else
  {
    v4 = 1.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  if (result)
  {
    v6 = result;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"gain"];

    return [a1 setValue:v6 forKey:v7];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE76_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:*(a2 + 40) >> 63];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"wantsExtendedDynamicRangeContent"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE75_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 62) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowsLimitedHeadroom"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE74_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 192);
  }

  else
  {
    v7 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE73_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  result = id_from_value<CATransform3D,CA::Render::Vector *>(v7);
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t id_from_value<CATransform3D,CA::Render::Vector *>(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(result + 16) <= 0xFu)
    {
      __assert_rtn("nsobject_from_values", "CAReverseSerialization.mm", 267, "count >= 16");
    }

    v1 = *(result + 40);
    v2 = *(result + 56);
    v3 = *(result + 72);
    v4 = *(result + 88);
    v5 = *(result + 104);
    v6 = *(result + 120);
    v7 = *(result + 136);
    v8[0] = *(result + 24);
    v8[1] = v1;
    v8[2] = v2;
    v8[3] = v3;
    v8[4] = v4;
    v8[5] = v5;
    v8[6] = v6;
    v8[7] = v7;
    return [MEMORY[0x1E696B098] valueWithCATransform3D:v8];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE72_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  result = id_from_value<CATransform3D,CA::Render::Vector *>(v7);
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE71_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 46) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE70_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 45) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE69_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 13) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE68_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 54) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE67_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 53) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE66_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 52) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE65_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 228);
  }

  else
  {
    v7 = 3.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE64_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 8) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

CGPath *_ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE63_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 136);
  if (v6)
  {
    v6 = *(v6 + 120);
  }

  v11[0] = v6;
  result = id_from_value<void,CA::Render::Path *>(v11);
  if (result)
  {
    v8 = result;
    if (*(a4 + 23) >= 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = *a4;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];

    return [a1 setValue:v8 forKey:v10];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE62_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, float a3, uint64_t a4, uint64_t *a5)
{
  LOBYTE(a3) = *(a2 + 37);
  result = [MEMORY[0x1E696AD98] numberWithDouble:(LODWORD(a3) * 0.0039216)];
  if (result)
  {
    v8 = result;
    if (*(a5 + 23) >= 0)
    {
      v9 = a5;
    }

    else
    {
      v9 = *a5;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];

    return [a1 setValue:v8 forKey:v10];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE61_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = vcvtq_f64_f32(*(v6 + 220));
  }

  else
  {
    v7 = xmmword_183E20FC0;
  }

  v10 = v7;
  result = [MEMORY[0x1E696B098] valueWithBytes:&v10 objCType:"{CGSize=dd}"];
  if (result)
  {
    if (*(a4 + 23) >= 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = *a4;
    }

    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v9)}];
  }

  return result;
}

id _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE60_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, CGColorSpace **a5)
{
  v7 = *(a2 + 136);
  if (v7)
  {
    v8 = *(v7 + 200);
  }

  else
  {
    v8 = xmmword_183E20E40;
  }

  result = cg_color_from_values<CA::Render::Color>(*a5, v8);
  if (result)
  {
    v10 = result;
    if (*(a4 + 23) >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];

    return [a1 setValue:v10 forKey:v12];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE59_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *off_1E6DED0A0[(*(a2 + 40) >> 34) & 3];
  if (v4)
  {
    v5 = result;
    if (*(a4 + 23) >= 0)
    {
      v6 = a4;
    }

    else
    {
      v6 = *a4;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];

    return [v5 setValue:v4 forKey:v7];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE58_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 320);
  }

  else
  {
    v7 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE57_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 11) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE56_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 344);
  }

  else
  {
    v7 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

id _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE55_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, CGColorSpace **a5)
{
  v7 = *(a2 + 136);
  if (v7)
  {
    v8 = *(v7 + 324);
  }

  else
  {
    v8 = xmmword_183E20E40;
  }

  result = cg_color_from_values<CA::Render::Color>(*a5, v8);
  if (result)
  {
    v10 = result;
    if (*(a4 + 23) >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];

    return [a1 setValue:v10 forKey:v12];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE54_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, float a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a2 + 136);
  if (v7)
  {
    v8 = *(v7 + 308);
  }

  else
  {
    LOBYTE(a3) = *(a2 + 39);
    v8 = LODWORD(a3);
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  if (result)
  {
    v10 = result;
    if (*(a5 + 23) >= 0)
    {
      v11 = a5;
    }

    else
    {
      v11 = *a5;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];

    return [a1 setValue:v10 forKey:v12];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE53_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 57) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE52_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:HIBYTE(*(a2 + 40)) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE51_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 10) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE50_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 58) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE49_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 56);
  result = [MEMORY[0x1E696B098] valueWithBytes:&v8 objCType:"{CGPoint=dd}"];
  if (result)
  {
    if (*(a4 + 23) >= 0)
    {
      v7 = a4;
    }

    else
    {
      v7 = *a4;
    }

    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v7)}];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE48_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, float a3, uint64_t a4, uint64_t *a5)
{
  LOBYTE(a3) = *(a2 + 36);
  result = [MEMORY[0x1E696AD98] numberWithDouble:(LODWORD(a3) * 0.0039216)];
  if (result)
  {
    v8 = result;
    if (*(a5 + 23) >= 0)
    {
      v9 = a5;
    }

    else
    {
      v9 = *a5;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];

    return [a1 setValue:v8 forKey:v10];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE47_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a2 + 128);
  if (v4)
  {
    v6 = result;
    result = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4 + 28];
    if (result)
    {
      v7 = result;
      if (*(a4 + 23) >= 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = *a4;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

      return [v6 setValue:v7 forKey:v9];
    }
  }

  return result;
}

__CFString *_ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE46_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = id_from_value<void,CA::Render::ImageFilter>(*(a2 + 40) & 0xF);
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

__CFString *id_from_value<void,CA::Render::ImageFilter>(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E6DFA660[a1];
  }
}

void _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE45_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a2 + 136);
  if (v4)
  {
    v5 = *(v4 + 112);
    if (v5)
    {
      v9 = *(v5 + 24);
      v8 = *(v5 + 32);
      if (v8 != v9)
      {
        if (((v8 - v9) >> 5) < 0x666666666666667)
        {
          operator new();
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      v10 = v8 - v9;
      if (v10)
      {
        v11 = v10 >> 5;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = 32;
        v13 = (v9 + 24);
        do
        {
          v14 = *v13;
          v15 = vcvtq_f64_f32(*(v13 - 2));
          *(v12 - 32) = vcvtq_f64_f32(*(v13 - 6));
          *(v12 - 16) = v15;
          *v12 = v14;
          v12 += 40;
          v13 += 8;
          --v11;
        }

        while (v11);
      }

      v16 = *(v5 + 48);
      v17 = *(v5 + 56);
      if (v17 != v16)
      {
        if ((v17 - v16) < 0x7FFFFFFFFFFFFFF1)
        {
          operator new();
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      v18 = *(v5 + 96) - 1;
      if (v18 >= 6)
      {
        v19 = @"none";
      }

      else
      {
        v19 = off_1E6DFA6C0[v18];
      }

      v20 = [CAMeshTransform meshTransformWithVertexCount:0 vertices:0 faceCount:0 faces:0 depthNormalization:v19];
      if (v20)
      {
        if (*(a4 + 23) >= 0)
        {
          v21 = a4;
        }

        else
        {
          v21 = *a4;
        }

        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];

        [a1 setValue:v20 forKey:v22];
      }
    }
  }
}

void sub_183C7C794(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE44_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 40) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE43_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 16) & 0xFLL];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE42_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = *(a2 + 120);
  if (v5)
  {
    v7 = result;
    result = calayer_from_render_layer(a5, v5);
    if (result)
    {
      v8 = result;
      if (*(a4 + 23) >= 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = *a4;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];

      return [v7 setValue:v8 forKey:v10];
    }
  }

  return result;
}

__CFString *_ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE41_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = id_from_value<void,CA::Render::ImageFilter>(*(a2 + 40) >> 4);
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE40_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 15) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE39_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 7) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE38_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 41) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE37_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 20) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE36_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 6) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE35_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 14) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE34_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 47) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE33_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 136);
  if (v7)
  {
    v7 = *(v7 + 96);
  }

  v12[0] = v7;
  result = id_from_value<void,CA::Render::TypedArray<CA::Render::Filter> *>(a5, v12);
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

void *id_from_value<void,CA::Render::TypedArray<CA::Render::Filter> *>(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(*a2 + 16)];
  v5 = *a2;
  if (*(*a2 + 16))
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6 + 24);
      if (v7)
      {
        v8 = filter_from_render_filter(a1, v7);
      }

      else
      {
        v8 = 0;
      }

      [v4 addObject:v8];
      ++v6;
      v5 = *a2;
    }

    while (v6 < *(*a2 + 16));
  }

  return v4;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE32_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 8) & 0xFLL];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE31_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 20) & 0x7FFLL];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE30_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 59) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE29_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  v7 = 0.0;
  if (v6)
  {
    v7 = *(v6 + 232);
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE28_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 136);
  if (v4)
  {
    v5 = *(v4 + 72);
    if (v5)
    {
      if (*(v5 + 16) <= 7u)
      {
        __assert_rtn("nsobject_from_values", "CAReverseSerialization.mm", 276, "count >= 8");
      }

      v7 = result;
      v8 = *(v5 + 40);
      v9 = *(v5 + 56);
      v12[0] = *(v5 + 24);
      v12[1] = v8;
      v10 = *(v5 + 72);
      v12[2] = v9;
      v12[3] = v10;
      result = [MEMORY[0x1E696B098] valueWithCACornerRadii:v12];
      if (result)
      {
        if (*(a4 + 23) >= 0)
        {
          v11 = a4;
        }

        else
        {
          v11 = *a4;
        }

        return [v7 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v11)}];
      }
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE27_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 16) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE26_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = 0;
  }

  result = id_from_value<CGRect,CA::Render::Vector *>(v7);
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t id_from_value<CGRect,CA::Render::Vector *>(uint64_t result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(result + 16) <= 3u)
    {
      __assert_rtn("id_from_value", "CAReverseSerialization.mm", 325, "count >= 4");
    }

    v1 = vsubq_f64(*(result + 40), *(result + 24));
    v2[0] = *(result + 24);
    v2[1] = v1;
    return [MEMORY[0x1E696B098] valueWithBytes:v2 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE25_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = *(a2 + 136);
  if (v5)
  {
    v6 = *(v5 + 56);
    if (v6)
    {
      v8 = result;
      result = ns_object_from_render_object(a5, v6, 0);
      if (result)
      {
        v9 = result;
        if (*(a4 + 23) >= 0)
        {
          v10 = a4;
        }

        else
        {
          v10 = *a4;
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

        return [v8 setValue:v9 forKey:v11];
      }
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE24_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 136);
  if (v4)
  {
    v5 = *(v4 + 32);
    if (v5)
    {
      if (*(v5 + 16) <= 4u)
      {
        __assert_rtn("id_from_value", "CAReverseSerialization.mm", 337, "count >= 5");
      }

      v7 = result;
      v8 = *(v5 + 40);
      v10[0] = *(v5 + 24);
      v10[1] = v8;
      v10[2] = *(v5 + 56);
      result = [MEMORY[0x1E696B098] valueWithBytes:v10 objCType:"{CGAffineTransform=dddddd}"];
      if (result)
      {
        if (*(a4 + 23) >= 0)
        {
          v9 = a4;
        }

        else
        {
          v9 = *a4;
        }

        return [v7 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v9)}];
      }
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE23_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  v5 = *(a2 + 136);
  v6 = kCALayerContentsSwizzleRGBA;
  if (v5 && (*(v5 + 348) & 1) != 0)
  {
    v6 = &kCALayerContentsSwizzleAAAA;
  }

  v7 = *v6;
  if (*v6)
  {
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [v4 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE22_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, float a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a2 + 136);
  if (v7)
  {
    v8 = *(v7 + 304);
  }

  else
  {
    LOBYTE(a3) = *(a2 + 38);
    v8 = LODWORD(a3);
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  if (result)
  {
    v10 = result;
    if (*(a5 + 23) >= 0)
    {
      v11 = a5;
    }

    else
    {
      v11 = *a5;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];

    return [a1 setValue:v10 forKey:v12];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE21_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  result = id_from_value<CGRect,CA::Render::Vector *>(v7);
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE20_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 51) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

id _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE19_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, CGColorSpace **a5)
{
  v7 = *(a2 + 136);
  if (v7)
  {
    _Q0 = *(v7 + 284);
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  result = cg_color_from_values<CA::Render::Color>(*a5, _Q0);
  if (result)
  {
    v14 = result;
    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];

    return [a1 setValue:v14 forKey:v16];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE18_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if ((*(a2 + 40) >> 12) <= 0xCu)
  {
    v12 = v5;
    v13 = v4;
    v8 = result;
    v9 = off_1E6DFA6F0[*(a2 + 40) >> 12];
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v10, v12, v13, v6}];

    return [v8 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE17_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:HIWORD(*(a2 + 40)) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE16_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 18) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE15_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 48);
  }

  else
  {
    v7 = 0;
  }

  result = id_from_value<CGRect,CA::Render::Vector *>(v7);
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE14_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 50) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE13_8__invokeES8_SA_SA_SJ_SM_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = *(a2 + 104);
  if (v5)
  {
    v7 = result;
    result = ns_object_from_render_object(a5, v5, 0);
    if (result)
    {
      v8 = result;
      if (*(a4 + 23) >= 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = *a4;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];

      return [v7 setValue:v8 forKey:v10];
    }
  }

  return result;
}

CAFilter *_ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE12_8__invokeES8_SA_SA_SJ_SM_(CAFilter *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = *(a2 + 136);
  if (v5)
  {
    v6 = *(v5 + 88);
    if (v6)
    {
      v8 = result;
      result = filter_from_render_filter(a5, v6);
      if (result)
      {
        v9 = result;
        if (*(a4 + 23) >= 0)
        {
          v10 = a4;
        }

        else
        {
          v10 = *a4;
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

        return [(CAFilter *)v8 setValue:v9 forKey:v11];
      }
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE11_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 88);
  v9[0] = *(a2 + 72);
  v9[1] = v6;
  result = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  if (result)
  {
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v8)}];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 240);
  }

  else
  {
    v7 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 12) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 236);
  }

  else
  {
    v7 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 136);
  if (v7)
  {
    v7 = *(v7 + 104);
  }

  v12[0] = v7;
  result = id_from_value<void,CA::Render::TypedArray<CA::Render::Filter> *>(a5, v12);
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 152);
  }

  else
  {
    v7 = 0uLL;
  }

  v10 = v7;
  result = [MEMORY[0x1E696B098] valueWithBytes:&v10 objCType:"{CGSize=dd}"];
  if (result)
  {
    if (*(a4 + 23) >= 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = *a4;
    }

    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v9)}];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 184);
  }

  else
  {
    v7 = 0.0;
  }

  result = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  if (result)
  {
    v9 = result;
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];

    return [a1 setValue:v9 forKey:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 136);
  if (v6)
  {
    v7 = *(v6 + 168);
  }

  else
  {
    v8 = 0.0;
    if ((*(a2 + 50) & 0x40) == 0)
    {
      v8 = 0.5;
    }

    v7 = vdupq_lane_s64(*&v8, 0);
  }

  v11 = v7;
  result = [MEMORY[0x1E696B098] valueWithBytes:&v11 objCType:"{CGPoint=dd}"];
  if (result)
  {
    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v10)}];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 4) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 2) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 48) >> 3) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 61) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render5LayerEERKDavENKUlvE_clEvENUlP7CALayerPKS2_SA_RKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES8_SA_SA_SJ_SM_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 40) >> 60) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEv()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v4, 0x40uLL);
  snake_case_to_camel_case("begin_time", 10, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 853, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES6_S8_S8_SH_SK_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("speed", 5, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 854, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES6_S8_S8_SH_SK_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("duration", 8, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 855, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES6_S8_S8_SH_SK_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("time_offset", 11, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 856, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES6_S8_S8_SH_SK_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("autoreverses", 12, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 857, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES6_S8_S8_SH_SK_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("fill_mode", 9, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 867, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES6_S8_S8_SH_SK_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("repeatDuration", 14, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 871, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES6_S8_S8_SH_SK_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("repeatCount", 11, __s);
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(*&v4[0], *(&v4[0] + 1), __p))
  {
    __assert_rtn("operator()", "CAReverseSerialization.mm", 875, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, __p)[5] = _ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES6_S8_S8_SH_SK_;
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&_ZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavE10timing_map, v4);
  return std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(v4);
}

void sub_183C7EB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void *_ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES6_S8_S8_SH_SK_(void *a1, const char *a2)
{
  v2 = *(a2 + 17);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if ((*(v3 + 13) & 8) == 0)
      {
        v4 = *(v3 + 24);
        *&v4 = v4;
        return [a1 setRepeatCount:v4];
      }
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES6_S8_S8_SH_SK_(void *a1, const char *a2)
{
  v2 = *(a2 + 17);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if ((*(v3 + 13) & 8) != 0)
      {
        return [a1 setRepeatDuration:*(v3 + 24)];
      }
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES6_S8_S8_SH_SK_(void *a1, const char *a2)
{
  v2 = *(a2 + 17);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 12);
      if ((v4 & 0x200) != 0)
      {
        if ((v4 & 0x400) != 0)
        {
          v5 = &kCAFillModeBoth;
        }

        else
        {
          v5 = &kCAFillModeForwards;
        }
      }

      else
      {
        if ((v4 & 0x400) == 0)
        {
          return a1;
        }

        v5 = &kCAFillModeBackwards;
      }

      return [a1 setFillMode:*v5];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES6_S8_S8_SH_SK_(void *a1, const char *a2)
{
  v2 = *(a2 + 17);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      return [a1 setAutoreverses:(*(v3 + 12) >> 8) & 1];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES6_S8_S8_SH_SK_(void *a1, const char *a2)
{
  v2 = *(a2 + 17);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      return [a1 setTimeOffset:*(v3 + 48)];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES6_S8_S8_SH_SK_(void *a1, const char *a2)
{
  v2 = *(a2 + 17);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      return [a1 setDuration:*(v3 + 32)];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES6_S8_S8_SH_SK_(void *a1, const char *a2, double a3)
{
  v3 = *(a2 + 17);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      LODWORD(a3) = *(v4 + 16);
      return [a1 setSpeed:a3];
    }
  }

  return a1;
}

void *_ZZZ22get_setters_for_timingIN2CA6Render5LayerE7CALayerEDavENKUlvE_clEvENUlPS3_PKS2_S8_RKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES6_S8_S8_SH_SK_(void *a1, const char *a2)
{
  v2 = *(a2 + 17);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      return [a1 setBeginTime:*(v3 + 40)];
    }
  }

  return a1;
}

void ___Z20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDav_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(vcvtps_u32_f32(16.0 / *&dword_1EA852368));
  std::string::basic_string[abi:nn200100]<0>(__p, "instanceAlphaOffset");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1477, "Duplicated Entry !! && map.map.find (instanceAlphaOffset) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceAlphaOffset");
  v0[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceBlueOffset");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1478, "Duplicated Entry !! && map.map.find (instanceBlueOffset) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceBlueOffset");
  v0[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceCount");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1479, "Duplicated Entry !! && map.map.find (instanceCount) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceCount");
  v0[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceDelay");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1480, "Duplicated Entry !! && map.map.find (instanceDelay) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceDelay");
  v0[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceGreenOffset");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1481, "Duplicated Entry !! && map.map.find (instanceGreenOffset) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceGreenOffset");
  v0[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceRedOffset");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1482, "Duplicated Entry !! && map.map.find (instanceRedOffset) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceRedOffset");
  v0[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceColor");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1483, "Duplicated Entry !! && map.map.find (instanceColor) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceColor");
  v0[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceTransform");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1484, "Duplicated Entry !! && map.map.find (instanceTransform) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "instanceTransform");
  v0[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("preserves_depth", 15, __p);
  std::string::basic_string[abi:nn200100]<0>(v0, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v0))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1488, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(v0[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v0, __p);
  v2 = v0;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v0)[5] = _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(v0[0]);
  }
}

void sub_183C7F2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1);
  if (prime > *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1))
  {
    v3 = vcvtps_u32_f32(qword_1EA852360 / *&dword_1EA852368);
    if (*(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1) < 3uLL || (v4 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = _ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3;
      *&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAReplicatorLayer *,CA::Render::ReplicatorLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = v4;
  v6 = *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1))
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavE3map_3 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
  {
    goto LABEL_20;
  }

  return v11;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES7_S9_SC_SL_SO_(void *a1, const char *a2, uint64_t a3)
{
  if (*(a3 + 13))
  {
    return [a1 setPreservesDepth:1];
  }

  return a1;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 445;
  v12 = 0;
  result = (*(*a2 + 136))(a2, 1, &v13, 16, v14, &v12);
  if (result == 16)
  {
    v4 = v12[1];
    v5 = v12[2];
    v6 = v12[3];
    v7 = v12[4];
    v8 = v12[5];
    v9 = v12[6];
    v10 = v12[7];
    v11[0] = *v12;
    v11[1] = v4;
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = v9;
    v11[7] = v10;
    return [a1 setInstanceTransform:v11];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CGColorSpace **a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 440;
  v8 = 0;
  result = (*(*a2 + 136))(a2, 1, &v9, 4, v10, &v8);
  if (result == 4)
  {
    return [a1 setInstanceColor:{cg_color_from_values<double const*>(*a5, *v8, v8[1])}];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 444;
  v5 = 0;
  result = (*(*a2 + 136))(a2, 1, &v6, 4, v7, &v5);
  if (result == 1)
  {
    v4 = *v5;
    *&v4 = *v5;
    return [a1 setInstanceRedOffset:v4];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 443;
  v5 = 0;
  result = (*(*a2 + 136))(a2, 1, &v6, 4, v7, &v5);
  if (result == 1)
  {
    v4 = *v5;
    *&v4 = *v5;
    return [a1 setInstanceGreenOffset:v4];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 442;
  v4 = 0;
  result = (*(*a2 + 136))(a2, 1, &v5, 4, v6, &v4);
  if (result == 1)
  {
    return [a1 setInstanceDelay:*v4];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 441;
  v4 = 0;
  result = (*(*a2 + 136))(a2, 1, &v5, 4, v6, &v4);
  if (result == 1)
  {
    return [a1 setInstanceCount:*v4];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 439;
  v5 = 0;
  result = (*(*a2 + 136))(a2, 1, &v6, 4, v7, &v5);
  if (result == 1)
  {
    v4 = *v5;
    *&v4 = *v5;
    return [a1 setInstanceBlueOffset:v4];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render15ReplicatorLayerEERKDavEUb_ENUlP17CAReplicatorLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 438;
  v5 = 0;
  result = (*(*a2 + 136))(a2, 1, &v6, 4, v7, &v5);
  if (result == 1)
  {
    v4 = *v5;
    *&v4 = *v5;
    return [a1 setInstanceAlphaOffset:v4];
  }

  return result;
}

void ___Z20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDav_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(vcvtps_u32_f32(32.0 / *&dword_1EA852330));
  snake_case_to_camel_case("group_namespace", 15, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1439, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("allows_in_place_filtering", 25, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1441, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("backdrop_rect", 13, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1442, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("capture_only", 12, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1443, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("group_name", 10, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1444, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("ignores_screen_clip", 19, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1445, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("margin_width", 12, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1446, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("reduces_capture_bit_depth", 25, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1447, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("scale", 5, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1448, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("zoom", 4, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1449, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "enabled");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1451, "Duplicated Entry !! && map.map.find (enabled) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "enabled");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "tracksLuma");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1452, "Duplicated Entry !! && map.map.find (tracksLuma) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "tracksLuma");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "tracksLumaWhileHidden");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1453, "Duplicated Entry !! && map.map.find (tracksLumaWhileHidden) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "tracksLumaWhileHidden");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE11_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "bleedAmount");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1455, "Duplicated Entry !! && map.map.find (bleedAmount) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "bleedAmount");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE12_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "delegate");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1456, "Duplicated Entry !! && map.map.find (delegate) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "delegate");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE13_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "disablesOccludedBackdropBlurs");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1457, "Duplicated Entry !! && map.map.find (disablesOccludedBackdropBlurs) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "disablesOccludedBackdropBlurs");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE14_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "ignoresOffscreenGroups");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1458, "Duplicated Entry !! && map.map.find (ignoresOffscreenGroups) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "ignoresOffscreenGroups");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE15_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "substituteColor");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1459, "Duplicated Entry !! && map.map.find (substituteColor) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "substituteColor");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE16_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "usesGlobalGroupNamespace");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1460, "Duplicated Entry !! && map.map.find (usesGlobalGroupNamespace) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "usesGlobalGroupNamespace");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE17_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_183C80AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1);
  if (prime > *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1))
  {
    v3 = vcvtps_u32_f32(qword_1EA852328 / *&dword_1EA852330);
    if (*(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1) < 3uLL || (v4 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = _ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2;
      *&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CABackdropLayer *,CA::Render::BackdropLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = v4;
  v6 = *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1))
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavE3map_2 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
  {
    goto LABEL_20;
  }

  return v11;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE11_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(~*(a2 + 12) & 0x80400) == 0];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tracksLumaWhileHidden"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 10) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tracksLuma"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 8) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enabled"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 40)];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 32)];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 13) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 36)];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 16) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v6 = result;
    result = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4 + 28];
    if (result)
    {
      v7 = result;
      if (*(a4 + 23) >= 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = *a4;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

      return [v6 setValue:v7 forKey:v9];
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 12) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 112);
  v9[0] = *(a2 + 96);
  v9[1] = v6;
  result = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  if (result)
  {
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    return [a1 setValue:result forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v8)}];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 12) >> 9) & 1];
  if (result)
  {
    v7 = result;
    if (*(a4 + 23) >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = *a4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];

    return [a1 setValue:v7 forKey:v9];
  }

  return result;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render13BackdropLayerEERKDavEUb_ENUlP15CABackdropLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_(void *a1, const char *a2)
{
  v2 = *(a2 + 128);
  if (v2 <= 2)
  {
    return [a1 setGroupNamespace:*off_1E6DED130[v2]];
  }

  return a1;
}

void ___Z20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDav_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(vcvtps_u32_f32(16.0 / *&dword_1EA8522F8));
  snake_case_to_camel_case("stroke_start", 12, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1380, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("stroke_end", 10, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1381, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("line_width", 10, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1382, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("miter_limit", 11, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1383, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("path", 4, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1384, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "lineDashPhase");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1385, "Duplicated Entry !! && map.map.find (lineDashPhase) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "lineDashPhase");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "lineDashPattern");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1386, "Duplicated Entry !! && map.map.find (lineDashPattern) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "lineDashPattern");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  snake_case_to_camel_case("fill_color", 10, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1391, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("stroke_color", 12, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1395, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("fill_rule", 9, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1403, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("line_join", 9, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1411, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("line_cap", 8, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1419, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_183C82028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1);
  if (prime > *(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1))
  {
    v3 = vcvtps_u32_f32(qword_1EA8522F0 / *&dword_1EA8522F8);
    if (*(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1) < 3uLL || (v4 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = _ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1;
      *&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = *(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}
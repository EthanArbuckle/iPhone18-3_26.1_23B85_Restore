void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAShapeLayer *,CA::Render::ShapeLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1)
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
  v6 = *(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavE3map_1 + 1))
  {
    goto LABEL_21;
  }

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

void *_ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE10_8__invokeES7_S9_SC_SL_SO_(void *a1, const char *a2)
{
  v2 = *(a2 + 34);
  if (BYTE2(v2) <= 2u)
  {
    return [a1 setLineCap:*off_1E6DED118[(v2 >> 16) & 3]];
  }

  return a1;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE9_8__invokeES7_S9_SC_SL_SO_(void *a1, const char *a2)
{
  v2 = *(a2 + 34);
  if (BYTE1(v2) <= 2u)
  {
    return [a1 setLineJoin:*off_1E6DED100[(v2 >> 8) & 3]];
  }

  return a1;
}

void *_ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES7_S9_SC_SL_SO_(void *a1, const char *a2)
{
  if (a2[136])
  {
    if (a2[136] != 1)
    {
      return a1;
    }

    v2 = &kCAFillRuleEvenOdd;
  }

  else
  {
    v2 = &kCAFillRuleNonZero;
  }

  return [a1 setFillRule:*v2];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CGColorSpace **a5)
{
  v6 = cg_color_from_pattern_or_color(a5, *(a2 + 80), *(a2 + 56));

  return [a1 setValue:v6 forKey:@"strokeColor"];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CGColorSpace **a5)
{
  v6 = cg_color_from_pattern_or_color(a5, *(a2 + 48), *(a2 + 24));

  return [a1 setValue:v6 forKey:@"fillColor"];
}

void *_ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  result = id_from_value<NSArray,CA::Render::Vector *>(*(a2 + 128));
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lineDashPattern"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 120)];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lineDashPhase"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

CGPath *_ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *(a2 + 16);
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

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 112)];
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

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 104)];
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

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 96)];
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

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render10ShapeLayerEERKDavEUb_ENUlP12CAShapeLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 88)];
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

void ___Z20get_setters_for_typeIN2CA6Render13GradientLayerEERKDav_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(vcvtps_u32_f32(8.0 / *&dword_1EA852228));
  snake_case_to_camel_case("start_point", 11, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1333, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("end_point", 9, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1334, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("noise_scale", 11, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1335, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("colorSpace", 10, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1339, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "premultiplied");
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(v3))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1340, "Duplicated Entry !! && map.map.find (premultiplied) == map.map.end ()");
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v3, "premultiplied");
  __p[0] = v3;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_;
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  snake_case_to_camel_case("interpolations", 14, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1348, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("color_map", 9, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1353, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("type", 4, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1361, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("colors", 6, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1363, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  snake_case_to_camel_case("locations", 9, v3);
  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  if (std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(__p))
  {
    __assert_rtn("get_setters_for_type_block_invoke", "CAReverseSerialization.mm", 1368, "Duplicated Entry !! && map.map.find (scratch_buf) == map.map.end ()");
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v2 = __p;
  std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p)[5] = _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES7_S9_SC_SL_SO_;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_183C8322C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__rehash<true>(size_t __n)
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

  v2 = *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1);
  if (prime > *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1))
  {
    v3 = vcvtps_u32_f32(qword_1EA852220 / *&dword_1EA852228);
    if (*(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1) < 3uLL || (v4 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
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

      v6 = _ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0;
      *&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::find<std::string>(uint64_t a1)
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
  v5 = *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 8 * v9);
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

void *std::__hash_table<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1)
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
  v6 = *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1);
  if (!*(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1))
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(*(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1))
    {
      v9 = v4 % *(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 1) - 1) & v4;
  }

  v10 = *(_ZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavE3map_0 + 8 * v9);
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

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE8_8__invokeES7_S9_SC_SL_SO_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 32);
    for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:v4]; v4; --v4)
    {
      v6 = *v2++;
      [i addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v6)}];
    }

    return [v3 setLocations:i];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE7_8__invokeES7_S9_SC_SL_SO_(uint64_t result, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (*(a2 + 40) != 4)
    {
      __assert_rtn("set_gradient_colors", "CAReverseSerialization.mm", 834, "gradient.width () == 4");
    }

    v5 = v4;
    if (*(a2 + 32))
    {
      v6 = 0;
      v7 = *(a2 + 48);
      do
      {
        v8 = *(a2 + 128);
        v9 = *(v7 + 16 * v6);
        v10 = vcvt_hight_f64_f32(v9);
        v21 = vcvtq_f64_f32(*v9.f32);
        v22 = v10;
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v9)))))
        {
          v20 = v10;
          v11 = CAGetColorSpace(35);
          v12 = v11;
          v13 = 0;
          if (v8)
          {
            v11 = v8;
          }

          do
          {
            v14 = v21.f64[v13];
            if (v14 < 0.0 || v14 > 1.0)
            {
              Extended = CAColorSpaceCreateExtended(v11);
              goto LABEL_16;
            }

            ++v13;
          }

          while (v13 != 4);
          Extended = CGColorSpaceRetain(v11);
LABEL_16:
          v18 = Extended;
          v19 = CGColorCreateWithContentHeadroom();
          CA_CGColorGetRGBComponents(v19, v12, v21.f64);
          CGColorRelease(v19);
          if (v22.f64[1] <= 0.0)
          {
            v21 = 0u;
            v22 = 0u;
          }

          else
          {
            v21 = vdivq_f64(v21, vdupq_lane_s64(*&v22.f64[1], 0));
            v22.f64[0] = v22.f64[0] / v22.f64[1];
          }

          v16 = CGColorCreateWithContentHeadroom();
          if (v18)
          {
            CFRelease(v18);
          }
        }

        else
        {
          v16 = 0;
        }

        [v5 addObject:{v16, *&v20}];
        ++v6;
      }

      while (v6 < *(a2 + 32));
    }

    return [v3 setColors:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE6_8__invokeES7_S9_SC_SL_SO_(void *a1, const char *a2)
{
  v2 = *(a2 + 26);
  v3 = @"axial";
  if (v2 == 587)
  {
    v3 = @"radial";
  }

  if (v2 == 128)
  {
    v4 = @"conic";
  }

  else
  {
    v4 = v3;
  }

  return [a1 setType:v4];
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE5_8__invokeES7_S9_SC_SL_SO_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, CGColorSpace **a5)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 13) & 8) != 0)
  {
    v6 = result;
    CA::Render::GradientLayer::color_map(v8, a2, 0);
    v7 = v8[0];
    result = [v6 setColorMap:{ns_object_from_render_object(a5, v8[0], 0)}];
    if (v7)
    {
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        return (*(*v7 + 16))(v7);
      }
    }
  }

  return result;
}

void sub_183C83C4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE4_8__invokeES7_S9_SC_SL_SO_(uint64_t result, uint64_t a2, const double *a3)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v5 = result;
    v6 = CA::Render::Vector::new_vector(*(a2 + 32), v4, a3);
    v7 = v6[4];
    if (v7 < 4 || (v6[4] & 3) != 0)
    {
      __assert_rtn("id_from_value", "CAReverseSerialization.mm", 357, "count >=4 && count % 4 == 0");
    }

    v9 = v6;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
    v11 = 0;
    do
    {
      v12 = &v9[2 * v11];
      v13 = v12[3];
      v14 = v12[4];
      *&v13 = v13;
      *&v14 = v14;
      v15 = v12[5];
      v16 = v12[6];
      *&v15 = v15;
      *&v16 = v16;
      [v10 addObject:{+[CAMediaTimingFunction functionWithControlPoints::::](CAMediaTimingFunction, "functionWithControlPoints::::", v13, v14, v15, v16)}];
      v11 += 4;
    }

    while (v11 < v7);
    [v5 setInterpolations:v10];
    v17 = *(*v9 + 8);

    return v17(v9);
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE3_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2)
{
  result = [MEMORY[0x1E696AD98] numberWithLongLong:(*(a2 + 28) >> 12) & 1];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"premultiplied"];

    return [a1 setValue:v4 forKey:v5];
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE2_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = *(a2 + 128);
  if (result != *a5)
  {
    result = CGColorSpaceEqualToColorSpaceIgnoringRange();
    if ((result & 1) == 0)
    {
      v8 = *(a2 + 128);
      if (v8)
      {
        v9 = CGColorSpaceRetain(v8);
      }

      else
      {
        v9 = 0;
      }

      return [a1 setColorSpace:v9];
    }
  }

  return result;
}

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE1_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 108)];
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

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE0_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 88);
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

uint64_t _ZZZ20get_setters_for_typeIN2CA6Render13GradientLayerEERKDavEUb_ENUlP15CAGradientLayerPKS2_PKNS1_5LayerERKNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEERK25ReverseSerializationStateE_8__invokeES7_S9_SC_SL_SO_(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 72);
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,void (*)(CAGradientLayer *,CA::Render::GradientLayer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void CATiledLayerDestroy(CATiledLayer *a1)
{
  if ((*(a1->super._attr.layer + 1) & 0x60000) == 0)
  {
    v2 = [(CALayer *)a1 contents];
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (CAImageProviderGetTypeID::once[0] != -1)
      {
        v5 = v4;
        dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
        v4 = v5;
      }

      if (v4 == CAImageProviderGetTypeID::type)
      {
        CAImageProviderSetCallback(v3, 0, 0);

        CAImageProviderRemoveLayer(v3, a1);
      }
    }
  }
}

void tiled_layer_render(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = *MEMORY[0x1E69E9840];
  v11 = CALayerRetain(a6);
  if (v11)
  {
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    v88 = [+[CATransaction valueForKey:](CATransaction valueForKey:{@"CATiledLayerFlags", "unsignedIntValue"}];
    v89 = a3;
    v15 = a1[57];
    v14 = a1[58];
    v16 = v15 * a3;
    v17 = v14 * a4;
    v18 = a1[59];
    if (v18 <= a2)
    {
      if (-v16 < v15)
      {
        v26 = -v16;
      }

      else
      {
        v26 = v15;
      }

      if (-v17 < v14)
      {
        v27 = -v17;
      }

      else
      {
        v27 = a1[58];
      }

      if (v26 >= v27)
      {
        v34 = v27;
      }

      else
      {
        v34 = v26;
      }

      if (!v34)
      {
LABEL_114:
        objc_autoreleasePoolPop(v13);
        return;
      }
    }

    else
    {
      v19 = a2 - a1[60];
      v20 = a1[55];
      v21 = a1[56];
      v22 = v20 << (*(a1 + 240) - a2);
      v23 = v20 >> (a2 - *(a1 + 240));
      v24 = v19 < 0;
      if (v19 < 0)
      {
        v23 = v22;
      }

      v25 = v21 >> v19;
      if (v24)
      {
        v25 = v21 << (*(a1 + 240) - a2);
      }

      if (v23 - v16 >= v15)
      {
        v26 = v15;
      }

      else
      {
        v26 = v23 - v16;
      }

      if (v25 - v17 >= v14)
      {
        v27 = a1[58];
      }

      else
      {
        v27 = v25 - v17;
      }

      if (v26 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      if (!v28)
      {
        goto LABEL_114;
      }

      if (v18 > a2)
      {
        v29 = *(a1 + 55);
        v30 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2 - a1[60] < 0), 0x1FuLL)), vshl_u32(v29, vdup_n_s32(a1[60] - a2)), vshl_u32(v29, vneg_s32(vdup_n_s32(a2 - a1[60]))));
        v31.i64[0] = v30.u32[0];
        v31.i64[1] = v30.u32[1];
        v32 = vcvtq_f64_u64(v31);
        v31.i64[0] = v29.u32[0];
        v31.i64[1] = v29.u32[1];
        v33 = vdivq_f64(v32, vcvtq_f64_u64(v31));
        goto LABEL_31;
      }
    }

    v33 = *MEMORY[0x1E695F060];
LABEL_31:
    *sx = v33;
    [v12 contentsScale];
    v36 = v35 == 1.0;
    v37 = 1.0 / v35;
    v38 = v37 * (v16 / sx[0]);
    v39 = v37 * (v17 / sx[1]);
    v40 = v37 * (v26 / sx[0]);
    v41 = v37 * (v27 / sx[1]);
    if (v36)
    {
      v42 = v16 / sx[0];
    }

    else
    {
      v42 = v38;
    }

    if (v36)
    {
      v43 = v17 / sx[1];
    }

    else
    {
      v43 = v39;
    }

    if (v36)
    {
      v44 = v26 / sx[0];
    }

    else
    {
      v44 = v40;
    }

    if (v36)
    {
      v45 = v27 / sx[1];
    }

    else
    {
      v45 = v41;
    }

    [v12 bounds];
    if (([v12 canDrawRect:a2 levelOfDetail:{v46 + v42, v47 + v43, v44, v45}] & 1) == 0)
    {
      CAImageProviderSetSubImageWithSeed(a1, a2, v89, a4, 0, v88, a5);
      goto LABEL_110;
    }

    v82 = a5;
    v86 = v13;
    space = [*(v12[2] + 2) _retainColorSpace];
    if (a1[54])
    {
      v48 = 3;
    }

    else
    {
      v48 = 1;
    }

    v83 = a4;
    if (([v12 drawsAsynchronously] & 1) != 0 || (v49 = objc_msgSend(v12, "acceleratesDrawing"), v49))
    {
      v49 = 256;
    }

    v50 = CABackingStoreSetDefaultAccelFlags(v49);
    if (v50 >= 0x100)
    {
      v51 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
      if (!v51)
      {
        v51 = CA::Transaction::create(v50);
      }

      v52 = *(v51 + 29);
      *(v51 + 29) = v52 + 1;
      if (!v52)
      {
        os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      }

      v84 = *(v12[2] + 13);
      CA::Transaction::unlock(v51);
      if (8 * v84 < 0 && CAIOSurfaceIsAcceleratable(0, v26, v27, v48))
      {
        iosurface = CA::Render::create_iosurface(v48, v26, v27, 0, v53, v54);
        if (iosurface)
        {
          v56 = iosurface;
          v81 = dword_183E22570[v48];
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v57 = malloc_type_zone_malloc(malloc_zone, 0x70uLL, 0x165299FDuLL);
          v58 = v57;
          if (v57)
          {
            CA::CG::IOSurfaceDrawable::IOSurfaceDrawable(v57, v56, v48, v81, space, 0, 0, 0, 0);
          }

          CFRelease(v56);
          v59 = CAGetCachedCGIOSurfaceContext(v58, (8 * v84) >> 31, 0);
          if (v59)
          {
            v60 = v59;
            v61 = v59;
            if (([v12 isOpaque] & 1) == 0 && objc_msgSend(v12, "clearsContext"))
            {
              CGContextClearRect(v60, *MEMORY[0x1E695F040]);
            }

            v85 = 0;
            goto LABEL_76;
          }

          CA::CG::AccelDrawable::unref(v58);
        }
      }
    }

    v63 = CA::Render::Shmem::new_bitmap(v48, v26, v27, 0, 0, 1u);
    if (!v63)
    {
LABEL_109:
      v13 = v86;
      CGColorSpaceRelease(space);
LABEL_110:
      v78 = CA::Transaction::ensure_compat(v62);
      v79 = v12[2];
      v80 = v78[28];
      if ((v80 & 0x80000000) != 0 || !*(v79 + v80 + 68))
      {
        CA::Layer::thread_flags_(v79, v78);
      }

      CALayerRelease(v12);
      goto LABEL_114;
    }

    v85 = v63;
    v64 = *(v63 + 3);
    v65 = v64[2];
    if (v64[4] <= 1u)
    {
      v66 = 1;
    }

    else
    {
      v66 = v64[4];
    }

    v67 = CA::Render::format_rowbytes(v64[3], v66);
    v68 = CAGetCachedCGBitmapContext_(v64 + v65, v26, v27, v48, v67, space);
    if (!v68 || (v61 = *(v68 + 2)) == 0)
    {
      if (atomic_fetch_add(v85 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v85 + 16))(v85);
      }

      goto LABEL_109;
    }

    v58 = 0;
LABEL_76:
    memset(&v94, 0, sizeof(v94));
    CGContextGetBaseCTM();
    if ((*(v12[2] + 1) & 0x400000) == 0)
    {
      transform.b = 0.0;
      transform.c = 0.0;
      transform.a = 1.0;
      *&transform.d = xmmword_183E20F00;
      transform.ty = v27;
      CGContextConcatCTM(v61, &transform);
      t1 = v94;
      t2.b = 0.0;
      t2.c = 0.0;
      t2.a = 1.0;
      *&t2.d = xmmword_183E20F00;
      t2.ty = v27;
      CGAffineTransformConcat(&transform, &t1, &t2);
      v94 = transform;
    }

    CGContextTranslateCTM(v61, -v16, -v17);
    CGContextScaleCTM(v61, sx[0], sx[1]);
    t1 = v94;
    CGAffineTransformTranslate(&transform, &t1, -v16, -v17);
    v94 = transform;
    t1 = transform;
    CGAffineTransformScale(&transform, &t1, sx[0], sx[1]);
    v94 = transform;
    if (dyld_program_sdk_at_least())
    {
      transform = v94;
      CGContextSetBaseCTM();
    }

    v69 = CA::Layer::prepare_context_for_drawing(v12[2], v61, 0);
    v70 = v12[2];
    v71 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v71)
    {
      v71 = CA::Transaction::create(v69);
    }

    [CA::Layer::layer_being_drawn(v70 v71];
    CAReleaseCachedCGContext(v61);
    if (v58)
    {
      v72 = *(v58 + 72);
      if (v72)
      {
        CA::CG::Queue::flush(v72, 3, 1);
      }

      os_unfair_lock_lock((v58 + 12));
      if (*(v58 + 68))
      {
        v73 = 0;
      }

      else
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v74 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
        v73 = v74;
        if (v74)
        {
          v74 = CA::Render::Surface::Surface(v74, *(v58 + 96), *(v58 + 16), 1, 0, 0, 0);
        }

        CA::Render::Texture::set_colorspace(v74, *(v58 + 24));
      }

      os_unfair_lock_unlock((v58 + 12));
      if (atomic_fetch_add((v58 + 8), 0xFFFFFFFF) == 1)
      {
        (**v58)(v58);
        (*(*v58 + 16))(v58);
      }
    }

    else
    {
      v73 = 0;
    }

    if (v85)
    {
      v73 = CA::Render::Shmem::copy_image(v85, space);
      if (atomic_fetch_add(v85 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v85 + 16))(v85);
      }
    }

    if (v73)
    {
      if (CARenderObjectGetTypeID::once[0] != -1)
      {
        dispatch_once(CARenderObjectGetTypeID::once, &__block_literal_global_6);
      }

      Instance = _CFRuntimeCreateInstance();
      v76 = Instance;
      if (Instance)
      {
        *(Instance + 16) = 0;
        v77 = v73;
        if (!atomic_fetch_add(v73 + 2, 1u))
        {
          v77 = 0;
          atomic_fetch_add(v73 + 2, 0xFFFFFFFF);
        }

        *(Instance + 16) = v77;
      }

      CAImageProviderSetSubImageWithSeed(a1, a2, v89, v83, Instance, v88, v82);
      CFRelease(v76);
      if (atomic_fetch_add(v73 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v73 + 16))(v73);
      }
    }

    goto LABEL_109;
  }
}

uint64_t convertRectToImageCoordinates(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 16) < 1.00000002e30 || *(a4 + 24) < 1.00000002e30)
  {
    v10 = *a4;
    v11 = *(a4 + 8);
    [a1 bounds];
    v13 = v10 - v12;
    v15 = v11 - v14;
    [a1 contentsScale];
    v18.f64[0] = 1.0;
    v19 = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vceqq_f64(v16, v18)).i64[0], 0), vmulq_n_f64(v35, v16.f64[0]), v35);
    v20 = v15 * v16.f64[0];
    if (v16.f64[0] == 1.0)
    {
      v20 = v15;
      v16.f64[0] = v13;
    }

    else
    {
      v16.f64[0] = v13 * v16.f64[0];
    }

    v16.f64[1] = v20;
    v17.f64[0] = 0.0;
    v21 = vdupq_lane_s64(vcgtq_f64(v17, v19).i64[0], 0);
    *&v22.i64[1] = v20;
    *v22.i64 = v19.f64[0] + v16.f64[0];
    v23 = vbslq_s8(v21, v22, v16);
    v22.i64[1] = *&v19.f64[1];
    *v22.i64 = -v19.f64[0];
    v24 = vbslq_s8(v21, v22, v19);
    if (v19.f64[1] < 0.0)
    {
      v23.f64[1] = v19.f64[1] + v20;
      v24.f64[1] = vnegq_f64(v19).f64[1];
    }

    v25 = vceqzq_f64(v24);
    if ((vorrq_s8(vdupq_laneq_s64(v25, 1), v25).u64[0] & 0x8000000000000000) != 0 || (v26 = vceqq_f64(v24, v24), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v26), 1), v26).u64[0] & 0x8000000000000000) != 0))
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      v28.i64[0] = 0;
      v29 = 0;
    }

    else
    {
      v27 = vcvtmq_s64_f64(vmaxnmq_f64(v23, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v28 = vuzp1q_s32(v27, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v23, v24), vdupq_n_s64(0x41C0000000000000uLL))), v27));
      *a5 = v28;
      v29 = v28.u64[1];
    }

    v30 = vclez_s32(v29);
    if ((vpmax_u32(v30, v30).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      v31 = vclez_s32(__PAIR64__(a3, a2));
      if ((vpmax_u32(v31, v31).u32[0] & 0x80000000) != 0 || (v32 = vadd_s32(*v28.i8, v29), *v28.i8 = vmax_s32(*v28.i8, 0), v33 = vsub_s32(vmin_s32(v32, __PAIR64__(a3, a2)), *v28.i8), v34 = vclez_s32(v33), (vpmax_u32(v34, v34).u32[0] & 0x80000000) != 0))
      {
        result = 0;
        *(a5 + 8) = 0;
      }

      else
      {
        v28.u64[1] = v33;
        *a5 = v28;
        return 1;
      }
    }
  }

  else
  {
    *a5 = 0;
    result = 1;
    *(a5 + 8) = a2;
    *(a5 + 12) = a3;
  }

  return result;
}

uint64_t CA::ScanConverter::Path::quadto(CA::ScanConverter::Path *this, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(this + 10) != 1.0)
  {
    return CA::ScanConverter::Path::quadto(this, a2, a3, 1.0, a4, a5, 1.0, a6, a7, a8, a9, a10, a11, a12);
  }

  v12 = *(this + 8);
  v13 = *(this + 9);
  *(this + 8) = a4;
  *(this + 9) = a5;
  return CA::ScanConverter::Path::add_cube(this, v12, v13, (v12 + a2 + a2) * 0.333333333, (v13 + a3 + a3) * 0.333333333, (a2 + a2 + a4) * 0.333333333, (a3 + a3 + a5) * 0.333333333, a4, a5);
}

uint64_t CA::ScanConverter::Path::add_cube_clip(uint64_t this, float64_t a2, float64_t a3, double a4, float64_t a5, float64_t a6, double a7, float64_t a8, float64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, float64x2_t a18, double a19)
{
  v19 = this;
  v20 = a4 + -0.0001;
  v21 = a19 + -0.0001;
  if (a4 + -0.0001 < 0.0 || v21 < 0.0)
  {
    if (v20 < 0.0 && v21 < 0.0)
    {
      return this;
    }

    v32 = 0;
    v33 = a7 - a4;
    v34 = (a7 - a4) * 3.0;
    v35 = (a17 - a7) * 3.0;
    v36 = v35 - v34;
    v37 = a19 - (v35 + a4);
    v38 = v37 * 3.0;
    v39 = v36;
    v40 = v34;
    v41 = a4 + -0.0001;
    while (2)
    {
      _D19 = 0.5;
      v43 = 8;
      do
      {
        v44 = v41 + (v40 + (v39 + _D19 * v37) * _D19) * _D19;
        if (fabs(v44) < 0.000001)
        {
          break;
        }

        v45 = v40 + (v39 + v39 + _D19 * v38) * _D19;
        if (fabs(v45) < 0.000001)
        {
          v48 = 0.0;
          v49 = 1.0;
          _D19 = 0.5;
          do
          {
            v50 = v20 + (v34 + (v36 + _D19 * v37) * _D19) * _D19;
            if (fabs(v50) < 0.000001)
            {
              break;
            }

            if (v50 <= 0.0)
            {
              v49 = _D19;
            }

            else
            {
              v48 = _D19;
            }

            _D19 = v48 + (v49 - v48) * 0.5;
          }

          while (v48 < v49);
          goto LABEL_26;
        }

        _D19 = _D19 - v44 / v45;
        --v43;
      }

      while (v43);
      if (_D19 >= 0.0 && _D19 <= 1.0)
      {
        if (!v32)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v47 = v39 + _D19 * v37;
        v41 = v40 + v47 * _D19 - (v41 + (v40 + v47 * _D19) * _D19);
        ++v32;
        v39 = v37;
        v40 = v47;
        if (v32 != 4)
        {
          continue;
        }
      }

      break;
    }

    v78 = 1;
    do
    {
      v79 = v20 + (v34 + (v36 + _D19 * v37) * _D19) * _D19;
      if (fabs(v79) < 0.000001)
      {
        break;
      }

      v80 = v34 + (v36 + v36 + _D19 * v38) * _D19;
      if (fabs(v80) < 0.000001)
      {
        break;
      }

      v81 = v78;
      v78 = 0;
      _D19 = _D19 - v79 / v80;
    }

    while ((v81 & 1) != 0);
LABEL_26:
    v51.f64[0] = a5;
    v51.f64[1] = a6;
    v52.f64[0] = a2;
    v52.f64[1] = a3;
    _Q22 = vsubq_f64(v51, v52);
    v54.f64[0] = a8;
    v54.f64[1] = a9;
    v55 = vsubq_f64(v51, v54);
    __asm { FMOV            V28.2D, #-2.0 }

    v61 = a4 + a7 * -2.0 + a17;
    v62 = vaddq_f64(vmlaq_f64(v52, _Q28, v51), v54);
    __asm
    {
      FMOV            V26.2D, #3.0
      FMOV            V29.2D, #-3.0
    }

    v65 = vmlaq_n_f64(v52, vmlaq_n_f64(vmulq_f64(_Q22, _Q26), vmlaq_n_f64(vmulq_f64(v62, _Q26), vsubq_f64(a18, vmlaq_f64(v52, _Q29, v55)), _D19), _D19), _D19);
    v66 = a4 + (v34 + (v61 * 3.0 + _D19 * v37) * _D19) * _D19;
    if (v20 >= 0.0)
    {
      __asm { FMOV            V4.2D, #2.0 }

      _Q4.f64[0] = _D19;
      v76 = a4 + (v33 + v33 + _D19 * v61) * _D19;
      __asm { FMLA            D7, D19, V22.D[1] }

      v83 = *&v66;
      v85 = v65;
      this = CA::ScanConverter::Path::add_cube(this, 1.0 / a4 * a2, 1.0 / a4 * a3, 1.0 / (a4 + _D19 * v33) * (a2 + _D19 * _Q22.f64[0]), 1.0 / (a4 + _D19 * v33) * _D7, 1.0 / v76 * (a2 + (_Q22.f64[0] + _Q22.f64[0] + _D19 * v62.f64[0]) * _D19), 1.0 / v76 * (a3 + vaddvq_f64(vmulq_f64(_Q4, vzip2q_s64(v62, _Q22))) * _D19), 1.0 / v66 * v65.f64[0], vmuld_lane_f64(1.0 / v66, v65, 1));
      *(v19 + 96) = vdivq_f64(v85, vdupq_lane_s64(v83, 0));
      *(v19 + 88) = 1;
      return this;
    }

    v67 = a18.f64[0] - (a18.f64[0] - a8 + a18.f64[0] - a8 + (1.0 - _D19) * (-(a5 + a8 * -2.0) - a18.f64[0])) * (1.0 - _D19);
    v68 = a18.f64[1] - (a18.f64[1] - a9 + a18.f64[1] - a9 + (1.0 - _D19) * (-(a6 + a9 * -2.0) - a18.f64[1])) * (1.0 - _D19);
    v69 = a19 - (a19 - a17 + a19 - a17 + (1.0 - _D19) * (-(a7 + a17 * -2.0) - a19)) * (1.0 - _D19);
    v70 = a18.f64[0] - (1.0 - _D19) * (a18.f64[0] - a8);
    v71 = a18.f64[1] - (1.0 - _D19) * (a18.f64[1] - a9);
    v72 = a19 - (1.0 - _D19) * (a19 - a17);
    v73 = v65.f64[1];
    v74 = v65.f64[1] / v66;
    if (*(this + 88) == 1)
    {
      v82 = v66;
      v84 = v65.f64[0];
      CA::ScanConverter::Path::add_line(this, *(this + 96), *(this + 104), v65.f64[0] / v66, v74);
      v66 = v82;
      v65.f64[0] = v84;
      *(v19 + 88) = 0;
    }

    else
    {
      *(this + 89) = 1;
      *(this + 112) = v65.f64[0] / v66;
      *(this + 120) = v74;
    }

    v24 = 1.0 / v66 * v65.f64[0];
    v25 = 1.0 / v66 * v73;
    v26 = 1.0 / v69 * v67;
    v27 = 1.0 / v69 * v68;
    v28 = 1.0 / v72 * v70;
    v29 = 1.0 / v72 * v71;
    v30 = 1.0 / a19 * a18.f64[0];
    v31 = 1.0 / a19 * a18.f64[1];
  }

  else
  {
    v22 = 1.0 / a4;
    v23 = 1.0 / a7;
    v24 = v22 * a2;
    v25 = v22 * a3;
    v26 = v23 * a5;
    v27 = v23 * a6;
    v28 = 1.0 / a17 * a8;
    v29 = 1.0 / a17 * a9;
    v30 = 1.0 / a19 * a18.f64[0];
    v31 = 1.0 / a19 * a18.f64[1];
  }

  return CA::ScanConverter::Path::add_cube(v19, v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t CA::ScanConverter::path_rect_containment(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v123[1020] = *MEMORY[0x1E69E9840];
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = *(v3 + 24);
  v11 = 32 * v10;
  v112 = 32 * v10;
  if ((32 * v10) > 0x1000)
  {
    v113 = malloc_type_malloc(v11, 0x25DB91DBuLL);
    if (!v113)
    {
      return 1;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    v113 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v113, v13);
  }

  v14 = v8 + v6;
  v15 = v9 + v7;
  v16 = *(v4 + 8);
  v17 = v113;
  if (v16)
  {
    v18 = 0;
    do
    {
      v19 = v16[1];
      if (v19)
      {
        v20 = (v16 + 3);
        v21 = &v17[16 * v18 + 8];
        v18 += v19;
        v22 = (v16 + 3);
        do
        {
          v23 = *v22;
          v22 += 6;
          *(v21 - 2) = ((v23 >> 31) | 0x80000000) ^ v23;
          *v21 = v20;
          v21 += 16;
          v20 = v22;
          --v19;
        }

        while (v19);
      }

      v16 = *v16;
    }

    while (v16);
  }

  v111 = &v111;
  v24 = &v17[16 * v10];
  CA::radix_sort(v10);
  if (v6 <= -16777216)
  {
    v27 = -16777216;
  }

  else
  {
    v27 = v6;
  }

  v115 = v27;
  if (v14 >= 0x1000000)
  {
    v28 = 0x1000000;
  }

  else
  {
    v28 = v14;
  }

  if (v7 <= -16777216)
  {
    v29 = -16777216;
  }

  else
  {
    v29 = v7;
  }

  v121[0] = 0;
  v121[1] = v123;
  if (v15 >= 0x1000000)
  {
    v30 = 0x1000000;
  }

  else
  {
    v30 = v15;
  }

  v122 = xmmword_183E210D0;
  v119 = 0;
  v120 = v121;
  if (v29 >= v30)
  {
    LOBYTE(v33) = 1;
    LOBYTE(v35) = 1;
    goto LABEL_170;
  }

  v31 = 0;
  v32 = 0;
  v33 = 1;
  v34 = v17;
  v35 = 1;
  v36 = v115;
  v114 = v30;
  while (1)
  {
    if (v31)
    {
      v37 = v29;
      v38 = v29 + 1;
      v39 = (v29 + 1);
      v40 = &v119;
      do
      {
        v41 = *(v31 + 16);
        v42 = v41[1];
        if (v42 <= v37)
        {
          *v40 = *v31;
          *v31 = v32;
          v32 = v31;
        }

        else
        {
          v43 = *v41;
          if (*v41 >= v37)
          {
            v44 = *v41;
          }

          else
          {
            v44 = v29;
          }

          v45 = v41[2];
          v46 = v41[3];
          v47 = v41[4];
          v48 = v47 + ((v46 + ((v44 - v43) * v45)) * (v44 - v43));
          if (v42 > v39)
          {
            v42 = v38;
          }

          v49 = v47 + ((v46 + ((v42 - v43) * v45)) * (v42 - v43));
          if (v48 >= v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = v48;
          }

          if (v48 > v49)
          {
            v49 = v48;
          }

          v26.f32[0] = fmaxf(v49 - v50, 0.000001);
          v26 = vdup_lane_s32(v26, 0);
          *(v31 + 24) = v41[5] * (v42 - v44);
          *(v31 + 28) = v50;
          *(v31 + 32) = v49;
          *(v31 + 36) = vrecpe_f32(v26).u32[0];
          v40 = v31;
        }

        v31 = *v40;
      }

      while (*v40);
      v51 = v119;
      if (v119)
      {
        v52 = 0;
        v53 = &v119;
        do
        {
          while (1)
          {
            v54 = v53;
            v53 = v51;
            v51 = *v51;
            if (!v51)
            {
              break;
            }

            if (*(v53 + 7) > *(v51 + 7))
            {
              *v54 = v51;
              *v53 = *v51;
              *v51 = v53;
              v52 = 1;
            }
          }

          v51 = v119;
          v55 = v52 & (v119 != 0);
          v53 = &v119;
          v52 = 0;
        }

        while ((v55 & 1) != 0);
      }
    }

    else
    {
      v38 = v29 + 1;
      v39 = (v29 + 1);
    }

    if (v34 < v24)
    {
      v116 = v38;
      v117 = v33;
      v56 = 0;
      v57 = 0;
      v58 = v29;
      do
      {
        v59 = *(v34 + 1);
        v60 = *v59;
        if (*v59 >= v39)
        {
          break;
        }

        v61 = v59[1];
        if (v61 > v58)
        {
          if (v32)
          {
            v62 = *v32;
          }

          else
          {
            v32 = x_heap_malloc_small_(v120, 0x28uLL);
            v62 = 0;
            v59 = *(v34 + 1);
            v60 = *v59;
            v61 = v59[1];
          }

          if (v60 >= v58)
          {
            v63 = v60;
          }

          else
          {
            v63 = v29;
          }

          v64 = v59[2];
          v65 = v59[3];
          v66 = v59[4];
          v67 = v59[5];
          v68 = v66 + ((v65 + ((v63 - v60) * v64)) * (v63 - v60));
          if (v61 > v39)
          {
            v61 = v39;
          }

          v69 = v66 + ((v65 + ((v61 - v60) * v64)) * (v61 - v60));
          if (v68 >= v69)
          {
            v70 = v69;
          }

          else
          {
            v70 = v68;
          }

          if (v68 > v69)
          {
            v69 = v68;
          }

          *v25.i32 = fmaxf(v69 - v70, 0.000001);
          *(v32 + 16) = v59;
          v25 = vrecpe_f32(vdup_lane_s32(v25, 0));
          *(v32 + 24) = v67 * (v61 - v63);
          *(v32 + 28) = v70;
          *(v32 + 32) = v69;
          *(v32 + 36) = v25.i32[0];
          *v32 = v57;
          ++v56;
          v57 = v32;
          v32 = v62;
        }

        v34 += 16;
      }

      while (v34 < v24);
      if (v56)
      {
        if (v56 != 1)
        {
          v57 = CA::ScanConverter::RendererImpl::Edge::sort_xmin(v57, v56);
        }

        v30 = v114;
        v36 = v115;
        v38 = v116;
        v71 = &v119;
        if (v57)
        {
          while (1)
          {
            v72 = *v71;
            if (!*v71)
            {
              break;
            }

            if (*(v57 + 28) >= *(v72 + 7))
            {
              v71 = *v71;
              if (!v57)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v73 = *v57;
              *v71 = v57;
              *v57 = v72;
              v57 = v73;
              if (!v73)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_78:
          *v71 = v57;
        }

        else
        {
LABEL_76:
          if (!*v71)
          {
            v57 = 0;
            goto LABEL_78;
          }
        }

        v33 = v117;
        goto LABEL_81;
      }

      v38 = v116;
      v33 = v117;
      v30 = v114;
      v36 = v115;
    }

LABEL_81:
    v31 = v119;
    if (!v119)
    {
      break;
    }

    if (v36 >= v28)
    {
      goto LABEL_159;
    }

    v74 = 0;
    v75 = 0.0;
    v76 = v36;
    v77 = v119;
    do
    {
      for (i = v76; v74; v74 = *(v74 + 8))
      {
        if (*(v74 + 32) > i)
        {
          break;
        }

        v75 = *(v74 + 24) + v75;
      }

      v79 = i + 1.0;
      v118 = v74;
      if (!v77)
      {
        goto LABEL_105;
      }

      while (1)
      {
LABEL_88:
        v80 = v77;
        v81 = v77[7];
        if (v79 <= v81)
        {
          v74 = v118;
          if (!v118)
          {
            v98 = floorf(v81);
            v99 = v98;
            if (v98 < -16777000.0)
            {
              v99 = -16777216;
            }

            v100 = 16777000.0;
            if (v81 < 16777000.0)
            {
              v100 = v77[7];
            }

            if (v81 >= 0.0)
            {
              v99 = v100;
            }

            if (v99 >= v28)
            {
              v99 = v28;
            }

            if ((LODWORD(v81) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v86 = v28;
            }

            else
            {
              v86 = v99;
            }

            goto LABEL_140;
          }

          goto LABEL_108;
        }

        v77 = *v77;
        v82 = v80[8];
        if (v82 <= i)
        {
          break;
        }

        v83 = v118;
        if (v118)
        {
          v84 = &v118;
          while (1)
          {
            v85 = *(v83 + 32);
            if (SLODWORD(v82) == SLODWORD(v85))
            {
              if (v81 < *(v83 + 28))
              {
                goto LABEL_103;
              }
            }

            else if (v82 < v85)
            {
LABEL_103:
              *(v80 + 1) = v83;
              *v84 = v80;
              if (!v77)
              {
                goto LABEL_104;
              }

              goto LABEL_88;
            }

            v84 = (v83 + 8);
            v83 = *(v83 + 8);
            if (!v83)
            {
              goto LABEL_101;
            }
          }
        }

        v84 = &v118;
LABEL_101:
        *v84 = v80;
        *(v80 + 1) = 0;
        if (!v77)
        {
          goto LABEL_104;
        }
      }

      v75 = v80[6] + v75;
      if (v77)
      {
        goto LABEL_88;
      }

LABEL_104:
      v74 = v118;
LABEL_105:
      v80 = 0;
      v86 = v28;
      if (!v74)
      {
LABEL_140:
        v96 = fabsf(v75);
        if (v2)
        {
          v101 = v96;
          v96 = v96 - truncf(v96);
          if (v101)
          {
            v96 = 1.0 - v96;
          }

LABEL_145:
          v102 = v96;
          if (v96 != 0.0)
          {
LABEL_146:
            v33 = 0;
            v96 = v102;
          }

          v74 = 0;
          goto LABEL_148;
        }

        v102 = 1.0;
        if (v96 < 1.0)
        {
          goto LABEL_145;
        }

        goto LABEL_146;
      }

LABEL_108:
      v87 = 1.0;
      v88 = v74;
      v89 = v75;
      do
      {
        v90 = v88;
        v91 = *(v88 + 28);
        if (v91 >= i)
        {
          v92 = *(v88 + 28);
        }

        else
        {
          v92 = v76;
        }

        v93 = *(v88 + 32);
        if (v93 > v79)
        {
          v93 = i + 1.0;
        }

        v89 = v89 + ((*(v88 + 24) * v87) * ((v79 - v93) + (((v92 - v93) * *(v88 + 36)) * (v91 + ((v93 + v92) * -0.5)))));
        v88 = *(v88 + 8);
        if (v2 == 1)
        {
          if (!v88)
          {
            v96 = fabsf(v89);
LABEL_125:
            v97 = v96;
            v96 = v96 - truncf(v96);
            if (v97)
            {
              v96 = 1.0 - v96;
            }

            goto LABEL_127;
          }

          v94 = *(v90 + 16);
          v95 = *(v88 + 16);
          if (v94[5] == v95[5] && *v94 != v95[1] && v94[1] != *v95)
          {
            v87 = -v87;
          }
        }
      }

      while (v88);
      v96 = fabsf(v89);
      if (v2)
      {
        goto LABEL_125;
      }

      if (v96 >= 1.0)
      {
        v86 = v76 + 1;
        v96 = 1.0;
        goto LABEL_128;
      }

LABEL_127:
      v86 = v76 + 1;
      if (v96 == 0.0)
      {
        goto LABEL_148;
      }

LABEL_128:
      v33 = 0;
LABEL_148:
      if (v96 != 1.0)
      {
        v35 = 0;
      }

      v76 = v86;
      v77 = v80;
    }

    while (v86 < v28);
LABEL_159:
    if (v38 < v30)
    {
      v29 = v38;
      if ((v33 | v35))
      {
        continue;
      }
    }

    goto LABEL_170;
  }

  if (v34 != v24)
  {
    v103 = vcvtms_s32_f32(**(v34 + 1));
    if (v29 <= v103)
    {
      v38 = v103;
    }

    else
    {
      v38 = v29;
    }

    v104 = v38 - v29 + 1;
    do
    {
      v105 = v35;
      v35 = 0;
      --v104;
    }

    while (v104);
    v35 = v105;
    goto LABEL_159;
  }

  if (v29 <= v30)
  {
    v107 = v30;
  }

  else
  {
    v107 = v29;
  }

  v108 = v107 - v29 + 1;
  do
  {
    v109 = v35;
    LOBYTE(v35) = 0;
    --v108;
  }

  while (v108);
  LOBYTE(v35) = v109;
LABEL_170:
  if (v112 > 0x1000)
  {
    free(v113);
  }

  x_heap_free(v120);
  if (v35)
  {
    v110 = 0;
  }

  else
  {
    v110 = 2;
  }

  if (v33)
  {
    return 1;
  }

  else
  {
    return v110;
  }
}

void CA::CG::FillRectsShadow::draw_shadow(CA::CG::FillRectsShadow *this, CA::CG::Renderer *a2)
{
  v83[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  if (((*(**(this + 18) + 136))(*(this + 18)) & 5) != 0)
  {
    v10 = 88;
    if ((*(this + 100) & 4) == 0)
    {
      v10 = 32;
    }

    v11 = (a2 + v10);
    v8.n128_u64[0] = *(a2 + 10);
    v6.n128_u64[0] = *(a2 + v10);
    v5.n128_u64[0] = *(a2 + v10 + 24);
    v12 = *(a2 + v10 + 8);
    v13 = *(a2 + v10);
    v15 = *(this + 18);
    v14 = *(this + 19);
    v9.n128_u64[0] = *(v14 + 80);
    v7.n128_u32[0] = *(v14 + 76);
    v16 = *(v15 + 100);
    if ((v16 & 0x400) == 0)
    {
      *(v4[2] + 16) = 3;
      v15 = *(this + 18);
    }

    v83[0] = 0;
    v83[1] = 0;
    v17 = v4[2];
    v18 = v17[1];
    _H7 = *(v15 + 94);
    if (_H7 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
    {
      v25 = v17[1];
    }

    else
    {
      __asm { FCVT            S7, H7 }

      v25 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v18), _S7));
    }

    if (*(v15 + 112))
    {
      v61 = v17[1];
      v26 = 0;
      v27 = 0;
      v28 = v8.n128_f64[0];
      *&v29.f64[1] = v12.n128_u64[1];
      *&v29.f64[0] = v5.n128_u64[0];
      v30 = vmulq_f64(v12, v12).f64[0];
      v31 = vmulq_f64(v29, v13);
      v32 = vcvtq_f64_f32(vmul_n_f32(v9.n128_u64[0], v28));
      v33 = vmulq_f64(v12, v32);
      *v29.f64 = v30 + v6.n128_f64[0] * v6.n128_f64[0];
      v5.n128_u64[1] = v6.n128_u64[0];
      v34 = ((v7.n128_f32[0] * v28) / sqrtf(*v29.f64));
      v35 = vmulq_n_f64(vmlaq_f64(vnegq_f64(vextq_s8(v33, v33, 8uLL)), v32, v5), 1.0 / vsubq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0]);
      v36 = v34 * 2.8;
      if ((v16 & 0x400) != 0)
      {
        v37 = 278528;
      }

      else
      {
        v37 = 0;
      }

      v63 = v37;
      v38 = v34 * 5.6;
      v64 = v35;
      v39 = v35.f64[1];
      v40 = 1.0 / (v34 * 5.6);
      v62 = vcvtq_f32_f16(v25);
      do
      {
        v65 = 0u;
        v66 = 0u;
        v41 = v15 + 32 * v26;
        v42 = *(v41 + 120);
        v43 = *(v41 + 136);
        v65 = v42;
        v66 = v43;
        if (*&v43 >= 0.0)
        {
          v44 = *&v43;
        }

        else
        {
          v44 = -*&v43;
          v65.f64[0] = *&v43 + v42.f64[0];
          *&v66 = -*&v43;
        }

        *&v43 = *(&v43 + 1);
        v42.f64[0] = v42.f64[1];
        if (*(&v43 + 1) < 0.0)
        {
          v42.f64[0] = *(&v43 + 1) + v42.f64[1];
          *&v43 = -*(&v43 + 1);
          v65.f64[1] = *(&v43 + 1) + v42.f64[1];
          *(&v66 + 1) = -*(&v43 + 1);
        }

        v45 = fmin(v44, *&v43);
        v46 = v45 > v38;
        if (v45 > v38)
        {
          if ((v16 & 0x400) != 0)
          {
            *(v4[2] + 16) = 12;
          }

          if (!v27)
          {
            (*(*v4 + 544))(v4, 0, v83);
            v42.f64[0] = v65.f64[1];
          }

          v47 = v64.f64[0] + v65.f64[0] - v36;
          v76.f64[0] = v47;
          v76.f64[1] = v47 + v38;
          v77 = *&v66 + v47;
          v78 = *&v66 + v47 + v38;
          v48 = v42.f64[0] - v36 + v39;
          v49 = v48 + v38;
          v72 = v48;
          v73 = v48 + v38;
          v50 = *(&v66 + 1) + v48;
          v74 = *(&v66 + 1) + v48;
          v75 = *(&v66 + 1) + v48 + v38;
          v71[0] = __PAIR64__(v83[0], HIDWORD(v83[0]));
          v71[1] = v83[0];
          v68 = HIDWORD(v83[0]);
          v69 = v83[0];
          v70 = v83[0];
          v51 = 1.0;
          if (v47 + v38 > *&v66 + v47)
          {
            v52 = (*&v66 + v47 + v47 + v38) * 0.5;
            v53 = v52;
            v54 = (v53 - v47) * v40;
            v51 = v54 * 2.0 + -0.9;
            v76.f64[1] = v53;
            v77 = v53;
          }

          if (v49 > v50)
          {
            v55 = (v50 + v49) * 0.5;
            v56 = v55;
            v57 = (v56 - v48) * v40;
            v51 = (v57 * 2.0 + -0.9) * v51;
            v73 = v56;
            v74 = v56;
          }

          v58 = v25;
          if (v51 < 1.0)
          {
            v59 = 0.0;
            if (v51 >= 0.0)
            {
              v59 = v51;
            }

            v58 = vcvt_f16_f32(vmulq_n_f32(v62, v59));
          }

          *(v4[2] + 8) = v58;
          memset(v67, 0, 200);
          CA::Transform::set_affine(v67, *v11, v11[1], v11[2], v11[3], v11[4], v11[5]);
          *(&v67[9] + 1) = &v65;
          *&v67[10] = v67;
          DWORD2(v67[10]) = 63;
          memset(&v67[10] + 12, 0, 28);
          CA::OGL::emit_nine_part_rect(v4, &v67[9] + 8, &v76, &v72, v71, &v68, 0, 0, v63);
        }

        else
        {
          v65 = vaddq_f64(v65, v64);
          LOBYTE(v69) = 0;
          v68 = 33686017;
          v76 = v65;
          v78 = v65.f64[1];
          v77 = v65.f64[0] + v44;
          v79 = v65.f64[0] + v44;
          v80 = v65.f64[1] + *&v43;
          v81 = v65.f64[0];
          v82 = v65.f64[1] + *&v43;
          v60 = CA::Render::Path::new_path(0, 5u, &v68, 4u, v76.f64, 0);
          v72 = 0.0;
          v71[0] = v25;
          CA::Transform::set_affine(v67, *v11, v11[1], v11[2], v11[3], v11[4], v11[5]);
          CA::OGL::emit_shadow_path(v4);
          if (v60)
          {
            if (atomic_fetch_add(v60 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v60 + 16))(v60);
            }
          }
        }

        ++v26;
        v15 = *(this + 18);
        v27 = v46;
      }

      while (v26 < *(v15 + 112));
      v17 = v4[2];
      v18 = v61;
    }

    v17[1] = v18;
    (*(*v4 + 560))(v4, 0, 0, v5, v6, v12, v7, v13, v8, v9);
    *(v4[2] + 16) = 0;
  }

  else
  {

    CA::CG::DrawShadow::draw_shadow(this, a2);
  }
}

uint64_t CA::CG::DrawOp::can_coalesce()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

void CA::CG::FillRectsShadow::~FillRectsShadow(CA::CG::FillRectsShadow *this)
{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF203CE0;
  v2 = *(this + 19);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::DrawOp::~DrawOp(CA::CG::DrawOp *this)
{
  *this = &unk_1EF2053F0;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    CFRelease(*v3);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v3);
  }

  v4 = *(this + 9);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    CA::CG::ClipStack::destroy_clip_stack(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    CGSoftMaskRelease();
    CGRenderingStateRelease();
    CGGStateRelease();
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v5);
  }
}

uint64_t CA::Render::WindowLayer::set_property(uint64_t this, unint64_t a2, const unsigned int *a3, BOOL a4, uint64_t a5, double *a6)
{
  v6 = *a3;
  if (*a3 == 277)
  {
    if (a5)
    {
      v10 = *(this + 12);
      if (*a6 == 0.0)
      {
        v9 = v10 & 0xFFFFFDFF;
      }

      else
      {
        v9 = v10 | 0x200;
      }

      goto LABEL_17;
    }
  }

  else if (v6 == 570)
  {
    if (a5)
    {
      *(this + 32) = *a6;
    }
  }

  else if (v6 == 312 && a5 != 0)
  {
    v8 = *(this + 12);
    if (*a6 == 0.0)
    {
      v9 = v8 & 0xFFFFFEFF;
    }

    else
    {
      v9 = v8 | 0x100;
    }

LABEL_17:
    *(this + 12) = v9;
  }

  return this;
}

uint64_t CA::Render::WindowLayer::get_property(CA::Render::WindowLayer *this, unint64_t a2, const unsigned int *a3, unint64_t a4, double *a5, double **a6)
{
  if (a4 < 4)
  {
    return 0;
  }

  if (a6)
  {
    *a6 = a5;
  }

  v7 = *a3;
  if (*a3 == 277)
  {
    v8 = (*(this + 13) & 2) == 0;
LABEL_11:
    v9 = 0.0;
    if (!v8)
    {
      v9 = 1.0;
    }

    goto LABEL_13;
  }

  if (v7 != 570)
  {
    if (v7 != 312)
    {
      return 0;
    }

    v8 = (*(this + 13) & 1) == 0;
    goto LABEL_11;
  }

  v9 = *(this + 4);
LABEL_13:
  *a5 = v9;
  return 1;
}

_DWORD *CA::Render::WindowLayer::copy@<X0>(CA::Render::WindowLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 63;
    ++dword_1ED4EAB34;
    *result = &unk_1EF1F5B38;
    *(result + 2) = *(this + 2);
    *(result + 2) = *(this + 2);
    *(result + 48) = *(this + 48);
    result[3] = *(this + 3) & 0xFFFFFF00 | 0x3F;
  }

  *a2 = result;
  return result;
}

char *CA::Render::WindowLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  if (a4)
  {
    v10 = "window-layer";
  }

  else
  {
    X::Stream::printf(this, "(window-layer");
    v7 = 2 * a3 + 2;
    X::Stream::printf(this, "\n%*s", v7, "");
    X::Stream::printf(this, "(post-change-duration %f)", *(a1 + 32));
    X::Stream::printf(this, "\n%*s", v7, "");
    X::Stream::printf(this, "(uid %lu)", *(a1 + 16));
    X::Stream::printf(this, "\n%*s", v7, "");
    X::Stream::printf(this, "(ctx id %u)", *(a1 + 24));
    if (*(a1 + 48))
    {
      X::Stream::printf(this, "\n%*s", v7, "");
      X::Stream::printf(this, "(mode ");
      v8 = *(a1 + 48);
      if (v8 == 1)
      {
        X::Stream::printf(this, "always");
      }

      else if (v8 == 2)
      {
        X::Stream::printf(this, "never");
      }

      X::Stream::printf(this, ")");
    }

    v9 = *(a1 + 12);
    if ((v9 & 0x100) != 0)
    {
      X::Stream::printf(this, "\n%*s", v7, "");
      X::Stream::printf(this, "(ignore-animations)");
      v9 = *(a1 + 12);
    }

    if ((v9 & 0x200) != 0)
    {
      X::Stream::printf(this, "\n%*s", v7, "");
      X::Stream::printf(this, "(fully-occluded)");
    }

    v10 = ")";
  }

  return X::Stream::printf(this, v10);
}

uint64_t ___ZN2CA3OGLL34register_for_thermal_notificationsEv_block_invoke(int a1, int token)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = notify_get_state(token, v3);
  if (!result)
  {
    CA::OGL::thermal_level = LODWORD(v3[0]);
  }

  return result;
}

void CA::OGL::update_perf_hud_pstate(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x60) != 0)
  {
    if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::once != -1)
    {
      dispatch_once(&CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::once, &__block_literal_global_69);
    }

    if (!CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate && (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_monitor_connecting & 1) == 0)
    {
      CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_current_options = 0;
    }

    if ((a2 & 0x40) != 0)
    {
      v4 = (a2 >> 5) & 1 | 2;
    }

    else
    {
      v4 = (a2 >> 5) & 1;
    }

    if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_current_options == v4)
    {
      if (!CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate)
      {
LABEL_12:
        if ((a2 & 0x20) != 0)
        {
          *(a1 + 608) = 0u;
          *(a1 + 624) = 0u;
        }

        else if ((a2 & 0x40) != 0)
        {
          *(a1 + 640) = 0u;
          *(a1 + 664) = 0u;
          *(a1 + 680) = 0u;
          *(a1 + 696) = 0u;
        }

        return;
      }

      goto LABEL_28;
    }

    if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate && CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_destroy)
    {
      if ((CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_monitor_connecting & 1) == 0)
      {
        CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_destroy();
        CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate = 0;
LABEL_25:
        if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_monitor_connecting)
        {
          goto LABEL_12;
        }

        if (!CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_connect)
        {
          goto LABEL_12;
        }

        CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_monitor_connecting = 1;
        CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_current_options = v4;
        CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_connect(v4, &__block_literal_global_88);
        if (!CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate)
        {
          goto LABEL_12;
        }
      }
    }

    else if (!CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate)
    {
      goto LABEL_25;
    }

LABEL_28:
    if ((a2 & 0x20) != 0)
    {
      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_cpu)
      {
        v7 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_cpu() * 100.0);
      }

      else
      {
        v7 = 0;
      }

      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_gpu)
      {
        v8 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_gpu(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate) * 100.0);
      }

      else
      {
        v8 = 0;
      }

      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_soc)
      {
        v9 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_soc(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate) * 100.0);
      }

      else
      {
        v9 = 0;
      }

      v10 = CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_dram;
      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_dram)
      {
        v10 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_dram(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate) * 100.0);
      }

      *(a1 + 608) = v7;
      *(a1 + 616) = v8;
      *(a1 + 624) = v9;
      *(a1 + 632) = v10;
    }

    else if ((a2 & 0x40) != 0)
    {
      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_cpu_watts)
      {
        v6 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_cpu_watts() * 1000.0);
      }

      else
      {
        v6 = 0;
      }

      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_gpu_watts)
      {
        v11 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_gpu_watts(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate) * 1000.0);
      }

      else
      {
        v11 = 0;
      }

      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_soc_watts)
      {
        v12 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_soc_watts(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate) * 1000.0);
      }

      else
      {
        v12 = 0;
      }

      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_dram_watts)
      {
        v13 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_dram_watts(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate) * 1000.0);
      }

      else
      {
        v13 = 0;
      }

      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_isp_watts)
      {
        v14 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_isp_watts(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate) * 1000.0);
      }

      else
      {
        v14 = 0;
      }

      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_ap_watts)
      {
        v15 = (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_ap_watts(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate) * 1000.0);
      }

      else
      {
        v15 = 0;
      }

      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_lostperf_ratio)
      {
        lostperf_ratio = CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_lostperf_ratio(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate);
      }

      else
      {
        lostperf_ratio = 0.0;
      }

      batterydrain_watts = 0.0;
      if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_batterydrain_watts)
      {
        batterydrain_watts = CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_batterydrain_watts(CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate, 0.0);
      }

      *(a1 + 664) = v6;
      *(a1 + 672) = v11;
      *(a1 + 680) = v12;
      *(a1 + 688) = v13;
      *(a1 + 696) = v14;
      *(a1 + 704) = v15;
      *(a1 + 640) = (fmaxf(batterydrain_watts, 0.0) * 1000.0);
      *(a1 + 648) = lostperf_ratio;
    }

    return;
  }

  if (CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate)
  {
    v5 = CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_destroy == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_current_options = 0;
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_destroy();
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate = 0;
  }
}

void CA::OGL::update_perf_hud_memory(CA::OGL *this, CA::OGL::PerformanceHUD *a2)
{
  v2 = a2;
  v19 = *MEMORY[0x1E69E9840];
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    if (v2 < 0)
    {
      v4 = getpid();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN2CA3OGLL22update_perf_hud_memoryEPNS0_14PerformanceHUDEj_block_invoke;
      block[3] = &__block_descriptor_tmp_94;
      v17 = v4;
      if (CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::once != -1)
      {
        dispatch_once(&CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::once, block);
      }

      if (CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::have_ledger == 1)
      {
        v5 = 48 * CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::ledger_count;
        if ((48 * CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::ledger_count) > 0x1000)
        {
          v6 = malloc_type_malloc(48 * CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::ledger_count, 0xDFAC680EuLL);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v4);
          v6 = &block[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v6, v5);
        }

        if ((ledger() & 0x80000000) != 0)
        {
          if (x_log_get_ogl(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
          }

          v14 = x_log_get_ogl(void)::log;
          if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "Unable to query ledger entry info", buf, 2u);
          }
        }

        else
        {
          if (CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::phys_footprint_index < 0 || CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::ledger_count <= CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::phys_footprint_index)
          {
            *(this + 91) = 0;
          }

          else
          {
            v7 = *&v6[48 * CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::phys_footprint_index];
            v8 = *&CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::phys_footprint_max;
            if (*&CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::phys_footprint_max <= v7)
            {
              v8 = *&v6[48 * CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::phys_footprint_index];
            }

            CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::phys_footprint_max = *&v8;
            if (*(this + 831))
            {
              *(this + 412) = (v8 * 0.000000953674316);
            }

            *(this + 91) = v7 * 0.000000953674316;
          }

          v9 = *MEMORY[0x1E69E9AC8];
          if (CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_index < 0 || CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::ledger_count <= CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_index)
          {
            *(this + 92) = 0;
          }

          else
          {
            v10 = (*&v6[48 * CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_index] * v9);
            v11 = (v10 - CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_prev) * 0.000000953674316;
            if (CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_prev <= 0)
            {
              v11 = 0.0;
            }

            *(this + 92) = v11;
            CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_prev = v10;
          }

          if (CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_kern_index < 0 || CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::ledger_count <= CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_kern_index)
          {
            *(this + 93) = 0;
          }

          else
          {
            v12 = (*&v6[48 * CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_kern_index] * v9);
            v13 = (v12 - CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_kern_prev) * 0.000000953674316;
            if (CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_kern_prev <= 0)
            {
              v13 = 0.0;
            }

            *(this + 93) = v13;
            CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_kern_prev = v12;
          }
        }

        if (v5 > 0x1000)
        {
          free(v6);
        }
      }
    }

    else
    {
      CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_prev = 0;
      CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::pages_grabbed_kern_prev = 0;
    }
  }
}

void ___ZN2CA3OGLL22update_perf_hud_memoryEPNS0_14PerformanceHUDEj_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0u;
  v4 = 0u;
  v2 = 0u;
  if ((ledger() & 0x80000000) == 0)
  {
    CA::OGL::update_perf_hud_memory(CA::OGL::PerformanceHUD *,unsigned int)::ledger_count = *(&v4 + 1);
    is_mul_ok(*(&v4 + 1), 0x60uLL);
    operator new[]();
  }

  if (x_log_get_ogl(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
  }

  v0 = x_log_get_ogl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "Unable to query ledger info", v1, 2u);
  }
}

void *___ZN2CA3OGLL22update_perf_hud_pstateEPNS0_14PerformanceHUDEj_block_invoke()
{
  result = dlopen("/usr/local/lib/libpstatemonitor.dylib", 2);
  if (result)
  {
    v1 = result;
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_connect = dlsym(result, "pstate_monitor_connect");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_destroy = dlsym(v1, "pstate_monitor_destroy");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_cpu = dlsym(v1, "pstate_monitor_get_CPU_pstate");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_gpu = dlsym(v1, "pstate_monitor_get_GPU_pstate");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_soc = dlsym(v1, "pstate_monitor_get_SOC_pstate");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_dram = dlsym(v1, "pstate_monitor_get_DRAM_pstate");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_cpu_watts = dlsym(v1, "pstate_monitor_get_CPU_watts");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_gpu_watts = dlsym(v1, "pstate_monitor_get_GPU_watts");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_soc_watts = dlsym(v1, "pstate_monitor_get_SOC_watts");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_dram_watts = dlsym(v1, "pstate_monitor_get_DRAM_watts");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_isp_watts = dlsym(v1, "pstate_monitor_get_ISP_watts");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_ap_watts = dlsym(v1, "pstate_monitor_get_AP_watts");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_batterydrain_watts = dlsym(v1, "pstate_monitor_get_BatteryDrain_watts");
    result = dlsym(v1, "pstate_monitor_get_LostPerf_ratio");
    CA::OGL::update_perf_hud_pstate(CA::OGL::PerformanceHUD *,unsigned int)::pstate_get_lostperf_ratio = result;
  }

  return result;
}

CA::OGL::DebugRenderer *std::unique_ptr<CA::OGL::DebugRenderer>::reset[abi:nn200100](CA::OGL::DebugRenderer **a1, CA::OGL::DebugRenderer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CA::OGL::DebugRenderer::~DebugRenderer(result);

    JUMPOUT(0x1865EA9A0);
  }

  return result;
}

uint64_t ___ZN2CA3OGL7Context20update_debug_messageEPKNS_9TransformE_block_invoke()
{
  result = MGGetBoolAnswer();
  CA::OGL::Context::update_debug_message(CA::Transform const*)::show_message = result;
  return result;
}

uint64_t CA::OGL::GLESContext::update_image(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 2696);
  v32[0] = 0;
  v31 = 0;
  v30 = 0;
  result = CA::OGL::GLESContext::image_parameters(a1, *(a3 + 168), 0, v32 + 1, v32, &v31, &v30 + 1, &v30);
  v10 = HIDWORD(v32[0]);
  if (HIDWORD(v32[0]))
  {
    v11 = *(a2 + 72);
    result = CA::OGL::GLESContext::update_texture_plane(a1, a2, a4, 0);
    if (result)
    {
      v12 = *(a2 + 52);
      v13 = v12 & 0xFFFFFFFFC0FFFFFFLL | ((HIBYTE(v30) & 0x3F) << 24);
      *(a2 + 52) = v13;
      if (v30)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      *(a2 + 74) = *(a2 + 74) & 0xFD | v14;
      if ((v12 & 0x400000000000000) != 0)
      {
        (v8[305])(*v8, v12, 10495, 1);
        v13 = *(a2 + 52) & 0xFBFFFFFFFFFFFFFFLL;
        *(a2 + 52) = v13;
      }

      v15 = *(a3 + 168);
      if (v15 > 0x25)
      {
        v16 = 0;
      }

      else
      {
        v16 = dword_183E22690[v15];
      }

      v18 = *(a3 + 16);
      v17 = *(a3 + 20);
      v19 = *(a3 + 112);
      if ((*(a1 + 2742) & 8) != 0 && v16 != 4)
      {
        (v8[196])(*v8, 3317, v16);
        v13 = *(a2 + 52);
      }

      if (v13 == 3553 && *(a3 + 169) != 1 && (*(a2 + 73) & 2) != 0)
      {
        (v8[305])(*v8, 3553, 33084, 0);
        result = (v8[305])(*v8, *(a2 + 52), 33085, *(a3 + 169) - 1);
        if (*(a3 + 169))
        {
          v29 = v11;
          v22 = 0;
          v26 = v16;
          v27 = a3 + 176;
          v23 = v31;
          v28 = v32[0];
          do
          {
            if (v19 && (*(a1 + 2742) & 8) != 0)
            {
              (v8[196])(*v8, 3314, *(v27 + 8 * v22) / v26);
            }

            v24 = *v8;
            v25 = *(a2 + 52);
            if (v29)
            {
              result = (v8[308])(v24, v25, v22, 0, 0, v18, v17, v28, v23, v19);
            }

            else
            {
              result = (v8[302])(v24, v25, v22, v10, v18, v17, 0, v28, v23, v19);
            }

            if (v19)
            {
              v19 += *(v27 + 8 * v22) * v17;
            }

            if (v18 <= 1)
            {
              v18 = 1;
            }

            else
            {
              v18 = v18 >> 1;
            }

            if (v17 <= 1)
            {
              v17 = 1;
            }

            else
            {
              v17 = v17 >> 1;
            }

            ++v22;
          }

          while (v22 < *(a3 + 169));
        }

        v21 = *(a2 + 73) | 1;
      }

      else
      {
        if (v19 && (*(a1 + 2742) & 8) != 0)
        {
          (v8[196])(*v8, 3314, *(a3 + 176) / v16);
          v13 = *(a2 + 52);
        }

        v20 = *v8;
        if (v11)
        {
          result = (v8[308])(v20, v13, 0, 0, 0, v18, v17, LODWORD(v32[0]), v31, v19);
        }

        else
        {
          result = (v8[302])(v20, v13, 0, v10, v18, v17, 0, LODWORD(v32[0]), v31, v19);
        }

        v21 = *(a2 + 73) & 0xFE;
      }

      *(a2 + 73) = v21;
      if (v19)
      {
        if ((*(a1 + 2742) & 8) != 0)
        {
          (v8[196])(*v8, 3314, 0);
        }

        *(a2 + 16) = *(a3 + 36);
        result = CA::Render::Image::data_size(a3);
        *(a1 + 1280) += result;
      }

      else
      {
        *(a2 + 16) = *(a3 + 36);
      }
    }
  }

  return result;
}

uint64_t CA::OGL::GLESContext::image_parameters(uint64_t result, int a2, int a3, int *a4, int *a5, int *a6, char *a7, _BYTE *a8)
{
  *a6 = 0;
  *a5 = 0;
  *a4 = 0;
  *a7 = 0;
  *a8 = 1;
  if (!a3)
  {
    switch(a2)
    {
      case 0:
        *a4 = 6408;
        *a5 = 32993;
        *a6 = 5121;
        v8 = 2;
        goto LABEL_34;
      case 1:
        goto LABEL_48;
      case 2:
        *a4 = 6408;
        *a5 = 32993;
        *a6 = 5121;
        v8 = 3;
        goto LABEL_34;
      case 3:
        *a7 = 1;
LABEL_48:
        *a4 = 6408;
        v18 = 32993;
        goto LABEL_54;
      case 5:
        *a7 = 1;
        *a4 = 6408;
        v19 = 32993;
        goto LABEL_50;
      case 8:
        goto LABEL_42;
      case 9:
        *a7 = 25;
LABEL_42:
        v18 = 6406;
        goto LABEL_53;
      case 10:
        v18 = 6409;
        goto LABEL_53;
      case 11:
        goto LABEL_52;
      case 12:
        *a7 = 1;
LABEL_52:
        v18 = 6408;
        goto LABEL_53;
      case 13:
        goto LABEL_23;
      case 14:
        v16 = *(result + 2740);
        if ((v16 & 0x2000) == 0)
        {
          return result;
        }

        if ((v16 & 0x20000) != 0)
        {
          v17 = 34836;
        }

        else
        {
          v17 = 6408;
        }

        *a4 = v17;
        *a5 = 6408;
        goto LABEL_40;
      case 17:
        *a7 = 1;
LABEL_23:
        v14 = *(result + 2740);
        if ((v14 & 0x800) == 0)
        {
          return result;
        }

        if ((v14 & 0x20000) != 0)
        {
          v15 = 34842;
        }

        else
        {
          v15 = 6408;
        }

        *a4 = v15;
        *a5 = 6408;
        if ((*(result + 2740) & 0x20000) != 0)
        {
          v9 = 5131;
        }

        else
        {
          v9 = 36193;
        }

        goto LABEL_30;
      case 18:
        goto LABEL_45;
      case 19:
        *a7 = 1;
LABEL_45:
        v18 = 6410;
LABEL_53:
        *a4 = v18;
LABEL_54:
        *a5 = v18;
        v20 = 5121;
        goto LABEL_55;
      case 20:
        v19 = 6408;
        *a4 = 6408;
LABEL_50:
        *a5 = v19;
        v20 = 32820;
        goto LABEL_55;
      case 23:
        if ((*(result + 2741) & 8) == 0)
        {
          return result;
        }

        *a4 = 6406;
        *a5 = 6406;
        *a6 = 36193;
        *a7 = 25;
        goto LABEL_61;
      case 24:
        if ((*(result + 2741) & 0x20) == 0)
        {
          return result;
        }

        *a4 = 6406;
        *a5 = 6406;
        *a6 = 5126;
        *a7 = 25;
        goto LABEL_58;
      case 25:
        if ((*(result + 2741) & 8) == 0)
        {
          return result;
        }

        *a4 = 6409;
        *a5 = 6409;
        v9 = 36193;
LABEL_30:
        *a6 = v9;
LABEL_61:
        v21 = (*(result + 2740) >> 12) & 1;
        goto LABEL_62;
      case 26:
        if ((*(result + 2741) & 0x20) == 0)
        {
          return result;
        }

        *a4 = 6409;
        *a5 = 6409;
LABEL_40:
        *a6 = 5126;
LABEL_58:
        v21 = (*(result + 2740) >> 14) & 1;
LABEL_62:
        *a8 = v21;
        return result;
      case 27:
        v13 = 6410;
        goto LABEL_64;
      case 28:
        if ((*(result + 2740) & 0x20000) != 0)
        {
          v10 = 33327;
        }

        else
        {
          v10 = 6410;
        }

        *a4 = v10;
        if ((*(result + 2740) & 0x20000) != 0)
        {
          v11 = 33319;
        }

        else
        {
          v11 = 6410;
        }

        *a5 = v11;
        if ((*(result + 2740) & 0x20000) != 0)
        {
          v12 = 5131;
        }

        else
        {
          v12 = 36193;
        }

        *a6 = v12;
        if ((*(result + 2742) & 2) == 0)
        {
          return result;
        }

        v8 = 35;
        goto LABEL_34;
      case 33:
        if ((*(result + 2740) & 0x20) == 0)
        {
          return result;
        }

        *a4 = 32857;
        *a5 = 6408;
        *a6 = 33640;
        v8 = 27;
LABEL_34:
        *a7 = v8;
        break;
      case 34:
        if ((*(result + 2740) & 0x20) == 0)
        {
          return result;
        }

        v13 = 35446;
LABEL_64:
        *a4 = v13;
        *a5 = v13;
        v20 = 5123;
LABEL_55:
        *a6 = v20;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CA::OGL::GLESContext::update_texture_plane(CA::OGL::GLContext *this, uint64_t a2, int a3, unsigned int a4)
{
  v8 = *(a2 + 72);
  if (v8 <= a4)
  {
    if (v8 <= 1)
    {
      v12 = *(this + 337);
      v13 = a2 + 4 * a4;
      v11 = 1;
      (v12[99])(*v12, 1, v13 + 64);
      v14 = *(v13 + 64);
      v15 = *(this + 2);
      *(v15 + 2 * (a4 + a3) + 144) = *(a2 + 52);
      *(v15 + 8 * (a4 + a3) + 176) = v14;
      CA::OGL::GLContext::update_texture(this, a4 + a3);
      v16 = *(a2 + 52);
      *(a2 + 52) = v16 & 0xFFE7FFFFFF00FFFFLL | 0x110000;
      (v12[305])(*v12, v16, 10242, 33071);
      (v12[305])(*v12, *(a2 + 52), 10243, 33071);
      (v12[305])(*v12, *(a2 + 52), 10241, 9729);
      (v12[305])(*v12, *(a2 + 52), 10240, 9729);
      ++*(a2 + 72);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = *(a2 + 4 * a4 + 64);
    v10 = *(this + 2);
    *(v10 + 2 * (a4 + a3) + 144) = *(a2 + 52);
    *(v10 + 8 * (a4 + a3) + 176) = v9;
    CA::OGL::GLContext::update_texture(this, a4 + a3);
    return 1;
  }

  return v11;
}

__n128 CA::OGL::GLESContext::bind_destination_with_filters(__n128 *a1, int a2)
{
  v2 = a1[173].n128_u32[3];
  if (v2)
  {
    v3 = a1[1].n128_u64[0];
    v3[9].n128_u16[a2] = a1[173].n128_u32[2];
    v3[11].n128_u64[a2] = v2;
    result = a1[174];
    v3[8] = result;
  }

  return result;
}

BOOL CA::OGL::GLESContext::ensure_destination_texture(int8x8_t *this, int32x2_t *a2, int32x2_t a3, int32x2_t a4)
{
  v4 = this[347].i32[1];
  if (v4)
  {
    a3.i32[0] = 3553;
    a4.i32[0] = this[347].i32[0];
    v5 = vbsl_s8(vdup_lane_s32(vceq_s32(a4, a3), 0), 0x3F0000003F000000, vmul_f32(vcvt_f32_s32(a2[1]), 0x3F0000003F000000));
    this[348].i32[0] = v5.i32[0];
    v6 = *&v5.i32[1];
    if ((this[351].i8[0] & 8) != 0)
    {
      v6 = -*&v5.i32[1];
    }

    *&this[348].i32[1] = v6;
    this[349] = v5;
  }

  return v4 != 0;
}

uint64_t CA::OGL::GLESContext::bind_noise(uint64_t this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 2768);
  if (v4)
  {
    v5 = *(this + 16);
    *(v5 + 2 * a2 + 144) = 3553;
    *(v5 + 8 * a2 + 176) = v4;
  }

  else
  {
    v6 = *(this + 2696);
    (v6[99])(*v6, 1, this + 2768);
    v7 = *(v3 + 2768);
    v8 = *(v3 + 16);
    *(v8 + 2 * a2 + 144) = 3553;
    *(v8 + 8 * a2 + 176) = v7;
    CA::OGL::GLContext::update_texture(v3, a2);
    (v6[305])(*v6, 3553, 10241, 9728);
    (v6[305])(*v6, 3553, 10240, 9728);
    (v6[305])(*v6, 3553, 10242, 10497);
    (v6[305])(*v6, 3553, 10243, 10497);
    return (v6[302])(*v6, 3553, 0, 6408, 32, 32, 0, 32993, 5121, &CA::OGL::noise_data);
  }

  return this;
}

uint64_t CA::OGL::GLESContext::window_bounds(uint64_t this, int32x2_t *a2)
{
  v2 = *(this + 672);
  if (v2)
  {
    v3 = vsub_s32(*a2, v2[6]);
    *a2 = v3;
    if (v2[23].i8[2])
    {
      v5 = a2[1].i32[0];
      v4 = a2[1].i32[1];
      a2->i32[0] = v2[7].i32[1] - v4 - v3.i32[1];
      a2->i32[1] = v3.i32[0];
      a2[1].i32[0] = v4;
      a2[1].i32[1] = v5;
    }
  }

  else
  {
    if (*(this + 872))
    {
      v6 = *(this + 620) - (a2->i32[1] + a2[1].i32[1]);
      a2->i32[1] = v6;
    }

    else
    {
      v6 = a2->i32[1];
    }

    v7 = v6 - *(this + 612);
    a2->i32[0] -= *(this + 608);
    a2->i32[1] = v7;
  }

  return this;
}

uint64_t CA::OGL::GLESContext::destination_rotated_or_flipped(CA::OGL::GLESContext *this)
{
  v1 = *(this + 84);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 186);
  }

  return v1 & 1;
}

uint64_t CA::OGL::GLESContext::make_buffer_current(CA::OGL::GLESContext *this, void (**a2)(CA::OGL::GLESContext *this, CA::WindowServer::Surface *ptr, void *a3))
{
  if (a2)
  {
    result = (*(*a2 + 21))(a2);
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (a2[10] != CA::OGL::GLESContext::release_display_surface || (v6 = a2[9]) == 0)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC0uLL, 0x1020040DA1BEC6FuLL);
      *v6 = 1;
      v6[23] = 15;
      v6[36] |= 0x10000001u;
      *(v6 + 185) = 1;
      *(v6 + 19) = a2;
      *(v6 + 20) = this;
      v6[42] = 3553;
      v6[45] = 35450;
      v7 = *(this + 337);
      (v7[99])(*v7, 1, v6 + 43);
      (v7[6])(*v7, v6[42], v6[43]);
      (v7[305])(*v7, v6[42], 10241, 9728);
      (v7[305])(*v7, v6[42], 10240, 9728);
      (v7[305])(*v7, v6[42], 10242, 33071);
      (v7[305])(*v7, v6[42], 10243, 33071);
      [*(this + 74) attachImage:v6[42] toCoreSurface:v5 invertedRender:0];
      (v7[675])(*v7, 1, v6 + 44);
      (v7[673])(*v7, 36160, v6[44]);
      (v7[678])(*v7, 36160, 36064, v6[42], v6[43], 0);
      (v7[673])(*v7, 36160, 0);
      if (a2[9] != v6)
      {
        v8 = a2[10];
        if (v8)
        {
          if (v8 != CA::OGL::GLESContext::release_display_surface)
          {
            (v8)(a2);
          }
        }
      }

      a2[9] = v6;
      a2[10] = CA::OGL::GLESContext::release_display_surface;
      *(this + 350) = x_list_prepend(*(this + 350), v6);
    }

    *&v11 = a2[7];
    *(&v11 + 1) = *(this + 76);
    *(v6 + 10) = v11;
    *(v6 + 7) = *(this + 77);
    *(v6 + 186) &= ~1u;
    v12 = *(this + 75);
    if (v12)
    {
      v13 = (*(*v12 + 16))(v12);
      if (v13)
      {
        if ((*(this + 2740) & 0x40) != 0 && (*(v13 + 672) & 0xFD) == 1 && (v6[10] & 0x1F) == 0 && (v6[11] & 0x1F) == 0)
        {
          *(v6 + 186) |= 1u;
        }
      }
    }

    CA::OGL::Context::push_surface(this, v6, 0, 0, 0);
  }

  else
  {
    CA::OGL::Context::pop_surface(this);
    v9 = *(this + 85);
    v10 = *(this + 84);
    if (v9 != v10 || (!v9 ? (v14 = 0) : (v14 = (*(v10 + 144) >> 1) & 0x1F), *(this + 167) != v14))
    {
      CA::OGL::Context::prepare_destination_(this);
    }
  }

  return 1;
}

void CA::OGL::GLESContext::release_display_surface(CA::OGL::GLESContext *this, CA::WindowServer::Surface *ptr, void *a3)
{
  v4 = *(ptr + 20);
  v5 = *(v4 + 2800);
  if (v5)
  {
    x_list_remove(v5, ptr);
    *(v4 + 2800) = v5;
  }

  *(ptr + 19) = 0;

  CA::OGL::GLESContext::finalize_surface(v4, ptr);
}

void CA::OGL::GLESContext::finalize_surface(uint64_t a1, _DWORD *ptr)
{
  v3 = *(a1 + 2696);
  if (ptr[43])
  {
    (v3[60])(*v3, 1, ptr + 172);
  }

  if (ptr[44])
  {
    (v3[674])(*v3, 1, ptr + 176);
  }

  v4 = *(ptr + 19);
  if (v4)
  {
    CA::WindowServer::Surface::unref(v4);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_zone;

  malloc_zone_free(v5, ptr);
}

uint64_t CA::OGL::GLESContext::attached_to_framebuffer_p(CA::OGL::GLESContext *this)
{
  v1 = *(this + 84);
  if (v1)
  {
    return HIBYTE(*(v1 + 184)) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t CA::OGL::GLESContext::set_surface(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 2696);
  if (a2)
  {
    v5 = *(a2 + 176);
    v6 = *v3;
    if (v5)
    {
      (v3[673])(v6, 36160, v5);
    }

    else
    {
      (v3[675])(v6, 1, a2 + 176);
      (v3[673])(*v3, 36160, *(a2 + 176));
      (v3[678])(*v3, 36160, 36064, *(a2 + 168), *(a2 + 172), 0);
    }

    if ((*(a1 + 2740) & 0x40) != 0)
    {
      v7 = (*(a2 + 186) & 1) != 0 ? 35453 : 35450;
      v15 = v7;
      if (*(a2 + 180) != v7)
      {
        (v3[1025])(*v3, 36160, 35449, &v15);
        *(a2 + 180) = v15;
      }
    }

    v9 = *(a2 + 40);
    v8 = *(a2 + 44);
    v10 = *(a2 + 186);
    v11 = *(a1 + 2696);
    if (v10)
    {
      v12 = *(a2 + 40);
    }

    else
    {
      v12 = *(a2 + 44);
    }

    if (*(a2 + 186))
    {
      v13 = *(a2 + 44);
    }

    else
    {
      v13 = *(a2 + 40);
    }

    if (*(a1 + 2664) || *(a1 + 2668) || *(a1 + 2672) != v13 || *(a1 + 2676) != v12)
    {
      *(a1 + 2664) = 0;
      *(a1 + 2672) = v13;
      *(a1 + 2676) = v12;
      (*(v11 + 2688))(*v11, 0, 0);
      ++*(a1 + 664);
      v9 = *(a2 + 40);
      v8 = *(a2 + 44);
      v10 = *(a2 + 186);
    }

    CA::OGL::GLContext::projection_matrix(a1, *(a2 + 48), (v9 + *(a2 + 48)), *(a2 + 52), (v8 + *(a2 + 52)), v10 & 1);
    if ((*(a2 + 147) & 0x20) != 0)
    {
      if (*(a1 + 65))
      {
        (v3[64])(*v3, 3089);
        *(a1 + 65) &= ~1u;
      }

      (v3[11])(*v3, 0x4000);
      *(a2 + 144) = *(a2 + 144) & 0x1FFFFFFF | 0xC0000000;
    }

    if ((*(a2 + 92) & 0x40) != 0)
    {
      *(a2 + 186) |= 2u;
    }
  }

  else
  {
    (v3[673])(*v3, 36160, *(a1 + 2772));
    if (*(a1 + 2664) != *(a1 + 2512) || *(a1 + 2668) != *(a1 + 2516) || *(a1 + 2672) != *(a1 + 2520) || *(a1 + 2676) != *(a1 + 2524))
    {
      (*(*(a1 + 2696) + 2688))(**(a1 + 2696));
      *(a1 + 2664) = *(a1 + 2512);
      ++*(a1 + 664);
    }

    if (*(a1 + 2656) != a1 + 2528)
    {
      *(a1 + 2656) = a1 + 2528;
      ++*(a1 + 664);
    }
  }

  *(a1 + 56) = -1;
  *(a1 + 2808) |= 4u;
  return 1;
}

uint64_t CA::OGL::GLESContext::bind_surface_impl(uint64_t this, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a2 + 168);
  if (!v6)
  {
    return this;
  }

  v10 = this;
  v11 = *(this + 2696);
  v12 = *(a2 + 172);
  v13 = *(this + 16);
  *(v13 + 2 * a4 + 144) = v6;
  *(v13 + 8 * a4 + 176) = v12;
  if (a5 == 2)
  {
    if ((*(a2 + 92) & 0x40) != 0)
    {
      if ((*(a2 + 186) & 2) != 0)
      {
        CA::OGL::GLContext::update_texture(this, a4);
        this = (v11[682])(*v11, *(a2 + 168));
        *(a2 + 186) &= ~2u;
      }

      a5 = 2;
      goto LABEL_9;
    }
  }

  else if (a5 < 4)
  {
    if (a6 > 3)
    {
      v14 = 1;
    }

    else
    {
      v14 = a6;
    }

    if (a5 == 3)
    {
      v15 = 1;
    }

    else
    {
      v15 = a5;
    }

    goto LABEL_19;
  }

  a5 = 1;
LABEL_9:
  if (a6 > 3)
  {
    v14 = 1;
  }

  else
  {
    v14 = a6;
  }

  v15 = a5;
LABEL_19:
  if ((*(v10 + 2740) & 4) != 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if ((*(v10 + 2740) & 4) == 0 && v14 == 3)
  {
    v18 = 1;
  }

  else
  {
    v18 = v14;
  }

  v19 = *(a2 + 184);
  if ((v19 & 0xF) != v16 || v19 >> 4 != v18)
  {
    CA::OGL::GLContext::update_texture(v10, a4);
    (v11[305])(*v11, *(a2 + 168), 10241, dword_183E27F50[v16]);
    this = (v11[305])(*v11, *(a2 + 168), 10240, dword_183E27F50[v18]);
    *(a2 + 184) = v16 | (16 * v18);
  }

  return this;
}

_OWORD *CA::OGL::GLESContext::create_null_surface(CA::OGL::GLESContext *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC0uLL, 0x1020040DA1BEC6FuLL);
  *v2 = 1;
  v2[3] = xmmword_183E210F0;
  *(v2 + 23) = 1039;
  v3 = *(v2 + 36);
  *(v2 + 45) = 35450;
  *(v2 + 184) = 17;
  *(v2 + 186) &= ~2u;
  *(v2 + 36) = v3 & 0x7FFFC0FE | 0x80001701;
  *(v2 + 74) |= 1u;
  CA::OGL::Context::track_surface(this, v2);
  return v2;
}

void CA::OGL::GLESContext::copy_destination(CA::OGL::Context *this, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5, uint64_t a6, _BYTE *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = *(this + 85);
  v14 = *(this + 84);
  if (v13 != v14 || (!v13 ? (v15 = 0) : (v15 = (*(v14 + 144) >> 1) & 0x1F), *(this + 167) != v15))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  if ((*(this + 692) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  v16 = *(this + 84);
  if (v16)
  {
    CA::OGL::Context::push_surface(this, a3, 0, 0x8000, 0);
    CA::OGL::emit_copy_surface(this, v16, a4, a5, a6);
    CA::OGL::Context::pop_surface(this);
    v17 = 0;
  }

  else
  {
    v18 = *(this + 337);
    v19 = *(a3 + 172);
    v20 = *(this + 2);
    *(v20 + 144) = *(a3 + 168);
    *(v20 + 176) = v19;
    CA::OGL::GLContext::update_texture(this, 0);
    if (a4)
    {
      v21 = (a6 + 4);
      do
      {
        v22 = *a5->i8;
        a5 += 2;
        v24 = v22;
        CA::OGL::GLESContext::window_bounds(this, &v24);
        (*(v18 + 456))(*v18, *(a3 + 168), 0, *(v21 - 1), *v21, v24, DWORD1(v24), DWORD2(v24), HIDWORD(v24));
        v21 += 2;
        --a4;
      }

      while (a4);
    }

    v23 = *(this + 2);
    *(v23 + 144) = 0;
    *(v23 + 176) = 0;
    CA::OGL::Context::marked_surface(this, a3);
    v17 = *(this + 872) & 1;
  }

  *a7 = v17;
}

void CA::OGL::Context::copy_surface_clear_flags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 144) & 0xDFFFFFFF | (((*(a3 + 144) >> 29) & 1) << 29);
  *(a2 + 144) = v3;
  v4 = v3 & 0xBFFFFFFF | (((*(a3 + 144) >> 30) & 1) << 30);
  *(a2 + 144) = v4;
  *(a2 + 144) = *(a3 + 144) & 0x80000000 | v4 & 0x7FFFFFFF;
}

unsigned int *CA::OGL::GLESContext::create_surface_from_iosurface(CA::OGL::GLESContext *this, int a2, unsigned int a3, unsigned int a4, IOSurfaceRef buffer)
{
  v28 = *MEMORY[0x1E69E9840];
  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  v12 = 0;
  if (a2 == 1 && Width >= 1)
  {
    v13 = Height;
    if (Height >= 1)
    {
      v14 = *(this + 684);
      if (v14 < Width || v14 < Height)
      {
        if (x_log_get_ogl_opengl(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
        }

        v21 = x_log_get_ogl_opengl(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v25 = Width;
          v26 = 1024;
          v27 = v13;
          _os_log_error_impl(&dword_183AA6000, v21, OS_LOG_TYPE_ERROR, "surface %d x %d is too large\n", buf, 0xEu);
        }

        return 0;
      }

      else
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v12 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC0uLL, 0x1020040DA1BEC6FuLL);
        *v12 = 1;
        v12[42] = 3553;
        v15 = v12[36];
        v12[12] = a3;
        v12[13] = a4;
        v12[14] = Width;
        v12[15] = v13;
        v12[10] = Width;
        v12[11] = v13;
        v12[23] = 15;
        *(v12 + 184) = 17;
        *(v12 + 186) &= ~2u;
        v12[36] = v15 | 0x90000001;
        *(v12 + 74) |= 1u;
        v16 = *(this + 337);
        (v16[99])(*v16, 1, v12 + 43);
        v17 = v12[43];
        v18 = *(this + 2);
        *(v18 + 144) = v12[42];
        *(v18 + 176) = v17;
        CA::OGL::GLContext::update_texture(this, 0);
        if ((v12[46] & 0xF) >= 0xC || ((v16[305])(*v16, v12[42], 10241, dword_183E27F50[v12[46] & 0xF]), v19 = *(v12 + 184), v19 >= 0xC0))
        {
          __assert_rtn("gl_texture_filter", "ogl-gl.cpp", 4425, "filter < OGL_TEXTURE_FILTER_COUNT");
        }

        (v16[305])(*v16, v12[42], 10240, dword_183E27F50[v19 >> 4]);
        (v16[305])(*v16, v12[42], 10242, 33071);
        (v16[305])(*v16, v12[42], 10243, 33071);
        BYTE4(v23) = 0;
        LODWORD(v23) = 0;
        [*(this + 74) texImageIOSurface:buffer target:v12[42] internalFormat:6408 width:Width height:v13 format:32993 type:5121 plane:v23 invert:?];
        v20 = *(this + 2);
        *(v20 + 144) = 0;
        *(v20 + 176) = 0;
      }
    }
  }

  return v12;
}

char *CA::OGL::GLESContext::create_surface_with_properties(uint64_t a1, int a2, __int128 *a3, __int16 a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 2);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  if (a2 != 1)
  {
    return v5;
  }

  v7 = *(a3 + 3);
  if (v7 < 1)
  {
    return v5;
  }

  if ((a4 & 0x40) == 0 || (*(a1 + 2742) & 4) != 0)
  {
    v13 = 0;
  }

  else
  {
    if ((v4 & (v4 - 1)) != 0)
    {
      v9 = (v4 - 1) | ((v4 - 1) >> 1) | (((v4 - 1) | ((v4 - 1) >> 1)) >> 2);
      v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
      LODWORD(v4) = (((v10 | (v10 >> 16)) >> 32) | v10 | (v10 >> 16)) + 1;
    }

    if ((v7 & (v7 - 1)) != 0)
    {
      v11 = (v7 - 1) | ((v7 - 1) >> 1) | (((v7 - 1) | ((v7 - 1) >> 1)) >> 2);
      v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
      LODWORD(v7) = (((v12 | (v12 >> 16)) >> 32) | v12 | (v12 >> 16)) + 1;
    }

    v13 = 1;
  }

  v14 = *(a1 + 2736);
  if (v4 > v14 || v7 > v14)
  {
    if (x_log_get_ogl_opengl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
    }

    v27 = x_log_get_ogl_opengl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v36 = v4;
      v37 = 1024;
      v38 = v7;
      _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, "surface %d x %d is too large\n", buf, 0xEu);
    }

    return 0;
  }

  v15 = a4 & 0x440 | 0xF;
  v16 = (a1 + 80);
  v5 = *(a1 + 80);
  if (v5)
  {
    v17 = 0;
    v18 = 0x7FFFFFFF;
    do
    {
      if (*(v5 + 23) == v15 && (v5[144] & 1) != 0)
      {
        v19 = *(v5 + 10);
        if (v4 == v19 && v7 == *(v5 + 11))
        {
          v17 = v16;
          goto LABEL_31;
        }

        if (v4 > v19)
        {
          v20 = 1;
        }

        else
        {
          v20 = v13;
        }

        if ((v20 & 1) == 0)
        {
          v21 = *(v5 + 11);
          v22 = v21 * v19 - v4 * v7;
          if (v22 >= v18)
          {
            v16 = v17;
            v22 = v18;
          }

          if (v7 <= v21)
          {
            v17 = v16;
            v18 = v22;
          }
        }
      }

      v16 = (v5 + 8);
      v5 = *(v5 + 1);
    }

    while (v5);
    if (!v17)
    {
      goto LABEL_40;
    }

    v5 = *v17;
LABEL_31:
    *v17 = *(v5 + 1);
    v23 = *a3;
    *v5 = 1;
    *(v5 + 3) = v23;
    *(v5 + 8) = 0;
    v24 = *(v5 + 74);
    v5[96] = 0;
    v25 = *(v5 + 36);
    if ((v25 & 0x40000000) != 0)
    {
      v26 = -251674369;
    }

    else
    {
      v26 = 822067455;
    }

    *(v5 + 36) = v25 & v26;
    *(v5 + 74) = v24 & 0xFE4D;
  }

  else
  {
LABEL_40:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC0uLL, 0x1020040DA1BEC6FuLL);
    *v5 = 1;
    *(v5 + 42) = 3553;
    v28 = *(v5 + 36);
    *(v5 + 36) = v28 | 0x10000000;
    *(v5 + 3) = *a3;
    *(v5 + 10) = v4;
    *(v5 + 11) = v7;
    *(v5 + 8) = 0;
    *(v5 + 23) = v15;
    *(v5 + 45) = 35450;
    v5[184] = 17;
    v5[186] &= ~2u;
    *(v5 + 36) = v28 & 0x6FE0FFFE | 0x10040001;
    v29 = *(a1 + 2696);
    (v29[99])(*v29, 1, v5 + 172);
    v30 = *(v5 + 43);
    v31 = *(a1 + 16);
    *(v31 + 144) = *(v5 + 42);
    *(v31 + 176) = v30;
    CA::OGL::GLContext::update_texture(a1, 0);
    if ((v5[184] & 0xFu) >= 0xC || ((v29[305])(*v29, *(v5 + 42), 10241, dword_183E27F50[v5[184] & 0xF]), v32 = v5[184], v32 >= 0xC0))
    {
      __assert_rtn("gl_texture_filter", "ogl-gl.cpp", 4425, "filter < OGL_TEXTURE_FILTER_COUNT");
    }

    (v29[305])(*v29, *(v5 + 42), 10240, dword_183E27F50[v32 >> 4]);
    (v29[305])(*v29, *(v5 + 42), 10242, 33071);
    (v29[305])(*v29, *(v5 + 42), 10243, 33071);
    (v29[302])(*v29, *(v5 + 42), 0, 6408, *(v5 + 10), *(v5 + 11), 0, 6408, 5121, 0);
    if ((v5[92] & 0x40) != 0)
    {
      (v29[682])(*v29, *(v5 + 42));
    }

    v33 = *(a1 + 16);
    *(v33 + 144) = 0;
    *(v33 + 176) = 0;
  }

  CA::OGL::Context::track_surface(a1, v5);
  return v5;
}

uint64_t CA::OGL::Context::create_surface(CA::OGL::Context *this, uint64_t a2, const CA::Bounds *a3, uint64_t a4, const __CFString *a5)
{
  v6[3] = *MEMORY[0x1E69E9840];
  memset(v6, 0, 24);
  return (*(*this + 704))(this, a2, a3, a4, v6, a5);
}

void CA::OGL::GLESContext::delete_image(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    (*(*(a1 + 2696) + 480))(**(a1 + 2696), v3, a2 + 64);
    *(a2 + 72) = 0;
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    CA::WindowServer::Surface::unref(v4);
    *(a2 + 32) = 0;
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    CA::WindowServer::Surface::unref(v5);
    *(a2 + 40) = 0;
  }

  v6 = *(a2 + 52);
  *(a2 + 16) = 0;
  *(a2 + 52) = v6 & 0xFFFFFFFFFF000000;
  *(a2 + 48) = 0;
  LOBYTE(v6) = *(a2 + 73);
  *(a2 + 74) &= 0xFCu;
  *(a2 + 73) = v6 & 0xFC;
}

uint64_t CA::OGL::GLESContext::finish_image(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 72))
  {
    return 1;
  }

  if ((*(a1 + 2740) & 2) != 0)
  {
    v10 = 0;
    v11 = *(a1 + 2696);
    do
    {
      (*(v11 + 3768))(*v11, 5890, *(a2 + 64 + 4 * v10++));
    }

    while (v10 < *(a2 + 72));
    return 1;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = (*(*v6 + 168))(v6);
    if (v7)
    {
      v8 = v7;
      if (!IOSurfaceLock(v7, 0, 0))
      {
        IOSurfaceUnlock(v8, 0, 0);
      }

      return 1;
    }
  }

  if (a3)
  {
    if ((*(a1 + 2808) & 4) != 0)
    {
      *(a1 + 2808) &= ~4u;
      (*(*(a1 + 2696) + 720))(**(a1 + 2696));
    }

    return 1;
  }

  return 0;
}

double CA::OGL::GLESContext::new_image(CA::OGL::GLESContext *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v1 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x50uLL, 0xDEEC3011uLL);
  if (v1)
  {
    result = 0.0;
    v1[3] = 0u;
    v1[4] = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
  }

  return result;
}

atomic_uint **CA::OGL::GLESContext::retain_image(uint64_t a1, void *a2, atomic_uint **this, int a4)
{
  while (1)
  {
    v8 = *(this + 12);
    if (v8 != 40)
    {
      break;
    }

    this = CA::Render::PixelBuffer::image(this);
    if (!this)
    {
      return this;
    }

    *(a2 + 52) = *(a2 + 52) & 0xFFFFFFC0FFFFFFFFLL | 0x1700000000;
  }

  switch(v8)
  {
    case 9:
      if (!a2[1])
      {
        a2[1] = this;
        (*(*this + 24))(this);
      }

      break;
    case 23:
      if (!a2[1])
      {
        a2[1] = this;
        atomic_fetch_add(this + 41, 1u);
      }

      if (a4)
      {
        v10 = a2[4];
        if (v10)
        {
          v11 = (*(*v10 + 168))(v10);
          CA::Render::Image::update_iosurface(this, v11);
          return this;
        }

        v9 = CA::Render::Image::retain_iosurface(this);
        if (!v9)
        {
          return this;
        }

        goto LABEL_20;
      }

      break;
    case 57:
      if (!a2[1])
      {
        a2[1] = this;
        (*(*this + 24))(this);
      }

      if (!a2[4])
      {
        v9 = this[16];
        if (v9)
        {
          CFRetain(this[16]);
LABEL_20:
          v12 = *(a1 + 600);
          if (v12)
          {
            v12 = (*(*v12 + 16))(v12);
          }

          a2[4] = CA::WindowServer::IOSurface::wrap_buffer(v12, v9, 0, 1);
        }
      }

      break;
  }

  return this;
}

uint64_t CA::OGL::GLESContext::modify_subimage_impl(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 169) == 1 && !*(a3 + 176))
  {
    v17 = result;
    v24[0] = 0;
    v23 = 0;
    v22 = 0;
    v18 = *(a3 + 168);
    result = CA::OGL::GLESContext::image_parameters(result, *(a3 + 168), 0, v24 + 1, v24, &v23, &v22 + 1, &v22);
    if (HIDWORD(v24[0]))
    {
      if (v18 > 0x25)
      {
        v21 = 0;
      }

      else
      {
        v21 = dword_183E22690[v18];
      }

      v19 = *(v17 + 2696);
      CA::OGL::GLContext::update_texture(v17, a4);
      v20 = *(a2 + 52);
      if ((v20 & 0x400000000000000) == 0 && (!a10 || *(v17 + 640) >= a10))
      {
        (v19[305])(*v19, *(a2 + 52), 10495, 0);
        v20 = *(a2 + 52) | 0x400000000000000;
        *(a2 + 52) = v20;
      }

      result = (v19[308])(*v19, v20, 0, a5, a6, a7, a8, LODWORD(v24[0]), v23, a9);
      atomic_fetch_add((a3 + 36), 1u);
      *(a2 + 16) = *(a3 + 36);
      *(a2 + 73) &= ~1u;
      *(v17 + 1280) += (a8 * a7 * v21);
    }
  }

  return result;
}

void *CA::OGL::GLESContext::create_mutable_image(CA::OGL::GLESContext *this, CA::Render::Image *a2, unsigned int a3, unsigned int a4, CGColorSpace *a5)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  return CA::Render::Image::new_image(a2, a3, a4, 1u, a5, 0, v7, 0, 0, v6);
}

uint64_t CA::OGL::GLESContext::bind_image_impl(uint64_t a1, unsigned int a2, CA::Render::Texture *a3, __int16 a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, const char *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v17 = CA::OGL::Context::lookup_image(a1, a3, 1);
  v18 = v17;
  if (!v17)
  {
    return v18;
  }

  if (*(a3 + 12) == 23)
  {
    if (!*(v17 + 26) && ((*(a1 + 2742) & 4) != 0 || (*(a3 + 4) & (*(a3 + 4) - 1)) == 0 && (*(a3 + 5) & (*(a3 + 5) - 1)) == 0))
    {
      *(v17 + 73) |= 2u;
    }

    if (!*(a3 + 14))
    {
      goto LABEL_24;
    }

    if (a5 == 2 && (*(v17 + 73) & 2) != 0)
    {
      v19 = *(a3 + 168);
      if (v19 > 0x25)
      {
        v20 = 0;
      }

      else
      {
        v20 = dword_183E22690[v19];
      }

      v21 = *(a3 + 169);
      if (!*(a3 + 169))
      {
        goto LABEL_24;
      }

      v22 = *(a3 + 4);
      if (*(a3 + 22) == v22 * v20)
      {
        v23 = 0;
        while (v21 - 1 != v23)
        {
          if (v22 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 >>= 1;
          }

          v24 = *(a3 + v23++ + 23);
          if (v24 != v22 * v20)
          {
            if (v23 >= v21)
            {
              break;
            }

            goto LABEL_23;
          }
        }

LABEL_24:
        v25 = CA::OGL::GLESContext::retain_image(a1, v17, a3, 0);
        if (v25)
        {
          v26 = v25;
          v27 = 0;
          goto LABEL_30;
        }

        return 0;
      }
    }

LABEL_23:
    if (*(a3 + 168) == 14)
    {
      goto LABEL_24;
    }
  }

  v28 = CA::OGL::GLESContext::retain_image(a1, v17, a3, 1);
  if (!v28)
  {
    return 0;
  }

  v26 = v28;
  if (*(v18 + 32))
  {
    v68 = a4;
    v29 = (v18 + 74);
    v27 = 1;
    goto LABEL_40;
  }

  v27 = *(v18 + 40) != 0;
LABEL_30:
  v29 = (v18 + 74);
  v68 = a4;
  if (!v27 && (*(v18 + 74) & 1) != 0)
  {
    v30 = *(v18 + 72);
    if (*(v18 + 72))
    {
      v31 = 0;
      v32 = *(a1 + 24) + 144;
      do
      {
        v33 = 0;
        v34 = *(v18 + 64 + 4 * v31);
        do
        {
          v35 = v32 + 8 * v33;
          if (*(v35 + 32) == v34)
          {
            *(v35 + 32) = 0;
            *(v32 + 2 * v33) = 0;
          }

          ++v33;
        }

        while (v33 != 13);
        ++v31;
      }

      while (v31 != v30);
    }

    CA::OGL::GLESContext::delete_image(a1, v18);
    v27 = 0;
  }

LABEL_40:
  v36 = *(a1 + 2696);
  if (*(v18 + 52))
  {
    if (!*(v18 + 72))
    {
      goto LABEL_66;
    }

    if (*v29)
    {
      goto LABEL_66;
    }

    v37 = *(v18 + 8);
    if (!v37 || *(v37 + 12) != 23 || *(v18 + 16) == *(v37 + 36))
    {
      goto LABEL_66;
    }

    v38 = a1;
    v39 = v18;
    goto LABEL_65;
  }

  v40 = *(a1 + 2716);
  if (*(v26 + 4) > v40 || *(v26 + 5) > v40)
  {
    if (x_log_get_ogl_opengl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
    }

    v41 = x_log_get_ogl_opengl(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v66 = *(v26 + 4);
    v67 = *(v26 + 5);
    *buf = 67109376;
    v70 = v66;
    v71 = 1024;
    v72 = v67;
    v45 = "%d by %d image is too large for GPU, ignoring\n";
    v46 = v41;
    v47 = 14;
    goto LABEL_125;
  }

  v42 = *(v26 + 12);
  if (v42 == 23)
  {
    v43 = *(a1 + 2720);
    if (v43)
    {
      if (v26[22] > v43)
      {
        if (x_log_get_ogl_opengl(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
        }

        v44 = x_log_get_ogl_opengl(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 0;
        v45 = "image stride is too large for GPU, ignoring\n";
        v46 = v44;
        v47 = 2;
LABEL_125:
        _os_log_error_impl(&dword_183AA6000, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
        return 0;
      }
    }
  }

  *(v18 + 52) |= 0x100000000000DE1uLL;
  if (v27)
  {
    CA::OGL::GLESContext::attach_surface_texture(a1, v18, v26, a2, a9);
    goto LABEL_66;
  }

  v48 = *(v18 + 8);
  if (v42 != 23 || !v48)
  {
    if (v42 == 9 && v48)
    {
      CA::OGL::GLESContext::update_compressed_image(a1, v18, v26, a2);
    }

    goto LABEL_66;
  }

  v38 = a1;
  v39 = v18;
  v37 = v26;
LABEL_65:
  CA::OGL::GLESContext::update_image(v38, v39, v37, a2);
LABEL_66:
  if (*v29)
  {
    if (*(v18 + 32))
    {
      v49 = *(v18 + 40);
      if (v49)
      {
        if (*(v18 + 16) != *(v26 + 9))
        {
          (*(*v49 + 184))(v49, 1.0);
          *(v18 + 16) = *(v26 + 9);
        }
      }
    }
  }

  v50 = *(v18 + 72);
  if (*(v18 + 72))
  {
    v51 = (v18 + 64);
    v52 = *(a1 + 16);
    v53 = v52 + 144;
    v54 = v52 + 176;
    v55 = a2;
    do
    {
      v56 = *v51++;
      *(v53 + 2 * v55) = *(v18 + 52);
      *(v54 + 8 * v55++) = v56;
      --v50;
    }

    while (v50);
  }

  v57 = *(v18 + 52);
  v58 = v57 & 0xF7FFFFFFFFFFFFFFLL;
  *(v18 + 52) = v57 & 0xF7FFFFFFFFFFFFFFLL;
  if ((*(v18 + 74) & 2) == 0)
  {
    if (a5 != 2)
    {
      if (a5 < 4)
      {
        if (a6 > 3)
        {
          v59 = 1;
        }

        else
        {
          v59 = a6;
        }

        if (a5 == 3)
        {
          v60 = 1;
        }

        else
        {
          v60 = a5;
        }

        goto LABEL_99;
      }

      a5 = 1;
      goto LABEL_88;
    }

    if ((*(v18 + 73) & 1) == 0)
    {
      a5 = 1;
      if (*(v18 + 73) & 2) == 0 || (*(v18 + 74))
      {
LABEL_88:
        if (a6 > 3)
        {
          v59 = 1;
        }

        else
        {
          v59 = a6;
        }

        v60 = a5;
        goto LABEL_99;
      }

      CA::OGL::GLContext::update_texture(a1, a2);
      (v36[682])(*v36, *(v18 + 52));
      *(v18 + 73) |= 1u;
      v58 = *(v18 + 52);
    }

    a5 = 2;
    goto LABEL_88;
  }

  if ((v68 & 0x24) != 0 && a6 == 1)
  {
    goto LABEL_85;
  }

  v59 = 0;
  if (a5 != 1)
  {
    a5 = 0;
    v60 = 0;
    goto LABEL_99;
  }

  a5 = 0;
  v60 = 0;
  if ((v68 & 0x12) != 0)
  {
LABEL_85:
    v59 = 0;
    a5 = 0;
    v60 = 0;
    v58 = v57 | 0x800000000000000;
    *(v18 + 52) = v57 | 0x800000000000000;
  }

LABEL_99:
  if ((*(a1 + 2740) & 4) != 0)
  {
    v61 = a5;
  }

  else
  {
    v61 = v60;
  }

  if ((*(a1 + 2740) & 4) == 0 && v59 == 3)
  {
    v63 = 1;
  }

  else
  {
    v63 = v59;
  }

  if ((WORD1(v58) & 0xF) != v61 || ((v58 >> 20) & 0xF) != v63)
  {
    CA::OGL::GLContext::update_texture(a1, a2);
    (v36[305])(*v36, *(v18 + 52), 10241, dword_183E27F50[v61]);
    (v36[305])(*v36, *(v18 + 52), 10240, dword_183E27F50[v63]);
    v58 = *(v18 + 52) & 0xFFFFFFFFFF00FFFFLL | ((v61 & 0xF) << 16) | (v63 << 20);
    *(v18 + 52) = v58;
  }

  if (a7 == 1)
  {
    a7 = (*(v18 + 73) >> 1) & 1;
  }

  if (((v58 >> 51) & 3) != a7)
  {
    CA::OGL::GLContext::update_texture(a1, a2);
    if (a7)
    {
      v64 = 10497;
    }

    else
    {
      v64 = 33071;
    }

    (v36[305])(*v36, *(v18 + 52), 10242, v64);
    (v36[305])(*v36, *(v18 + 52), 10243, v64);
    *(v18 + 52) = *(v18 + 52) & 0xFFE7FFFFFFFFFFFFLL | ((a7 & 3) << 51);
  }

  *a8 = xmmword_183E21100;
  if (((v68 & 0x800) == 0) != (*(v26 + 13) & 8) >> 3)
  {
    *(a8 + 4) = 1065353216;
    *(a8 + 12) = 0;
  }

  return v18;
}

uint64_t CA::OGL::GLESContext::attach_surface_texture(CA::OGL::GLContext *a1, uint64_t a2, CA::Render::Surface *a3, int a4, const char *a5)
{
  v76 = *MEMORY[0x1E69E9840];
  result = *(a2 + 32);
  if (!result)
  {
    return result;
  }

  v8 = a3;
  v10 = *(a1 + 337);
  if (*(a2 + 8))
  {
    v11 = (*(*result + 168))(result);
    result = (*(**(a2 + 8) + 104))(*(a2 + 8));
    v67 = result;
    if (!v11)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (*(a3 + 12) == 57)
  {
    v12 = *(result + 64);
    if (v12 > 875836517)
    {
      if (v12 > 1714696751)
      {
        v13 = v12 == 2033463856;
        v16 = 1714696752;
      }

      else
      {
        v13 = v12 == 875836518;
        v16 = 875836534;
      }
    }

    else
    {
      if (v12 > 875704933)
      {
        v13 = v12 == 875704934;
        v14 = 12918;
      }

      else
      {
        v13 = v12 == 875704422;
        v14 = 12406;
      }

      v16 = v14 | 0x34320000;
    }

    if (v13 || v12 == v16)
    {
      v18 = *(a1 + 75);
      if (v18 && (v19 = (*(*v18 + 16))(v18)) != 0)
      {
        v21 = v19;
        v22 = *(v8 + 4);
        v23 = *(v8 + 5);
        v24 = CA::WindowServer::Display::copy_iosa_manager(v19, v20);
        if (*(a2 + 40) || !(*(*&v21->_os_unfair_lock_opaque + 152))(v21, v22, v23, v22, v23))
        {
          v25 = -1;
        }

        else
        {
          *(a2 + 40) = CA::WindowServer::Display::allocate_surface(v21, v22, v23, 0x42475241, 0, 2u, 0, 0, 0, 0);
          CA::OGL::Context::add_buffered_image(a1, a2);
          v25 = 1;
        }

        v67 = v25;
        CA::IOSAManager::unref(v24);
        v15 = 1;
        v8 = a3;
      }

      else
      {
        v67 = -1;
        v15 = 1;
      }
    }

    else
    {
      v67 = (*(*a3 + 104))(a3);
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v67 = -1;
  }

  result = *(a2 + 40);
  if (!result)
  {
    if (v15)
    {
      return result;
    }

    result = *(a2 + 32);
  }

  result = (*(*result + 168))(result);
  v11 = result;
  if (result)
  {
LABEL_32:
    v71 = a1;
    v75 = 0;
    v74 = 1;
    result = IOSurfaceGetPixelFormat(v11);
    v26 = 0;
    v64 = 0;
    v65 = 0;
    v61 = 0;
    LOBYTE(v62) = 0;
    v66 = result;
    v63 = result & 0xFFFFFFEF;
    if (a5)
    {
      v27 = a5;
    }

    else
    {
      v27 = "CA::OGL::GLESImage";
    }

    v28 = 1;
    v29 = 1;
    while (1)
    {
      v73 = 0;
      v72 = 0;
      v30 = *(v8 + 4);
      v31 = *(v8 + 5);
      v32 = v67;
      if (v67 != -1)
      {
        result = CA::OGL::GLESContext::image_parameters(v71, v67, v26, &v73, &v72 + 1, &v72, &v75, &v74);
        v33 = v73;
        if (v73)
        {
          v70 = v30;
          goto LABEL_101;
        }
      }

      if (v66 > 1093677111)
      {
        v70 = v30;
        if (v66 > 1278555700)
        {
          if (v66 > 1380410944)
          {
            if (v66 == 1380410945)
            {
              v53 = *(v71 + 685);
              if ((v53 & 0x2000) == 0)
              {
                goto LABEL_122;
              }

              if ((v53 & 0x20000) != 0)
              {
                v33 = 34836;
              }

              else
              {
                v33 = 6408;
              }

              v73 = v33;
              v72 = 0x190800001406;
              v48 = (v53 >> 14) & 1;
            }

            else
            {
              if (v66 != 1380411457 || (v46 = *(v71 + 685), (v46 & 0x800) == 0))
              {
LABEL_122:
                v49 = v29;
LABEL_123:
                if (v49 == *(a2 + 72))
                {
                  v56 = 0x40000000000000;
                  if (!v64)
                  {
                    v56 = 0;
                  }

                  v57 = 0x80000000000000;
                  if (!v65)
                  {
                    v57 = 0;
                  }

                  *(a2 + 52) = *(a2 + 52) & 0xFF38F0FFC0FFFFFFLL | ((v75 & 0x3F) << 24) | ((v62 & 0xF) << 40) | ((v61 & 7) << 48) | v56 | v57;
                  if (v74)
                  {
                    v58 = 1;
                  }

                  else
                  {
                    v58 = 3;
                  }

                  v59 = v58 | *(a2 + 74) & 0xFC;
LABEL_134:
                  *(a2 + 74) = v59;
                }

                else
                {
                  result = CA::OGL::GLESContext::update_texture_plane(v71, a2, a4, 0);
                  if (result)
                  {
                    result = [*(v71 + 74) attachImage:*(a2 + 52) toCoreSurface:v11 invertedRender:0];
                    *(a2 + 52) &= 0xFFFFFFFFC0FFFFFFLL;
                    v59 = *(a2 + 74) | 1;
                    goto LABEL_134;
                  }
                }

                return result;
              }

              if ((v46 & 0x20000) != 0)
              {
                v33 = 34842;
              }

              else
              {
                v33 = 6408;
              }

              HIDWORD(v72) = 6408;
              v73 = v33;
              if ((v46 & 0x20000) != 0)
              {
                v47 = 5131;
              }

              else
              {
                v47 = 36193;
              }

              LODWORD(v72) = v47;
              v48 = (v46 >> 12) & 1;
            }

            v74 = v48;
            goto LABEL_101;
          }

          if (v66 == 1278555701)
          {
            v33 = 6407;
            HIDWORD(v72) = 6407;
            v34 = 33635;
            goto LABEL_100;
          }

          if (v66 != 1380401729)
          {
            goto LABEL_122;
          }

          v33 = 6408;
        }

        else if (v66 > 1278226487)
        {
          if (v66 != 1278226488)
          {
            if (v66 != 1278555445)
            {
              goto LABEL_122;
            }

            v33 = 6408;
            v72 = 0x190800008034;
            v75 = 1;
            goto LABEL_101;
          }

          v33 = 6409;
        }

        else
        {
          if (v66 != 1093677112)
          {
            if (v66 != 1111970369)
            {
              goto LABEL_122;
            }

            v72 = 0x80E100001401;
            v33 = 6408;
            goto LABEL_101;
          }

          v33 = 6406;
        }

        HIDWORD(v72) = v33;
        v73 = v33;
        goto LABEL_99;
      }

      if (v66 <= 875704949)
      {
        break;
      }

      if (v66 > 875836517)
      {
        if (v66 == 875836518)
        {
          goto LABEL_60;
        }

        v35 = 875836534;
LABEL_59:
        if (v66 != v35)
        {
          goto LABEL_122;
        }

        goto LABEL_60;
      }

      if (v66 != 875704950)
      {
        if (v66 != 875836468)
        {
          goto LABEL_122;
        }

        v70 = v30;
        v33 = 6408;
        HIDWORD(v72) = 32993;
        v73 = 6408;
        v34 = 32819;
        goto LABEL_100;
      }

LABEL_60:
      if ((v28 & 1) == 0)
      {
        v41 = v30;
        WidthOfPlane = IOSurfaceGetWidthOfPlane(v11, 1uLL);
        HeightOfPlane = IOSurfaceGetHeightOfPlane(v11, 1uLL);
        v44 = v30 >> 1;
        if (v30 >> 1 >= WidthOfPlane)
        {
          v44 = WidthOfPlane;
        }

        if (v64)
        {
          v41 = v44;
        }

        v70 = v41;
        v45 = v31 >> 1;
        if (v31 >> 1 >= HeightOfPlane)
        {
          v45 = HeightOfPlane;
        }

        v33 = 33323;
        if (v65)
        {
          v31 = v45;
        }

        else
        {
          v31 = v31;
        }

        HIDWORD(v72) = 33319;
        v73 = 33323;
LABEL_99:
        v34 = 5121;
LABEL_100:
        LODWORD(v72) = v34;
LABEL_101:
        v49 = v29;
        v38 = v71;
        goto LABEL_102;
      }

      v36 = v63 == 875704422;
      v37 = v31 > 1;
      v64 = v30 > 1 && v63 != 875836518;
      if (v64)
      {
        v30 &= ~1u;
      }

      v65 = v37 && v36;
      if (v37 && v36)
      {
        v31 = v31 & 0xFFFFFFFE;
      }

      else
      {
        v31 = v31;
      }

      v38 = v71;
      v39 = *(v71 + 685);
      v70 = v30;
      if ((v39 & 8) != 0 && v63 == 875704422)
      {
        v33 = 6407;
        v73 = 6407;
        v40 = 35429;
      }

      else if ((v39 & 0x10) != 0 && v63 == 875704934)
      {
        v33 = 6407;
        v73 = 6407;
        v40 = 35431;
      }

      else
      {
        if ((v39 & 0x10) == 0 || v63 != 875836518)
        {
          v75 = 26;
          if (*(a3 + 12) == 57)
          {
            LOBYTE(v62) = CA::Render::Surface::ycbcr_matrix(a3, v32);
            v55 = CA::Render::Surface::chroma_location(a3, v54);
          }

          else
          {
            v62 = CA::Render::iosurface_ycbcr_matrix(v11, v32);
            v55 = CA::Render::iosurface_chroma_location(v11, v62);
          }

          v61 = v55;
          v33 = 33321;
          v73 = 33321;
          v72 = 0x190300001401;
          v49 = 2;
          goto LABEL_102;
        }

        v33 = 6407;
        v73 = 6407;
        v40 = 35432;
      }

      HIDWORD(v72) = v40;
      LODWORD(v72) = 5121;
      v49 = v29;
LABEL_102:
      result = CA::OGL::GLESContext::update_texture_plane(v38, a2, a4, v26);
      if (result)
      {
        BYTE4(v60) = 0;
        LODWORD(v60) = v26;
        result = [*(v71 + 74) texImageIOSurface:v11 target:*(a2 + 52) internalFormat:v33 width:v70 height:v31 format:SHIDWORD(v72) type:v72 plane:v60 invert:?];
        if (*(a2 + 72))
        {
          v50 = 0;
          do
          {
            v51 = strlen(v27);
            result = (*(v10 + 6520))(*v10, 5890, *(a2 + 64 + 4 * v50++), v51, v27);
          }

          while (v50 < *(a2 + 72));
        }
      }

      v28 = 0;
      v52 = v26 + 1;
      v29 = 2;
      v26 = 1;
      v8 = a3;
      if (v52 >= v49)
      {
        goto LABEL_123;
      }
    }

    if (v66 == 875704422 || v66 == 875704438)
    {
      goto LABEL_60;
    }

    v35 = 875704934;
    goto LABEL_59;
  }

  return result;
}

uint64_t CA::OGL::GLESContext::update_compressed_image(uint64_t this, uint64_t a2, int32x2_t *a3, int a4)
{
  v4 = a3[21].i32[1] - 1;
  if (v4 <= 0x1B)
  {
    v7 = this;
    v8 = *(this + 2696);
    v9 = dword_183E2FE78[v4];
    if ((v9 - 37808) > 0x2D || ((1 << (v9 + 80)) & 0x3FFF00003FFFLL) == 0)
    {
      if ((v9 - 35840) >= 4)
      {
        return this;
      }

      v11 = 0x8000;
    }

    else
    {
      v11 = 0x10000;
    }

    if ((*(this + 2740) & v11) != 0)
    {
      this = CA::OGL::GLESContext::update_texture_plane(this, a2, a4, 0);
      if (this)
      {
        v12 = *(a2 + 52);
        *(a2 + 52) = v12 & 0xFFFFFFFFC0FFFFFFLL;
        *(a2 + 74) &= ~2u;
        v13 = a3[21].i32[0];
        if (v13 > 1)
        {
          (v8[305])(*v8, v12, 10241, 9987);
          (v8[305])(*v8, *(a2 + 52), 33084, 0);
          (v8[305])(*v8, *(a2 + 52), 33085, (a3[21].i32[0] - 1));
          *(a2 + 73) |= 1u;
          *(a2 + 52) = *(a2 + 52) & 0xFFFFFFFFFFF0FFFFLL | 0x20000;
          v13 = a3[21].i32[0];
        }

        if (v13 >= 1)
        {
          v14 = 0;
          v15 = a3[2];
          do
          {
            v17 = v15;
            (v8[381])(*v8, *(a2 + 52), v14, v9, v15.u32[0], v15.u32[1], 0, *(*&a3[19] + 8 * v14), *&a3[14] + *(*&a3[18] + 8 * v14));
            v16 = vcgt_u32(v17, 0x100000001);
            v15 = vsub_s32(vand_s8(vshr_n_u32(v17, 1uLL), v16), vmvn_s8(v16));
            ++v14;
          }

          while (v14 < a3[21].i32[0]);
        }

        this = (*(*a3 + 184))(a3);
        *(v7 + 1280) += this;
        *(a2 + 16) = a3[4].i32[1];
      }
    }
  }

  return this;
}

BOOL CA::OGL::GLESContext::should_tile_image(CA::OGL::GLESContext *this, CA::Render::Texture *a2)
{
  v2 = *(this + 679);
  result = 1;
  if (*(a2 + 4) <= v2 && *(a2 + 5) <= v2)
  {
    if (*(a2 + 12) != 23)
    {
      return 0;
    }

    v4 = *(this + 340);
    if (!v4 || *(a2 + 22) <= v4)
    {
      return 0;
    }
  }

  return result;
}

double CA::OGL::GLESContext::bind_gaussian(CA::OGL::GLESContext *this, unsigned int a2, float *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  v7 = CA::OGL::state_image_texture_unit(v6, a2);
  v8 = v7;
  v9 = *(this + 691);
  if (v9)
  {
    *(v6 + 2 * v7 + 144) = 3553;
    *(v6 + 8 * v7 + 176) = v9;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    v10 = v23;
    bzero(v23, 0xAAAuLL);
    v11 = 0;
    v12 = &CA::OGL::gaussian_data;
    do
    {
      v13 = *v12++;
      v14 = &v23[v11];
      *v14 = v13;
      v14[1] = v13;
      v11 += 2;
    }

    while (v11 != 2730);
    v15 = *(this + 337);
    v24 = 0;
    (v15[99])(*v15, 1, &v24);
    v16 = v24;
    v17 = *(this + 2);
    *(v17 + 2 * v8 + 144) = 3553;
    *(v17 + 8 * v8 + 176) = v16;
    CA::OGL::GLContext::update_texture(this, v8);
    (v15[305])(*v15, 3553, 10241, 9987);
    (v15[305])(*v15, 3553, 10240, 9729);
    (v15[305])(*v15, 3553, 10242, 33071);
    (v15[305])(*v15, 3553, 10243, 33071);
    v18 = *(this + 685);
    if ((v18 & 0x100) != 0)
    {
      (v15[303])(*v15, 3553, 34046, 8.0);
      v18 = *(this + 685);
    }

    if ((v18 & 0x200) != 0)
    {
      (v15[303])(*v15, 3553, 34049, -0.25);
    }

    v19 = 0;
    v20 = 32;
    do
    {
      v21 = v10;
      if (v10 && (*(this + 2742) & 8) != 0)
      {
        (v15[196])(*v15, 3314, v20);
      }

      (v15[302])(*v15, 3553, v19++, 6410, v20, v20, 0, 6410, 5121, v10);
      v10 += 2 * v20 * v20;
      v20 >>= 1;
    }

    while (v19 != 6);
    if (v21 && (*(this + 2742) & 8) != 0)
    {
      (v15[196])(*v15, 3314, 0);
    }

    *(this + 691) = v24;
    v6 = *(this + 2);
  }

  *(v6 + 16 * a2 + 96) = xmmword_183E21110;
  result = 0.0078125;
  *a3 = 0x3F80000000000000;
  return result;
}

uint64_t CA::OGL::GLESContext::destination_has_alpha_p(CA::OGL::GLESContext *this)
{
  v2 = *(this + 84);
  if (v2 && (*(v2 + 184) & 0x100) == 0)
  {
    return 1;
  }

  v3 = *(this + 78);
  if (v3)
  {
    if (*(v3 + 544))
    {
      return 1;
    }
  }

  v5 = *(this + 75);
  if (!v5)
  {
    v7 = *(this + 692);
    return (v7 >> 2) & 1;
  }

  v6 = (*(*v5 + 16))(v5);
  v7 = *(this + 692);
  if ((v7 & 2) != 0 || !v6)
  {
    return (v7 >> 2) & 1;
  }

  v8 = *(*v6 + 480);

  return v8();
}

uint64_t CA::OGL::Context::detach_surface(uint64_t this)
{
  v1 = *(this + 680);
  v2 = *(this + 672);
  if (v1 != v2)
  {
    return CA::OGL::Context::prepare_destination_(this);
  }

  v3 = v1 ? (*(v2 + 144) >> 1) & 0x1F : 0;
  if (*(this + 668) != v3)
  {
    return CA::OGL::Context::prepare_destination_(this);
  }

  return this;
}

uint64_t CA::OGL::GLESContext::init_state(uint64_t **this)
{
  CA::OGL::GLContext::init_state(this);
  v2 = this[337];
  v3 = v2[196];
  v4 = *v2;

  return v3(v4, 3317, 1);
}

uint64_t CA::OGL::GLESContext::purge(CA::OGL::GLESContext *this, int a2)
{
  if (a2)
  {
    v4 = *(this + 337);
    if (*(this + 688))
    {
      (v4[60])(*v4, 1, this + 2752);
      *(this + 688) = 0;
    }

    if (*(this + 689))
    {
      (v4[60])(*v4, 1, this + 2756);
      *(this + 689) = 0;
    }

    if (*(this + 690))
    {
      (v4[60])(*v4, 1, this + 2760);
      *(this + 690) = 0;
    }

    if (*(this + 691))
    {
      (v4[60])(*v4, 1, this + 2764);
      *(this + 691) = 0;
    }

    if (*(this + 692))
    {
      (v4[60])(*v4, 1, this + 2768);
      *(this + 692) = 0;
    }
  }

  return CA::OGL::GLContext::purge(this, a2);
}

uint64_t CA::OGL::GLESContext::update(CA::OGL::GLESContext *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(this + 2808) & 2) == 0)
  {
    goto LABEL_11;
  }

  CA::OGL::GLESContext::purge(this, 1);
  v2 = *(this + 2808) & 0xFC;
  if (*(this + 678) > 2)
  {
    *(this + 2808) = v2 | 1;
    goto LABEL_11;
  }

  *(this + 2808) = v2;
  if (x_log_get_ogl_opengl(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
  }

  v3 = x_log_get_ogl_opengl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "unsupported graphics hardware", buf, 2u);
    v15 = x_log_get_ogl_opengl(void)::once;
    if (*(this + 678) >= 3)
    {
      goto LABEL_29;
    }

    if (x_log_get_ogl_opengl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
    }
  }

  else if (*(this + 678) >= 3)
  {
    goto LABEL_8;
  }

  v4 = x_log_get_ogl_opengl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "; need three or more texture units", v17, 2u);
    v15 = x_log_get_ogl_opengl(void)::once;
LABEL_29:
    if (v15 != -1)
    {
      dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
    }
  }

LABEL_8:
  v5 = x_log_get_ogl_opengl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "\n", v16, 2u);
  }

LABEL_11:
  v6 = *(this + 75);
  if (v6)
  {
    v7 = (*(*v6 + 16))(v6);
    if (v7)
    {
      v8 = 10 * *(v7 + 180) * *(v7 + 176);
      if (v8 <= 0x200000)
      {
        v8 = 0x200000;
      }

      *(this + 104) = v8;
    }
  }

  if (*(this + 84))
  {
    *(this + 693) = 0;
  }

  else
  {
    v9 = *(this + 153);
    v10 = *(this + 155);
    v11 = v10 + v9;
    v12 = *(this + 218);
    if (v12)
    {
      v13 = v10 + v9;
    }

    else
    {
      v13 = *(this + 153);
    }

    if ((v12 & 1) == 0)
    {
      v9 = v11;
    }

    CA::OGL::GLContext::projection_matrix(this, *(this + 152), *(this + 154) + *(this + 152), v13, v9, 0);
    (*(*(this + 337) + 840))(**(this + 337), 36006, this + 2772);
  }

  return *(this + 2808) & 1;
}

unint64_t CA::OGL::GLESContext::subimage_max_rowbytes(CA::OGL::GLESContext *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a2 == -1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  result = CA::Render::format_rowbytes(v6, a3);
  if (result)
  {
    v8 = result + 16;
    if (a4 >= 0x100)
    {
      v8 = result;
    }

    if (a4 <= 0x7F)
    {
      v8 = result + 32;
    }

    if (a4 <= 0x3F)
    {
      v8 = result + 64;
    }

    v9 = *(this + 340);
    if (v8 >= v9)
    {
      v10 = *(this + 340);
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t CA::OGL::GLESContext::get(uint64_t a1, int a2)
{
  result = 0x10000;
  switch(a2)
  {
    case 1:
    case 2:
      return result;
    case 3:
      result = *(a1 + 2712);
      break;
    case 4:
      result = *(a1 + 2716);
      break;
    case 5:
      v4 = *(a1 + 2720);
      if (v4)
      {
        result = v4;
      }

      else
      {
        result = 0x2000;
      }

      break;
    case 6:
    case 13:
    case 20:
    case 22:
    case 26:
      result = 1;
      break;
    case 7:
      result = *(a1 + 2736);
      break;
    case 16:
      result = 0;
      break;
    case 17:
      result = (*(a1 + 2740) >> 2) & 1;
      break;
    case 18:
      result = (*(a1 + 2740) >> 7) & 1;
      break;
    case 21:
      result = (*(a1 + 2740) >> 20) & 1;
      break;
    case 23:
      result = (*(a1 + 2740) >> 11) & 1;
      break;
    default:
      result = CA::OGL::GLContext::get(a1, a2);
      break;
  }

  return result;
}

uint64_t CA::OGL::GLESContext::set_destination_texture(uint64_t this, int a2, int a3, int a4)
{
  *(this + 2776) = a2;
  *(this + 2780) = a3;
  if (a4)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  *(this + 2808) = *(this + 2808) & 0xF7 | v4;
  return this;
}

void CA::OGL::GLESContext::~GLESContext(CA::OGL::GLESContext *this, uint64_t a2, void *a3)
{
  CA::OGL::GLESContext::~GLESContext(this, a2, a3);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  v4 = *(this + 350);
  if (v4)
  {
    *(this + 350) = 0;
    v5 = v4;
    do
    {
      v6 = *v5;
      v7 = *(*v5 + 19);
      v8 = v7 + 9;
      if (v7[9])
      {
        v9 = v7[10];
        if (v9)
        {
          if (v9 != CA::OGL::GLESContext::release_display_surface)
          {
            v7 = v9();
          }
        }
      }

      *v8 = 0;
      v8[1] = 0;
      CA::OGL::GLESContext::release_display_surface(v7, v6, a3);
      v5 = v5[1];
    }

    while (v5);
    do
    {
      v10 = v4[1];
      free(v4);
      v4 = v10;
    }

    while (v10);
  }

  v11 = *(this + 343);
  if (v11)
  {
    free(v11);
  }

  CA::OGL::Context::~Context(this);
}

id *CA::OGL::GLESContext::GLESContext(id *this, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = CA::OGL::Context::Context(this);
  *v4 = &unk_1EF1FC400;
  if (*(v4 + 74) != a2)
  {
    this[74] = a2;
  }

  *(this + 676) = 1006632960;
  *this = &unk_1EF1F5CC0;
  *(this + 2808) |= 2u;
  v5 = [a2 getMacroContextPrivate];
  this[337] = v5;
  this[9] = 0x4110000000000000;
  this[104] = 0x200000;
  if ((CA::OGL::GLESContext::update_limits(void)::initialized & 1) == 0)
  {
    v6 = getenv("CA_DISABLE_WORKAROUNDS");
    if (v6)
    {
      CA::OGL::GLESContext::update_limits(void)::disable_workarounds = atoi(v6) != 0;
    }

    v7 = getenv("CA_MAX_TEXTURE_UNITS");
    if (v7)
    {
      CA::OGL::GLESContext::update_limits(void)::max_texture_units = atoi(v7);
    }

    v8 = getenv("CA_MAX_TEXTURE_SIZE");
    if (v8)
    {
      CA::OGL::GLESContext::update_limits(void)::max_texture_size = atoi(v8);
    }

    CA::OGL::GLESContext::update_limits(void)::initialized = 1;
  }

  v9 = (v5[118])(*v5, 7939);
  v10 = (v5[118])(*v5, 35358);
  v12 = CA::OGL::GLContext::check_extension(v9, v10, "GL_APPLE_fence", v11);
  v14 = this + 339;
  if (v12)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  *(this + 685) = v15 | v12 | *(this + 685) & 0xFFFFFFFC;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_APPLE_texture_filter_cubic", v13))
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFFFB | v17;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_APPLE_texture_ycbcr_basic_formats", v16))
  {
    v19 = 8;
  }

  else
  {
    v19 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFFF7 | v19;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_APPLE_texture_ycbcr_extended_formats", v18))
  {
    v21 = 16;
  }

  else
  {
    v21 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFFEF | v21;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_APPLE_texture_xr", v20))
  {
    v23 = 32;
  }

  else
  {
    v23 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFFDF | v23;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_APPLE_tile_order_rot", v22))
  {
    v25 = 64;
  }

  else
  {
    v25 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFFBF | v25;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_EXT_shader_framebuffer_fetch", v24))
  {
    v27 = 128;
  }

  else
  {
    v27 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFF7F | v27;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_EXT_texture_filter_anisotropic", v26))
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFEFF | v29;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_EXT_texture_lod_bias", v28))
  {
    v31 = 512;
  }

  else
  {
    v31 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFDFF | v31;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_OES_standard_derivatives", v30))
  {
    v33 = 1024;
  }

  else
  {
    v33 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFFBFF | v33;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_OES_texture_half_float", v32))
  {
    v35 = 2048;
  }

  else
  {
    v35 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFF7FF | v35;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_OES_texture_half_float_linear", v34))
  {
    v37 = 4096;
  }

  else
  {
    v37 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFEFFF | v37;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_OES_texture_float", v36))
  {
    v39 = 0x2000;
  }

  else
  {
    v39 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFDFFF | v39;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_OES_texture_float_linear", v38))
  {
    v41 = 0x4000;
  }

  else
  {
    v41 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFFBFFF | v41;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_IMG_texture_compression_pvrtc", v40))
  {
    v43 = 0x8000;
  }

  else
  {
    v43 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFF7FFF | v43;
  if (CA::OGL::GLContext::check_extension(v9, v10, "GL_KHR_texture_compression_astc_ldr", v42))
  {
    v44 = 0x10000;
  }

  else
  {
    v44 = 0;
  }

  *(this + 685) = *(this + 685) & 0xFFFEFFFF | v44;
  v45 = this + 679;
  *v14 = 0u;
  v46 = [this[74] API];
  v47 = *(this + 685);
  v48 = v47 & 0xFFF1FFFF;
  v49 = v47 | 0xE3800;
  if (v46 <= 2)
  {
    v49 = v48;
  }

  *(this + 685) = v49;
  if ((CA::OGL::GLESContext::update_limits(void)::disable_workarounds & 1) == 0)
  {
    *(this + 685) = v49 | 3;
  }

  (v5[105])(*v5, 34930, this + 2712);
  (v5[105])(*v5, 3379, this + 2716);
  if (CA::OGL::GLESContext::update_limits(void)::max_texture_units >= 1 && CA::OGL::GLESContext::update_limits(void)::max_texture_units < *v14)
  {
    if (x_log_get_ogl_opengl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
    }

    v50 = x_log_get_ogl_opengl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = CA::OGL::GLESContext::update_limits(void)::max_texture_units;
      _os_log_impl(&dword_183AA6000, v50, OS_LOG_TYPE_DEFAULT, "maximum %d texture units\n", buf, 8u);
    }

    *v14 = CA::OGL::GLESContext::update_limits(void)::max_texture_units;
  }

  if (CA::OGL::GLESContext::update_limits(void)::max_texture_size >= 1 && CA::OGL::GLESContext::update_limits(void)::max_texture_size < *v45)
  {
    if (x_log_get_ogl_opengl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
    }

    v51 = x_log_get_ogl_opengl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = CA::OGL::GLESContext::update_limits(void)::max_texture_size;
      _os_log_impl(&dword_183AA6000, v51, OS_LOG_TYPE_DEFAULT, "maximum texture %d pixels\n", buf, 8u);
    }

    *v45 = CA::OGL::GLESContext::update_limits(void)::max_texture_size;
  }

  (v5[105])(*v5, 3386, this + 2728);
  v61 = 0;
  (v5[105])(*v5, 3408, &v61);
  v52 = 0.5;
  if ((v61 - 1) <= 0x1D)
  {
    v52 = 0.5 - COERCE_FLOAT(1056964608 - (v61 << 23));
  }

  *(this + 341) = v52;
  v53 = MEMORY[0x1865EA1D0](*MEMORY[0x1E696D130]);
  v54 = MEMORY[0x1865EA1D0](*MEMORY[0x1E696CF58]);
  if (v53 >= v54)
  {
    v55 = v54;
  }

  else
  {
    v55 = v53;
  }

  if (!v54)
  {
    v55 = v53;
  }

  if (!v53)
  {
    v55 = v54;
  }

  if (v55 && (!*v45 || *v45 > v55))
  {
    *v45 = v55;
  }

  v56 = MEMORY[0x1865EA1D0](*MEMORY[0x1E696CE58]);
  if (v56 && this[340] - 1 >= v56)
  {
    this[340] = v56;
  }

  v57 = *(this + 679);
  v58 = *(this + 682);
  if (v58 >= *(this + 683))
  {
    v58 = *(this + 683);
  }

  if (v57 >= v58)
  {
    v57 = v58;
  }

  *(this + 684) = v57;
  v59 = this[343];
  if (v59)
  {
    free(v59);
    this[343] = 0;
  }

  *(this + 685) |= 0x100000u;
  *buf = 0;
  v63 = 0;
  v64 = 0;
  X::Stream::printf(buf, "#define NOISE_SIZE %d\n", 32);
  x_stream_write(buf, "\n", 1uLL);
  this[343] = x_stream_finish(buf);
  return this;
}

char *CA::OGL::Context::debug_log_image(int a1, X::Stream *this, uint64_t a3, void *a4)
{
  if (*a4)
  {
    return X::Stream::printf(this, "Image %p: texture (%lux%lu)\n");
  }

  else
  {
    return X::Stream::printf(this, "Image %p; no texture\n");
  }
}

float16x4_t *CA::OGL::Context::clear_region(float16x4_t *a1, uint64_t a2, uint64_t *a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *a3;
  return CA::OGL::Context::paint_region(a1, a2, v4, 0);
}

void CA::OGL::Context::copy_surface(uint64_t a1, const CA::Bounds *a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6, float64x2_t *a7)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v13 = vuzp1q_s32(vcvtq_s64_f64(*a6), vcvtq_s64_f64(a6[1]));
  }

  else
  {
    v13.i64[0] = 0;
    v13.i64[1] = *(a2 + 5);
  }

  v11 = CA::Shape::new_shape(&v13, a2);
  if (a7)
  {
    v13 = vuzp1q_s32(vcvtq_s64_f64(*a7), vcvtq_s64_f64(a7[1]));
  }

  else
  {
    v13.i64[0] = 0;
    v13.i64[1] = *(a3 + 40);
  }

  v12 = CA::Shape::new_shape(&v13, v10);
  CA::OGL::Context::copy_surface_region(a1);
  CA::Shape::unref(v11);

  CA::Shape::unref(v12);
}

void CA::OGL::Context::copy_surface_region(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v41[126] = *MEMORY[0x1E69E9840];
  v15 = *(v13 + 656);
  bzero(v41, 0x3F0uLL);
  if (CA::Shape::rect_count(v6) && CA::Shape::rect_count(v8))
  {
    v39[4] = 0x3C003C003C003C00;
    memset(&v39[5], 0, 24);
    v39[9] = 0;
    v39[8] = 1065353216;
    v39[10] = 1025;
    v39[2] = 0;
    v39[3] = &CA::identity_transform;
    v39[0] = 0;
    v39[1] = &CA::Shape::_infinite_shape;
    CA::OGL::Context::push_surface(v14, v12, v4, 0, 0);
    v32 = v15;
    if (v15)
    {
      v16 = *(v14 + 16);
      memcpy(v41, v16, 0x1F8uLL);
      v41[0] = v16;
      *(v14 + 16) = v41;
      v39[0] = CA::OGL::Context::set_gstate(v14, v39);
    }

    else
    {
      CA::OGL::Context::prepare_context(v14, v41);
      *(v14 + 136) = &v40;
      *(v14 + 152) = 128;
      (*(*v14 + 1088))(v14, v39);
    }

    *(*(v14 + 16) + 497) &= ~1u;
    *(*(v14 + 16) + 16) = 1;
    CA::OGL::Context::bind_surface(v14, v10, 0, (v2 & 0x200) == 0, (v2 & 0x200) == 0, 0.0);
    v17 = 0;
    *(v14 + 144) = 0;
    *(v14 + 112) = v14 + 1386;
    *(v14 + 120) = xmmword_183E20E50;
    v35 = 0;
    v36 = 0;
    v34 = 0uLL;
    v38[1] = 0;
    v38[2] = 0;
    v37[2] = 0;
    v38[0] = v6;
    v33 = 0u;
    v37[0] = v8;
    v37[1] = 0;
    while (1)
    {
      if (!CA::ShapeIterator::iterate(v37, &v35))
      {
        CA::OGL::Context::array_flush(v14);
        CA::OGL::Context::unbind_surface(v14, v10, 0);
        if (v32)
        {
          CA::OGL::Context::set_gstate(v14, **(v14 + 656));
          *(v14 + 16) = v41[0];
          v41[0] = 0;
        }

        else
        {
          (*(*v14 + 1096))(v14, v39);
          *(v14 + 136) = 0;
          *(v14 + 152) = 0;
          *(v14 + 16) = 0;
          *(v14 + 24) = 0;
        }

        CA::OGL::Context::pop_surface(v14);
        goto LABEL_49;
      }

      if (CA::ShapeIterator::iterate(v38, &v34))
      {
        v33 = v34;
      }

      else
      {
        v34 = v33;
      }

      v18 = 6;
      if (!*(v14 + 108))
      {
        v18 = 4;
      }

      if ((v17 + 4) > *(v14 + 152) || (v19 = *(v14 + 128)) != 0 && *(v14 + 120) + v18 > v19)
      {
        *(v14 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(v14);
        *(v14 + 144) = 0;
        *(v14 + 112) = v14 + 1386;
        *(v14 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(v14, v35, SHIDWORD(v35), (v36 + v35), (HIDWORD(v36) + HIDWORD(v35)));
      v20 = SDWORD1(v33);
      v21 = (DWORD2(v33) + v33);
      v22 = HIDWORD(v33) + DWORD1(v33);
      if ((v2 & 1) == 0)
      {
        break;
      }

      if ((v2 & 4) == 0)
      {
        v23 = SDWORD1(v33);
        v25 = v22;
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }

LABEL_25:
        v24 = v33;
        v20 = v25;
        goto LABEL_32;
      }

      if ((v2 & 2) != 0)
      {
        v23 = SDWORD1(v33);
      }

      else
      {
        v23 = v22;
      }

      if ((v2 & 2) != 0)
      {
        v20 = v22;
      }

      v24 = v33;
LABEL_32:
      if ((v2 & 4) != 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = v20;
      }

      if ((v2 & 4) != 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = v24;
      }

      if ((v2 & 4) != 0)
      {
        v28 = v20;
      }

      else
      {
        v28 = v23;
      }

      if ((v2 & 4) != 0)
      {
        v29 = v24;
      }

      else
      {
        v29 = v21;
      }

      v17 = *(v14 + 144);
      v30 = *(v14 + 136) + 48 * v17;
      *(v30 - 176) = v21;
      *(v30 - 172) = v26;
      *(v30 - 128) = v27;
      *(v30 - 124) = v20;
      *(v30 - 80) = v24;
      *(v30 - 76) = v28;
      *(v30 - 32) = v29;
      *(v30 - 28) = v23;
    }

    if ((v2 & 2) == 0)
    {
      v23 = v22;
      v24 = (DWORD2(v33) + v33);
LABEL_23:
      v21 = v33;
      goto LABEL_32;
    }

    v23 = v22;
    v25 = SDWORD1(v33);
    if ((v2 & 4) != 0)
    {
LABEL_22:
      v23 = SDWORD1(v33);
      v24 = (DWORD2(v33) + v33);
      v20 = v22;
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_49:
  for (i = 63; i != -63; i -= 63)
  {
    if (v41[i])
    {
      __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
    }
  }
}

os_log_t ___Z19x_log_get_ogl_tracev_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "OGL.Trace");
  x_log_get_ogl_trace(void)::log = result;
  return result;
}

void CA::OGL::Context::dump_tracked_surfaces(CA::OGL::Context *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (byte_1ED4E98C1 != 1)
  {
    return;
  }

  memset(v13, 0, sizeof(v13));
  X::Stream::printf(v13, " Transient:");
  v3 = (this + 88);
  v2 = *(this + 11);
  if (v2)
  {
    while (1)
    {
      X::Stream::printf(v13, "\n  %ux%u surface %p", v2[10], v2[11], v2);
      v4 = *v3;
      if (!v4)
      {
        break;
      }

      v5 = *(v4 + 16);
      v3 = (v4 + 16);
      v2 = v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

LABEL_15:
    __assert_rtn("operator++", "x-list-template.h", 121, "*_ptr != nullptr");
  }

LABEL_6:
  X::Stream::printf(v13, "\n Persistent:");
  v7 = (this + 96);
  v6 = *(this + 12);
  if (v6)
  {
    do
    {
      X::Stream::printf(v13, "\n  %ux%u surface %p", v6[10], v6[11], v6);
      v8 = *v7;
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *(v8 + 16);
      v7 = (v8 + 16);
      v6 = v9;
    }

    while (v9);
  }

  if (x_log_get_ogl(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
  }

  v10 = x_log_get_ogl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(this + 2);
    v12 = x_stream_get(v13);
    *buf = 67109378;
    v15 = v11;
    v16 = 2080;
    v17 = v12;
    _os_log_debug_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEBUG, "context(%u) surface tracking:\n%s", buf, 0x12u);
  }

  if (v13[0])
  {
    free(v13[0]);
  }
}

uint64_t CA::OGL::anonymous namespace::flatten_detached_layer(CA::OGL::_anonymous_namespace_ *this, CA::Render::Handle *a2, uint64_t a3, CA::Render::Texture *a4, void *a5)
{
  result = (*(**(a4 + 75) + 72))(*(a4 + 75), a4, this, a2, a5);
  if (this)
  {
    *(this + 13) &= ~0x8000uLL;
  }

  return result;
}

double CA::OGL::Context::new_image(CA::OGL::Context *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v1 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0xDEEC3011uLL);
  if (v1)
  {
    result = 0.0;
    v1[2] = 0u;
    v1[3] = 0u;
    *v1 = 0u;
    v1[1] = 0u;
  }

  return result;
}

_DWORD *CA::OGL::Context::modify_subimage_impl(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  if (*(a3 + 169) == 1)
  {
    if (a10)
    {
      if (result[160] < a10)
      {
        (*(*result + 680))(result, a2, 1);
      }
    }

    result = CGBlt_copyBytes();
    atomic_fetch_add((a3 + 36), 1u);
  }

  return result;
}

CGColorSpace *CA::OGL::Context::create_mutable_image(CA::OGL::Context *this, CA::Render *a2, unsigned int a3, unsigned int a4, CGColorSpace *a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = CA::Render::format_rowbytes(a2, a3);
  v12 = 0;
  v13[0] = v9;
  if (is_mul_ok(v9, a4))
  {
    v10 = (v9 * a4);
  }

  else
  {
    v10 = 0;
  }

  result = CA::Render::aligned_malloc(v10, &v12, 0);
  if (result)
  {
    return CA::Render::Image::new_image(a2, a3, a4, 1u, a5, result, v13, CA::Render::aligned_free, v12, v12);
  }

  return result;
}

double CA::OGL::Context::bind_uneven_circle(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4)
{
  v4 = *(a1 + 16);
  *(v4 + 16 * a2 + 96) = xmmword_183E21110;
  *(v4 + a2 + 17) = 15;
  v5 = *(a1 + 16) + 48 * a2;
  *(v5 + 400) = *a3;
  *(v5 + 416) = a3[1];
  result = 0.0078125;
  *a4 = 0x3F80000000000000;
  return result;
}

double CA::OGL::Context::bind_supercircle_field(CA::OGL::Context *this, unsigned int a2, int a3, BOOL a4, BOOL a5, double *a6, int a7, float *a8)
{
  v8 = *(this + 2);
  *(v8 + 16 * a2 + 96) = xmmword_183E21110;
  *(v8 + a2 + 17) = byte_183E21C40[a7];
  if (a8)
  {
    *&v9 = *a8;
  }

  else
  {
    *&v9 = 0;
  }

  *(&v9 + 1) = v9;
  *(*(this + 2) + 48 * a2 + 432) = v9;
  __asm { FMOV            V0.2S, #-1.0 }

  result = -_D0;
  *a6 = result;
  return result;
}

uint64_t CA::OGL::Context::update_color_program_cache(uint64_t this)
{
  if (*(this + 584))
  {
    v1 = this;
    *(*(this + 584) + 80) = (*(this + 872) & 0x200 | (*(*this + 232))(this, 21)) != 0;
    this = (*(*v1 + 232))(v1, 40);
    v3 = (*(v1 + 872) & 0x2000000) == 0 && this != 0;
    *(*(v1 + 584) + 81) = v3;
  }

  return this;
}

atomic_uint *std::__destroy_at[abi:nn200100]<CA::OGL::TransientRenderTexture,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  result = *(a1 + 8);
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

uint64_t CA::OGL::Context::set_destination_texture(CA::OGL::Context *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a3;
  return (*(*this + 24))(this, a2, v5, a3 != 0, a4, 0);
}

CA::OGL::Context *CA::OGL::Context::Context(CA::OGL::Context *this)
{
  *this = &unk_1EF1F6208;
  *(this + 2) = atomic_fetch_add(CA::OGL::Context::_next_context_id, 1u) + 1;
  *(this + 71) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 144) = 1074664571;
  *(this + 38) = xmmword_183E21120;
  *(this + 178) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 188) = 1065353216;
  *(this + 107) = 0;
  *(this + 220) = 64;
  *(this + 341) = 1056964608;
  *(this + 692) |= 4u;
  *(this + 151) = 0u;
  *(this + 152) = 0u;
  *(this + 612) = 1065353216;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  *(this + 101) = this + 808;
  *(this + 102) = this + 808;
  *(this + 104) = 0x800000;
  *(this + 87) = x_hash_table_new_(0, 0, 0, 0, 0, 0);
  *(this + 218) = global_feature_flags;
  CA::Render::add_observer(3u, 0, CA::OGL::Context::image_deleted, this, 0);
  CA::Render::add_observer(0xBu, 0, CA::OGL::Context::image_volatile, this, 0);
  CA::Render::add_observer(0x2Fu, 0, CA::OGL::Context::get_debug_log, this, 0);
  v2 = CAGetColorSpace(36);
  CA::OGL::Context::set_colorspace(this, v2);
  return this;
}

CGColorSpace *CA::OGL::Context::set_colorspace(CA::OGL::Context *this, CGColorSpace *a2)
{
  result = *(this + 70);
  if (result != a2)
  {
    CGColorSpaceRelease(result);
    *(this + 70) = CGColorSpaceRetain(a2);
    v5 = *(this + 71);
    if (v5)
    {
      CFRelease(v5);
      *(this + 71) = 0;
    }

    if (CGColorSpaceUsesExtendedRange(a2))
    {
      X::CFRef<CGColorSpace *>::operator=(this + 71, a2);
    }

    result = *(this + 73);
    if (result)
    {

      return CA::ColorProgram::Cache::set_colorspace(result, a2);
    }
  }

  return result;
}

void CA::OGL::Context::get_debug_log(CA::OGL::Context *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a3 == 17)
  {
    v4 = a3[2];
    v6 = 0;
    v7 = 0;
    if (*(a2 + 92))
    {
      memset(v8, 0, sizeof(v8));
      operator new();
    }

    X::Stream::printf(v4, "== Context %lu Image Cache - %lu Images (%s%.2f %s)\n", *(a2 + 2), *(a2 + 93), "", 0.0, "B");
    x_stream_write(v4, "     \n", 6uLL);
    std::__tree<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,std::__map_value_compare<int,std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,std::less<int>,true>,std::allocator<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>>>::destroy(v6);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[5];
      if (v3)
      {
        v2[6] = v3;
        operator delete(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::map<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize,std::less<int>,std::allocator<std::pair<int const,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>>>::operator[](uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,std::__map_value_compare<int,std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,std::less<int>,true>,std::allocator<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,std::__map_value_compare<int,std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,std::less<int>,true>,std::allocator<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>>>::destroy(*a1);
    std::__tree<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,std::__map_value_compare<int,std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>,std::less<int>,true>,std::allocator<std::__value_type<int,CA::OGL::Context::show_image_cache(x_stream_struct *)::CachedImagesWithSize>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void CA::OGL::Context::~Context(CA::OGL::Context *this)
{
  *this = &unk_1EF1F6208;
  if (*(this + 84))
  {
    __assert_rtn("~Context", "ogl-context.cpp", 117, "current_surface () == nullptr");
  }

  CA::Render::remove_observer(3u, 0, CA::OGL::Context::image_deleted, this);
  CA::Render::remove_observer(0xBu, 0, CA::OGL::Context::image_volatile, this);
  CA::Render::remove_observer(0x2Fu, 0, CA::OGL::Context::get_debug_log, this);
  v2 = *(this + 105);
  if (v2)
  {
    CA::Render::remove_observer(3u, 0, CA::Render::TileCache::image_deleted, *(this + 105));
    v3 = 0;
    v4 = v2[2];
    v5 = 1 << *v4;
    do
    {
      for (i = *(*(v4 + 16) + 8 * v3); i; i = *i)
      {
        CA::Render::free_entry(i[2], i[3], v2);
      }

      ++v3;
    }

    while (v3 != v5);
    x_hash_table_free(v2[2]);
    MEMORY[0x1865EA9A0](v2, 0x10A0C404FC77179);
    *(this + 105) = 0;
  }

  v7 = *(this + 106);
  if (v7)
  {
    CA::Render::remove_observer(0xAu, 0, CA::Render::ShadowCache::entry_deleted, *(this + 106));
    CA::Render::remove_observer(3u, 0, CA::Render::ShadowCache::entry_deleted, v7);
    v10 = v7[2];
    if (v10)
    {
      do
      {
        CA::Render::ShadowCache::free_bounds_entry(*v10, v8, v9);
        v10 = *(v10 + 8);
      }

      while (v10);
      v11 = v7[2];
      if (v11)
      {
        do
        {
          v12 = v11[1];
          free(v11);
          v11 = v12;
        }

        while (v12);
      }
    }

    v13 = 0;
    v14 = v7[1];
    v15 = 1 << *v14;
    do
    {
      for (j = *(*(v14 + 16) + 8 * v13); j; j = *j)
      {
        CA::Render::ShadowCache::free_shadow_entry(j[2], j[3]);
      }

      ++v13;
    }

    while (v13 != v15);
    x_hash_table_free(v7[1]);
    v17 = 0;
    v18 = *v7;
    v19 = 1 << **v7;
    do
    {
      for (k = *(*(v18 + 2) + 8 * v17); k; k = *k)
      {
        CA::Render::ShadowCache::free_raster_entry(k[2], k[3]);
      }

      ++v17;
    }

    while (v17 != v19);
    x_hash_table_free(*v7);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v7);
    *(this + 106) = 0;
  }

  x_hash_table_free(*(this + 87));
  v21 = *(this + 100);
  if (v21)
  {
    v22 = *v21;
    if (*v21)
    {
      v23 = v21[1];
      v24 = *v21;
      if (v23 != v22)
      {
        do
        {
          v23 -= 32;
          std::__destroy_at[abi:nn200100]<CA::OGL::TransientRenderTexture,0>(v23);
        }

        while (v23 != v22);
        v24 = *v21;
      }

      v21[1] = v22;
      operator delete(v24);
    }

    MEMORY[0x1865EA9A0](v21, 0x20C40960023A9);
  }

  CGColorSpaceRelease(*(this + 70));
  v25 = *(this + 73);
  if (v25)
  {
    CA::ColorProgram::Cache::~Cache(*(this + 73));
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v25);
  }

  v26 = *(this + 108);
  if (v26)
  {
    CA::Shape::unref(v26);
  }

  v27 = *(this + 304);
  if (v27)
  {
    do
    {
      v28 = *v27;
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = *(this + 302);
  *(this + 302) = 0;
  if (v29)
  {
    operator delete(v29);
  }

  v30 = *(this + 107);
  *(this + 107) = 0;
  if (v30)
  {
    CA::OGL::DebugRenderer::~DebugRenderer(v30);
    MEMORY[0x1865EA9A0]();
  }

  v31 = *(this + 92);
  if (v31)
  {
    do
    {
      v32 = *v31;
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = *(this + 90);
  *(this + 90) = 0;
  if (v33)
  {
    operator delete(v33);
  }

  v34 = *(this + 71);
  if (v34)
  {
    CFRelease(v34);
  }

  if (*(this + 12) || *(this + 11))
  {
    __assert_rtn("~IntrusiveList", "x-list-template.h", 181, "empty ()");
  }
}

void CA::OGL::Context::configure_color_program_cache(CA::OGL::Context *a1, char a2, char a3, int a4, char a5, float a6, float a7, float a8, float a9, float a10)
{
  v20 = CA::OGL::Context::color_program_cache(a1);
  if (v20)
  {
    v21 = v20;
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (*&dword_1ED4E9730 != 0.0)
    {
      a8 = *&dword_1ED4E9730;
    }

    if (*&dword_1ED4E9734 != 0.0)
    {
      a9 = *&dword_1ED4E9734;
    }

    if (*&dword_1ED4E9738 != 0.0)
    {
      a10 = *&dword_1ED4E9738;
    }

    *(v21 + 22) = a4;
    *(v21 + 84) = a2;
    *(v21 + 85) = a3;
    *(v21 + 87) = a5;
    *(v21 + 15) = a6;
    *(v21 + 17) = a10;
    v22 = *(a1 + 78);
    if (v22)
    {
      v23 = *(v22 + 404);
      if (a7 != 0.0)
      {
        if (v23 > a7)
        {
          v23 = a7;
        }

        if (v23 <= 1.0)
        {
          v23 = 1.0;
        }
      }

      if (byte_1ED4E98A2 == 1)
      {
        v24 = 1.0;
        a9 = 0.0;
        if (a8 < 1.0)
        {
          if (*&dword_1ED4E974C == 1)
          {
            v23 = ((v23 + -1.0) * a8) + 1.0;
          }

          else
          {
            v25 = log2f(v23);
            v23 = exp2f(v25 * a8);
          }
        }
      }

      else
      {
        v24 = a8;
      }

      *(v21 + 14) = v23;
      *(v21 + 86) = *(v22 + 446);
      *(v21 + 16) = *(v22 + 396) / *(v22 + 404);
      a8 = v24;
    }

    *(v21 + 18) = a9;
    *(v21 + 19) = a8;
  }
}

_DWORD *CA::OGL::Context::lookup_color_program(CA::OGL::Context *this, CGColorSpace *a2, int a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((CA::OGL::Context::lookup_color_program(CGColorSpace *,BOOL,BOOL)::initialized & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CADisableColorMatching", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      CA::OGL::Context::lookup_color_program(CGColorSpace *,BOOL,BOOL)::disable_colormatch = AppBooleanValue != 0;
    }

    v9 = getenv("CA_DISABLE_COLOR_MATCHING");
    if (v9)
    {
      CA::OGL::Context::lookup_color_program(CGColorSpace *,BOOL,BOOL)::disable_colormatch = atoi(v9) != 0;
    }

    CA::OGL::Context::lookup_color_program(CGColorSpace *,BOOL,BOOL)::initialized = 1;
  }

  if (CA::OGL::Context::lookup_color_program(CGColorSpace *,BOOL,BOOL)::disable_colormatch & 1) != 0 || (*(this + 948))
  {
    return 0;
  }

  v10 = CA::OGL::Context::color_program_cache(this);
  v11 = *(this + 78);
  if (!v11)
  {
    v12 = 0;
    if ((CACGColorSpaceIsRec709(a2) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v12 = v11 + 384;
  if ((CACGColorSpaceIsRec709(a2) & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((*(v11 + 444) & 1) == 0)
  {
LABEL_15:
    v13 = 36;
    if ((a4 & 1) == 0 && (byte_1ED4E9861 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v13 = 26;
LABEL_17:
  a2 = CAGetColorSpace(v13);
LABEL_18:
  if ((a2 == CAGetColorSpace(11) || CGColorSpaceEqualToColorSpaceIgnoringRange()) && v12 && (*(v12 + 62) & 1) == 0)
  {
    a2 = CAGetColorSpace(38);
  }

  if ((CACGColorSpaceIsRec601NTSC(a2) & 1) != 0 || CACGColorSpaceIsRec601PAL(a2))
  {
    if (v12 && *(v12 + 60) == 1 && *(v12 + 62) == 1)
    {
      if (CACGColorSpaceIsRec601NTSC(a2))
      {
        v15 = 31;
      }

      else
      {
        v15 = 32;
      }

      a2 = CAGetColorSpace(v15);
      goto LABEL_34;
    }

    a2 = CAGetColorSpace(36);
  }

  if (!v12)
  {
    v16 = v10;
    v17 = a2;
    v18 = a3;
    v19 = 0;
    return CA::ColorProgram::Cache::lookup(v16, v17, v18, v19);
  }

LABEL_34:
  *(v10 + 83) = *(v12 + 62);
  v16 = v10;
  v17 = a2;
  v18 = a3;
  v19 = v12;
  return CA::ColorProgram::Cache::lookup(v16, v17, v18, v19);
}

void CA::OGL::Context::device_float_color(CGColorSpace **this, float *a2, CGColorSpaceRef space, float64x2_t *a4, float a5, float a6, float a7)
{
  v10 = space;
  if (a5 <= 1.0)
  {
    v14 = 0;
    goto LABEL_31;
  }

  v13 = 0;
  while (colorspaces[v13] != space)
  {
    if (++v13 == 39)
    {
      v13 = 0;
      goto LABEL_8;
    }
  }

  v13 = v13;
LABEL_8:
  if (((0xFFFAF57B7uLL >> v13) & 1) == 0)
  {
    v10 = CAGetColorSpace(extended_colorspaces[v13]);
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (CGColorSpaceGetModel(space) != kCGColorSpaceModelRGB)
  {
    goto LABEL_14;
  }

  Extended = CGColorSpaceCreateExtended(v10);
  v14 = Extended;
  if (Extended)
  {
    v10 = Extended;
  }

LABEL_15:
  if (a6 == 0.0 || a6 > 1.0)
  {
    v16 = CA::OGL::Context::color_program_cache(this);
    v17 = this[71];
    if (!v17)
    {
      v18 = 0;
      v19 = this + 71;
      v20 = this[70];
      while (colorspaces[v18] != v20)
      {
        if (++v18 == 39)
        {
          v18 = 0;
          goto LABEL_23;
        }
      }

      v18 = v18;
LABEL_23:
      if ((0xFFFAF57B7uLL >> v18))
      {
        if (CGColorSpaceGetModel(v20) == kCGColorSpaceModelRGB)
        {
          v17 = CGColorSpaceCreateExtended(this[70]);
          v22 = this[71];
          if (v22)
          {
            CFRelease(v22);
          }

          *v19 = v17;
          goto LABEL_30;
        }
      }

      else
      {
        v21 = CAGetColorSpace(extended_colorspaces[v18]);
        X::CFRef<CGColorSpace *>::operator=(this + 71, v21);
      }

      v17 = *v19;
    }

LABEL_30:
    CA::ColorProgram::Cache::set_colorspace(v16, v17);
  }

LABEL_31:
  Model = CGColorSpaceGetModel(v10);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    v31 = a4->f64[0];
    a2[1] = v31;
    a2[2] = v31;
    *a2 = v31;
    v30 = 1;
LABEL_38:
    v32 = a4->f64[v30];
    a2[3] = v32;
    if ((this[109] & 0x80) != 0)
    {
      goto LABEL_48;
    }

    v33 = CA::OGL::Context::color_program_cache(this);
    v34 = CA::ColorProgram::Cache::push_whippet_cache(v33, v10, a5, a6, 0, 0);
    v35 = CA::OGL::Context::color_program_cache(this);
    if (CA::ColorProgram::Cache::convert_color(v35, v10, a2, v36))
    {
      if (v34)
      {
LABEL_47:
        v40 = CA::OGL::Context::color_program_cache(this);
        CA::ColorProgram::Cache::pop_whippet_cache(v40);
      }

LABEL_48:
      v41 = CA::OGL::Context::color_program_cache(this);
      CA::ColorProgram::Cache::set_colorspace(v41, this[70]);
      if (!v14)
      {
        return;
      }

      goto LABEL_49;
    }

LABEL_43:
    if (CARetainColorTransform(this[70]))
    {
      NumberOfComponents = CGColorSpaceGetNumberOfComponents(v10);
      CGColorTransformConvertColorComponents();
      CGColorTransformRelease();
      v38.f64[0] = 0.0;
      v38.f64[1] = a4->f64[NumberOfComponents];
      _Q0 = vcvt_hight_f32_f64(vcvt_f32_f64(0), v38);
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }
    }

    *a2 = _Q0;
    if (v34)
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  if (Model == kCGColorSpaceModelRGB)
  {
    *a2 = vcvt_f32_f64(*a4);
    v29 = a4[1].f64[0];
    a2[2] = v29;
    v30 = 3;
    goto LABEL_38;
  }

  if (Model != kCGColorSpaceModelPattern)
  {
    LOBYTE(v34) = 0;
    goto LABEL_43;
  }

  __asm { FMOV            V0.2S, #1.0 }

  *a2 = _D0;
  *(a2 + 1) = _D0;
  if (v14)
  {
LABEL_49:
    CFRelease(v14);
  }
}

void CA::OGL::Context::device_color_from_premul_color(float16x4_t *this, CGColorSpace **a2, const CA::OGL::ExtendedColor *a3, float16x4_t a4, float a5, float a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = vcvtq_f32_f16(a4);
  v13 = v7;
  v9 = *&v7.i32[3];
  v8 = *&v7.i32[2];
  v10 = 1.0;
  v11 = COERCE_DOUBLE(vdiv_f32(*v7.i8, vdup_laneq_s32(v7, 3)));
  if (*&v7.i32[3] == 1.0)
  {
    v11 = *v7.i64;
  }

  else
  {
    v8 = *&v7.i32[2] / *&v7.i32[3];
    v10 = *&v7.i32[3];
  }

  v16 = vcvtq_f64_f32(*&v11);
  v17 = v8;
  v18 = v10;
  v14 = 0;
  v15 = 0;
  CA::OGL::Context::device_float_color(a2, &v14, a3, &v16, a5, a6, a6);
  *v12.f32 = vmul_laneq_f32(v14, v13, 3);
  v12.i32[3] = vextq_s8(v13, v13, 8uLL).i32[1];
  v12.f32[2] = *&v15 * v9;
  *this = vcvt_f16_f32(v12);
}

_DWORD *CA::OGL::Context::retain_null_surface(CA::OGL::Context *this)
{
  result = *(this + 86);
  if (result || (result = (*(*this + 792))(this), (*(this + 86) = result) != 0))
  {
    ++*result;
  }

  return result;
}

void CA::OGL::Context::track_surface(CA::OGL::Context *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    __assert_rtn("push_front", "x-list-template.h", 197, "Next::get_next (obj) == nullptr");
  }

  v4 = *(a2 + 92);
  v5 = 96;
  if ((v4 & 0x400) == 0)
  {
    v5 = 88;
  }

  *(a2 + 16) = *(a1 + v5);
  *(a1 + v5) = a2;
  if (byte_1ED4E98C1 == 1)
  {
    kdebug_trace();
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v6 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 2);
      v8 = "persistent";
      if ((v4 & 0x400) == 0)
      {
        v8 = "transient";
      }

      v9 = *(a2 + 40);
      v10 = *(a2 + 44);
      v11[0] = 67110146;
      v11[1] = v7;
      v12 = 2080;
      v13 = v8;
      v14 = 1024;
      v15 = v9;
      v16 = 1024;
      v17 = v10;
      v18 = 2048;
      v19 = a2;
      _os_log_debug_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEBUG, "context(%u) tracking %s %ux%u surface %p", v11, 0x28u);
    }

    CA::OGL::Context::dump_tracked_surfaces(a1);
  }
}

uint64_t CA::OGL::Context::cache_get_surface(uint64_t a1, uint64_t a2, int32x2_t *a3, float64x2_t *a4)
{
  v6 = *(a2 + 48);
  if (!v6)
  {
    goto LABEL_28;
  }

  v10 = *a3;
  v9 = a3[1];
  if (a4 && (v6[18].i16[2] & 0x100) != 0)
  {
    if (!CA::Transform::only_translate((a2 + 64), a4))
    {
      CA::OGL::Context::cache_set_surface(a1, a2, 0);
      *(a2 + 36) = 0;
      *(a2 + 28) = 0;
    }

    v11.i64[0] = v10.i32[0];
    v11.i64[1] = v10.i32[1];
    v10 = vmovn_s64(vcvtq_s64_f64(vsubq_f64(vcvtq_f64_s64(v11), a4[6])));
  }

  v12 = (a2 + 28);
  v13 = *(a2 + 28);
  v14 = *(a2 + 36);
  if (v13.n128_i32[2] <= v13.n128_i32[3])
  {
    v15 = HIDWORD(*(a2 + 28));
  }

  else
  {
    v15 = *(a2 + 36);
  }

  if (v13.n128_i32[2] >= v13.n128_i32[3])
  {
    v14 = HIDWORD(*(a2 + 28));
  }

  if (v15 <= 1073741822 && v14 >= 1)
  {
    v17.i64[0] = -1;
    v17.i64[1] = -1;
    v18.i64[0] = vaddq_s32(v13, v17).u64[0];
    v18.u64[1] = vadd_s32(*&vextq_s8(v13, v13, 8uLL), 0x200000002);
    v19 = vclez_s32(v18.u64[1]);
    v13 = vbslq_s8(vmovl_s16(vdup_lane_s16(vorr_s8(v19, vdup_lane_s32(v19, 1)), 0)), v18.u64[0], v18);
  }

  v20 = v6[18].i16[2];
  if ((v20 & 0x100) != 0)
  {
    v21 = vextq_s8(v13, v13, 8uLL).u64[0];
    v22 = vorr_s8(vcltz_s32(v9), vclez_s32(v21));
    if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0 || (v23 = vand_s8(vcge_s32(vadd_s32(v13.n128_u64[0], v21), vadd_s32(v10, v9)), vcge_s32(v10, v13.n128_u64[0])), v13.n128_u64[0] = vpmin_u32(v23, v23), (v13.n128_u32[0] & 0x80000000) == 0))
    {
      CA::OGL::Context::cache_set_surface(a1, a2, 0);
      *v12 = 0;
      *(a2 + 36) = 0;
      v20 = v6[18].i16[2];
    }
  }

  if ((v20 & 0x100) != 0 || (v24 = v6[7], v25 = a3[1], v26 = vorr_s8(vcltz_s32(v25), vclez_s32(v24)), (vpmax_u32(v26, v26).u32[0] & 0x80000000) == 0) && (v27 = vand_s8(vcge_s32(vadd_s32(v6[6], v24), vadd_s32(*a3, v25)), vcge_s32(*a3, v6[6])), v13.n128_u64[0] = vpmin_u32(v27, v27), (v13.n128_u32[0] & 0x80000000) != 0))
  {
    if (((*(*a1 + 872))(a1, v6, 0, v13) & 1) == 0)
    {
      CA::OGL::Context::cache_set_surface(a1, a2, 0);
      *v12 = 0;
      *(a2 + 36) = 0;
    }
  }

  else
  {
    CA::OGL::Context::cache_set_surface(a1, a2, 0);
  }

  result = *(a2 + 48);
  if (!result)
  {
LABEL_28:
    ++*(a1 + 1268);
    result = 0;
    if (BYTE3(xmmword_1ED4E97DC) == 1)
    {
      *(a2 + 56) = *(a1 + 648) + 0.1;
    }
  }

  return result;
}

uint64_t CA::OGL::Context::record_sdf_debug_update(uint64_t result, unsigned int a2, int a3, int a4)
{
  v4 = *(result + 2424);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (v4 <= a2)
    {
      v6 = a2 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a2;
  }

  v7 = *(*(result + 2416) + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != a2)
  {
    goto LABEL_17;
  }

  *(v8 + 5) = a3;
  *(v8 + 6) = a4;
  return result;
}

uint64_t CA::OGL::Context::sdf_debug_color(CA::OGL::Context *this, unsigned int a2, int a3)
{
  v3 = *(this + 303);
  if (!v3)
  {
    return 0;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*(this + 302) + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *v6;
  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      return 0;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      return 0;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_16;
  }

  if ((a3 - *(v7 + 6)) > 0xE)
  {
    return 2;
  }

  v10 = *(v7 + 5);
  if (v10 > 2)
  {
    return 2;
  }

  else
  {
    return dword_183E240C8[v10];
  }
}

uint64_t *CA::OGL::wait_image(os_unfair_lock_s *this, CA::Render::Texture *a2, CA::Render::Image *a3)
{
  result = CA::OGL::Context::lookup_image(this, a2, 0);
  if (result && *(result + 5) > this[160]._os_unfair_lock_opaque)
  {
    v5 = *(*&this->_os_unfair_lock_opaque + 680);

    return v5(this, result, 1);
  }

  return result;
}

uint64_t CA::OGL::Context::tile_cache(CA::OGL::Context *this)
{
  if (!*(this + 105))
  {
    operator new();
  }

  return *(this + 105);
}

void *CA::OGL::Context::add_buffered_image(void *result, uint64_t a2)
{
  if ((*(a2 + 59) & 2) == 0)
  {
    v3 = result;
    result = x_list_prepend(result[97], a2);
    v3[97] = result;
    *(a2 + 52) |= 0x200000000000000uLL;
  }

  return result;
}

void CA::OGL::Context::add_transient_render_texture(CA::OGL::Context *this, uint64_t a2, atomic_uint *a3, atomic_uint *a4)
{
  if (!a2)
  {
    goto LABEL_33;
  }

  v4 = a4;
  if (!a4)
  {
    goto LABEL_33;
  }

  v5 = a3;
  v6 = *(this + 100);
  if (!v6)
  {
    operator new();
  }

  for (i = *v6; ; i += 4)
  {
    if (i == *(v6 + 8))
    {
      goto LABEL_10;
    }

    if (*i == a2)
    {
      break;
    }
  }

  if (i[2])
  {
LABEL_33:
    __assert_rtn("add_transient_render_texture", "ogl-context.cpp", 2784, "key && img && !lookup_transient_render_texture (key, false)");
  }

LABEL_10:
  if (a3 && !atomic_fetch_add(a3 + 2, 1u))
  {
    v5 = 0;
    atomic_fetch_add(a3 + 2, 0xFFFFFFFF);
  }

  if (!atomic_fetch_add(a4 + 2, 1u))
  {
    v4 = 0;
    atomic_fetch_add(a4 + 2, 0xFFFFFFFF);
  }

  v9 = *(v6 + 8);
  v8 = *(v6 + 16);
  if (v9 >= v8)
  {
    v11 = *v6;
    v12 = (v9 - *v6) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v14 = v8 - v11;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 59))
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v16 = (v9 - *v6) >> 5;
    v17 = 32 * v12;
    *v17 = a2;
    *(v17 + 8) = v5;
    *(v17 + 16) = v4;
    *(v17 + 24) = 262148;
    v10 = 32 * v12 + 32;
    v18 = 32 * v12 - 32 * v16;
    if (v11 != v9)
    {
      v19 = v11;
      v20 = v18;
      do
      {
        *v20 = *v19;
        *(v20 + 8) = *(v19 + 8);
        *(v19 + 8) = 0;
        *(v19 + 16) = 0;
        *(v20 + 24) = *(v19 + 24);
        v19 += 32;
        v20 += 32;
      }

      while (v19 != v9);
      do
      {
        std::__destroy_at[abi:nn200100]<CA::OGL::TransientRenderTexture,0>(v11);
        v11 += 32;
      }

      while (v11 != v9);
    }

    v21 = *v6;
    *v6 = v18;
    *(v6 + 8) = v10;
    *(v6 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    *(v9 + 8) = v5;
    *(v9 + 16) = v4;
    *(v9 + 24) = 262148;
    v10 = v9 + 32;
  }

  *(v6 + 8) = v10;
}

CA::Render::Image *CA::OGL::Context::tile_cache_load(double *a1, uint64_t a2, CA::Render::Image *a3, char *a4)
{
  v4 = a3;
  if (*a4 == 11 && a3 && (*(a2 + 308) & 0x12) != 0 && *(a3 + 12) == 23)
  {
    if (*(a3 + 169) > 1u)
    {
      v7 = 7;
LABEL_24:
      *a4 = v7;
      return v4;
    }

    v9 = CA::OGL::Context::tile_cache(a1);
    v10 = 1.0 / *(a2 + 264);
    if ((*(a2 + 248) & 0x10) != 0)
    {
      v11 = vaddvq_f64(vmulq_f64(*(a2 + 104), *(a2 + 104)));
      v12 = vaddvq_f64(vmulq_f64(*(a2 + 136), *(a2 + 136)));
      v13 = *(a2 + 224);
      if (v13 != 1.0)
      {
        v14 = 1.0 / (v13 * v13);
        v11 = v14 * v11;
        v12 = v14 * v12;
      }

      v15 = v11 != 1.0;
      if (v12 != 1.0)
      {
        v15 = 1;
      }

      v16 = sqrt(v11);
      v17 = sqrt(v12);
      if (v15)
      {
        v12 = v17;
        v11 = v16;
      }
    }

    else
    {
      v11 = *(a2 + 232);
      v12 = v11;
    }

    v18 = v11 * v10;
    v19 = v12 * v10;
    v20 = *(a2 + 208);
    v21 = *(a2 + 200) - floor(*(a2 + 200));
    *&v22 = floor(v20);
    v23 = v20 - *&v22;
    LODWORD(v22) = *(v4 + 4);
    LODWORD(v20) = *(v4 + 5);
    v24 = v18 * v22;
    v25 = v19 * *&v20;
    image = CA::Render::TileCache::get_image(v9, v4, v21, v23, v24, v25, a1[81]);
    if (image)
    {
      v28 = image;
      *(a2 + 24) = v24 * v10;
      *(a2 + 32) = v25 * v10;
      v27.f64[0] = 1.0 / v18;
      CA::Transform::scale((a2 + 104), v27, 1.0 / v19, 1.0);
      v29.f64[0] = -v21;
      v31 = CA::Transform::translate_right((a2 + 104), v29, -v23, v30);
      LODWORD(v31.f64[0]) = *(v28 + 4);
      LODWORD(v32) = *(v28 + 5);
      v33 = v24 / *&v31.f64[0];
      v34 = v25 / v32;
      v35 = *(a2 + 308);
      v36 = 1.0 - v34;
      if ((v35 & 0x800) == 0)
      {
        v36 = 0.0;
      }

      if ((v35 & 0x400) != 0)
      {
        *(a2 + 276) = *(a2 + 276) * v33;
        *(a2 + 280) = v36 + (*(a2 + 280) * v34);
        *(a2 + 284) = *(a2 + 284) * v33;
        *(a2 + 288) = v36 + (*(a2 + 288) * v34);
      }

      else
      {
        if ((v35 & 0x800) != 0)
        {
          v34 = 1.0;
        }

        *(a2 + 276) = 0;
        *(a2 + 280) = v36;
        *(a2 + 284) = v33;
        *(a2 + 288) = v34;
        *(a2 + 308) = v35 | 0x400;
      }

      v7 = 1;
      v4 = v28;
      goto LABEL_24;
    }
  }

  return v4;
}

BOOL CA::WindowServer::MemorySurface::check_alignment(CA::WindowServer::MemorySurface *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 34);
  v4 = v3 % a3;
  v5 = v3 & (a3 - 1);
  if ((a3 & (a3 - 1)) != 0)
  {
    v5 = v4;
  }

  return v5 == 0;
}

uint64_t CA::WindowServer::MemorySurface::lock(CA::WindowServer::MemorySurface *this, unsigned __int8 **a2, unint64_t *a3)
{
  v3 = *(this + 34);
  *a2 = *(this + 33);
  *a3 = v3;
  return 1;
}

void CA::WindowServer::MemorySurface::~MemorySurface(CA::WindowServer::MemorySurface *this)
{
  CA::WindowServer::MemorySurface::~MemorySurface(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1F66E0;
  v2 = *(this + 35);
  if (v2)
  {
    v2(*(this + 33), *(this + 36));
  }

  CA::WindowServer::Surface::~Surface(this);
}

uint64_t CA::WindowServer::anonymous namespace::release_shmem(CA::WindowServer::_anonymous_namespace_ *this, atomic_uint *a2, void *a3)
{
  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

CGColorSpace *CA::Render::Image::copy_subimage(CA::Render::Image *this, unsigned int a2, const CA::Bounds *a3, unint64_t a4, int a5)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (*(this + 169) <= a2)
  {
    return 0;
  }

  v8 = *a3;
  v7 = *(a3 + 1);
  v9 = *(this + 5);
  if (*(this + 4) >> a2 <= 1u)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(this + 4) >> a2;
  }

  v11 = v9 >> a2;
  if (v9 >> a2 <= 1)
  {
    v11 = 1;
  }

  if (v10 <= v8 || v11 <= v7)
  {
    return 0;
  }

  v13 = *(a3 + 3);
  v14 = *(a3 + 2) + v8 <= v10 ? *(a3 + 2) : v10 - v8;
  v15 = (v13 + v7) <= v11 ? v13 : (v11 - v7);
  if (!v14 || v15 == 0)
  {
    return 0;
  }

  v18 = v11 - v7 - v15;
  if (a5)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(a3 + 1);
  }

  v20 = (this + 176);
  v21 = *(this + a2 + 22);
  v38[0] = v21;
  v22 = *(this + 168);
  if (v22 > 0x25)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_183E22690[v22];
  }

  v24 = 0;
  if (a2)
  {
    v25 = a2;
    do
    {
      v26 = *v20++;
      v24 += v26 * v9;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 >>= 1;
      }

      --v25;
    }

    while (v25);
  }

  v27 = (*(this + 14) + v24 + v21 * v19 + v23 * v8);
  if (!a4 || v21 <= a4)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v33 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x165299FDuLL);
    if (!v33)
    {
      return CA::Render::Image::new_image(*(this + 168), v14, v15, 1u, *(this + 7), v27, v38, CA::Render::Image::SubimageInfo::release, 0, v35);
    }

    v34 = v33;
    *v33 = this;
    *(v33 + 2) = a2;
    *(v33 + 3) = v8;
    *(v33 + 4) = v19;
    atomic_fetch_add(this + 41, 1u);
    result = CA::Render::Image::new_image(*(this + 168), v14, v15, 1u, *(this + 7), v27, v38, CA::Render::Image::SubimageInfo::release, v33, v35);
    if (result)
    {
      return result;
    }

    CA::Render::Image::release_data(*v34);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v34);
    return 0;
  }

  v28 = CA::Render::format_rowbytes(v22, v14);
  v36 = 0;
  v37 = v28;
  if (is_mul_ok(v28, v15))
  {
    v29 = (v28 * v15);
  }

  else
  {
    v29 = 0;
  }

  result = CA::Render::aligned_malloc(v29, &v36, 0);
  if (result)
  {
    v30 = result;
    CGBlt_copyBytes();
    v31 = v36;
    MEMORY[0x1865EC180](*MEMORY[0x1E69E9A60], v30, v36, 1, 1);
    result = CA::Render::Image::new_image(*(this + 168), v14, v15, 1u, *(this + 7), v30, &v37, CA::Render::aligned_free, v31, v35);
    if (result)
    {
      *(result + 3) |= 0x1000000u;
      return result;
    }

    CA::Render::aligned_free(v30, v31, v32);
    return 0;
  }

  return result;
}

void CA::Render::Image::SubimageInfo::release(CA::Render::Image::SubimageInfo *this, atomic_uint **a2, void *a3)
{
  if (a2)
  {
    CA::Render::Image::release_data(*a2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v4 = malloc_zone;

    malloc_zone_free(v4, a2);
  }
}

uint64_t CA::Render::Image::SubimageKey::hash(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 28);
  if (v1)
  {
    return 33 * (33 * (33 * (33 * (33 * (33 * *a1 + *(a1 + 16)) + *(a1 + 20)) + *(a1 + 24)) + v2) + *(a1 + 32)) + v1;
  }

  else
  {
    return 33 * (33 * (33 * (33 * (33 * *a1 + *(a1 + 16)) + *(a1 + 20)) + *(a1 + 24)) + v2) + *(a1 + 32);
  }
}

uint64_t CA::Render::Image::SubimageKey::delete_images(void *ptr, atomic_uint *a2, uint64_t a3)
{
  if (*ptr != a3)
  {
    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, ptr);
  if (a2)
  {
    if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*a2 + 16))(a2);
    }
  }

  return 1;
}

uint64_t CA::Render::Image::collect_subimages_(double *ptr, atomic_uint *a2, double *a3)
{
  v3 = ptr[5];
  if (*a3 >= v3)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, ptr);
    if (a2 && atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*a2 + 16))(a2);
    }

    return 1;
  }

  else
  {
    result = 0;
    if (v3 < *&CA::Render::Image::_subimage_deadline)
    {
      CA::Render::Image::_subimage_deadline = *&v3;
    }
  }

  return result;
}

void CA::CG::AccelDataProvider::set_image(os_unfair_lock_s *this, CGImage *a2)
{
  Identifier = CGImageGetIdentifier();
  os_unfair_lock_lock(this + 2);
  this[14]._os_unfair_lock_opaque = Identifier;
  *&this[12]._os_unfair_lock_opaque = CGImageGetBytesPerRow(a2);
  DataProvider = CGImageGetDataProvider(a2);
  if (DataProvider)
  {
    DataProvider = CGDataProviderGetSizeOfData();
  }

  *&this[8]._os_unfair_lock_opaque = DataProvider;
  os_unfair_lock_unlock(this + 2);
  os_unfair_lock_lock(&CA::CG::AccelDataProvider::_table_lock);
  v6 = CA::CG::AccelDataProvider::_table;
  if (!CA::CG::AccelDataProvider::_table)
  {
    v6 = x_hash_table_new_(CA::CG::identifier_hash, 0, 0, 0, 0, 0);
    CA::CG::AccelDataProvider::_table = v6;
  }

  hash_table_modify(v6, Identifier, this, 0);

  os_unfair_lock_unlock(&CA::CG::AccelDataProvider::_table_lock);
}

NSObject *CA::CG::AccelDataProvider::wait_data(NSObject *this)
{
  isa = this[2].isa;
  if (isa)
  {
    v2 = this;
    isa_high = HIDWORD(this[7].isa);
    if (isa_high)
    {
      if (BYTE11(xmmword_1ED4E980C) == 1)
      {
        kdebug_trace();
        v4 = v2[2].isa;
        v5 = v4[9];
        if (!v5)
        {
          v5 = (*(*v4 + 80))(v2[2].isa);
          v4[9] = v5;
        }

        CA::CG::Queue::wait_queue(v5, HIDWORD(v2[7].isa));
        HIDWORD(v2[7].isa) = 0;

        return kdebug_trace();
      }

      else
      {
        v6 = isa[9];
        if (!v6)
        {
          v6 = (*(*isa + 80))(isa);
          isa[9] = v6;
          isa_high = HIDWORD(v2[7].isa);
        }

        this = CA::CG::Queue::wait_queue(v6, isa_high);
        HIDWORD(v2[7].isa) = 0;
      }
    }
  }

  return this;
}

uint64_t CA::CG::AccelDataProvider::retain_texture(CA::CG::Renderer &)::$_0::__invoke(uint64_t result)
{
  if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (**result)(result);
    v3 = *(*v2 + 16);

    return v3(v2);
  }

  return result;
}

uint64_t CA::CG::AccelDataProvider::AccelDataProvider(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1EF1F67E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = a3;
  *(a1 + 12) = 1;
  atomic_fetch_add((a1 + 12), 1u);
  os_unfair_lock_lock((a2 + 12));
  *(a2 + 88) = x_list_prepend(*(a2 + 88), a1);
  os_unfair_lock_unlock((a2 + 12));
  return a1;
}

void CA::CG::AccelDataProvider::~AccelDataProvider(CA::CG::AccelDataProvider *this, uint64_t a2, void *a3)
{
  *this = &unk_1EF1F67E0;
  if (*(this + 14))
  {
    os_unfair_lock_lock(&CA::CG::AccelDataProvider::_table_lock);
    x_hash_table_remove(CA::CG::AccelDataProvider::_table, *(this + 14));
    os_unfair_lock_unlock(&CA::CG::AccelDataProvider::_table_lock);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CA::Render::aligned_free(v4, *(this + 5), a3);
  }
}

void CA::CG::AccelDataProvider::detach(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  if (*&this[4]._os_unfair_lock_opaque)
  {
    CA::CG::AccelDataProvider::wait_data(this);
    (**&this->_os_unfair_lock_opaque)(this);
    *&this[4]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(this + 2);
}

void CA::CG::AccelDataProvider::release_info(os_unfair_lock_s *this, void *a2)
{
  os_unfair_lock_lock(this + 2);
  *&this[4]._os_unfair_lock_opaque = 0;
  os_unfair_lock_unlock(this + 2);
  add = atomic_fetch_add(&this[3], 0xFFFFFFFF);
  if (this && add == 1)
  {
    v4 = *(*&this->_os_unfair_lock_opaque + 16);

    v4(this);
  }
}

uint64_t CA::CG::AccelDataProvider::get_byte_pointer(os_unfair_lock_s *this, void *a2)
{
  os_unfair_lock_lock(this + 2);
  if (*&this[4]._os_unfair_lock_opaque)
  {
    CA::CG::AccelDataProvider::wait_data(this);
    (**&this->_os_unfair_lock_opaque)(this);
    v3 = *&this[6]._os_unfair_lock_opaque;
    if (v3)
    {
      *&this[4]._os_unfair_lock_opaque = 0;
    }
  }

  else
  {
    v3 = *&this[6]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this + 2);
  return v3;
}

float CA::HalfFloat::to_float(CA::HalfFloat *this)
{
  v1 = (this >> 10) & 0x1F;
  if (v1 && v1 != 31)
  {
    v1 = (v1 << 23) + 939524096;
  }

  else if (v1 == 31)
  {
    v1 = 2139095040;
  }

  LODWORD(result) = (this << 16) & 0x80000000 | (this >> 7) & 7 | (8 * (this & 0x3FF)) & 0x1FFF | ((this & 0x3FF) << 13) | v1;
  return result;
}

uint64_t CA::CAWorkInterval::release_work_interval(CA::CAWorkInterval *this)
{
  if (*(this + 5))
  {
    work_interval_instance_free();
    *(this + 5) = 0;
  }

  result = *(this + 4);
  if (result)
  {
    result = work_interval_destroy();
    *(this + 4) = 0;
  }

  return result;
}

uint64_t CA::Render::ShapeLayer::hit_test(uint64_t a1, uint64_t a2, CGFloat *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  if (*(a1 + 24) != 0.0 || *(a1 + 28) != 0.0 || *(a1 + 32) != 0.0 || *(a1 + 36) != 0.0 || *(a1 + 48))
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = *(a1 + 136);
    v9 = CA::Render::Path::cg_path(v4);
    v17.x = v6;
    v17.y = v7;
    if (CGPathContainsPoint(v9, 0, v17, v8 == 1))
    {
      return 1;
    }
  }

  if (*(a1 + 104) <= 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(a1 + 56))))) & 1) == 0 && !*(a1 + 80))
  {
    return 0;
  }

  v16[0] = 0;
  CA::Render::ShapeLayer::stroke_path(v16, *(a1 + 160), a1);
  v11 = v16[0];
  if (!v16[0])
  {
    return 0;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = CA::Render::Path::cg_path(v16[0]);
  v18.x = v12;
  v18.y = v13;
  v10 = CGPathContainsPoint(v14, 0, v18, 0);
  if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v11 + 16))(v11);
  }

  return v10;
}

void CA::Render::ShapeLayer::set_property(CA::Render::ShapeLayer *this, unint64_t a2, const unsigned int *a3, BOOL a4, unint64_t a5, const double *a6)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (*a3 <= 520)
  {
    if (v7 == 246)
    {
      CA::Render::color_from_vec(&v10, a5, a6);
      *(this + 24) = v10;
      *(this + 10) = v11;
      return;
    }

    if (v7 == 481)
    {
      if (!a5)
      {
        return;
      }

      *(this + 15) = *a6;
    }

    else
    {
      if (v7 != 483 || a5 == 0)
      {
        return;
      }

      *(this + 13) = *a6;
    }
  }

  else if (v7 > 689)
  {
    if (v7 == 690)
    {
      if (!a5)
      {
        return;
      }

      *(this + 12) = *a6;
    }

    else
    {
      if (v7 != 691 || a5 == 0)
      {
        return;
      }

      *(this + 11) = *a6;
    }
  }

  else
  {
    if (v7 != 521)
    {
      if (v7 == 689)
      {
        CA::Render::color_from_vec(&v10, a5, a6);
        *(this + 56) = v10;
        *(this + 18) = v11;
      }

      return;
    }

    if (!a5)
    {
      return;
    }

    *(this + 14) = *a6;
  }

  CA::Render::ShapeLayer::invalidate_stroke_path(this);
}

uint64_t CA::Render::ShapeLayer::get_property(float32x2_t *this, unint64_t a2, const unsigned int *a3, unint64_t a4, float64x2_t *a5, float64x2_t **a6)
{
  if (a4 < 5)
  {
    return 0;
  }

  if (a6)
  {
    *a6 = a5;
  }

  result = 0;
  v8 = *a3;
  if (*a3 <= 520)
  {
    switch(v8)
    {
      case 246:
        v9 = this[5].f32[0];
        v10 = this[3];
        v11 = this[4];
LABEL_18:
        *a5 = vcvtq_f64_f32(v10);
        a5[1] = vcvtq_f64_f32(v11);
        a5[2].f64[0] = v9;
        return 5;
      case 481:
        v12 = *&this[15];
        break;
      case 483:
        v12 = *&this[13];
        break;
      default:
        return result;
    }
  }

  else if (v8 > 689)
  {
    if (v8 == 690)
    {
      v12 = *&this[12];
    }

    else
    {
      if (v8 != 691)
      {
        return result;
      }

      v12 = *&this[11];
    }
  }

  else
  {
    if (v8 != 521)
    {
      if (v8 != 689)
      {
        return result;
      }

      v9 = this[9].f32[0];
      v10 = this[7];
      v11 = this[8];
      goto LABEL_18;
    }

    v12 = *&this[14];
  }

  a5->f64[0] = v12;
  return 1;
}

char *CA::Render::ShapeLayer::show(uint64_t a1, X::Stream *this, int a3, uint64_t a4)
{
  if (a4)
  {
    if (*(a1 + 16))
    {
      v13 = "shape-layer-path";
    }

    else
    {
      v13 = "shape-layer";
    }
  }

  else
  {
    X::Stream::printf(this, "(shape-layer");
    if (*(a1 + 16))
    {
      X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
      (*(**(a1 + 16) + 40))(*(a1 + 16), this, (a3 + 1), a4);
    }

    v8 = 2 * a3;
    if (*(a1 + 48))
    {
      X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
      X::Stream::printf(this, "(fillColor ");
      (*(**(a1 + 48) + 40))(*(a1 + 48), this, (a3 + 1), a4);
      X::Stream::printf(this, ")");
    }

    else if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(a1 + 24))))))
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(fillColor %.3g %.3g %.3g %.3g %.3g)");
    }

    if (*(a1 + 80))
    {
      X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
      X::Stream::printf(this, "(strokeColor ");
      (*(**(a1 + 80) + 40))(*(a1 + 80), this, (a3 + 1), a4);
      X::Stream::printf(this, ")");
    }

    else if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(a1 + 56))))))
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(strokeColor %.3g %.3g %.3g %.3g %.3g)");
    }

    if (*(a1 + 88) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(strokeStart %g)", *(a1 + 88));
    }

    if (*(a1 + 96) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(strokeEnd %g)", *(a1 + 96));
    }

    if (*(a1 + 104) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(lineWidth %g)", *(a1 + 104));
    }

    if (*(a1 + 112) != 10.0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(miterLimit %g)", *(a1 + 112));
    }

    if (*(a1 + 120) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(dashPhase %g)", *(a1 + 120));
    }

    if (*(a1 + 128))
    {
      v9 = (a3 + 1);
      X::Stream::printf(this, "\n%*s", 2 * v9, "");
      X::Stream::printf(this, "(dashPattern ");
      (*(**(a1 + 128) + 40))(*(a1 + 128), this, v9, a4);
      X::Stream::printf(this, ")");
    }

    v10 = *(a1 + 136);
    if (v10)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(fillRule evenOdd)");
      v10 = *(a1 + 136);
    }

    if ((v10 & 0xFF00) != 0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      if (*(a1 + 137) << 8 == 256)
      {
        v11 = "round";
      }

      else
      {
        v11 = "bevel";
      }

      X::Stream::printf(this, "(lineJoin %s)", v11);
      v10 = *(a1 + 136);
    }

    if ((v10 & 0xFF0000) != 0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      if (*(a1 + 138) << 16 == 0x10000)
      {
        v12 = "round";
      }

      else
      {
        v12 = "square";
      }

      X::Stream::printf(this, "(lineCap %s)", v12);
    }

    v13 = ")";
  }

  return X::Stream::printf(this, v13);
}

Class init_alignment(void)
{
  result = NSClassFromString(&cfstr_Uiapplication.isa);
  if (result)
  {
    init_alignment(void)::app = [(objc_class *)result sharedApplication];
    result = [init_alignment(void)::app userInterfaceLayoutDirection];
    if (result == 1)
    {
      natural_alignment = 1;
    }
  }

  return result;
}

uint64_t CA::Render::MediaLayer::set_property(uint64_t this, unint64_t a2, const unsigned int *a3, BOOL a4, uint64_t a5, const double *a6)
{
  if (a5)
  {
    if (*a3 == 9)
    {
      *(this + 12) = *(this + 12) & 0xFFFFFEFF | ((*a6 != 0.0) << 8);
    }
  }

  return this;
}

uint64_t CA::Render::MediaLayer::get_property(CA::Render::MediaLayer *this, unint64_t a2, const unsigned int *a3, unint64_t a4, double *a5, double **a6)
{
  if (a4 < 4)
  {
    return 0;
  }

  if (a6)
  {
    *a6 = a5;
  }

  if (*a3 != 9)
  {
    return 0;
  }

  v6 = 0.0;
  if ((*(this + 3) & 0x100) != 0)
  {
    v6 = 1.0;
  }

  *a5 = v6;
  return 1;
}
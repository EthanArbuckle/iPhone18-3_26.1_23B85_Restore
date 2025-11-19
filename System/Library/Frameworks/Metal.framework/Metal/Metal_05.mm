uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t (*MTLPackColor(uint64_t a1, float64x2_t *a2, uint64_t a3))(int32x4_t *this, int *a2, void *a3)
{
  v20 = *a2;
  v21 = a2[1];
  v5 = MTLGetPackFloatFunction(a1);
  if (v5)
  {
    v6 = v5;
    v7 = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v21);
  }

  else
  {
    v8 = MTLGetPackUintFunction(a1);
    if (v8)
    {
      v6 = v8;
      v9 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v10 = vminnmq_f64(vmaxnmq_f64(v20, 0), v9);
      v11 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
      v12 = vminnmq_f64(vmaxnmq_f64(v21, 0), v9);
      v13 = vcgtq_f64(v10, v11);
      v14 = vcgtq_f64(v12, v11);
      v15 = vdupq_n_s64(0x41E0000000000000uLL);
      v16 = vuzp1q_s32(vcvtq_s64_f64(vsubq_f64(v10, vandq_s8(v15, v13))), vcvtq_s64_f64(vsubq_f64(v12, vandq_s8(v15, v14))));
      *&v10.f64[0] = 0x8000000080000000;
      *&v10.f64[1] = 0x8000000080000000;
      v7 = vaddq_s32(vandq_s8(vuzp1q_s32(v13, v14), v10), v16);
    }

    else
    {
      result = MTLGetPackSintFunction(a1);
      if (!result)
      {
        return result;
      }

      v6 = result;
      v18 = vdupq_n_s64(0xC1E0000000000000);
      v19 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
      v7 = vuzp1q_s32(vcvtq_s64_f64(vminnmq_f64(vmaxnmq_f64(v20, v18), v19)), vcvtq_s64_f64(vminnmq_f64(vmaxnmq_f64(v21, v18), v19)));
    }
  }

  v22 = v7;
  return v6(&v22, a3);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t (*MTLGetPackFloatFunction(uint64_t a1))(int32x4_t *this, float *a2, void *a3)
{
  result = 0;
  if (a1 <= 104)
  {
    if (a1 <= 0x68)
    {
      switch(a1)
      {
        case '7':
          return MTLGetPackFloatFunction::$_9::__invoke;
        case '8':
        case '9':
        case ':':
        case ';':
        case '=':
        case '?':
        case '@':
        case 'C':
        case 'D':
        case 'E':
        case 'I':
        case 'J':
        case 'K':
        case 'L':
        case 'M':
        case 'N':
        case 'O':
        case 'R':
        case 'S':
        case 'V':
        case 'W':
        case 'X':
        case 'Y':
        case '[':
          return result;
        case '<':
          return MTLGetPackFloatFunction::$_10::__invoke;
        case '>':
          return MTLGetPackFloatFunction::$_11::__invoke;
        case 'A':
          return MTLGetPackFloatFunction::$_12::__invoke;
        case 'B':
          return MTLGetPackFloatFunction::$_46::__invoke;
        case 'F':
          return MTLGetPackFloatFunction::$_13::__invoke;
        case 'G':
          return MTLGetPackFloatFunction::$_14::__invoke;
        case 'H':
          return MTLGetPackFloatFunction::$_15::__invoke;
        case 'P':
          return MTLGetPackFloatFunction::$_16::__invoke;
        case 'Q':
          return MTLGetPackFloatFunction::$_17::__invoke;
        case 'T':
          return MTLGetPackFloatFunction::$_43::__invoke;
        case 'U':
          return MTLGetPackFloatFunction::$_44::__invoke;
        case 'Z':
          return MTLGetPackFloatFunction::$_18::__invoke;
        case '\\':
          return MTLGetPackFloatFunction::$_19::__invoke;
        case ']':
          return MTLGetPackFloatFunction::$_20::__invoke;
        case '^':
          return MTLGetPackFloatFunction::$_21::__invoke;
        default:
          JUMPOUT(0);
      }
    }

    switch(a1)
    {
      case 10:
        return MTLGetPackFloatFunction::$_1::__invoke;
      case 11:
        return MTLGetPackFloatFunction::$_33::__invoke;
      case 12:
        return MTLGetPackFloatFunction::$_2::__invoke;
      case 20:
        return MTLGetPackFloatFunction::$_3::__invoke;
      case 22:
        return MTLGetPackFloatFunction::$_4::__invoke;
      case 25:
        return MTLGetPackFloatFunction::$_5::__invoke;
      case 26:
        return MTLGetPackFloatFunction::$_45::__invoke;
      case 30:
        return MTLGetPackFloatFunction::$_6::__invoke;
      case 31:
        return MTLGetPackFloatFunction::$_34::__invoke;
      case 32:
        return MTLGetPackFloatFunction::$_7::__invoke;
      case 40:
        return MTLGetPackFloatFunction::$_35::__invoke;
      case 41:
        return MTLGetPackFloatFunction::$_36::__invoke;
      case 42:
        return MTLGetPackFloatFunction::$_37::__invoke;
      case 43:
        return MTLGetPackFloatFunction::$_8::__invoke;
      case 44:
        return MTLGetPackFloatFunction::$_42::__invoke;
      default:
        return result;
    }
  }

  else if (a1 > 301)
  {
    if (a1 > 552)
    {
      if (a1 > 554)
      {
        if (a1 == 555)
        {
          return MTLGetPackFloatFunction::$_39::__invoke;
        }

        else
        {
          if (a1 != 556)
          {
            return result;
          }

          return MTLGetPackFloatFunction::$_32::__invoke;
        }
      }

      else if (a1 == 553)
      {
        return MTLGetPackFloatFunction::$_41::__invoke;
      }

      else
      {
        return MTLGetPackFloatFunction::$_38::__invoke;
      }
    }

    else if (a1 > 324)
    {
      if (a1 == 325)
      {
        return MTLGetPackFloatFunction::$_31::__invoke;
      }

      else
      {
        if (a1 != 552)
        {
          return result;
        }

        return MTLGetPackFloatFunction::$_40::__invoke;
      }
    }

    else if (a1 == 302)
    {
      return MTLGetPackFloatFunction::$_29::__invoke;
    }

    else
    {
      if (a1 != 315)
      {
        return result;
      }

      return MTLGetPackFloatFunction::$_30::__invoke;
    }
  }

  else if (a1 > 115)
  {
    if (a1 > 299)
    {
      if (a1 == 300)
      {
        return MTLGetPackFloatFunction::$_27::__invoke;
      }

      else
      {
        return MTLGetPackFloatFunction::$_28::__invoke;
      }
    }

    else if (a1 == 116)
    {
      return MTLGetPackFloatFunction::$_47::__invoke;
    }

    else
    {
      if (a1 != 125)
      {
        return result;
      }

      return MTLGetPackFloatFunction::$_26::__invoke;
    }
  }

  else if (a1 > 111)
  {
    if (a1 == 112)
    {
      return MTLGetPackFloatFunction::$_24::__invoke;
    }

    else
    {
      if (a1 != 115)
      {
        return result;
      }

      return MTLGetPackFloatFunction::$_25::__invoke;
    }
  }

  else if (a1 == 105)
  {
    return MTLGetPackFloatFunction::$_22::__invoke;
  }

  else
  {
    if (a1 != 110)
    {
      return result;
    }

    return MTLGetPackFloatFunction::$_23::__invoke;
  }
}

uint64_t MTLGetPackFloatFunction::$_46::__invoke(int32x2_t *this, float *a2, void *a3, int8x16_t a4)
{
  *a4.i8 = *this;
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v5 = vnegq_f32(v4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  v7 = vshr_n_u32(vadd_s32(vadd_s32(vand_s8(*&vceqq_s32(vandq_s8(a4, vnegq_f32(v6)), v5), 0xFFFF0000FFFFLL), *this), vbic_s8(vadd_s32(vand_s8(*&vshrq_n_u32(a4, 0x10uLL), 0x100000001), 0x7F0000007FLL), *&vceqq_s32(vandq_s8(a4, v5), v5))), 0x10uLL);
  *(a2 + 1) = v7.i16[2];
  *a2 = v7.i16[0];
  return 4;
}

uint64_t DeserialContext::moveToOffset(uint64_t this, unint64_t a2, int a3)
{
  if (a3 && *(this + 16) != a2 || (*(this + 16) = a2, *(this + 8) < a2))
  {
    abort();
  }

  return this;
}

uint64_t deserializeGlobalBindingsWithDeserializer(void *a1, uint64_t a2, DeserialContext *this, int a4)
{
  v8 = DeserialContext::deserializeUint32(this);
  *(a2 + 32) = deserializeArguments(a1, this, a4, (a2 + 24), (a2 + 64), *(a2 + 112), 0);

  return DeserialContext::moveToOffset(this, v8, a4);
}

void MTLFragmentReflectionDeserializerLegacy::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (!data)
  {
    *(a1 + 48) = -1;
    return;
  }

  size_ptr = 0;
  buffer_ptr = 0;
  v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6 = *(a1 + 104);
  v8 = size_ptr;
  v7 = buffer_ptr;
  v26 = buffer_ptr;
  v27 = size_ptr;
  v28 = 0;
  *(a1 + 112) = 0;
  if (v8 >= 8 && *v7 == 0x4E494253504C544DLL)
  {
    v28 = 8;
    if ((v8 & 0xFFFFFFFFFFFFFFFCLL) == 8)
    {
      goto LABEL_29;
    }

    v9 = v7[2];
    v28 = 12;
    *(a1 + 112) = v9;
    if (v9 > 0x20000)
    {
      *(a1 + 40) = DeserialContext::stringFromSerializedData(&v26);
    }
  }

  v10 = (v6 >> 1) & 1;
  deserializeArgumentsWithDeserializer(a2, a1, &v26, v10);
  v11 = v27;
  if (v27 <= v28 || v27 - v28 <= 3)
  {
    goto LABEL_29;
  }

  v12 = *&v26[v28];
  v13 = v28 + 4;
  v28 += 4;
  if (v12)
  {
    *(a1 + 136) = 1;
    v25 = 0;
    deserializeArguments(a2, &v26, 1, &v25, (a1 + 64), *(a1 + 112), 1);
    v14 = v25;
    *(a1 + 128) = *v25;
    free(v14);
    v11 = v27;
    v13 = v28;
  }

  if (v11 <= v13 || v11 - v13 <= 3)
  {
    goto LABEL_29;
  }

  v15 = v26;
  v16 = *&v26[v13];
  v17 = v13 + 4;
  v28 = v13 + 4;
  *(a1 + 48) = v16;
  v18 = *(a1 + 112);
  if (v18 < 0x10000)
  {
    goto LABEL_25;
  }

  v19 = v11 > v17;
  v20 = v11 - v17;
  if (!v19 || v20 <= 3)
  {
    goto LABEL_29;
  }

  v21 = *&v15[v17];
  v28 = v13 + 8;
  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E695DEF0]);
    v23 = v28;
    if (v28 < v27)
    {
      v28 += v21;
      if (v23 + v21 <= v27)
      {
        v24 = [v22 initWithBytes:&v26[v23] length:v21];
        v18 = *(a1 + 112);
        goto LABEL_23;
      }
    }

LABEL_29:
    abort();
  }

  v24 = 0;
LABEL_23:
  *(a1 + 56) = v24;
  if (v18 >= 0x20000)
  {
    deserializeGlobalBindingsWithDeserializer(a2, a1, &v26, v10);
  }

LABEL_25:
  if (v28 != size_ptr || v27 < size_ptr)
  {
    goto LABEL_29;
  }

  dispatch_release(v5);
}

void MTLFragmentReflectionDeserializerLegacy::~MTLFragmentReflectionDeserializerLegacy(id *this)
{
  MTLFragmentReflectionDeserializer::~MTLFragmentReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void *MTLPipelineDescriptions::newRenderPipelineDescriptor(MTLPipelineDescriptions *this, char *a2, _MTLPipelineCache *a3, NSError **a4)
{
  v8 = this + 26;
  v9 = (this + 112);
  v10 = *(this + 2);
  block = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = ___ZNK23MTLPipelineDescriptions24initializeDescriptorHashEPbRNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN13MTLSerializer29SerializedCompactPropertyListENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_SA_EEEEEEjj_block_invoke;
  v29 = &__block_descriptor_64_e5_v8__0l;
  v30 = this;
  v31 = v8;
  v33 = 0x700000003;
  v32 = v9;
  dispatch_sync(v10, &block);
  std::string::basic_string[abi:ne200100]<0>(&block, a2);
  v11 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(v9, &block);
  v12 = v11;
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"render pipeline %s not found in pipelineLibrary.", a2];
    if (!a4)
    {
      return 0;
    }

    v22 = [MEMORY[0x1E695DF20] dictionaryWithObject:v21 forKey:*MEMORY[0x1E696A578]];
    v23 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v22];
    v20 = 0;
    *a4 = v23;
    return v20;
  }

  operator delete(block);
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  v25 = *(v12 + 5);
  block = &unk_1EF475D60;
  v27 = this;
  v28 = a3;
  v20 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newRenderPipelineDescriptor(&block, &v25);
  if (!v20)
  {
    MTLPipelineDescriptions::newRenderPipelineDescriptor(a2, v13, v14, v15, v16, v17, v18, v19);
  }

  return v20;
}

void sub_185BE03C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK23MTLPipelineDescriptions24initializeDescriptorHashEPbRNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN13MTLSerializer29SerializedCompactPropertyListENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_SA_EEEEEEjj_block_invoke(uint64_t a1)
{
  if ((**(a1 + 40) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v4 = *v2;
    v3 = v2[1];
    v37[0] = v4;
    v37[1] = v3;
    v36[0] = MTLSerializer::SerializedObjectList::getObject(v37, *(a1 + 56));
    v36[1] = v5;
    v35[0] = MTLSerializer::SerializedObjectList::getObject(v37, *(a1 + 60));
    v35[1] = v6;
    ElementCount = MTLSerializer::SerializedObjectList::getElementCount(v36);
    if (ElementCount)
    {
      for (i = 0; i != ElementCount; ++i)
      {
        v34[0] = MTLSerializer::SerializedObjectList::getObject(v36, i);
        v34[1] = v9;
        Object = MTLSerializer::SerializedObjectList::getObject(v34, 1u);
        v18 = Object;
        if (Object)
        {
          if (!v11)
          {
LABEL_22:
            abort();
          }

          v19 = Object;
          while (*v19++)
          {
            if (!--v11)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          ___ZNK23MTLPipelineDescriptions24initializeDescriptorHashEPbRNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN13MTLSerializer29SerializedCompactPropertyListENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_SA_EEEEEEjj_block_invoke_cold_1(__p, v11, v12, v13, v14, v15, v16, v17);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v18);
        if (std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(*(a1 + 48), __p))
        {
          if (v33 >= 0)
          {
            v31 = __p;
          }

          else
          {
            v31 = __p[0];
          }

          MTLReportFailure(0, "initializeDescriptorHash_block_invoke", 323, @"pipeline descriptor %s duplicated", v21, v22, v23, v24, v31);
        }

        Small = MTLSerializer::PropertyList::getSmallValue<unsigned int>(v34, 0, 0);
        v26 = MTLSerializer::SerializedObjectList::getObject(v35, Small);
        v28 = v27;
        v29 = *(a1 + 48);
        v37[3] = __p;
        v30 = std::__hash_table<std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v29, __p);
        v30[5] = v26;
        v30[6] = v28;
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    **(a1 + 40) = 1;
  }
}

void sub_185BE0594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLSerializer::PropertyList::getSmallValue<unsigned int>(MTLSerializer::SerializedObjectList *a1, unsigned int a2, uint64_t a3)
{
  if (*a1 && MTLSerializer::SerializedObjectList::getElementCount(a1) > a2)
  {
    v6 = *(a1 + 1);
    if (v6 < 4 * (a2 + 2))
    {
      goto LABEL_8;
    }

    v7 = *(*a1 + 4 * (a2 + 1));
    if (v7)
    {
      if (v7 + 4 <= v6)
      {
        return *(*a1 + v7);
      }

LABEL_8:
      abort();
    }
  }

  return a3;
}

void sub_185BE06D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLSerializer::SerializedCompactPropertyList>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185BE0948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *this, unsigned __int8 **a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = objc_opt_new();
  MTLSerializer::SerializedCompactPropertyList::iterator(a2, &v40);
  if (v43 < v42)
  {
    while (1)
    {
      switch(v45)
      {
        case 0:
          PropertyAsObject = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v40);
          v7 = v6;
          v8 = objc_alloc(MEMORY[0x1E696AEC0]);
          if (!PropertyAsObject)
          {
            goto LABEL_106;
          }

          if (!v7)
          {
            goto LABEL_114;
          }

          v9 = PropertyAsObject;
          break;
        case 1:
          v23 = (*(*this + 16))(this, &v40);
          [v4 setVertexFunction:v23];
          goto LABEL_107;
        case 2:
          v23 = (*(*this + 16))(this, &v40);
          [v4 setFragmentFunction:v23];
          goto LABEL_107;
        case 3:
          v25 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v40);
          if (v25)
          {
            v27 = v25;
            v28 = v26;
            v29 = [v4 vertexDescriptor];
            MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::deserializeVertexDescriptor(v29, v29, v27, v28);
          }

          else
          {
            [v4 setVertexDescriptor:0];
          }

          goto LABEL_108;
        case 4:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setRasterSampleCount:v38];
          goto LABEL_108;
        case 5:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setAlphaToCoverageEnabled:v38 != 0];
          goto LABEL_108;
        case 6:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setAlphaToOneEnabled:v38 != 0];
          goto LABEL_108;
        case 7:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setRasterizationEnabled:v38 != 0];
          goto LABEL_108;
        case 8:
          v11 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v40);
          v38 = v11;
          v39 = v12;
          if (!v11)
          {
            goto LABEL_108;
          }

          if (v12 <= 3)
          {
            goto LABEL_114;
          }

          v13 = *v11;
          if (*v11)
          {
            v14 = 0;
            do
            {
              Object = MTLSerializer::SerializedObjectList::getObject(&v38, v14);
              if (Object)
              {
                MTLPipelineLibrarySerializer::deserializeColorAttachments([v4 colorAttachments], Object, v16);
              }

              ++v14;
            }

            while (v13 != v14);
          }

          goto LABEL_108;
        case 9:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setDepthAttachmentPixelFormat:v38];
          goto LABEL_108;
        case 10:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setStencilAttachmentPixelFormat:v38];
          goto LABEL_108;
        case 11:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setInputPrimitiveTopology:v38];
          goto LABEL_108;
        case 12:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setTessellationPartitionMode:v38];
          goto LABEL_108;
        case 13:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setMaxTessellationFactor:v38];
          goto LABEL_108;
        case 14:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setTessellationFactorScaleEnabled:v38 != 0];
          goto LABEL_108;
        case 15:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setTessellationFactorFormat:v38];
          goto LABEL_108;
        case 16:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setTessellationControlPointIndexType:v38];
          goto LABEL_108;
        case 17:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setTessellationFactorStepFunction:v38];
          goto LABEL_108;
        case 18:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setTessellationOutputWindingOrder:v38];
          goto LABEL_108;
        case 21:
          v17 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v40);
          v38 = v17;
          v39 = v18;
          if (!v17)
          {
            goto LABEL_108;
          }

          if (v18 <= 3)
          {
            goto LABEL_114;
          }

          v19 = *v17;
          if (*v17)
          {
            v20 = 0;
            do
            {
              v21 = MTLSerializer::SerializedObjectList::getObject(&v38, v20);
              if (v21)
              {
                MTLPipelineLibrarySerializer::deserializeBuffers([v4 vertexBuffers], v21, v22);
              }

              ++v20;
            }

            while (v19 != v20);
          }

          goto LABEL_108;
        case 22:
          v30 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v40);
          v38 = v30;
          v39 = v31;
          if (!v30)
          {
            goto LABEL_108;
          }

          if (v31 <= 3)
          {
            goto LABEL_114;
          }

          v32 = *v30;
          if (*v30)
          {
            v33 = 0;
            do
            {
              v34 = MTLSerializer::SerializedObjectList::getObject(&v38, v33);
              if (v34)
              {
                MTLPipelineLibrarySerializer::deserializeBuffers([v4 fragmentBuffers], v34, v35);
              }

              ++v33;
            }

            while (v32 != v33);
          }

          goto LABEL_108;
        case 24:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setVertexAmplificationMode:v38];
          goto LABEL_108;
        case 25:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setSupportIndirectCommandBuffers:v38 != 0];
          goto LABEL_108;
        case 26:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setMaxVertexAmplificationCount:v38];
          goto LABEL_108;
        case 27:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          LODWORD(v24) = v38;
          [v4 setSampleCoverage:v24];
          goto LABEL_108;
        case 28:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setSampleMask:v38];
          goto LABEL_108;
        case 30:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setTextureWriteRoundingMode:v38];
          goto LABEL_108;
        case 45:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setAlphaTestEnabled:v38 != 0];
          goto LABEL_108;
        case 46:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setAlphaTestFunction:v38];
          goto LABEL_108;
        case 47:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setLogicOperationEnabled:v38 != 0];
          goto LABEL_108;
        case 48:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setClipDistanceEnableMask:v38];
          goto LABEL_108;
        case 49:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setPointSmoothEnabled:v38 != 0];
          goto LABEL_108;
        case 50:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setPointCoordLowerLeft:v38 != 0];
          goto LABEL_108;
        case 51:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setPointSizeOutputVS:v38 != 0];
          goto LABEL_108;
        case 52:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setTwoSideEnabled:v38 != 0];
          goto LABEL_108;
        case 53:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setVertexDepthCompareClampMask:v38];
          goto LABEL_108;
        case 54:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setFragmentDepthCompareClampMask:v38];
          goto LABEL_108;
        case 55:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setLogicOperation:v38];
          goto LABEL_108;
        case 56:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setDepthStencilWriteDisabled:v38 != 0];
          goto LABEL_108;
        case 57:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setNeedsCustomBorderColorSamplers:v38 != 0];
          goto LABEL_108;
        case 58:
          LODWORD(v38) = 0;
          if (v46 + v47 > v41)
          {
            goto LABEL_114;
          }

          memcpy(&v38, (v40 + v47), v46);
          [v4 setExplicitVisibilityGroupID:v38];
          goto LABEL_108;
        default:
          goto LABEL_108;
      }

      while (*v9++)
      {
        if (!--v7)
        {
          goto LABEL_114;
        }
      }

LABEL_106:
      v23 = [v8 initWithUTF8String:{PropertyAsObject, v38}];
      [v4 setLabel:v23];
LABEL_107:

LABEL_108:
      if (++v43 >= v42)
      {
        break;
      }

      if (v44 + 2 > v41)
      {
LABEL_114:
        abort();
      }

      v36 = *(v40 + v44 + 1);
      v45 = *(v40 + v44);
      v46 = v36;
      v47 = v44 + 2;
      v44 += 2 + v36;
    }
  }

  return v4;
}

uint64_t MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(MTLSerializer::SerializedCompactPropertyList::Iterator *this)
{
  __dst = 0;
  v1 = *(this + 6);
  v2 = *(this + 7);
  v3 = *(this + 1);
  if (v1 + v2 > v3)
  {
    goto LABEL_7;
  }

  v4 = *this;
  memcpy(&__dst, (*this + v2), v1);
  if (__dst)
  {
    if (v3 >= __dst)
    {
      return v4 + __dst;
    }

LABEL_7:
    abort();
  }

  return 0;
}

unsigned __int8 **MTLSerializer::SerializedCompactPropertyList::iterator@<X0>(unsigned __int8 **this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *(a2 + 16) = 0;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *v2;
  *(a2 + 32) = 1;
  if (!v4)
  {
    return this;
  }

  *(a2 + 16) = v4;
  if (v3 <= 2)
  {
LABEL_6:
    abort();
  }

  v5 = v2[1];
  v6 = v2[2];
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = 3;
  *(a2 + 32) = v6 + 3;
  return this;
}

unsigned __int8 **MTLPipelineLibrarySerializer::deserializeColorAttachments(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v15[0] = a2;
  v15[1] = a3;
  result = MTLSerializer::SerializedCompactPropertyList::iterator(v15, &v7);
  if (v10 < v9)
  {
    v5 = 0;
    while (1)
    {
      if (v12 > 4)
      {
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            __dst = 0;
            if (v13 + v14 > v8)
            {
              goto LABEL_38;
            }

            memcpy(&__dst, (v7 + v14), v13);
            result = [v5 setRgbBlendOperation:__dst];
          }

          else
          {
            __dst = 0;
            if (v13 + v14 > v8)
            {
              goto LABEL_38;
            }

            memcpy(&__dst, (v7 + v14), v13);
            result = [v5 setSourceAlphaBlendFactor:__dst];
          }
        }

        else
        {
          switch(v12)
          {
            case 7:
              __dst = 0;
              if (v13 + v14 > v8)
              {
                goto LABEL_38;
              }

              memcpy(&__dst, (v7 + v14), v13);
              result = [v5 setDestinationAlphaBlendFactor:__dst];
              break;
            case 8:
              __dst = 0;
              if (v13 + v14 > v8)
              {
                goto LABEL_38;
              }

              memcpy(&__dst, (v7 + v14), v13);
              result = [v5 setAlphaBlendOperation:__dst];
              break;
            case 9:
              __dst = 0;
              if (v13 + v14 > v8)
              {
                goto LABEL_38;
              }

              memcpy(&__dst, (v7 + v14), v13);
              result = [v5 setWriteMask:__dst];
              break;
          }
        }
      }

      else if (v12 <= 1)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            __dst = 0;
            if (v13 + v14 > v8)
            {
              goto LABEL_38;
            }

            memcpy(&__dst, (v7 + v14), v13);
            result = [v5 setPixelFormat:__dst];
          }
        }

        else
        {
          __dst = 0;
          if (v13 + v14 > v8)
          {
            goto LABEL_38;
          }

          memcpy(&__dst, (v7 + v14), v13);
          result = [a1 objectAtIndexedSubscript:__dst];
          v5 = result;
        }
      }

      else if (v12 == 2)
      {
        __dst = 0;
        if (v13 + v14 > v8)
        {
          goto LABEL_38;
        }

        memcpy(&__dst, (v7 + v14), v13);
        result = [v5 setBlendingEnabled:__dst != 0];
      }

      else if (v12 == 3)
      {
        __dst = 0;
        if (v13 + v14 > v8)
        {
          goto LABEL_38;
        }

        memcpy(&__dst, (v7 + v14), v13);
        result = [v5 setSourceRGBBlendFactor:__dst];
      }

      else
      {
        __dst = 0;
        if (v13 + v14 > v8)
        {
          goto LABEL_38;
        }

        memcpy(&__dst, (v7 + v14), v13);
        result = [v5 setDestinationRGBBlendFactor:__dst];
      }

      if (++v10 >= v9)
      {
        break;
      }

      if (v11 + 2 > v8)
      {
LABEL_38:
        abort();
      }

      v6 = *(v7 + v11 + 1);
      v12 = *(v7 + v11);
      v13 = v6;
      v14 = v11 + 2;
      v11 += 2 + v6;
    }
  }

  return result;
}

uint64_t SpecialPipelineDescriptorDeserializer::newFunctionWithFunctionProperty(SpecialPipelineDescriptorDeserializer *this, MTLSerializer::SerializedCompactPropertyList::Iterator *a2)
{
  v3 = *(this + 1);
  PropertyAsObject = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(a2);
  v6 = *(this + 2);

  return MTLPipelineDescriptions::deserializeFunction(v3, PropertyAsObject, v4);
}

uint64_t MTLPipelineDescriptions::deserializeFunction(MTLPipelineDescriptions *a1, uint64_t a2, uint64_t a3)
{
  v117 = *MEMORY[0x1E69E9840];
  v104[0] = a2;
  v104[1] = a3;
  if (!a2)
  {
    goto LABEL_87;
  }

  Small = MTLSerializer::PropertyList::getSmallValue<unsigned int>(v104, 1u, 0);
  Object = MTLSerializer::SerializedObjectList::getObject(v104, 0);
  v13 = v5;
  v103[0] = Object;
  v103[1] = v5;
  if (!Object)
  {
    MTLPipelineDescriptions::deserializeFunction(0, v5, v6, v7, v8, v9, v10, v11);
  }

  if (Small)
  {
    LibraryByIndex = MTLPipelineDescriptions::getLibraryByIndex(a1, Small - 1, v6, v7, v8, v9, v10, v11);
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (!Object)
    {
LABEL_11:
      v18 = [v15 initWithUTF8String:Object];
      v26 = [LibraryByIndex newFunctionWithName:v18];
      if (!v26)
      {
        MTLPipelineDescriptions::deserializeFunction(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      goto LABEL_88;
    }

    if (v13)
    {
      v16 = Object;
      while (*v16++)
      {
        if (!--v13)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_11;
    }

LABEL_76:
    abort();
  }

  v27 = *(a1 + 2);
  block = MEMORY[0x1E69E9820];
  v106 = 3221225472;
  v107 = ___ZNK23MTLPipelineDescriptions24initializeDescriptorHashEPbRNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN13MTLSerializer29SerializedCompactPropertyListENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_SA_EEEEEEjj_block_invoke;
  v108 = &__block_descriptor_64_e5_v8__0l;
  v109 = a1;
  v110 = (a1 + 24);
  v112 = 0x500000001;
  v111 = (a1 + 32);
  dispatch_sync(v27, &block);
  if (Object)
  {
    if (!v13)
    {
      goto LABEL_76;
    }

    v28 = Object;
    v29 = v13;
    while (*v28++)
    {
      if (!--v29)
      {
        goto LABEL_76;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&block, Object);
  v93 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(a1 + 4, &block);
  if (SHIBYTE(v107) < 0)
  {
    operator delete(block);
  }

  if (!v93)
  {
    if (Object)
    {
      if (!v13)
      {
        goto LABEL_76;
      }

      v77 = Object;
      while (*v77++)
      {
        if (!--v13)
        {
          goto LABEL_76;
        }
      }
    }

    MTLReportFailure(0, "deserializeFunction", 457, @"Specialized function %s not found in pipelineLibrary.", v31, v32, v33, v34, Object);
    v26 = 0;
    goto LABEL_86;
  }

  v102 = *(v93 + 5);
  MTLSerializer::SerializedCompactPropertyList::iterator(&v102, v95);
  if (v97 >= v96)
  {
    v94 = 0;
    v35 = 0;
    goto LABEL_79;
  }

  v92 = 0;
  v94 = 0;
  v35 = 0;
  while (2)
  {
    if (v99 != 1)
    {
      if (v99)
      {
        goto LABEL_68;
      }

      block = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(v95);
      v106 = v36;
      if (!block)
      {
        goto LABEL_68;
      }

      v44 = MTLSerializer::SerializedObjectList::getObject(&block, 0);
      if (v44)
      {
        v45 = v37;
        v46 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (!v45)
        {
          goto LABEL_76;
        }

        v47 = v44;
        while (*v47++)
        {
          if (!--v45)
          {
            goto LABEL_76;
          }
        }
      }

      else
      {
        MTLPipelineDescriptions::deserializeFunction(v114, v37, v38, v39, v40, v41, v42, v43);
        v46 = v114[0];
      }

      v92 = [v46 initWithUTF8String:v44];
      v69 = MTLSerializer::PropertyList::getSmallValue<unsigned int>(&block, 1u, 0);
      v94 = MTLPipelineDescriptions::getLibraryByIndex(a1, v69 - 1, v70, v71, v72, v73, v74, v75);
      goto LABEL_68;
    }

    PropertyAsObject = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(v95);
    if (!PropertyAsObject)
    {
      goto LABEL_68;
    }

    v51 = v49;
    v35 = objc_opt_new();
    v114[0] = PropertyAsObject;
    v114[1] = v51;
    ElementCount = MTLSerializer::SerializedObjectList::getElementCount(v114);
    if (!ElementCount)
    {
      goto LABEL_68;
    }

    for (i = 0; i != ElementCount; ++i)
    {
      v113[0] = MTLSerializer::SerializedObjectList::getObject(v114, i);
      v113[1] = v54;
      MTLSerializer::SerializedCompactPropertyList::iterator(v113, &block);
      if (v108 >= v107)
      {
        v59 = 0;
        v60 = 0;
LABEL_62:
        [v35 setConstantValue:__dst type:v60 atIndex:v59];
        continue;
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = v110;
      while (1)
      {
        if (v63 > 1)
        {
          if (v63 == 2)
          {
            v115 = 0;
            if (v111 + v112 > v106)
            {
              goto LABEL_76;
            }

            memcpy(&v115, &block[v112], v111);
            v60 = v115;
          }

          else
          {
            if (v63 != 3)
            {
              goto LABEL_47;
            }

            _MTLConstantDataSize(v60);
            if (v111 + v112 > v106)
            {
              goto LABEL_76;
            }

            memcpy(__dst, &block[v112], v111);
          }
        }

        else
        {
          if (v63)
          {
            if (v63 == 1)
            {
              v62 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&block);
              v61 = v64;
              goto LABEL_52;
            }

LABEL_47:
            MTLReportFailure(0, "deserializeFunctionConstants", 414, @"Unknown property in descriptor", v55, v56, v57, v58, v91);
            goto LABEL_52;
          }

          v115 = 0;
          if (v111 + v112 > v106)
          {
            goto LABEL_76;
          }

          memcpy(&v115, &block[v112], v111);
          v59 = v115;
        }

LABEL_52:
        v108 = (v108 + 1);
        if (v108 >= v107)
        {
          break;
        }

        if (v109 + 2 > v106)
        {
          goto LABEL_76;
        }

        v63 = *(v109 + block);
        v65 = *(v109 + block + 1);
        LODWORD(v110) = v63;
        v111 = v65;
        v112 = v109 + 2;
        v109 = (v109 + v65 + 2);
      }

      if (!v62)
      {
        goto LABEL_62;
      }

      v66 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (!v61)
      {
        goto LABEL_76;
      }

      v67 = 0;
      while (*(v62 + v67))
      {
        if (v61 == ++v67)
        {
          goto LABEL_76;
        }
      }

      v68 = [v66 initWithUTF8String:v62];
      [v35 setConstantValue:__dst type:v60 withName:v68];
    }

LABEL_68:
    if (++v97 < v96)
    {
      if ((v98 + 2) > v95[1])
      {
        goto LABEL_76;
      }

      v76 = *(v95[0] + v98 + 1);
      v99 = *(v95[0] + v98);
      v100 = v76;
      v101 = v98 + 2;
      v98 += 2 + v76;
      continue;
    }

    break;
  }

  v84 = v92;
  if (!v92)
  {
LABEL_79:
    Value = MTLSerializer::SerializedString::getValue(v103);
    MTLReportFailure(0, "deserializeFunction", 509, @"Specialized Function %s has no 'base function' in pipeline library", v80, v81, v82, v83, Value);
    v84 = 0;
  }

  v85 = v94;
  if (v94)
  {
    if (v35)
    {
      goto LABEL_83;
    }

LABEL_90:
    v90 = v84;
    MTLPipelineDescriptions::deserializeFunction(v103);
    v84 = v90;
    v85 = v94;
  }

  else
  {
    v89 = v84;
    MTLPipelineDescriptions::deserializeFunction(v103);
    v84 = v89;
    v85 = 0;
    if (!v35)
    {
      goto LABEL_90;
    }
  }

LABEL_83:
  block = 0;
  v86 = v84;
  v26 = [v85 newFunctionWithName:? constantValues:? functionCache:? error:?];
  if (!v26)
  {
    MTLPipelineDescriptions::deserializeFunction(&block);
  }

LABEL_86:
  if (!v93)
  {
LABEL_87:
    v26 = 0;
  }

LABEL_88:
  v87 = *MEMORY[0x1E69E9840];
  return v26;
}

void sub_185BE200C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineDescriptions::getLibraryByIndex(MTLPipelineDescriptions *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v10 = *(this + 25);
  if (a2 >= ((*(this + 26) - v10) >> 5))
  {
    MTLReportFailure(0, "getLibraryByIndex", 273, @"Invalid library index in pipeline library file", a5, a6, a7, a8, v14[0]);
    v10 = *(this + 25);
  }

  v11 = v10 + 32 * v9;
  result = *(v11 + 24);
  if (!result)
  {
    v13 = *(this + 2);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZNK23MTLPipelineDescriptions17getLibraryByIndexEj_block_invoke;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v14[4] = this;
    v14[5] = v11;
    dispatch_sync(v13, v14);
    return *(v11 + 24);
  }

  return result;
}

void ___ZNK23MTLPipelineDescriptions17getLibraryByIndexEj_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 24))
  {
    v9[5] = v1;
    v9[6] = v2;
    v4 = *(a1 + 32);
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *(a1 + 40);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v7 = [v5 initWithUTF8String:v6];
    v9[0] = 0;
    v8 = [*(v4 + 224) newLibraryWithFile:v7 error:v9];
    *(*(a1 + 40) + 24) = v8;

    if (!v8)
    {
      ___ZNK23MTLPipelineDescriptions17getLibraryByIndexEj_block_invoke_cold_1(v9);
    }
  }
}

void PipelineLibraryData::~PipelineLibraryData(PipelineLibraryData *this)
{
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void MTLPipelineDescriptions::~MTLPipelineDescriptions(MTLPipelineDescriptions *this)
{
  v2 = *this;
  if (v2)
  {
    munmap(v2, *(this + 1));
  }

  v3 = *(this + 2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN23MTLPipelineDescriptionsD2Ev_block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = this;
  dispatch_sync(v3, v5);
  v4 = *(this + 2);
  if (v4)
  {
    dispatch_release(v4);
  }

  v6 = (this + 200);
  std::vector<std::tuple<std::string,unsigned int,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 112);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 72);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 32);
}

void ___ZN23MTLPipelineDescriptionsD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  while (v2 != v3)
  {

    v2 += 32;
  }
}

void std::vector<std::tuple<std::string,unsigned int,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::string,unsigned int,unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

MTLArrayTypeInternal *newArrayTypeFromSerializedContext(uint64_t a1, DeserialContext *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v19 = DeserialContext::deserializeUint32(a2);
  v10 = DeserialContext::deserializeUint32(a2);
  v18 = DeserialContext::deserializeUint32(a2);
  v11 = DeserialContext::deserializeUint32(a2);
  v12 = DeserialContext::deserializeUint32(a2);
  v13 = DeserialContext::deserializeUint32(a2);
  v21 = 0;
  v14 = 1;
  v20 = 1;
  switch(v10)
  {
    case 0x39u:
      v15 = newArgumentTypeFromSerializedContext(a1, a2);
      v21 = 1;
      break;
    case 2u:
      v15 = newArrayTypeFromSerializedContext(a1, a2, &v21, a4, a5);
      break;
    case 1u:
      v15 = structTypeFromSerializedContext(a1, a2, &v21, a4, &v20, a5);
      v14 = v20;
      break;
    default:
      v15 = 0;
      break;
  }

  v16 = [[MTLArrayTypeInternal alloc] initWithArrayLength:v19 elementType:v10 stride:v18 pixelFormat:v12 aluType:v13 details:v15];
  if (v14)
  {
  }

  if (v11)
  {
    [(MTLArrayTypeInternal *)v16 setArgumentIndexStride:v11];
  }

  *a3 |= v21;
  [(MTLArrayTypeInternal *)v16 setIsIndirectArgumentBuffer:?];
  return v16;
}

void std::vector<std::tuple<std::string,unsigned int,unsigned int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void MTLPipelineDataCache::~MTLPipelineDataCache(MTLPipelineDataCache *this)
{
  MTLPipelineDataCache::~MTLPipelineDataCache(this);

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF474218;
  v2 = *(this + 17);
  if (v2)
  {
    munmap(v2, *(this + 18));
  }

  free(*(this + 7));
  v3 = *(this + 14);
  v4 = *(this + 15);
  if (v3 != v4)
  {
    do
    {
      free(v3[2]);
      v3[2] = 0;
      v3 += 3;
    }

    while (v3 != v4);
    v3 = *(this + 14);
  }

  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 64);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t MTLGetShaderCachePath()
{
  if (MTLGetShaderCachePath::onceToken != -1)
  {
    MTLGetShaderCachePath_cold_1();
  }

  return MTLGetShaderCachePath::result;
}

void __MTLGetShaderCachePath_block_invoke()
{
  v3 = 0;
  ShaderCacheMainFolder = getShaderCacheMainFolder(&v3);
  if (ShaderCacheMainFolder)
  {
    v1 = ShaderCacheMainFolder;
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    MTLGetShaderCachePath::result = [v2 initWithBytesNoCopy:v1 length:v3 encoding:4 freeWhenDone:1];
    if (!MTLGetShaderCachePath::result)
    {
      free(v1);
    }
  }
}

uint64_t _MTLShouldRemapPresent()
{
  if (_MTLShouldRemapPresent_onceToken != -1)
  {
    _MTLShouldRemapPresent_cold_1();
  }

  return _MTLShouldRemapPresent_shouldRemapPresent & objc_opt_respondsToSelector() & 1;
}

uint64_t MTLGetPackFloatFunction::$_18::__invoke(uint32x4_t *this, float *a2, void *a3)
{
  __asm { FMOV            V1.4S, #1.0 }

  v8 = vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vandq_s8(vminq_u32(*this, _Q1), vcgtq_u32(vdupq_n_s32(0x7F800001u), *this)), xmmword_185DC4EB0)));
  v9 = v8.i32[1];
  v10 = v8.i32[0];
  *v8.i8 = vshl_u32(*&vextq_s8(v8, v8, 8uLL), 0x1E00000014);
  *a2 = v10 | (v9 << 10) | v8.i32[0] | v8.i32[1];
  return 4;
}

uint64_t MTLGetGPUFamilyFromFeatureSet(unint64_t a1)
{
  v1 = (&unk_185DE1BF0 + 8 * a1);
  if (a1 >= 0x13)
  {
    v1 = &MTLGPUFamilyNA;
  }

  return *v1;
}

__CFString *MTLTextureTypeString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E6EEB760 + a1);
  }
}

uint64_t MTLRangeAllocatorInit(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  if (a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 32) = v7 - 1;
  result = allocElement(a1, 0);
  if (result)
  {
    v9 = *a1;
    *v9 = 0;
    v9[1] = a2;
  }

  return result;
}

void **std::vector<std::shared_ptr<MTLSchedulerRequest>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MTLCompilerConnection>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<MTLCompilerConnection>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void MTLCompilerScheduler::insertRequest(uint64_t a1, __int128 *a2)
{
  if (*(*a2 + 168) == 1)
  {
    std::vector<std::shared_ptr<MTLSchedulerRequest>>::push_back[abi:ne200100]((a1 + 192), a2);
    v3 = *(a1 + 192);
    v4 = *(a1 + 200);
    v5 = (v4 - v3) >> 4;
    v6 = &v7;
  }

  else
  {
    std::vector<std::shared_ptr<MTLSchedulerRequest>>::push_back[abi:ne200100]((a1 + 224), a2);
    v3 = *(a1 + 224);
    v4 = *(a1 + 232);
    v5 = (v4 - v3) >> 4;
    v6 = &v8;
  }

  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTLCompilerScheduler::RequestCompare &,std::__wrap_iter<std::shared_ptr<MTLSchedulerRequest> *>>(v3, v4, v6, v5);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTLCompilerScheduler::RequestCompare &,std::__wrap_iter<std::shared_ptr<MTLSchedulerRequest> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v18 = v4;
    v19 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 16 * (v6 >> 1));
    v11 = (a2 - 16);
    if (MTLCompilerScheduler::RequestCompare::operator()(a3, v10, (a2 - 16)))
    {
      v17 = *v11;
      *v11 = 0;
      v11[1] = 0;
      do
      {
        v12 = v10;
        v13 = *v10;
        *v10 = 0;
        v10[1] = 0;
        v14 = v11[1];
        *v11 = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 16 * v9);
        v11 = v12;
      }

      while ((MTLCompilerScheduler::RequestCompare::operator()(a3, v10, &v17) & 1) != 0);
      v15 = v17;
      v17 = 0uLL;
      v16 = v12[1];
      *v12 = v15;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (*(&v17 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
      }
    }
  }
}

uint64_t MTLXPCCompilerConnection::tryBoost(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0;
  }

  v7 = *(v3 + 136);
  v8 = *a2;
  v9 = *(*a2 + 80);
  if (!v9)
  {
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, *(v8 + 136), -1, &__block_literal_global_0);
    v8 = *a2;
    *(*a2 + 80) = v9;
  }

  if (*(v8 + 161) == 1)
  {
    *(v8 + 164) = 1;
    *(a1 + 123) = 1;
    v10 = *(a1 + 48);
    *(v10 + 163) = 1;
    v11 = *(v8 + 136);
    if (v7 < v11)
    {
      *(v10 + 136) = v11;
    }

    std::unique_lock<std::mutex>::unlock[abi:ne200100](a3);
    dispatch_sync(*(a1 + 104), *(*a2 + 80));
    std::unique_lock<std::mutex>::lock[abi:ne200100](a3);
    return 1;
  }

  else if (*(v8 + 136) <= v7)
  {
    return 0;
  }

  else
  {
    dispatch_async(*(a1 + 104), v9);
    v13 = *a2;
    result = 1;
    *(v13 + 164) = 1;
    *(a1 + 123) = 1;
    v14 = *(a1 + 48);
    *(v14 + 163) = 1;
    *(v14 + 136) = *(v13 + 136);
  }

  return result;
}

uint64_t MTLCompilerScheduler::RequestCompare::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(*a2 + 136);
  v5 = *a3;
  v6 = *(*a3 + 136);
  if (v4 != v6)
  {
    return v4 < v6;
  }

  v7 = *(v3 + 132);
  v8 = *(v5 + 132);
  if (v7 != v8)
  {
    return v7 < v8;
  }

  v9 = *(v3 + 166);
  if (v9 != *(v5 + 166))
  {
    return v9 ^ 1u;
  }

  v10 = *(v3 + 161);
  v11 = v10 == *(v5 + 161);
  v12 = v10 ^ 1;
  if (v11)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrI21MultiLevelBinaryCacheEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

char *___getForcedAIRVersion_block_invoke()
{
  v0 = getenv("MTL_FORCE_LANGUAGE_VERSION");
  result = getenv("MTL_FORCE_AIR_VERSION");
  v2 = v0 != 0;
  v3 = result == 0;
  v4 = v2 && v3;
  if (!v2 || !v3)
  {
    v0 = result;
  }

  if (v0)
  {
    sscanf(v0, "%d_%d", &_getForcedAIRVersion::major, &_getForcedAIRVersion::minor);
    if (v4)
    {
      v5 = "MTL_FORCE_LANGUAGE_VERSION";
    }

    else
    {
      v5 = "MTL_FORCE_AIR_VERSION";
    }

    return fprintf(*MEMORY[0x1E69E9848], "Using MTLAIRVersion%d_%d (set with %s=%s)\n", _getForcedAIRVersion::major, _getForcedAIRVersion::minor, v5, v0);
  }

  return result;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,MTLCompilerScheduler::RequestCompare,std::__wrap_iter<std::shared_ptr<MTLSchedulerRequest> *>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTLCompilerScheduler::RequestCompare &,std::__wrap_iter<std::shared_ptr<MTLSchedulerRequest> *>>(a1, a3, a4);
    v10 = v9;
    if ((a2 - 16) == v9)
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTLCompilerScheduler::RequestCompare &,std::__wrap_iter<std::shared_ptr<MTLSchedulerRequest> *>>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_185BE3AF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTLCompilerScheduler::RequestCompare &,std::__wrap_iter<std::shared_ptr<MTLSchedulerRequest> *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6 + 2];
    v9 = 2 * v6;
    v6 = (2 * v6) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = MTLCompilerScheduler::RequestCompare::operator()(a2, v8, v8 + 2);
      v12 = v11 ? 16 : 0;
      v8 = (v8 + v12);
      if (v11)
      {
        v6 = v10;
      }
    }

    v13 = *v8;
    *v8 = 0;
    v8[1] = 0;
    v14 = a1[1];
    *a1 = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    a1 = v8;
  }

  while (v6 <= v7);
  return v8;
}

void __MTLGetProcessName_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  std::string::basic_string[abi:ne200100]<0>(&v7, "");
  memset(buffer, 0, sizeof(buffer));
  v1 = proc_name(v0, buffer, 0x80u);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E9830];
    v4 = v1;
    do
    {
      v5 = *(buffer + v2);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = __maskrune(v5, 0x500uLL);
      }

      else
      {
        v6 = *(v3 + 4 * v5 + 60) & 0x500;
      }

      if (!v6)
      {
        *(buffer + v2) = 95;
      }

      ++v2;
    }

    while (v4 != v2);
    std::string::append(&v7, buffer);
  }

  *__str = 0;
  v9 = 0;
  snprintf(__str, 0x10uLL, "_%d", v0);
  std::string::append(&v7, __str);
  operator new[]();
}

void sub_185BE3D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLEnvVarAggregator::GET_AGX_LOG_SHADER_COMPILER_REQUEST()
{
  {
    MTLEnvVarAggregator::GET_AGX_LOG_SHADER_COMPILER_REQUEST(BOOL,BOOL)::ev = getenv("AGX_LOG_SHADER_COMPILER_REQUEST");
  }
}

void std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      MTLHashKey::~MTLHashKey((v2 + 16));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *LoaderGlobalState::deallocFile(LoaderGlobalState *this, MTLLoadedFile *a2)
{
  result = std::__hash_table<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::__unordered_map_hasher<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,FileIdentifier::Hash,std::equal_to<FileIdentifier>,true>,std::__unordered_map_equal<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::equal_to<FileIdentifier>,FileIdentifier::Hash,true>,std::allocator<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>>>::find<FileIdentifier>(this + 2, &a2->_identity.dev);
  if (result)
  {
    if (result[4] == a2)
    {
      return std::__hash_table<std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::__unordered_map_hasher<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::hash<MTLLoadedFile *>,std::equal_to<MTLLoadedFile *>,true>,std::__unordered_map_equal<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::equal_to<MTLLoadedFile *>,std::hash<MTLLoadedFile *>,true>,std::allocator<std::__hash_value_type<MTLLoadedFile *,objc_object *>>>::erase(this + 2, result);
    }
  }

  return result;
}

void LoaderGlobalState::releaseFile(LoaderGlobalState *this, MTLLoadedFile *a2)
{
  if (a2->_isCached)
  {
    v2 = *(this + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN17LoaderGlobalState11releaseFileEP13MTLLoadedFile_block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = a2;
    dispatch_sync(v2, block);
  }

  else
  {
  }
}

uint64_t std::__hash_table<std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::__unordered_map_hasher<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::hash<MTLLoadedFile *>,std::equal_to<MTLLoadedFile *>,true>,std::__unordered_map_equal<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::equal_to<MTLLoadedFile *>,std::hash<MTLLoadedFile *>,true>,std::allocator<std::__hash_value_type<MTLLoadedFile *,objc_object *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void MTLAirNTObject::~MTLAirNTObject(MTLAirNTObject *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1865FF210](*v2, 0x1070C40E40EFFFALL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void sub_185BE458C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void MTLMetalScriptBuilderImpl::~MTLMetalScriptBuilderImpl(MTLMetalScriptBuilderImpl *this)
{
  MTLMetalScriptBuilderImpl::resetInternal(this, 1);
  if (*this)
  {
    dispatch_release(*this);
  }

  v2 = *(this + 70);
  if (v2)
  {
    *(this + 71) = v2;
    operator delete(v2);
  }

  v3 = *(this + 67);
  if (v3)
  {
    *(this + 68) = v3;
    operator delete(v3);
  }

  v4 = *(this + 64);
  if (v4)
  {
    *(this + 65) = v4;
    operator delete(v4);
  }

  v5 = *(this + 61);
  if (v5)
  {
    *(this + 62) = v5;
    operator delete(v5);
  }

  v6 = *(this + 58);
  if (v6)
  {
    *(this + 59) = v6;
    operator delete(v6);
  }

  v7 = *(this + 55);
  if (v7)
  {
    *(this + 56) = v7;
    operator delete(v7);
  }

  v8 = *(this + 52);
  if (v8)
  {
    *(this + 53) = v8;
    operator delete(v8);
  }

  v9 = *(this + 49);
  if (v9)
  {
    *(this + 50) = v9;
    operator delete(v9);
  }

  v10 = *(this + 46);
  if (v10)
  {
    *(this + 47) = v10;
    operator delete(v10);
  }

  v11 = *(this + 43);
  if (v11)
  {
    *(this + 44) = v11;
    operator delete(v11);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 248));
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 208);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 168);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 128);
  std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::~__hash_table(this + 88);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 8);
}

void MTLMetalScriptBuilder::~MTLMetalScriptBuilder(MTLMetalScriptBuilder *this)
{
  v1 = *this;
  if (v1)
  {
    MTLMetalScriptBuilderImpl::~MTLMetalScriptBuilderImpl(v1);
    MEMORY[0x1865FF210]();
  }
}

void MTLMetalScriptBuilderImpl::resetInternal(MTLMetalScriptBuilderImpl *this, int a2)
{
  *(this + 53) = *(this + 52);
  *(this + 56) = *(this + 55);
  *(this + 71) = *(this + 70);
  *(this + 59) = *(this + 58);
  *(this + 50) = *(this + 49);
  *(this + 47) = *(this + 46);
  *(this + 44) = *(this + 43);
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(this + 48);
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::clear(this + 88);
  }

  std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::clear(this + 128);
  for (i = *(this + 3); i; i = *i)
  {
    dispatch_release(*i[2]);
    v4 = i[2];
    if (v4)
    {
      for (j = 0; j != -9; j -= 3)
      {
        v6 = v4[j + 22];
        if (v6)
        {
          v4[j + 23] = v6;
          operator delete(v6);
        }
      }

      MEMORY[0x1865FF210](v4, 0x10A0C403A971839);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(this + 1);
  std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::clear(this + 168);

  std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::clear(this + 208);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::pair<std::string,std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<MTLUINT256_t const,std::pair<std::string,std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void MTLRangeAllocatorDestroy(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    free(v1);
  }
}

MTLPipelineCollection *std::unique_ptr<MTLPipelineCollection>::reset[abi:ne200100](MTLPipelineCollection **a1, MTLPipelineCollection *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MTLPipelineCollection::~MTLPipelineCollection(result);

    JUMPOUT(0x1865FF210);
  }

  return result;
}

void _MTLGetMTLCompilerLLVMVersionForDevice()
{
  dispatch_once(&getForcedMTLCompilerLLVMVersion(void)::forcedLLVMVersionOnceToken, &__block_literal_global_1812);
}

{
  dispatch_once(&_MTLGetMTLCompilerLLVMVersionForDevice(objc_object  {objcproto9MTLDevice}*)::deviceLLVMVersionOnceToken, &__block_literal_global_20);
}

uint64_t ___ZL31getForcedMTLCompilerLLVMVersionv_block_invoke()
{
  result = MTLGetEnvDefault("MTL_FORCE_MTLCOMPILER_LLVM_VERSION", 0);
  getForcedMTLCompilerLLVMVersion(void)::forcedLLVMVersion = result;
  return result;
}

uint64_t ___Z38_MTLGetMTLCompilerLLVMVersionForDevicePU19objcproto9MTLDevice11objc_object_block_invoke()
{
  result = MTLGetEnvDefault("MTL_USE_DEVICE_LLVM_VERSION_SELECTOR", 0);
  _MTLGetMTLCompilerLLVMVersionForDevice(objc_object  {objcproto9MTLDevice}*)::useDeviceForLLVMVersion = result != 0;
  return result;
}

void MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER()
{
  {
    MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER(BOOL,BOOL)::ev = getenv("MTL_MONOLITHIC_COMPILER");
  }
}

void MTLEnvVarAggregator::GET_USE_MONOLITHIC_COMPILER()
{
  {
    MTLEnvVarAggregator::GET_USE_MONOLITHIC_COMPILER(BOOL,BOOL)::ev = getenv("USE_MONOLITHIC_COMPILER");
  }
}

void MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER_LLVM_VERSION()
{
  {
    MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER_LLVM_VERSION(BOOL,char const*)::ev = getenv("MTL_MONOLITHIC_COMPILER_LLVM_VERSION");
  }
}

char *___ZL23getCompileStatsJSONPathv_block_invoke()
{
  result = getenv("MTL_WRITE_COMPILE_STATS_TO_JSON_FILE");
  if (result)
  {
    _collectCompilePerformanceStats = 1;
    result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:result];
    getCompileStatsJSONPath(void)::compileStatsPath = result;
  }

  return result;
}

void MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH()
{
  {
    MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(BOOL,BOOL)::ev = getenv("MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH");
  }
}

void MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION()
{
  {
    MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(BOOL,BOOL)::ev = getenv("MTL_VERIFY_REFLECTION");
  }
}

dispatch_data_t newMeshSerializedObjectOrMeshData<MTLRenderPipelineDescriptorPrivate>(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  __src = 0uLL;
  v24 = 0;
  v23 = 0;
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  v6 = (a3 >> 23) & 2 | v5 | (*(a4 + 224) >> 6) & 8;
  DWORD2(__src) = v6;
  v7 = 504;
  if (a1)
  {
    v7 = 512;
  }

  v8 = *(a4 + v7);
  if (v8)
  {
    v9 = [*(a4 + v7) functions] && -[NSArray count](-[MTLLinkedFunctions functions](v8, "functions"), "count") != 0;
    v10 = [(MTLLinkedFunctions *)v8 privateFunctions]&& [(NSArray *)[(MTLLinkedFunctions *)v8 privateFunctions] count]!= 0;
    if (v10 || v9)
    {
      v6 |= 0x10u;
      DWORD2(__src) = v6;
    }
  }

  if ([*(a4 + 432) count])
  {
    v6 |= 0x10u;
    DWORD2(__src) = v6;
  }

  v20 = [*(a4 + 288) device];
  v11 = MTLSerializePluginDataDictionary([v20 pluginData], 0);
  v12 = 12;
  v21 = v11;
  if (v11)
  {
    LODWORD(__src) = 12;
    v12 = v11 + 12;
    v19 = 12;
  }

  else
  {
    v19 = 0;
  }

  v13 = MTLSerializePluginDataDictionary(*(a4 + 464), 0);
  v14 = v13;
  if (!v13)
  {
    v18 = 0;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    _MTLPopulateLinkedFunctionExtraData(v8);
  }

  DWORD1(__src) = v12;
  v18 = v12;
  v12 += v13;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v15 = malloc_type_malloc(v12, 0x100004077774924uLL);
  memcpy(v15, &__src, 0xCuLL);
  if (v21)
  {
    MTLSerializePluginDataDictionary([v20 pluginData], v15 + v19);
  }

  if (v14)
  {
    MTLSerializePluginDataDictionary(*(a4 + 464), v15 + v18);
  }

  v16 = *MEMORY[0x1E69E9648];

  return dispatch_data_create(v15, v12, 0, v16);
}

dispatch_data_t newMeshSerializedObjectOrMeshData<MTLMeshRenderPipelineDescriptorPrivate>(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  __src = 0uLL;
  v24 = 0;
  v23 = 0;
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  v6 = (a3 >> 23) & 2 | v5 | (*(a4 + 60) >> 3) & 8;
  DWORD2(__src) = v6;
  v7 = 208;
  if (a1)
  {
    v7 = 216;
  }

  v8 = *(a4 + v7);
  if (v8)
  {
    v9 = [*(a4 + v7) functions] && -[NSArray count](-[MTLLinkedFunctions functions](v8, "functions"), "count") != 0;
    v10 = [(MTLLinkedFunctions *)v8 privateFunctions]&& [(NSArray *)[(MTLLinkedFunctions *)v8 privateFunctions] count]!= 0;
    if (v10 || v9)
    {
      v6 |= 0x10u;
      DWORD2(__src) = v6;
    }
  }

  if ([*(a4 + 176) count])
  {
    v6 |= 0x10u;
    DWORD2(__src) = v6;
  }

  v20 = [*(a4 + 96) device];
  v11 = MTLSerializePluginDataDictionary([v20 pluginData], 0);
  v12 = 12;
  v21 = v11;
  if (v11)
  {
    LODWORD(__src) = 12;
    v12 = v11 + 12;
    v19 = 12;
  }

  else
  {
    v19 = 0;
  }

  v13 = MTLSerializePluginDataDictionary(*(a4 + 184), 0);
  v14 = v13;
  if (!v13)
  {
    v18 = 0;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    _MTLPopulateLinkedFunctionExtraData(v8);
  }

  DWORD1(__src) = v12;
  v18 = v12;
  v12 += v13;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v15 = malloc_type_malloc(v12, 0x100004077774924uLL);
  memcpy(v15, &__src, 0xCuLL);
  if (v21)
  {
    MTLSerializePluginDataDictionary([v20 pluginData], v15 + v19);
  }

  if (v14)
  {
    MTLSerializePluginDataDictionary(*(a4 + 184), v15 + v18);
  }

  v16 = *MEMORY[0x1E69E9648];

  return dispatch_data_create(v15, v12, 0, v16);
}

void UsagePayload::UsagePayload(uint64_t a1, UsagePayload *this, int a3, int a4)
{
  *a1 = a3;
  *(a1 + 4) = a4;
  *(a1 + 1032) = 0;
  v6 = *(this + 23);
  if ((v6 & 0x8000000000000000) != 0 && (v6 = *(this + 1), v6 >= 0x401))
  {
    v8 = 0;
  }

  else
  {
    std::string::copy(this, (a1 + 8), v6, 0);
    v7 = *(this + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(this + 1);
    }

    *(a1 + 1032) = v7;
    v8 = 1;
  }

  *(a1 + 1040) = v8;
}

void *UsagePayload::UsagePayload(void *__dst, size_t __n, void *__src)
{
  __dst[129] = 0;
  *(__dst + 1040) = 0;
  if (__n - 1033 >= 0xFFFFFFFFFFFFFBFFLL)
  {
    memcpy(__dst, __src, __n);
    __dst[129] = __n - 8;
    *(__dst + 1040) = 1;
  }

  return __dst;
}

double UsagePayload::getArchiveArch@<D0>(UsagePayload *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 129);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = *(this + 129);
  if (v3)
  {
    memcpy(&__dst, this + 8, v3);
  }

  *(&__dst + v3) = 0;
  *a2 = __dst;
  *(a2 + 16) = v7;
  result = *this;
  *(a2 + 24) = *this;
  return result;
}

void MTLArchiveUsageDB::store(unsigned int *a1, UsagePayload *a2, int a3, int a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  gettimeofday(&v13, 0);
  v12[1] = v13.tv_sec - a5;
  UsagePayload::UsagePayload(v14, a2, a3, a4);
  MTLVersionedDB::Transaction::Transaction(v12, a1);
  if (v12[0])
  {
    v10 = a1[2];
    operator new();
  }

  MTLVersionedDB::Transaction::~Transaction(v12);
  v11 = *MEMORY[0x1E69E9840];
}

void MTLArchiveUsageDB::prune(MTLArchiveUsageDB *this, uint64_t a2)
{
  buf[3] = *MEMORY[0x1E69E9840];
  gettimeofday(&v13, 0);
  tv_sec = v13.tv_sec;
  MTLVersionedDB::Transaction::Transaction(&v12, this);
  if (v12)
  {
    v11 = 0;
    v5 = mdb_cursor_open(v12, this->var1, &v11);
    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = mdb_strerror(v5);
        MTLArchiveUsageDB::prune(v6, buf);
      }
    }

    else
    {
      v8 = mdb_cursor_get(v11, buf, v10, 0);
      v9 = tv_sec - a2;
      while (v8 != -30798)
      {
        if (*buf[1] < v9)
        {
          mdb_cursor_del(v11, 32);
        }

        v8 = mdb_cursor_get(v11, buf, v10, 11);
      }
    }
  }

  MTLVersionedDB::Transaction::~Transaction(&v12);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_185BEB8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MTLVersionedDB::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

uint64_t MTLArchiveUsageDB::getPrioritizedList@<X0>(MTLArchiveUsageDB *this@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 1065353216;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  MTLVersionedDB::Transaction::Transaction(&v38, this);
  if (v38)
  {
    v37 = 0;
    v4 = mdb_cursor_open(v38, this->var1, &v37);
    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = mdb_strerror(v4);
        MTLArchiveUsageDB::prune(v5, __dst);
      }
    }

    else
    {
      for (i = mdb_cursor_get(v37, v36, v35, 0); i != -30798; i = mdb_cursor_get(v37, v36, v35, 8))
      {
        if (!MTLVersionedDB::isVersionEntry(this, v36[0], v36[1]))
        {
          v7 = v35[0];
          v47 = 0;
          v48 = 0;
          if (v35[0] - 1033 >= 0xFFFFFFFFFFFFFBFFLL)
          {
            memcpy(__dst, v35[1], v35[0]);
            v47 = v7 - 8;
            v48 = 1;
          }

          UsagePayload::getArchiveArch(__dst, &__p);
          p_p = &__p;
          v8 = std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<std::string,unsigned int,unsigned int>,std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,unsigned int,unsigned int>&&>,std::tuple<>>(&v39, &__p);
          ++*(v8 + 12);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v33 = 0;
      v34 = 0;
      v32 = 0;
      v9 = 0;
      if (v40)
      {
        v10 = v40;
        do
        {
          ++v9;
          v10 = *v10;
        }

        while (v10);
      }

      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__init_with_size[abi:ne200100]<std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>,std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>>(&v32, v40, 0, v9);
      v11 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v33 - v32) >> 3));
      if (v33 == v32)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      std::__introsort<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,false>(v32, v33, v12, 1);
      v13 = v32;
      for (j = v33; v13 != j; v13 = (v13 + 40))
      {
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,unsigned int,unsigned int>::__tuple_impl(&__p, v13);
        v15 = *(a2 + 8);
        v16 = *(a2 + 16);
        if (v15 >= v16)
        {
          v18 = (v15 - *a2) >> 5;
          v19 = v18 + 1;
          if ((v18 + 1) >> 59)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v20 = v16 - *a2;
          if (v20 >> 4 > v19)
          {
            v19 = v20 >> 4;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFE0)
          {
            v21 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          __dst[4] = a2;
          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned int,unsigned int>>>(a2, v21);
          }

          v22 = 32 * v18;
          v23 = *&__p.__r_.__value_.__l.__data_;
          *(v22 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v22 = v23;
          memset(&__p, 0, sizeof(__p));
          *(v22 + 24) = v43;
          *(v22 + 28) = v44;
          v24 = 32 * v18 + 32;
          v25 = *(a2 + 8) - *a2;
          v26 = 32 * v18 - v25;
          memcpy((v22 - v25), *a2, v25);
          v27 = *a2;
          *a2 = v26;
          *(a2 + 8) = v24;
          v28 = *(a2 + 16);
          *(a2 + 16) = 0;
          __dst[2] = v27;
          __dst[3] = v28;
          __dst[0] = v27;
          __dst[1] = v27;
          std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::~__split_buffer(__dst);
          v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a2 + 8) = v24;
          if (v29 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v17 = *&__p.__r_.__value_.__l.__data_;
          *(v15 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v15 = v17;
          memset(&__p, 0, sizeof(__p));
          *(v15 + 24) = v43;
          *(v15 + 28) = v44;
          *(a2 + 8) = v15 + 32;
        }
      }

      __dst[0] = &v32;
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__destroy_vector::operator()[abi:ne200100](__dst);
    }
  }

  MTLVersionedDB::Transaction::~Transaction(&v38);
  result = std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(&v39);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E6EEA6B0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<std::string,unsigned int,unsigned int>,std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,unsigned int,unsigned int>&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](v25, a2);
  v6 = *(a2 + 24);
  v5 = *(a2 + 28);
  v7 = v4 ^ (2 * v6);
  v8 = v7 ^ (4 * v5);
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_36;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7 ^ (4 * v5);
    if (v8 >= *&v9)
    {
      v12 = v8 % *&v9;
    }
  }

  else
  {
    v12 = v8 & (*&v9 - 1);
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_36:
    operator new();
  }

  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  if (v15 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  __s2 = v17;
  while (1)
  {
    v18 = v14[1];
    if (v18 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v18 >= *&v9)
      {
        v18 %= *&v9;
      }
    }

    else
    {
      v18 &= *&v9 - 1;
    }

    if (v18 != v12)
    {
      goto LABEL_36;
    }

LABEL_35:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_36;
    }
  }

  v19 = *(v14 + 39);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = v14[3];
  }

  if (v19 != v16)
  {
    goto LABEL_35;
  }

  v21 = v20 >= 0 ? v14 + 2 : v14[2];
  v22 = !memcmp(v21, __s2, v16) && *(v14 + 10) == v6;
  if (!v22 || *(v14 + 11) != v5)
  {
    goto LABEL_35;
  }

  return v14;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
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

uint64_t std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__init_with_size[abi:ne200100]<std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>,std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185BEC140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>,std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,unsigned int,unsigned int>::__tuple_impl(v4, v6 + 1);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 12);
      v6 = *v6;
      v4 = (v11 + 40);
      v11 = (v11 + 40);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,unsigned int,unsigned int>::__tuple_impl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 6);
  HIDWORD(this[1].__r_.__value_.__r.__words[0]) = *(a2 + 7);
  return this;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__introsort<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,false>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v157 = *MEMORY[0x1E69E9840];
LABEL_2:
  v131 = (a2 - 10);
  v132 = (a2 - 5);
  v130 = (a2 - 15);
  v7 = a1;
  v138 = a2;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        goto LABEL_154;
      }

      if (v9 == 2)
      {
        if (*(a2 - 2) > *(a1 + 32))
        {
          v155 = *(a1 + 16);
          v146 = *a1;
          v53 = *(a2 - 5);
          *(a1 + 16) = *(a2 - 3);
          *a1 = v53;
          *(a2 - 3) = v155;
          *(a2 - 5) = v146;
          v54 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 4);
          *(a2 - 4) = v54;
          v55 = *(a1 + 28);
          *(a1 + 28) = *(a2 - 3);
          *(a2 - 3) = v55;
          v56 = *(a1 + 32);
          *(a1 + 32) = *(a2 - 2);
          *(a2 - 2) = v56;
        }

LABEL_154:
        v129 = *MEMORY[0x1E69E9840];
        return;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), (a1 + 80));
      if (*(a2 - 2) > *(a1 + 112))
      {
        v58 = *(a1 + 80);
        v59 = *(a1 + 96);
        v60 = *(a2 - 3);
        *(a1 + 80) = *(a2 - 5);
        *(a1 + 96) = v60;
        *(a2 - 3) = v59;
        *(a2 - 5) = v58;
        LODWORD(v59) = *(a1 + 104);
        *(a1 + 104) = *(a2 - 4);
        *(a2 - 4) = v59;
        LODWORD(v59) = *(a1 + 108);
        *(a1 + 108) = *(a2 - 3);
        *(a2 - 3) = v59;
        LODWORD(v59) = *(a1 + 112);
        *(a1 + 112) = *(a2 - 2);
        *(a2 - 2) = v59;
        v61 = *(a1 + 112);
        v62 = *(a1 + 72);
        if (v61 > v62)
        {
          v63 = *(a1 + 56);
          v64 = *(a1 + 40);
          *(a1 + 40) = *(a1 + 80);
          *(a1 + 56) = *(a1 + 96);
          *(a1 + 80) = v64;
          *(a1 + 96) = v63;
          v65 = *(a1 + 104);
          v66 = *(a1 + 108);
          *&v64 = *(a1 + 64);
          *(a1 + 64) = v65;
          *(a1 + 68) = v66;
          *(a1 + 104) = v64;
          *(a1 + 72) = v61;
          *(a1 + 112) = v62;
          v67 = *(a1 + 32);
          if (v61 > v67)
          {
            v156 = *(a1 + 16);
            v147 = *a1;
            *a1 = *(a1 + 40);
            *(a1 + 16) = *(a1 + 56);
            *(a1 + 40) = v147;
            *(a1 + 56) = v156;
            v68 = *(a1 + 24);
            *(a1 + 24) = v65;
            *(a1 + 28) = v66;
            *(a1 + 64) = v68;
            *(a1 + 32) = v61;
            *(a1 + 72) = v67;
          }
        }
      }

      goto LABEL_154;
    }

    if (v9 == 5)
    {
      v52 = *MEMORY[0x1E69E9840];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, a1 + 40, a1 + 80, a1 + 120, v132);
      return;
    }

LABEL_10:
    if (v8 <= 959)
    {
      v69 = (a1 + 40);
      v71 = a1 == a2 || v69 == a2;
      if (a4)
      {
        if (!v71)
        {
          v72 = 0;
          v73 = a1;
          do
          {
            v74 = v69;
            v75 = *(v73 + 72);
            if (v75 > *(v73 + 32))
            {
              v76 = *v69;
              *v148 = *(v73 + 48);
              *&v148[7] = *(v73 + 55);
              v77 = *(v73 + 63);
              v69[1] = 0;
              v69[2] = 0;
              *v69 = 0;
              v78 = *(v73 + 64);
              v79 = v72;
              while (1)
              {
                v80 = a1 + v79;
                std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1 + v79 + 40, (a1 + v79));
                *(a1 + v79 + 72) = *(a1 + v79 + 32);
                if (!v79)
                {
                  break;
                }

                v79 -= 40;
                if (v75 <= *(v80 - 8))
                {
                  v81 = a1 + v79 + 40;
                  goto LABEL_92;
                }
              }

              v81 = a1;
LABEL_92:
              if (*(v81 + 23) < 0)
              {
                operator delete(*v81);
              }

              *v81 = v76;
              *(v81 + 8) = *v148;
              *(v81 + 15) = *&v148[7];
              *(v81 + 23) = v77;
              *(v81 + 24) = v78;
              *(v81 + 32) = v75;
            }

            v69 = v74 + 5;
            v72 += 40;
            v73 = v74;
          }

          while (v74 + 5 != v138);
        }
      }

      else if (!v71)
      {
        v120 = (a1 + 72);
        do
        {
          v121 = v69;
          v122 = *(a1 + 72);
          if (v122 > *(a1 + 32))
          {
            v123 = *v69;
            *v151 = *(a1 + 48);
            *&v151[7] = *(a1 + 55);
            v124 = *(a1 + 63);
            v69[1] = 0;
            v69[2] = 0;
            *v69 = 0;
            v125 = *(a1 + 64);
            v126 = v120;
            do
            {
              v127 = v126;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>((v126 - 8), (v126 - 18));
              v128 = *(v126 - 10);
              v126 -= 10;
              *v127 = v128;
            }

            while (v122 > *(v127 - 20));
            if (*(v126 - 9) < 0)
            {
              operator delete(*(v126 - 4));
            }

            *(v126 - 4) = v123;
            *(v126 - 17) = *&v151[7];
            *(v126 - 3) = *v151;
            *(v126 - 9) = v124;
            *(v126 - 1) = v125;
            *v126 = v122;
          }

          v69 = v121 + 5;
          v120 += 10;
          a1 = v121;
        }

        while (v121 + 5 != v138);
      }

      goto LABEL_154;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v82 = v10 >> 1;
        v83 = v10 >> 1;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = (a1 + 40 * v85);
            if (2 * v84 + 2 < v9)
            {
              v87 = v86[2].n128_u32[0];
              v88 = v86[4].n128_u32[2];
              v89 = v87 > v88;
              v90 = v87 <= v88 ? 0 : 40;
              v86 = (v86 + v90);
              if (v89)
              {
                v85 = 2 * v84 + 2;
              }
            }

            v91 = (a1 + 40 * v84);
            v92 = v91[2].n128_u32[0];
            if (v86[2].n128_u32[0] <= v92)
            {
              v136 = v91->n128_u64[0];
              *&v149[7] = *(&v91->n128_u64[1] + 7);
              *v149 = v91->n128_u64[1];
              v133 = v91[1].n128_u8[7];
              v91->n128_u64[0] = 0;
              v91->n128_u64[1] = 0;
              v91[1].n128_u64[0] = 0;
              v93 = v91[1].n128_u64[1];
              do
              {
                v94 = v91;
                v91 = v86;
                std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v94, v86);
                *(v94 + 32) = v91[2].n128_u32[0];
                if (v82 < v85)
                {
                  break;
                }

                v95 = (2 * v85) | 1;
                v86 = (a1 + 40 * v95);
                if (2 * v85 + 2 < v9)
                {
                  v96 = v86[2].n128_u32[0];
                  v97 = v86[4].n128_u32[2];
                  v98 = v96 > v97;
                  v99 = v96 <= v97 ? 0 : 40;
                  v86 = (v86 + v99);
                  if (v98)
                  {
                    v95 = 2 * v85 + 2;
                  }
                }

                v85 = v95;
              }

              while (v86[2].n128_u32[0] <= v92);
              if (v91[1].n128_i8[7] < 0)
              {
                operator delete(v91->n128_u64[0]);
              }

              v91->n128_u64[0] = v136;
              v91->n128_u64[1] = *v149;
              *(&v91->n128_u64[1] + 7) = *&v149[7];
              v91[1].n128_u8[7] = v133;
              v91[1].n128_u64[1] = v93;
              v91[2].n128_u32[0] = v92;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        v100 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
        v101 = v138;
        do
        {
          v102 = 0;
          v103 = v101;
          v137 = *a1;
          *v142 = *(a1 + 8);
          *&v142[7] = *(a1 + 15);
          v139 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v104 = *(a1 + 28);
          v134 = *(a1 + 24);
          v105 = a1;
          v106 = *(a1 + 32);
          do
          {
            v107 = v105 + 40 * v102;
            v108 = v107 + 40;
            if (2 * v102 + 2 >= v100)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v109 = *(v107 + 72);
              v110 = *(v107 + 112);
              v111 = v107 + 80;
              if (v109 <= v110)
              {
                v102 = (2 * v102) | 1;
              }

              else
              {
                v108 = v111;
                v102 = 2 * v102 + 2;
              }
            }

            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v105, v108);
            *(v105 + 32) = *(v108 + 32);
            v105 = v108;
          }

          while (v102 <= ((v100 - 2) >> 1));
          v101 -= 5;
          if (v108 == v103 - 5)
          {
            if (*(v108 + 23) < 0)
            {
              operator delete(*v108);
            }

            *v108 = v137;
            *(v108 + 8) = *v142;
            *(v108 + 15) = *&v142[7];
            *(v108 + 23) = v139;
            *(v108 + 24) = v134;
            *(v108 + 28) = v104;
            *(v108 + 32) = v106;
          }

          else
          {
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v108, (v103 - 5));
            *(v108 + 32) = *(v103 - 2);
            if (*(v103 - 17) < 0)
            {
              operator delete(*v101);
            }

            *(v103 - 5) = v137;
            *(v103 - 25) = *&v142[7];
            *(v103 - 4) = *v142;
            *(v103 - 17) = v139;
            *(v103 - 4) = v134;
            *(v103 - 3) = v104;
            *(v103 - 2) = v106;
            v112 = v108 + 40 - a1;
            if (v112 >= 41)
            {
              v113 = (-2 - 0x3333333333333333 * (v112 >> 3)) >> 1;
              v114 = (a1 + 40 * v113);
              v115 = *(v108 + 32);
              if (v114[2].n128_u32[0] > v115)
              {
                v116 = *v108;
                *v150 = *(v108 + 8);
                *&v150[7] = *(v108 + 15);
                v117 = *(v108 + 23);
                *(v108 + 8) = 0;
                *(v108 + 16) = 0;
                *v108 = 0;
                v118 = *(v108 + 24);
                do
                {
                  v119 = v108;
                  v108 = v114;
                  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v119, v114);
                  *(v119 + 32) = *(v108 + 32);
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (a1 + 40 * v113);
                }

                while (v114[2].n128_u32[0] > v115);
                if (*(v108 + 23) < 0)
                {
                  operator delete(*v108);
                }

                *v108 = v116;
                *(v108 + 8) = *v150;
                *(v108 + 15) = *&v150[7];
                *(v108 + 23) = v117;
                *(v108 + 24) = v118;
                *(v108 + 32) = v115;
              }
            }
          }

          v89 = v100-- <= 2;
        }

        while (!v89);
      }

      goto LABEL_154;
    }

    v11 = v9 >> 1;
    v12 = a1 + 40 * (v9 >> 1);
    if (v8 < 0x1401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(v12, a1, v132);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, v12, v132);
      v13 = 5 * v11;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>((a1 + 40), (a1 + 8 * v13 - 40), v131);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>((a1 + 80), (a1 + 40 + 8 * v13), v130);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>((a1 + 8 * v13 - 40), v12, (a1 + 40 + 8 * v13));
      v152 = *(a1 + 16);
      v143 = *a1;
      v14 = *(v12 + 16);
      *a1 = *v12;
      *(a1 + 16) = v14;
      *(v12 + 16) = v152;
      *v12 = v143;
      v15 = *(a1 + 24);
      *(a1 + 24) = *(v12 + 24);
      *(v12 + 24) = v15;
      LODWORD(v14) = *(a1 + 32);
      *(a1 + 32) = *(v12 + 32);
      *(v12 + 32) = v14;
    }

    --a3;
    a2 = v138;
    if (a4)
    {
      v16 = *(a1 + 32);
LABEL_18:
      v17 = 0;
      v18 = *a1;
      *v140 = *(a1 + 8);
      *&v140[7] = *(a1 + 15);
      v19 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v20 = *(a1 + 24);
      do
      {
        v21 = *(a1 + v17 + 72);
        v17 += 40;
      }

      while (v21 > v16);
      v22 = a1 + v17;
      v23 = v138;
      if (v17 == 40)
      {
        v26 = v138;
        while (v22 < v26)
        {
          v24 = v26 - 40;
          v27 = *(v26 - 8);
          v26 -= 40;
          if (v27 > v16)
          {
            goto LABEL_28;
          }
        }

        v24 = v26;
      }

      else
      {
        do
        {
          v24 = v23 - 40;
          v25 = *(v23 - 8);
          v23 -= 40;
        }

        while (v25 <= v16);
      }

LABEL_28:
      v7 = v22;
      if (v22 < v24)
      {
        v28 = v24;
        do
        {
          v153 = *(v7 + 16);
          v144 = *v7;
          v29 = *v28;
          *(v7 + 16) = *(v28 + 16);
          *v7 = v29;
          *(v28 + 16) = v153;
          *v28 = v144;
          v30 = *(v7 + 24);
          *(v7 + 24) = *(v28 + 24);
          *(v28 + 24) = v30;
          v31 = *(v7 + 28);
          *(v7 + 28) = *(v28 + 28);
          *(v28 + 28) = v31;
          v32 = *(v7 + 32);
          *(v7 + 32) = *(v28 + 32);
          *(v28 + 32) = v32;
          do
          {
            v33 = *(v7 + 72);
            v7 += 40;
          }

          while (v33 > v16);
          do
          {
            v34 = *(v28 - 8);
            v28 -= 40;
          }

          while (v34 <= v16);
        }

        while (v7 < v28);
      }

      if (v7 - 40 != a1)
      {
        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1, (v7 - 40));
        *(a1 + 32) = *(v7 - 8);
      }

      if (*(v7 - 17) < 0)
      {
        operator delete(*(v7 - 40));
      }

      *(v7 - 40) = v18;
      *(v7 - 25) = *&v140[7];
      *(v7 - 32) = *v140;
      *(v7 - 17) = v19;
      *(v7 - 16) = v20;
      *(v7 - 8) = v16;
      if (v22 < v24)
      {
        goto LABEL_41;
      }

      v35 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *>(a1, v7 - 40);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *>(v7, v138))
      {
        a2 = (v7 - 40);
        if (!v35)
        {
          goto LABEL_2;
        }

        goto LABEL_154;
      }

      if (!v35)
      {
LABEL_41:
        std::__introsort<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,false>(a1, v7 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v16 = *(a1 + 32);
      if (*(a1 - 8) > v16)
      {
        goto LABEL_18;
      }

      v36 = *a1;
      *v141 = *(a1 + 8);
      *&v141[7] = *(a1 + 15);
      v37 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if (v16 <= *(v138 - 8))
      {
        v40 = a1 + 40;
        do
        {
          v7 = v40;
          if (v40 >= v138)
          {
            break;
          }

          v41 = *(v40 + 32);
          v40 += 40;
        }

        while (v16 <= v41);
      }

      else
      {
        v38 = a1;
        do
        {
          v7 = v38 + 40;
          v39 = *(v38 + 72);
          v38 += 40;
        }

        while (v16 <= v39);
      }

      v42 = v138;
      if (v7 < v138)
      {
        v43 = v138;
        do
        {
          v42 = v43 - 40;
          v44 = *(v43 - 8);
          v43 -= 40;
        }

        while (v16 > v44);
      }

      v45 = *(a1 + 24);
      while (v7 < v42)
      {
        v154 = *(v7 + 16);
        v145 = *v7;
        v46 = *v42;
        *(v7 + 16) = *(v42 + 16);
        *v7 = v46;
        *(v42 + 16) = v154;
        *v42 = v145;
        v47 = *(v7 + 24);
        *(v7 + 24) = *(v42 + 24);
        *(v42 + 24) = v47;
        v48 = *(v7 + 28);
        *(v7 + 28) = *(v42 + 28);
        *(v42 + 28) = v48;
        v49 = *(v7 + 32);
        *(v7 + 32) = *(v42 + 32);
        *(v42 + 32) = v49;
        do
        {
          v50 = *(v7 + 72);
          v7 += 40;
        }

        while (v16 <= v50);
        do
        {
          v51 = *(v42 - 8);
          v42 -= 40;
        }

        while (v16 > v51);
      }

      if (v7 - 40 != a1)
      {
        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1, (v7 - 40));
        *(a1 + 32) = *(v7 - 8);
      }

      if (*(v7 - 17) < 0)
      {
        operator delete(*(v7 - 40));
      }

      a4 = 0;
      *(v7 - 40) = v36;
      *(v7 - 25) = *&v141[7];
      *(v7 - 32) = *v141;
      *(v7 - 17) = v37;
      *(v7 - 16) = v45;
      *(v7 - 8) = v16;
    }
  }

  v57 = *MEMORY[0x1E69E9840];

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), v132);
}

__int128 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(__int128 *result, __int128 *a2, __int128 *a3)
{
  v3 = (a2 + 2);
  v4 = *(a2 + 8);
  v5 = (result + 2);
  v6 = *(a3 + 8);
  if (v4 > *(result + 8))
  {
    if (v6 <= v4)
    {
      v18 = *(result + 2);
      v19 = *result;
      v20 = *(a2 + 2);
      *result = *a2;
      *(result + 2) = v20;
      *a2 = v19;
      *(a2 + 2) = v18;
      LODWORD(v18) = *(result + 6);
      *(result + 6) = *(a2 + 6);
      *(a2 + 6) = v18;
      v7 = a2 + 7;
      v21 = *(result + 7);
      *(result + 7) = *(a2 + 7);
      *(a2 + 7) = v21;
      LODWORD(v18) = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(a2 + 8) = v18;
      if (*(a3 + 8) <= v18)
      {
        return result;
      }

      v22 = *(a2 + 2);
      v23 = *a2;
      v24 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v24;
      *a3 = v23;
      *(a3 + 2) = v22;
      LODWORD(v22) = *(a2 + 6);
      *(a2 + 6) = *(a3 + 6);
      *(a3 + 6) = v22;
      v11 = a3 + 7;
      v5 = (a2 + 2);
    }

    else
    {
      v7 = result + 7;
      v8 = *(result + 2);
      v9 = *result;
      v10 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v10;
      *a3 = v9;
      *(a3 + 2) = v8;
      LODWORD(v8) = *(result + 6);
      *(result + 6) = *(a3 + 6);
      *(a3 + 6) = v8;
      v11 = a3 + 7;
    }

    v3 = (a3 + 2);
    goto LABEL_10;
  }

  if (v6 > v4)
  {
    v12 = *(a2 + 2);
    v13 = *a2;
    v14 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v14;
    *a3 = v13;
    *(a3 + 2) = v12;
    LODWORD(v12) = *(a2 + 6);
    *(a2 + 6) = *(a3 + 6);
    *(a3 + 6) = v12;
    v11 = a2 + 7;
    LODWORD(v12) = *(a2 + 7);
    *(a2 + 7) = *(a3 + 7);
    *(a3 + 7) = v12;
    LODWORD(v12) = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v12;
    if (*(a2 + 8) > *v5)
    {
      v15 = *(result + 2);
      v16 = *result;
      v17 = *(a2 + 2);
      *result = *a2;
      *(result + 2) = v17;
      *a2 = v16;
      *(a2 + 2) = v15;
      LODWORD(v15) = *(result + 6);
      *(result + 6) = *(a2 + 6);
      *(a2 + 6) = v15;
      v7 = result + 7;
LABEL_10:
      v25 = *v7;
      *v7 = *v11;
      *v11 = v25;
      v26 = *v5;
      *v5 = *v3;
      *v3 = v26;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, a2, a3);
  if (*(a4 + 32) > *(a3 + 32))
  {
    v11 = *(a3 + 16);
    result = *a3;
    v12 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v12;
    *a4 = result;
    *(a4 + 16) = v11;
    LODWORD(v11) = *(a3 + 24);
    *(a3 + 24) = *(a4 + 24);
    *(a4 + 24) = v11;
    LODWORD(v11) = *(a3 + 28);
    *(a3 + 28) = *(a4 + 28);
    *(a4 + 28) = v11;
    LODWORD(v11) = *(a3 + 32);
    *(a3 + 32) = *(a4 + 32);
    *(a4 + 32) = v11;
    if (*(a3 + 32) > *(a2 + 32))
    {
      v13 = *(a2 + 16);
      result = *a2;
      v14 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v14;
      *a3 = result;
      *(a3 + 16) = v13;
      LODWORD(v13) = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v13;
      LODWORD(v13) = *(a2 + 28);
      *(a2 + 28) = *(a3 + 28);
      *(a3 + 28) = v13;
      LODWORD(v13) = *(a2 + 32);
      *(a2 + 32) = *(a3 + 32);
      *(a3 + 32) = v13;
      if (*(a2 + 32) > *(a1 + 32))
      {
        v15 = *(a1 + 16);
        result = *a1;
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        *a2 = result;
        *(a2 + 16) = v15;
        LODWORD(v15) = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = v15;
        LODWORD(v15) = *(a1 + 28);
        *(a1 + 28) = *(a2 + 28);
        *(a2 + 28) = v15;
        LODWORD(v15) = *(a1 + 32);
        *(a1 + 32) = *(a2 + 32);
        *(a2 + 32) = v15;
      }
    }
  }

  if (*(a5 + 32) > *(a4 + 32))
  {
    v17 = *(a4 + 16);
    result = *a4;
    v18 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v18;
    *a5 = result;
    *(a5 + 16) = v17;
    LODWORD(v17) = *(a4 + 24);
    *(a4 + 24) = *(a5 + 24);
    *(a5 + 24) = v17;
    LODWORD(v17) = *(a4 + 28);
    *(a4 + 28) = *(a5 + 28);
    *(a5 + 28) = v17;
    LODWORD(v17) = *(a4 + 32);
    *(a4 + 32) = *(a5 + 32);
    *(a5 + 32) = v17;
    if (*(a4 + 32) > *(a3 + 32))
    {
      v19 = *(a3 + 16);
      result = *a3;
      v20 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v20;
      *a4 = result;
      *(a4 + 16) = v19;
      LODWORD(v19) = *(a3 + 24);
      *(a3 + 24) = *(a4 + 24);
      *(a4 + 24) = v19;
      LODWORD(v19) = *(a3 + 28);
      *(a3 + 28) = *(a4 + 28);
      *(a4 + 28) = v19;
      LODWORD(v19) = *(a3 + 32);
      *(a3 + 32) = *(a4 + 32);
      *(a4 + 32) = v19;
      if (*(a3 + 32) > *(a2 + 32))
      {
        v21 = *(a2 + 16);
        result = *a2;
        v22 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v22;
        *a3 = result;
        *(a3 + 16) = v21;
        LODWORD(v21) = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v21;
        LODWORD(v21) = *(a2 + 28);
        *(a2 + 28) = *(a3 + 28);
        *(a3 + 28) = v21;
        LODWORD(v21) = *(a2 + 32);
        *(a2 + 32) = *(a3 + 32);
        *(a3 + 32) = v21;
        if (*(a2 + 32) > *(a1 + 32))
        {
          v23 = *(a1 + 16);
          result = *a1;
          v24 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v24;
          *a2 = result;
          *(a2 + 16) = v23;
          LODWORD(v23) = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v23;
          LODWORD(v23) = *(a1 + 28);
          *(a1 + 28) = *(a2 + 28);
          *(a2 + 28) = v23;
          LODWORD(v23) = *(a1 + 32);
          *(a1 + 32) = *(a2 + 32);
          *(a2 + 32) = v23;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *>(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), (a2 - 40));
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), (a1 + 80));
        if (*(a2 - 8) > *(a1 + 112))
        {
          v19 = *(a1 + 96);
          v20 = *(a1 + 80);
          v21 = *(a2 - 24);
          *(a1 + 80) = *(a2 - 40);
          *(a1 + 96) = v21;
          *(a2 - 40) = v20;
          *(a2 - 24) = v19;
          LODWORD(v19) = *(a1 + 104);
          *(a1 + 104) = *(a2 - 16);
          *(a2 - 16) = v19;
          LODWORD(v19) = *(a1 + 108);
          *(a1 + 108) = *(a2 - 12);
          *(a2 - 12) = v19;
          LODWORD(v19) = *(a1 + 112);
          *(a1 + 112) = *(a2 - 8);
          *(a2 - 8) = v19;
          v22 = *(a1 + 112);
          v23 = *(a1 + 72);
          if (v22 > v23)
          {
            v24 = *(a1 + 56);
            v25 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 80);
            *(a1 + 56) = *(a1 + 96);
            *(a1 + 80) = v25;
            *(a1 + 96) = v24;
            v26 = *(a1 + 104);
            v27 = *(a1 + 108);
            *&v25 = *(a1 + 64);
            *(a1 + 64) = v26;
            *(a1 + 68) = v27;
            *(a1 + 104) = v25;
            *(a1 + 72) = v22;
            *(a1 + 112) = v23;
            v28 = *(a1 + 32);
            if (v22 > v28)
            {
              v29 = *(a1 + 16);
              v30 = *a1;
              *a1 = *(a1 + 40);
              *(a1 + 16) = *(a1 + 56);
              *(a1 + 40) = v30;
              *(a1 + 56) = v29;
              *&v30 = *(a1 + 24);
              *(a1 + 24) = v26;
              *(a1 + 28) = v27;
              *(a1 + 64) = v30;
              *(a1 + 32) = v22;
              result = 1;
              *(a1 + 72) = v28;
              goto LABEL_29;
            }
          }
        }

        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        break;
      default:
        goto LABEL_11;
    }

LABEL_28:
    result = 1;
    goto LABEL_29;
  }

  if (v4 < 2)
  {
    goto LABEL_28;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) > *(a1 + 32))
    {
      v5 = *(a1 + 16);
      v6 = *a1;
      v7 = *(a2 - 24);
      *a1 = *(a2 - 40);
      *(a1 + 16) = v7;
      *(a2 - 40) = v6;
      *(a2 - 24) = v5;
      LODWORD(v5) = *(a1 + 24);
      *(a1 + 24) = *(a2 - 16);
      *(a2 - 16) = v5;
      LODWORD(v5) = *(a1 + 28);
      *(a1 + 28) = *(a2 - 12);
      *(a2 - 12) = v5;
      LODWORD(v5) = *(a1 + 32);
      *(a1 + 32) = *(a2 - 8);
      *(a2 - 8) = v5;
    }

    goto LABEL_28;
  }

LABEL_11:
  v8 = a1 + 80;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), (a1 + 80));
  v9 = a1 + 120;
  if (a1 + 120 == a2)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v9 + 32);
    if (v12 > *(v8 + 32))
    {
      v13 = *v9;
      *v33 = *(v9 + 8);
      *&v33[7] = *(v9 + 15);
      v14 = *(v9 + 23);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v15 = *(v9 + 24);
      v16 = v10;
      while (1)
      {
        v17 = a1 + v16;
        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1 + v16 + 120, (a1 + v16 + 80));
        *(a1 + v16 + 152) = *(a1 + v16 + 112);
        if (v16 == -80)
        {
          break;
        }

        v16 -= 40;
        if (v12 <= *(v17 + 72))
        {
          v18 = a1 + v16 + 120;
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      if (*(v18 + 23) < 0)
      {
        operator delete(*v18);
      }

      *v18 = v13;
      *(v18 + 8) = *v33;
      *(v18 + 15) = *&v33[7];
      *(v18 + 23) = v14;
      *(v18 + 24) = v15;
      *(v18 + 32) = v12;
      if (++v11 == 8)
      {
        break;
      }
    }

    v8 = v9;
    v10 += 40;
    v9 += 40;
    if (v9 == a2)
    {
      goto LABEL_28;
    }
  }

  result = v9 + 40 == a2;
LABEL_29:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  *(a1 + 24) = a2[1].n128_u32[2];
  *(a1 + 28) = a2[1].n128_u32[3];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned int,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *_MTLEncodeLinkingInfo(const void *a1, size_t a2, const void *a3, size_t a4, uint64_t a5, size_t *a6)
{
  v12 = a2 + ((a2 - 1) & 7) + 40;
  v13 = v12 + a4;
  v14 = malloc_type_malloc(v12 + a4, 0x100004077774924uLL);
  *a5 = v14;
  *v14 = 0x1464E4958;
  v14[1] = 40;
  v14[2] = a2;
  v14[3] = v12;
  v14[4] = a4;
  memcpy((*a5 + 40), a1, a2);
  result = memcpy((*a5 + v12), a3, a4);
  *a6 = v13;
  return result;
}

BOOL _MTLDecodeLinkingInfo(int *a1, void *a2, void *a3, void *a4, void *a5)
{
  v5 = *a1;
  if (*a1 == 1179535704)
  {
    v6 = *(a1 + 2);
    *a2 = *(a1 + 1);
    *a3 = v6;
    v7 = *(a1 + 4);
    *a4 = *(a1 + 3);
    *a5 = v7;
  }

  return v5 == 1179535704;
}

dispatch_data_t mapFileToMemory(const char *a1, int a2)
{
  v3 = open(a1, 0);
  v4 = v3;
  if (v3 < 0)
  {
    if (a2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      mapFileToMemory();
    }

    goto LABEL_8;
  }

  if (fstat(v3, &v8))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      mapFileToMemory();
    }

LABEL_8:
    close(v4);
    return 0;
  }

  st_size = v8.st_size;
  v7 = mmap(0, v8.st_size, 1, 2, v4, 0);
  close(v4);
  if (v7 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      mapFileToMemory();
    }

    return 0;
  }

  return dispatch_data_create(v7, st_size, 0, *MEMORY[0x1E69E9650]);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

BOOL MTLIOCommandList::isBlocked(MTLIOCommandList *this)
{
  if (!this->var7)
  {
    return 1;
  }

  v1 = this->var0 + 152 * this->var3;
  v2 = *v1;
  if (*v1 == 2)
  {
    return !v1[8];
  }

  return (v2 == 3 || v2 == 4) && this->var4;
}

void MTLIOCommandList::~MTLIOCommandList(MTLIOCommandList *this)
{
  var12 = this->var12;
  if (var12)
  {
    [var12 releaseAllObjectsAndReset];
    MTLResourceListRelease(this->var12);
    this->var12 = 0;
  }

  free(this->var0);
}

__n128 MTLIOCommandList::addCommand(MTLIOCommandList *this, MTLIOCommand *a2)
{
  var1 = this->var1;
  var2 = this->var2;
  var0 = this->var0;
  if (var2 >= var1)
  {
    var0 = malloc_type_realloc(var0, 2 * var1, 0x1082040126CB6D8uLL);
    var2 = this->var2;
    v7 = 2 * this->var1;
    this->var0 = var0;
    this->var1 = v7;
  }

  this->var2 = var2 + 1;
  v8 = var0 + 152 * var2;
  v9 = *(a2 + 1);
  *v8 = *a2;
  *(v8 + 1) = v9;
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = *(a2 + 5);
  *(v8 + 4) = *(a2 + 4);
  *(v8 + 5) = v12;
  *(v8 + 2) = v10;
  *(v8 + 3) = v11;
  result = *(a2 + 6);
  v14 = *(a2 + 7);
  v15 = *(a2 + 8);
  *(v8 + 18) = *(a2 + 18);
  *(v8 + 7) = v14;
  *(v8 + 8) = v15;
  *(v8 + 6) = result;
  return result;
}

void MTLIOCommandList::cancel(MTLIOCommandList *this)
{
  os_unfair_lock_lock(&this->var5);
  this->var6 = 1;

  os_unfair_lock_unlock(&this->var5);
}

void MTLIOCommandList::commit(MTLIOCommandList *this, _opaque_pthread_cond_t *a2)
{
  os_unfair_lock_lock(&this->var5);
  this->var7 = 1;
  os_unfair_lock_unlock(&this->var5);
  if (a2)
  {

    pthread_cond_broadcast(a2);
  }
}

uint64_t MTLIOCommandList::popCommand(MTLIOCommandList *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, void *a7)
{
  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  *a5 = 0;
  *a6 = 0;
  os_unfair_lock_lock(&a1->var5);
  while (1)
  {
    if (a1->var6 && !a1->var4)
    {
      v15 = 0;
      *a6 = 1;
      goto LABEL_30;
    }

    var3 = a1->var3;
    if (var3 == a1->var2)
    {
      break;
    }

    if (MTLIOCommandList::isBlocked(a1))
    {
      v15 = 0;
      *a2 = 1;
      goto LABEL_30;
    }

    if (a1->var8 && !a1->var4)
    {
      v15 = 0;
      *a5 = 1;
      goto LABEL_30;
    }

    v15 = a1->var0 + 152 * var3;
    v16 = *v15;
    if (*v15 <= 2)
    {
      if (v16 != 2)
      {
        if (!v16)
        {
          v16 = *(v15 + 89);
        }

        if (v16 == 1 && !a1->var9)
        {
          v18 = [a7 commandBuffer];
          a1->var9 = v18;
          a1->var10 = [v18 blitCommandEncoder];
          var3 = a1->var3;
        }

LABEL_25:
        ++a1->var4;
        a1->var3 = var3 + 1;
        goto LABEL_30;
      }
    }

    else if (v16 != 4)
    {
      if (v16 != 3)
      {
        goto LABEL_25;
      }

      [*(v15 + 8) setSignaledValue:*(v15 + 16)];
      var3 = a1->var3;
    }

    a1->var3 = var3 + 1;
  }

  v15 = 0;
  if (a1->var7 && a1->var4 == 0)
  {
    *a3 = 1;
  }

  *a4 = 1;
LABEL_30:
  os_unfair_lock_unlock(&a1->var5);
  return v15;
}

void MTLIOCommandList::completeIOCommand(MTLIOCommandList *this, MTLIOCommand *a2, _opaque_pthread_cond_t *a3, _opaque_pthread_mutex_t *a4, char a5)
{
  os_unfair_lock_lock(&this->var5);
  if ((a5 & 1) == 0)
  {
    this->var8 = 1;
  }

  isBlocked = MTLIOCommandList::isBlocked(this);
  v11 = this->var4 - 1;
  this->var4 = v11;
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = this->var3 == this->var2;
  }

  v13 = v12;
  if (v11 || ((isBlocked | this->var7 & v13) & 1) == 0)
  {
    os_unfair_lock_unlock(&this->var5);
    if (v11)
    {
      return;
    }

    goto LABEL_24;
  }

  var9 = this->var9;
  if (var9)
  {
    [var9 globalTraceObjectID];
    var12 = this->var12;
    if (var12)
    {
      [var12 releaseAllObjectsAndReset];
      MTLResourceListRelease(this->var12);
      this->var12 = 0;
    }

    [this->var10 endEncoding];
    if (MTLTraceEnabled())
    {
      v16 = *a2;
      kdebug_trace();
    }

    [this->var9 commit];
    this->var4 = 1;
    v17 = this->var9;
    this->var9 = 0;
    this->var10 = 0;
    os_unfair_lock_unlock(&this->var5);
    if (!v17)
    {
      goto LABEL_24;
    }

    [v17 waitUntilCompleted];
    os_unfair_lock_lock(&this->var5);
    if ([v17 status] != 4)
    {
      this->var8 = 1;
    }

    if (MTLTraceEnabled())
    {
      v18 = -this->var8;
      kdebug_trace();
    }

    this->var4 = 0;
  }

  os_unfair_lock_unlock(&this->var5);
LABEL_24:
  pthread_mutex_lock(a4);
  pthread_cond_broadcast(a3);

  pthread_mutex_unlock(a4);
}

uint64_t MTLIOCommandList::completeEventWait(MTLIOCommandList *this, MTLIOCommand *a2, _opaque_pthread_cond_t *a3, _opaque_pthread_mutex_t *a4)
{
  *(a2 + 8) = 1;
  pthread_mutex_lock(a4);
  pthread_cond_broadcast(a3);

  return pthread_mutex_unlock(a4);
}

void MTLIOCommandList::MTLIOCommandList(MTLIOCommandList *this, MTLResourceListPool *a2)
{
  this->var0 = malloc_type_malloc(0x980000uLL, 0x1082040126CB6D8uLL);
  this->var1 = 0x10000;
  this->var3 = 0;
  *&this->var4 = 0;
  this->var2 = 0;
  *(&this->var5._os_unfair_lock_opaque + 3) = 0;
  this->var9 = 0;
  this->var10 = 0;
  this->var11 = a2;
  this->var12 = 0;
}

char *std::vector<objc_object  {objcproto18MTLIOScratchBuffer}*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<objc_object  {objcproto18MTLIOScratchBuffer}*>,objc_object  {objcproto18MTLIOScratchBuffer}*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t _MTLDebugIgnorePrecompiledBinaries(void)
{
  if (_MTLDebugIgnorePrecompiledBinaries(void)::onceToken != -1)
  {
    _MTLDebugIgnorePrecompiledBinaries();
  }

  return _MTLDebugIgnorePrecompiledBinaries(void)::ignorePrecompiledBinaries;
}

uint64_t _MTLDebugShouldLogKeys(void)
{
  if (_MTLDebugShouldLogKeys(void)::onceToken != -1)
  {
    _MTLDebugShouldLogKeys();
  }

  return _MTLDebugShouldLogKeys(void)::shouldLogHashKeys;
}

uint64_t MultiLevelCacheBase::addElement(MultiLevelCacheBase *this, const MTLHashKey *a2, const void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  v4 = *&a2->var1.var0[16];
  v7[0] = *a2->var1.var0;
  v7[1] = v4;
  result = (*(*v3 + 40))(v3, v7, a3);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MultiLevelCacheBase::addElement(MultiLevelCacheBase *this, MTLBinaryKey *a2, const void *a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = *(this + 3);
  v7 = [(MTLBinaryKey *)a2 value];
  v8 = *&v7->var0[16];
  v11[0] = *v7->var0;
  v11[1] = v8;
  result = (*(*v6 + 40))(v6, v11, a3, a4);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MultiLevelCacheBase::addElement(uint64_t a1, _OWORD *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  result = (*(*v2 + 40))(v2, v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL MultiLevelBinaryCache::initialize(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  if (_MTLDebugIgnorePrecompiledBinaries(void)::onceToken != -1)
  {
    _MTLDebugIgnorePrecompiledBinaries();
  }

  if (_MTLDebugIgnorePrecompiledBinaries(void)::ignorePrecompiledBinaries)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  *(a1 + 40) = v10;
  if (_MTLDebugShouldLogKeys(void)::onceToken != -1)
  {
    _MTLDebugShouldLogKeys();
  }

  *(a1 + 48) = _MTLDebugShouldLogKeys(void)::shouldLogHashKeys;

  return MultiLevelCacheBase::initialize(a1, a3, a4, a5);
}

uint64_t MultiLevelBinaryCache::getElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [[MTLBinaryKey alloc] initWithHash:a2];
  v10 = (*(*a1 + 96))(a1, v9, a3, a4, a5);

  return v10;
}

BOOL MultiLevelAirntBinaryCache::getElementAtDestination(uint64_t a1, uint64_t a2, dispatch_object_t *a3, dispatch_object_t *a4, uint64_t a5)
{
  v7 = [*(a1 + 56) getBinaryDataForKey:a2 reflectionType:a5];
  v8 = v7;
  if (v7)
  {
    *a3 = [v7 data];
    *a4 = [v8 reflectionBlock];
    dispatch_retain(*a3);
    dispatch_retain(*a4);
  }

  return v8 != 0;
}

uint64_t MultiLevelAirntBinaryCache::getElementAtDestination(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [[MTLBinaryKey alloc] initWithHash:a2];
  v10 = (*(*a1 + 160))(a1, v9, a3, a4, a5);

  return v10;
}

void MultiLevelAirntBinaryCache::addElement(MultiLevelAirntBinaryCache *this, const MTLHashKey *a2, MTLBinaryEntry *a3)
{
  v5 = [[MTLBinaryKey alloc] initWithHash:a2];
  (*(*this + 144))(this, v5, a3);
}

void MultiLevelBinaryFSCache::addElement(MultiLevelBinaryFSCache *this, const MTLHashKey *a2, MTLBinaryEntry *a3)
{
  v5 = [[MTLBinaryKey alloc] initWithHash:a2];
  (*(*this + 144))(this, v5, a3);
}

BOOL MultiLevelLegacyBinaryCache::getElementAtDestination(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v4 = [*(a1 + 56) getBinaryDataForKey:a2 reflectionType:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 data];
    *a3 = v6;
    dispatch_retain(v6);
  }

  return v5 != 0;
}

uint64_t MultiLevelLegacyBinaryCache::getElementAtDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[MTLBinaryKey alloc] initWithHash:a2];
  v6 = (*(*a1 + 176))(a1, v5, a3);

  return v6;
}

void *MultiLevelLegacyBinaryCache::addElement(MultiLevelLegacyBinaryCache *this, MTLBinaryKey *a2, MTLBinaryEntry *a3)
{
  result = *(this + 7);
  if (result)
  {
    return [result addBinaryEntryInternal:a3 forKey:a2];
  }

  return result;
}

void MultiLevelLegacyBinaryCache::addElement(MultiLevelLegacyBinaryCache *this, const MTLHashKey *a2, MTLBinaryEntry *a3)
{
  v5 = [[MTLBinaryKey alloc] initWithHash:a2];
  (*(*this + 144))(this, v5, a3);
}

void MultiLevelLegacyBinaryCache::addElement(uint64_t a1, uint64_t a2, void *buffer, size_t size)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = dispatch_data_create(buffer, size, 0, 0);
  v7 = [[MTLBinaryEntry alloc] initWithData:v6];
  v8 = MTLHashKey::MTLHashKey(&v10, a2);
  (*(*a1 + 152))(a1, &v10, v7, v8);
  MTLHashKey::~MTLHashKey(&v10);
  dispatch_release(v6);

  v9 = *MEMORY[0x1E69E9840];
}

BOOL MultiLevelAirCache::initialize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  return MultiLevelCacheBase::initialize(a1, a4, a5, a6);
}

uint64_t MultiLevelAirCache::getElement(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MTLHashKey::MTLHashKey(&v9, [a2 value]);
  v6 = (*(*a1 + 96))(a1, &v9, a3, v5);
  MTLHashKey::~MTLHashKey(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t MultiLevelAirCache::getElement(id *a1, uint64_t a2, dispatch_data_t *a3)
{
  for (i = 0; i < [a1[5] count]; ++i)
  {
    if ([objc_msgSend(a1[5] objectAtIndexedSubscript:{i), "supportsAIRNT"}])
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_msgSend(a1[5] objectAtIndexedSubscript:{i), "newArchiveDataForKeyInternal:", a2 + 24}];
    }

    if (v7)
    {
      *a3 = v7;
      return 1;
    }
  }

  if ((*(*a1 + 15))(a1))
  {
    return 0;
  }

  return MultiLevelCacheBase::getElement(a1, (a2 + 24), a3);
}

BOOL MultiLevelFunctionCache::initialize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  a1[6] = a4;
  a1[7] = a2;
  a1[5] = a3;
  return MultiLevelCacheBase::initialize(a1, a5, a6, a7);
}

uint64_t MultiLevelFunctionCache::newFunctionWithKey(MultiLevelFunctionCache *this, MTLBinaryKey *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLHashKey::MTLHashKey(&v7, [(MTLBinaryKey *)a2 value]);
  v4 = (*(*this + 144))(this, &v7, 0, v3);
  MTLHashKey::~MTLHashKey(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL MultiLevelLibraryCache::initialize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  a1[6] = a4;
  a1[7] = a2;
  a1[5] = a3;
  return MultiLevelCacheBase::initialize(a1, 0, a5, a6);
}

uint64_t MultiLevelLibraryCache::newStitchedLibraryWithKey(void *a1, uint64_t a2, uint64_t a3, MTLLibraryContainer **a4, _BYTE *a5, uint64_t a6)
{
  if (![a1[5] count])
  {
LABEL_5:
    if ((*(*a1 + 120))(a1))
    {
      return 0;
    }

    v15 = *(a1[7] + 440);
    *a5 = 0;
    LibraryContainer = MTLLibraryBuilder::findOrCreateLibraryContainer(v15, (a2 + 24), a5);
    *a4 = LibraryContainer;
    if (*a5)
    {
      v22 = 0;
      MultiLevelCacheBase::getElement(a1, (a2 + 24), &v22);
      v17 = v22;
      if (!v22)
      {
        return 0;
      }

      v18 = (*(a6 + 16))(a6, v22);
      if (!v18)
      {
        return 0;
      }

      v19 = v18;
      if (a3)
      {
        (*(*v18 + 280))(v18, a3);
      }

      v20 = objc_opt_new();
      MTLLibraryContainer::init(*a4, v19, v20, 0, 0);
      v14 = MTLLibraryContainer::newLibrary(*a4, a1[7]);

      (*(*v19 + 24))(v19);
      dispatch_release(v17);
    }

    else
    {
      dispatch_group_wait(*(LibraryContainer + 80), 0xFFFFFFFFFFFFFFFFLL);
      v14 = MTLLibraryContainer::newLibrary(*a4, a1[7]);
      if (!v14)
      {
        return v14;
      }
    }

    MTLLibraryBuilder::releaseCacheEntry(v15, *a4);
    *a4 = 0;
    return v14;
  }

  v12 = 0;
  while (1)
  {
    v13 = [objc_msgSend(a1[5] objectAtIndexedSubscript:{v12), "newStitchedLibraryWithKey:descriptors:", a2 + 24, a3}];
    if (v13)
    {
      return v13;
    }

    if (++v12 >= [a1[5] count])
    {
      goto LABEL_5;
    }
  }
}

void MultiLevelLibraryCache::addStitchedLibraryWithKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *MEMORY[0x1E69E9840];

    [v7 addStitchedLibraryWithKey:a2 + 24 descriptors:a3 inputFunctions:a4 library:a5];
  }

  else
  {
    v9 = [a5 libraryData];
    v14 = 0;
    buffer_ptr = 0;
    v10 = (*(*v9 + 128))(v9);
    v11 = dispatch_data_create_map(v10, &buffer_ptr, &v14);
    MTLHashKey::MTLHashKey(&v16, a2 + 24);
    v12 = *(a1 + 24);
    var1 = v16.var1;
    (*(*v12 + 40))(v12, &var1, buffer_ptr, v14);
    MTLHashKey::~MTLHashKey(&v16);
    dispatch_release(v11);
    v13 = *MEMORY[0x1E69E9840];
  }
}

uint64_t MultiLevelBinaryFSCache::getElementAtDestination(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  return 0;
}

{
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t MultiLevelBinaryFSCache::getElementAtDestination(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  return 0;
}

{
  *a3 = 0;
  return 0;
}

uint64_t MultiLevelAirntBinaryCache::getElementAtDestination(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  return 0;
}

{
  *a3 = 0;
  return 0;
}

uint64_t MultiLevelLegacyBinaryCache::getElementAtDestination(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  return 0;
}

{
  *a3 = 0;
  *a4 = 0;
  return 0;
}

void std::__shared_ptr_emplace<MultiLevelAirntBinaryCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF473298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::__shared_ptr_emplace<MultiLevelLegacyBinaryCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF4732E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::__shared_ptr_emplace<MultiLevelBinaryFSCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF473338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::__shared_ptr_emplace<MultiLevelAirCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF473388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::__shared_ptr_emplace<MultiLevelFunctionCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF4733D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::__shared_ptr_emplace<MultiLevelLibraryCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF473428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

uint64_t MTLTraceEventSPI()
{
  result = IOAccelInitCommPage();
  if (**MEMORY[0x1E69A8488])
  {

    return kdebug_trace();
  }

  return result;
}

__CFString *MTLGPUOperationString(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E6EEA730[a1];
  }
}

void MTLXPCCompilerConnection::~MTLXPCCompilerConnection(MTLXPCCompilerConnection *this)
{
  *this = &unk_1EF473478;
  v2 = *(this + 16);
  if (v2)
  {
    xpc_connection_get_pid(v2);
    if (terminate_with_reason())
    {
      v3 = *(this + 16);
      xpc_connection_kill();
    }

    xpc_release(*(this + 16));
    *(this + 16) = 0;
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  MTLCompilerConnection::~MTLCompilerConnection(this);
}

{
  MTLXPCCompilerConnection::~MTLXPCCompilerConnection(this);

  JUMPOUT(0x1865FF210);
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  MTLXPCCompilerConnection::errorHandler();
}

uint64_t MTLXPCCompilerConnection::errorHandler(uint64_t a1)
{
  if (a1 == MEMORY[0x1E69E9E18])
  {
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v20)
    {
      MTLXPCCompilerConnection::errorHandler(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v28)
    {
      MTLXPCCompilerConnection::errorHandler(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    return 2;
  }

  else if (a1 == MEMORY[0x1E69E9E20])
  {
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v36)
    {
      MTLXPCCompilerConnection::errorHandler(v36, v37, v38, v39, v40, v41, v42, v43);
    }

    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v44)
    {
      MTLXPCCompilerConnection::errorHandler(v44, v45, v46, v47, v48, v49, v50, v51);
    }

    return 1;
  }

  else
  {
    v2 = MEMORY[0x1E69E9E38];
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (a1 == v2)
    {
      if (v3)
      {
        MTLXPCCompilerConnection::errorHandler(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v52)
      {
        MTLXPCCompilerConnection::errorHandler(v52, v53, v54, v55, v56, v57, v58, v59);
      }

      return 3;
    }

    else
    {
      if (v3)
      {
        MTLXPCCompilerConnection::errorHandler(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v11)
      {
        MTLXPCCompilerConnection::errorHandler(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      return 4;
    }
  }
}

void MTLXPCCompilerConnection::cancelConnection(MTLXPCCompilerConnection *this)
{
  v1 = *(this + 14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN24MTLXPCCompilerConnection16cancelConnectionEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v1, block);
}

void ___ZN24MTLXPCCompilerConnection16cancelConnectionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 128))
  {
    v2 = xpc_connection_copy_invalidation_reason();
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = "<unknown reason>";
    }

    MEMORY[0x1865FEFC0](v1 + 136, v4);
    free(v3);
    xpc_connection_cancel(*(v1 + 128));
    xpc_release(*(v1 + 128));
    *(v1 + 128) = 0;
  }
}

uint64_t MTLXPCCompilerConnection::setupSandbox(MTLXPCCompilerConnection *this)
{
  v1 = this;
  if (MTLXPCCompilerConnection::setupSandbox(unsigned char)::onceToken != -1)
  {
    MTLXPCCompilerConnection::setupSandbox();
  }

  if (v1 == 2)
  {
    return MTLXPCCompilerConnection::setupSandbox(unsigned char)::gpuArchiverSandboxToken;
  }

  if (v1 == 1)
  {
    return MTLXPCCompilerConnection::setupSandbox(unsigned char)::fromSourceSandboxTokens;
  }

  return 0;
}

void ___ZN24MTLXPCCompilerConnection12setupSandboxEh_block_invoke()
{
  v19[2] = *MEMORY[0x1E69E9840];
  MTLXPCCompilerConnection::setupSandbox(unsigned char)::fromSourceSandboxTokens = xpc_array_create(0, 0);
  MTLXPCCompilerConnection::setupSandbox(unsigned char)::gpuArchiverSandboxToken = xpc_array_create(0, 0);
  v0 = [MTLGetModulesCachePath() UTF8String];
  v1 = [MTLGetGPUArchiverCachePath() UTF8String];
  MTLGetCompilerWorkingDir(__p);
  v2 = MEMORY[0x1E69E9BE0];
  v3 = MEMORY[0x1E69E9BB0];
  if (v0)
  {
    v4 = *MEMORY[0x1E69E9BB0];
    v5 = *MEMORY[0x1E69E9BE0];
    v6 = sandbox_extension_issue_file();
  }

  else
  {
    v6 = 0;
  }

  v19[0] = v6;
  if (v18 < 0)
  {
    if (__p[1])
    {
LABEL_8:
      v7 = *MEMORY[0x1E69E9BA8];
      v8 = *v2;
      v9 = sandbox_extension_issue_file();
      goto LABEL_10;
    }
  }

  else if (v18)
  {
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:
  v19[1] = v9;
  if (v1)
  {
    v10 = *v3;
    v11 = *v2;
    v1 = sandbox_extension_issue_file();
  }

  for (i = 0; i != 2; ++i)
  {
    v13 = v19[i];
    if (v13)
    {
      v14 = xpc_string_create(v19[i]);
      xpc_array_append_value(MTLXPCCompilerConnection::setupSandbox(unsigned char)::fromSourceSandboxTokens, v14);
      xpc_release(v14);
      free(v13);
    }
  }

  if (v1)
  {
    v15 = xpc_string_create(v1);
    xpc_array_append_value(MTLXPCCompilerConnection::setupSandbox(unsigned char)::gpuArchiverSandboxToken, v15);
    xpc_release(v15);
    free(v1);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_185BF69E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void MTLMonolithicCompilerConnection::MTLMonolithicCompilerConnection(MTLMonolithicCompilerConnection *this, MTLCompilerScheduler *a2, MTLCompilerProcess *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0uLL;
  MTLCompilerConnection::MTLCompilerConnection(this, a2, a3, &v5, 0);
  *this = &unk_1EF473538;
  *(this + 16) = 0;
  *(this + 17) = 0;
  MTLMonolithicCompilerConnection::attemptLazyInit(this);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t MTLMonolithicCompilerConnection::attemptLazyInit(uint64_t this)
{
  if (!*(this + 136))
  {
    v1 = MTLGetProcessName();
    v2 = strlen(v1);
    if (v2 < 0x7FFFFFFFFFFFFFF8)
    {
      v3 = v2;
      if (v2 < 0x17)
      {
        v5 = v2;
        if (v2)
        {
          memmove(&__dst, v1, v2);
        }

        *(&__dst + v3) = 0;
        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_185BF6BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1865FF210](v15, 0x1080C407D05813FLL);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MTLMonolithicCompilerConnection::~MTLMonolithicCompilerConnection(MTLMonolithicCompilerConnection *this)
{
  *this = &unk_1EF473538;
  if (*(this + 17))
  {
    v2 = *(this + 16);
    if (v2)
    {
      (*(v2 + 16))();
      *(this + 17) = 0;
      v3 = *(this + 16);
      if (v3)
      {
        CompilerPluginInterface::~CompilerPluginInterface(v3);
        MEMORY[0x1865FF210]();
      }
    }

    *(this + 16) = 0;
  }

  MTLCompilerConnection::~MTLCompilerConnection(this);
}

{
  MTLMonolithicCompilerConnection::~MTLMonolithicCompilerConnection(this);

  JUMPOUT(0x1865FF210);
}

void CompilerPluginInterface::~CompilerPluginInterface(void **this)
{
  v1 = *this;
  if (v1)
  {
    dlclose(v1);
  }
}

void CompilerPluginInterface::CompilerPluginInterface(CompilerPluginInterface *this, int a2)
{
  *(this + 10) = a2;
  v3 = "/System/Library/PrivateFrameworks/MTLCompiler.framework/Versions/32023/MTLCompiler";
  if (a2 != 32023)
  {
    v3 = 0;
  }

  if (a2 == 32024)
  {
    v4 = "/System/Library/PrivateFrameworks/MTLCompiler.framework/Versions/32024/MTLCompiler";
  }

  else
  {
    v4 = v3;
  }

  v5 = dlopen(v4, 5);
  *this = v5;
  if (v5)
  {
    *(this + 1) = dlsym(v5, "MTLCodeGenServiceCreate");
    *(this + 2) = dlsym(*this, "MTLCodeGenServiceDestroy");
    *(this + 3) = dlsym(*this, "MTLCodeGenServiceBuildRequest");
    *(this + 4) = dlsym(*this, "MTLCodeGenServiceSetPluginPath");
  }

  else
  {
    v6 = dlerror();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      CompilerPluginInterface::CompilerPluginInterface(v6);
    }

    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }
}

uint64_t MTLStageInputOutputDescriptorDescription(uint64_t result, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v31 = [@"\n" stringByPaddingToLength:a2 + 4 withString:@" " startingAtIndex:0];
    v4 = [@"\n" stringByPaddingToLength:a2 + 8 withString:@" " startingAtIndex:0];
    v5 = [@"\n" stringByPaddingToLength:a2 + 12 withString:@" " startingAtIndex:0];
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:31];
    v29 = v6;
    v30 = v5;
    for (i = 0; i != 31; ++i)
    {
      v15 = *(v3[2] + 8 + 8 * i);
      if (v15 && *(v15 + 8))
      {
        v16 = *(v15 + 24);
        if (v16 >= 0x1F)
        {
          MTLStageInputOutputDescriptorDescription_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
        }

        v17 = v40[v16];
        if (!v17)
        {
          v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
          v40[v16] = v17;
          v39[0] = v31;
          v39[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Buffer %lu:", v16];
          [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v39, 2)}];
          v18 = *(v3[1] + 8 + 8 * v16);
          if (v18)
          {
            v38[0] = v4;
            v38[1] = @"stepFunction =";
            v38[2] = MTLStepFunctionString(*(v18 + 16));
            [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v38, 3)}];
            if (*(v18 + 16))
            {
              v37[0] = v4;
              v37[1] = @"stepRate =";
              v37[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v18 + 24)];
              [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v37, 3)}];
            }

            if ([v18 isStrideDynamic])
            {
              v36[0] = v4;
              v36[1] = @"stride = dynamic";
              v19 = MEMORY[0x1E695DEC8];
              v20 = v36;
              v21 = 2;
            }

            else
            {
              v35[0] = v4;
              v35[1] = @"stride =";
              v35[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v18 + 8)];
              v19 = MEMORY[0x1E695DEC8];
              v20 = v35;
              v21 = 3;
            }

            v22 = [v19 arrayWithObjects:v20 count:v21];
            v5 = v30;
          }

          else
          {
            v34[0] = v4;
            v34[1] = @"stepFunction =";
            v34[2] = @"MTLStepFunctionPerVertex";
            v34[3] = v4;
            v34[4] = @"stride =";
            v34[5] = &unk_1EF4CFB40;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:6];
          }

          [v17 addObjectsFromArray:v22];
        }

        v33[0] = v4;
        v33[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attribute %u:", i];
        v33[2] = v5;
        v33[3] = @"offset =";
        v33[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v15 + 16)];
        v33[5] = v5;
        v33[6] = @"format =";
        v33[7] = MTLAttributeFormatString(*(v15 + 8));
        v6 = [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v33, 8)}];
      }
    }

    for (j = 0; j != 31; ++j)
    {
      v24 = v40[j];
      if (v24)
      {
        [v29 addObject:{objc_msgSend(v24, "componentsJoinedByString:", @" "}];
      }
    }

    v32[0] = v31;
    v25 = v3[4];
    v26 = @"Unknown";
    if (v25 == 1)
    {
      v26 = @"MTLIndexTypeUInt32";
    }

    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = @"MTLIndexTypeUInt16";
    }

    v32[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"IndexType: %@", v27];
    v32[2] = v31;
    v32[3] = [MEMORY[0x1E696AEC0] stringWithFormat:@"IndexBufferIndex: %lu", v3[3]];
    [v29 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v32, 4)}];
    result = [v29 componentsJoinedByString:@" "];
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void validateFunctionStepRate(MTLStepFunction a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 - 5 >= 4)
  {
    if (a1)
    {

      _MTLMessageContextPush_(a3, 4, @"invalid stepFunction value", a4, a5, a6, a7, a8, a9);
    }

    else if (a2)
    {
      _MTLMessageContextPush_(a3, 4, @"stepRate(%lu) must be zero if stepFunction is MTLStepFunctionConstant.", a4, a5, a6, a7, a8, a2);
    }
  }

  else if (!a2)
  {
    MTLStepFunctionString(a1);
    _MTLMessageContextPush_(a3, 4, @"stepRate(%lu) cannot be zero if stepFunction is %@.", v10, v11, v12, v13, v14, 0);
  }
}

uint64_t compilerErrorWithMessage(NSString *a1, ...)
{
  va_start(va, a1);
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a1 arguments:va];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:v1 forKey:*MEMORY[0x1E696A578]];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"CompilerError" code:2 userInfo:v2];
}

__CFString *MTLIndexTypeString(MTLIndexType a1)
{
  v1 = @"Unknown";
  if (a1 == MTLIndexTypeUInt32)
  {
    v1 = @"MTLIndexTypeUInt32";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLIndexTypeUInt16";
  }
}

__CFString *MTLStepFunctionString(MTLStepFunction a1)
{
  if (a1 > MTLStepFunctionThreadPositionInGridYIndexed)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEA7E0[a1];
  }
}

MTLSerializer::ObjectListSerializer *MTLSerializer::ObjectListSerializer::ObjectListSerializer(MTLSerializer::ObjectListSerializer *this, unsigned int a2)
{
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 8;
  *this = &unk_1EF473578;
  std::vector<MTLSerializer::ObjectSerializer *>::vector[abi:ne200100](this + 6, a2);
  *(this + 5) = 4;
  return this;
}

void sub_185BF9018(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1EF473B18;
  v3 = v1[1];
  if (v3)
  {
    v1[2] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLSerializer::ObjectListSerializer::writeToMemory(const void **this, char *__dst, uint64_t a3)
{
  memcpy(__dst, this[1], this[2] - this[1]);
  result = this[2] - this[1];
  v8 = this[6];
  v7 = this[7];
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      v10 = v8[v9];
      if (v10)
      {
        v11 = v10[5];
        v12 = (v11 - 1) & result;
        v13 = v11 + result - v12;
        if (v12)
        {
          v14 = v13;
        }

        else
        {
          v14 = result;
        }

        bzero(&__dst[result], v14 - result);
        result = (*(*v10 + 16))(v10, &__dst[v14], a3 - v14) + v14;
        v8 = this[6];
        v7 = this[7];
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  return result;
}

MTLSerializer::ObjectListSerializer *MTLSerializer::ObjectListSerializer::FinalizeInternal(MTLSerializer::ObjectListSerializer *this)
{
  v2 = *(this + 2) - *(this + 1);
  v4 = *(this + 6);
  v3 = *(this + 7);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        v7 = *(v6 + 40);
        if (((v7 - 1) & v2) != 0)
        {
          v8 = v7 + v2 - ((v7 - 1) & v2);
        }

        else
        {
          v8 = v2;
        }

        (*(*this + 24))(this, v5, v8);
        v9 = *(v6 + 32);
        if (v7 > *(this + 5))
        {
          *(this + 5) = v7;
        }

        v2 = v9 + v8;
        v4 = *(this + 6);
        v3 = *(this + 7);
      }

      ++v5;
    }

    while (v5 < (v3 - v4) >> 3);
  }

  *(this + 4) = v2;
  return this;
}

MTLSerializer::DirectObjectListSerializer *MTLSerializer::DirectObjectListSerializer::DirectObjectListSerializer(MTLSerializer::DirectObjectListSerializer *this, unsigned int a2)
{
  v4 = MTLSerializer::ObjectListSerializer::ObjectListSerializer(this, a2);
  *v4 = &unk_1EF4735A8;
  v5 = (v4 + 8);
  std::vector<unsigned char>::reserve((v4 + 8), 8 * a2 + 4 * (a2 + 1));
  v6 = 4 * (a2 + 1);
  begin = *(this + 1);
  v8 = *(this + 2) - begin;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      *(this + 2) = &begin[v6 / 4];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v5, v6 - v8);
    begin = v5->__begin_;
  }

  *begin = a2;
  bzero(begin + 1, 4 * a2);
  return this;
}

void std::vector<unsigned char>::reserve(std::vector<char> *this, std::vector<char>::size_type __n)
{
  if (this->__end_cap_.__value_ - this->__begin_ < __n)
  {
    if ((__n & 0x8000000000000000) == 0)
    {
      v2 = this->__end_ - this->__begin_;
      operator new();
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }
}

void MTLSerializer::ObjectListSerializer::~ObjectListSerializer(MTLSerializer::ObjectListSerializer *this)
{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

MTLPipelineLibrarySerializer::FunctionDescriptor *MTLPipelineLibrarySerializer::FunctionDescriptor::FunctionDescriptor(MTLPipelineLibrarySerializer::FunctionDescriptor *this, MTLLibraryData *a2, NSString *a3, MTLFunctionType a4, uint64_t a5)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  v9 = [(NSString *)a3 copy];
  *(this + 2) = a5;
  *(this + 3) = a4;
  *(this + 1) = v9;
  return this;
}

void MTLPipelineLibrarySerializer::FunctionDescriptor::~FunctionDescriptor(id *this)
{
  if (*this)
  {
    (*(**this + 24))(*this);
  }
}

MTLPipelineLibrarySerializer::PipelineLibrarySerializer *MTLPipelineLibrarySerializer::PipelineLibrarySerializer::PipelineLibrarySerializer(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this)
{
  *this = &unk_1EF4735D8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 2) = 0;

  *(this + 3) = 0;
  *(this + 4) = 0;

  *(this + 5) = 0;
  *(this + 6) = 0;

  *(this + 7) = 0;
  *(this + 8) = 0;

  *(this + 9) = 0;
  *(this + 10) = 0;

  *(this + 11) = 0;
  *(this + 12) = 0;

  *(this + 13) = 0;
  *(this + 14) = 0;
  return this;
}

void MTLPipelineLibrarySerializer::PipelineLibrarySerializer::~PipelineLibrarySerializer(id *this)
{
  *this = &unk_1EF4735D8;
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::addSpecializedFunction(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v27 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  (*(*v27 + 64))(v27, "MTLFunction");
  (*(*v27 + 72))(v27, *(a2 + 48));
  v4 = (*(**(a1 + 8) + 24))(*(a1 + 8), a2);
  (*(*v27 + 24))(v27, 0, v4);
  v26 = a2;
  v5 = *(a2 + 32);
  if (v5)
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    v6 = [v5 newNamedConstantArray];
    v7 = [v5 newIndexedConstantArray];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v8)
    {
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = *(a1 + 80);
          if (!v12)
          {
            v12 = objc_opt_new();
            *(a1 + 80) = v12;
          }

          v13 = (*(**(a1 + 8) + 104))(*(a1 + 8));
          if ([v11 name])
          {
            (*(*v13 + 16))(v13, 1, [v11 name]);
          }

          (*(*v13 + 32))(v13, 2, [v11 dataType], objc_msgSend(v12, "dataType"));
          (*(*v13 + 48))(v13, 3, [v11 dataType], objc_msgSend(v11, "data"));
          v32 = (*(*v13 + 56))(v13);
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v32);
          (*(*v13 + 8))(v13);
        }

        v8 = [v6 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v8);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = [v7 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v14)
    {
      v15 = *v29;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v17 = *(*(&v28 + 1) + 8 * j);
          v18 = *(a1 + 88);
          if (!v18)
          {
            v18 = objc_opt_new();
            *(a1 + 88) = v18;
          }

          v19 = (*(**(a1 + 8) + 104))(*(a1 + 8));
          (*(*v19 + 32))(v19, 0, [v17 index], objc_msgSend(v18, "index"));
          (*(*v19 + 32))(v19, 2, [v17 dataType], objc_msgSend(v18, "dataType"));
          (*(*v19 + 48))(v19, 3, [v17 dataType], objc_msgSend(v17, "data"));
          v32 = (*(*v19 + 56))(v19);
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v32);
          (*(*v19 + 8))(v19);
        }

        v14 = [v7 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v14);
    }

    v20 = (*(**(a1 + 8) + 152))(*(a1 + 8), &__p);
    (*(*v27 + 24))(v27, 1, v20);
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }
  }

  v21 = *(a1 + 8);
  v22 = [*(v26 + 48) UTF8String];
  v23 = (*(*v27 + 56))(v27);
  (*(*v21 + 168))(v21, v22, v23);
  result = (*(*v27 + 8))(v27);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185BF9D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*a10 + 8))(a10);
  _Unwind_Resume(a1);
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeStageInputOuputDescriptor(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this, MTLStageInputOutputDescriptor *a2)
{
  v4 = *(this + 4);
  if (!v4)
  {
    v4 = objc_opt_new();
    *(this + 4) = v4;
  }

  v19 = v4;
  v20 = (*(**(this + 1) + 56))(*(this + 1));
  v5 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  do
  {
    v6 = *(this + 5);
    if (!v6)
    {
      v6 = objc_opt_new();
      *(this + 5) = v6;
    }

    v7 = *(a2[2].super.isa + v5 + 1);
    if ([v7 format])
    {
      v8 = (*(**(this + 1) + 72))(*(this + 1));
      (*(*v8 + 32))(v8, 0, v5, 31);
      (*(*v8 + 32))(v8, 1, [v7 format], objc_msgSend(v6, "format"));
      (*(*v8 + 32))(v8, 2, [v7 offset], objc_msgSend(v6, "offset"));
      (*(*v8 + 32))(v8, 3, [v7 bufferIndex], objc_msgSend(v6, "bufferIndex"));
      LODWORD(__p) = [v7 bufferIndex];
      std::vector<unsigned int>::push_back[abi:ne200100](&v25, &__p);
      __p = (*(*v8 + 56))(v8);
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v28, &__p);
      (*(*v8 + 8))(v8);
    }

    ++v5;
  }

  while (v5 != 31);
  __p = 0;
  v23 = 0;
  v24 = 0;
  v9 = v25;
  v10 = v26;
  if (v25 != v26)
  {
    do
    {
      v11 = *v9;
      v12 = [(MTLBufferLayoutDescriptorArray *)[(MTLStageInputOutputDescriptor *)a2 layouts] objectAtIndexedSubscript:v11];
      v13 = *(this + 6);
      if (!v13)
      {
        v13 = objc_opt_new();
        *(this + 6) = v13;
      }

      v14 = (*(**(this + 1) + 80))(*(this + 1));
      (*(*v14 + 32))(v14, 0, v11, 31);
      (*(*v14 + 32))(v14, 1, -[MTLBufferLayoutDescriptor stepFunction](v12, "stepFunction"), [v13 stepFunction]);
      (*(*v14 + 32))(v14, 2, -[MTLBufferLayoutDescriptor stepRate](v12, "stepRate"), [v13 stepRate]);
      (*(*v14 + 32))(v14, 3, -[MTLBufferLayoutDescriptor stride](v12, "stride"), [v13 stride]);
      v21 = (*(*v14 + 56))(v14);
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v21);
      (*(*v14 + 8))(v14);
      ++v9;
    }

    while (v9 != v10);
  }

  v15 = (*(**(this + 1) + 152))(*(this + 1), &v28);
  v16 = (*(**(this + 1) + 152))(*(this + 1), &__p);
  (*(*v20 + 32))(v20, 2, -[MTLStageInputOutputDescriptor indexType](a2, "indexType"), [v19 indexType]);
  (*(*v20 + 32))(v20, 3, -[MTLStageInputOutputDescriptor indexBufferIndex](a2, "indexBufferIndex"), [v19 indexBufferIndex]);
  if ([(MTLStageInputOutputDescriptor *)a2 attributes])
  {
    (*(*v20 + 24))(v20, 0, v15);
  }

  if ([(MTLStageInputOutputDescriptor *)a2 layouts])
  {
    (*(*v20 + 24))(v20, 1, v16);
  }

  v17 = (*(*v20 + 56))(v20);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  (*(*v20 + 8))(v20);
  return v17;
}

void sub_185BFA4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeVertexDescriptor(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this, MTLVertexDescriptor *a2)
{
  v18 = (*(**(this + 1) + 56))(*(this + 1));
  v4 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  do
  {
    v5 = *(this + 7);
    if (!v5)
    {
      v5 = objc_opt_new();
      *(this + 7) = v5;
    }

    v6 = *(a2[2].super.isa + v4 + 1);
    if ([v6 format])
    {
      v7 = (*(**(this + 1) + 72))(*(this + 1));
      (*(*v7 + 32))(v7, 0, v4, 31);
      (*(*v7 + 32))(v7, 1, [v6 format], objc_msgSend(v5, "format"));
      (*(*v7 + 32))(v7, 2, [v6 offset], objc_msgSend(v5, "offset"));
      (*(*v7 + 32))(v7, 3, [v6 bufferIndex], objc_msgSend(v5, "bufferIndex"));
      LODWORD(__p) = [v6 bufferIndex];
      std::vector<unsigned int>::push_back[abi:ne200100](&v23, &__p);
      __p = (*(*v7 + 56))(v7);
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v26, &__p);
      (*(*v7 + 8))(v7);
    }

    ++v4;
  }

  while (v4 != 31);
  __p = 0;
  v21 = 0;
  v22 = 0;
  v8 = v23;
  v9 = v24;
  if (v23 != v24)
  {
    do
    {
      v10 = *v8;
      v11 = [(MTLVertexBufferLayoutDescriptorArray *)[(MTLVertexDescriptor *)a2 layouts] objectAtIndexedSubscript:v10];
      v12 = *(this + 8);
      if (!v12)
      {
        v12 = objc_opt_new();
        *(this + 8) = v12;
      }

      v13 = (*(**(this + 1) + 80))(*(this + 1));
      (*(*v13 + 32))(v13, 0, v10, 31);
      (*(*v13 + 32))(v13, 1, -[MTLVertexBufferLayoutDescriptor stepFunction](v11, "stepFunction"), [v12 stepFunction]);
      (*(*v13 + 32))(v13, 2, -[MTLVertexBufferLayoutDescriptor stepRate](v11, "stepRate"), [v12 stepRate]);
      (*(*v13 + 32))(v13, 3, -[MTLVertexBufferLayoutDescriptor stride](v11, "stride"), [v12 stride]);
      v19 = (*(*v13 + 56))(v13);
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v19);
      (*(*v13 + 8))(v13);
      ++v8;
    }

    while (v8 != v9);
  }

  v14 = (*(**(this + 1) + 152))(*(this + 1), &v26);
  v15 = (*(**(this + 1) + 152))(*(this + 1), &__p);
  if ([(MTLVertexDescriptor *)a2 attributes])
  {
    (*(*v18 + 24))(v18, 0, v14);
  }

  if ([(MTLVertexDescriptor *)a2 layouts])
  {
    (*(*v18 + 24))(v18, 1, v15);
  }

  v16 = (*(*v18 + 56))(v18);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  (*(*v18 + 8))(v18);
  return v16;
}

void sub_185BFABA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedAttachments(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this, MTLRenderPipelineColorAttachmentDescriptorArrayInternal *a2)
{
  v4 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v5 = a2->_descriptors[v4];
    if (v5)
    {
      v6 = *(this + 9);
      if (!v6)
      {
        v6 = objc_opt_new();
        *(this + 9) = v6;
      }

      v7 = (*(**(this + 1) + 96))(*(this + 1));
      (*(*v7 + 32))(v7, 0, v4, 8);
      (*(*v7 + 32))(v7, 1, -[MTLRenderPipelineColorAttachmentDescriptorInternal pixelFormat](v5, "pixelFormat"), [v6 pixelFormat]);
      (*(*v7 + 32))(v7, 2, -[MTLRenderPipelineColorAttachmentDescriptorInternal isBlendingEnabled](v5, "isBlendingEnabled"), [v6 isBlendingEnabled]);
      (*(*v7 + 32))(v7, 3, -[MTLRenderPipelineColorAttachmentDescriptorInternal sourceRGBBlendFactor](v5, "sourceRGBBlendFactor"), [v6 sourceRGBBlendFactor]);
      (*(*v7 + 32))(v7, 4, -[MTLRenderPipelineColorAttachmentDescriptorInternal destinationRGBBlendFactor](v5, "destinationRGBBlendFactor"), [v6 destinationRGBBlendFactor]);
      (*(*v7 + 32))(v7, 5, -[MTLRenderPipelineColorAttachmentDescriptorInternal rgbBlendOperation](v5, "rgbBlendOperation"), [v6 rgbBlendOperation]);
      (*(*v7 + 32))(v7, 6, -[MTLRenderPipelineColorAttachmentDescriptorInternal sourceAlphaBlendFactor](v5, "sourceAlphaBlendFactor"), [v6 sourceAlphaBlendFactor]);
      (*(*v7 + 32))(v7, 7, -[MTLRenderPipelineColorAttachmentDescriptorInternal destinationAlphaBlendFactor](v5, "destinationAlphaBlendFactor"), [v6 destinationAlphaBlendFactor]);
      (*(*v7 + 32))(v7, 8, -[MTLRenderPipelineColorAttachmentDescriptorInternal alphaBlendOperation](v5, "alphaBlendOperation"), [v6 alphaBlendOperation]);
      (*(*v7 + 32))(v7, 9, -[MTLRenderPipelineColorAttachmentDescriptorInternal writeMask](v5, "writeMask"), [v6 writeMask]);
      v11 = (*(*v7 + 56))(v7);
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v11);
      (*(*v7 + 8))(v7);
    }

    ++v4;
  }

  while (v4 != 8);
  v8 = __p;
  if (v13 == __p)
  {
    v9 = 0;
    if (!__p)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v9 = (*(**(this + 1) + 152))(*(this + 1), &__p);
  v8 = __p;
  if (__p)
  {
LABEL_9:
    v13 = v8;
    operator delete(v8);
  }

  return v9;
}

void sub_185BFB0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedBuffers(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this, MTLPipelineBufferDescriptorArrayInternal *a2)
{
  v4 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v5 = a2->_descriptors[v4];
    if (v5)
    {
      v6 = *(this + 15);
      if (!v6)
      {
        v6 = objc_opt_new();
        *(this + 15) = v6;
      }

      if (![(MTLPipelineBufferDescriptorInternal *)v5 isEqual:v6])
      {
        v7 = (*(**(this + 1) + 144))(*(this + 1));
        (*(*v7 + 32))(v7, 0, v4, 31);
        (*(*v7 + 32))(v7, 1, -[MTLPipelineBufferDescriptorInternal mutability](v5, "mutability"), [v6 mutability]);
        v11 = (*(*v7 + 56))(v7);
        std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v11);
        (*(*v7 + 8))(v7);
      }
    }

    ++v4;
  }

  while (v4 != 31);
  v8 = __p;
  if (v13 == __p)
  {
    v9 = 0;
    if (!__p)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v9 = (*(**(this + 1) + 152))(*(this + 1), &__p);
  v8 = __p;
  if (__p)
  {
LABEL_10:
    v13 = v8;
    operator delete(v8);
  }

  return v9;
}

void sub_185BFB334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeComputePipelineDescriptorInternal(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 2);
  if (!v6)
  {
    v6 = objc_opt_new();
    *(a1 + 2) = v6;
  }

  v7 = v6 + 16;
  v8 = a3 + 16;
  if (*v8)
  {
    (*(*a2 + 16))(a2, 2);
  }

  v9 = *(v8 + 24);
  if (v9 && ([v9 isEqual:*(v7 + 24)] & 1) == 0)
  {
    v10 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeStageInputOuputDescriptor(a1, *(v8 + 24));
    (*(*a2 + 24))(a2, 3, v10);
  }

  (*(*a2 + 32))(a2, 1, *(v8 + 16), *(v7 + 16));
  (*(*a2 + 32))(a2, 8, *(v8 + 18), *(v7 + 18));
  (*(*a2 + 32))(a2, 7, *(v8 + 80), *(v7 + 80));
  (*(*a2 + 32))(a2, 10, *(v8 + 104), *(v7 + 104));
  (*(*a2 + 32))(a2, 12, *(v8 + 136), *(v7 + 136));
  result = *(v8 + 48);
  if (result)
  {
    result = [result isEqual:*(v7 + 48)];
    if ((result & 1) == 0)
    {
      v12 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedBuffers(a1, *(v8 + 48));
      v13 = *(*a2 + 24);

      return v13(a2, 6, v12);
    }
  }

  return result;
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::addComputePipelineDescriptor(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this, const MTLPipelineLibrarySerializer::ComputePipelineDescriptor *a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 9);
  v5 = (*(**(this + 1) + 40))(*(this + 1));
  (*(*v5 + 64))(v5, "MTLComputePipelineDescriptor");
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 1))
    {
      goto LABEL_7;
    }

    v6 = *a2;
    goto LABEL_6;
  }

  v6 = a2;
  if (*(a2 + 23))
  {
LABEL_6:
    (*(*v5 + 72))(v5, [MEMORY[0x1E696AEC0] stringWithUTF8String:v6]);
  }

LABEL_7:
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeComputePipelineDescriptorInternal(this, v5, *(a2 + 9));
  if (*(v4 + 24))
  {
    v7 = (*(**(this + 1) + 24))(*(this + 1), a2 + 80);
    (*(*v5 + 24))(v5, 0, v7);
  }

  if (*(a2 + 15) != *(a2 + 14))
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = *(a2 + 14);
    if (*(a2 + 15) != v9)
    {
      v10 = 0;
      do
      {
        v11 = *(v9 + 8 * v10);
        v22[0] = @"library";
        v12 = *v11;
        v22[1] = @"index";
        v23[0] = v12;
        v23[1] = [MEMORY[0x1E696AD98] numberWithInt:v10];
        [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, v22, 2)}];
        ++v10;
        v9 = *(a2 + 14);
      }

      while (v10 < (*(a2 + 15) - v9) >> 3);
    }

    (*(*v5 + 24))(v5, 11, v8);
  }

  v13 = (*(**(this + 1) + 160))(*(this + 1), a2 + 24);
  v14 = (*(**(this + 1) + 160))(*(this + 1), a2 + 48);
  if (v13)
  {
    (*(*v5 + 24))(v5, 4, v13);
  }

  if (v14)
  {
    (*(*v5 + 24))(v5, 5, v14);
  }

  v15 = *(this + 1);
  v16 = *(a2 + 23);
  v17 = *a2;
  v18 = (*(*v5 + 56))(v5);
  if (v16 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = v17;
  }

  (*(*v15 + 176))(v15, v19, v18);
  result = (*(*v5 + 8))(v5);
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeRenderPipelineDescriptorInternal(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 3);
  if (!v6)
  {
    v6 = objc_opt_new();
    *(a1 + 3) = v6;
  }

  v7 = v6 + 48;
  v8 = a3 + 48;
  if (*(v8 + 248))
  {
    (*(*a2 + 16))(a2, 0);
  }

  v9 = *(v8 + 272);
  if (v9 && ([v9 isEqual:*(v7 + 272)] & 1) == 0)
  {
    v10 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeVertexDescriptor(a1, *(v8 + 272));
    (*(*a2 + 24))(a2, 3, v10);
  }

  (*(*a2 + 32))(a2, 4, *(v8 + 184), *(v7 + 184));
  (*(*a2 + 32))(a2, 5, *(v8 + 224) & 3, *(v7 + 224) & 3);
  (*(*a2 + 32))(a2, 6, (*(v8 + 224) >> 2) & 3, (*(v7 + 224) >> 2) & 3);
  (*(*a2 + 32))(a2, 7, (*(v8 + 224) >> 4) & 1, (*(v7 + 224) >> 4) & 1);
  (*(*a2 + 40))(a2, 27, *(v8 + 200), *(v7 + 200));
  (*(*a2 + 32))(a2, 28, *(v8 + 192), *(v7 + 192));
  if (*v8)
  {
    if (([*v8 isEqual:*v7] & 1) == 0)
    {
      v11 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedAttachments(a1, *v8);
      if (v11)
      {
        (*(*a2 + 24))(a2, 8, v11);
      }
    }
  }

  (*(*a2 + 32))(a2, 24, (*(v8 + 224) >> 12) & 1, (*(v7 + 224) >> 12) & 1);
  (*(*a2 + 32))(a2, 26, *(v8 + 476), *(v7 + 476));
  (*(*a2 + 32))(a2, 9, *(v8 + 72), *(v7 + 72));
  (*(*a2 + 32))(a2, 10, *(v8 + 80), *(v7 + 80));
  (*(*a2 + 32))(a2, 11, (*(v8 + 224) >> 5) & 3, (*(v7 + 224) >> 5) & 3);
  (*(*a2 + 32))(a2, 12, *(v8 + 88), *(v7 + 88));
  (*(*a2 + 32))(a2, 13, *(v8 + 96), *(v7 + 96));
  (*(*a2 + 32))(a2, 14, *(v8 + 104), *(v7 + 104));
  (*(*a2 + 32))(a2, 15, *(v8 + 112), *(v7 + 112));
  (*(*a2 + 32))(a2, 16, *(v8 + 120), *(v7 + 120));
  (*(*a2 + 32))(a2, 17, *(v8 + 128), *(v7 + 128));
  (*(*a2 + 32))(a2, 18, *(v8 + 136), *(v7 + 136));
  (*(*a2 + 32))(a2, 25, *(v8 + 152), *(v7 + 152));
  (*(*a2 + 32))(a2, 30, *(v8 + 176), *(v7 + 176));
  v12 = *(v8 + 408);
  if (v12 && ([v12 isEqual:*(v7 + 408)] & 1) == 0)
  {
    v13 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedBuffers(a1, *(v8 + 408));
    (*(*a2 + 24))(a2, 21, v13);
  }

  v14 = *(v8 + 416);
  if (v14 && ([v14 isEqual:*(v7 + 416)] & 1) == 0)
  {
    v15 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedBuffers(a1, *(v8 + 416));
    (*(*a2 + 24))(a2, 22, v15);
  }

  (*(*a2 + 32))(a2, 45, (*(v8 + 224) >> 28) & 1, (*(v7 + 224) >> 28) & 1);
  (*(*a2 + 32))(a2, 46, (*(v8 + 224) >> 25) & 7, (*(v7 + 224) >> 25) & 7);
  (*(*a2 + 32))(a2, 47, (*(v8 + 224) >> 36) & 1, (*(v7 + 224) >> 36) & 1);
  (*(*a2 + 32))(a2, 48, (*(v8 + 224) >> 17), (*(v7 + 224) >> 17));
  (*(*a2 + 32))(a2, 49, (*(v8 + 224) >> 16) & 1, (*(v7 + 224) >> 16) & 1);
  (*(*a2 + 32))(a2, 50, (*(v8 + 224) >> 15) & 1, (*(v7 + 224) >> 15) & 1);
  (*(*a2 + 32))(a2, 51, (*(v8 + 224) >> 14) & 1, (*(v7 + 224) >> 14) & 1);
  (*(*a2 + 32))(a2, 52, (*(v8 + 224) >> 13) & 1, (*(v7 + 224) >> 13) & 1);
  (*(*a2 + 32))(a2, 53, *(v8 + 232), *(v7 + 232));
  (*(*a2 + 32))(a2, 54, *(v8 + 236), *(v7 + 236));
  (*(*a2 + 32))(a2, 55, *(v8 + 228) & 0xFLL, *(v7 + 228) & 0xFLL);
  (*(*a2 + 32))(a2, 56, (*(v8 + 224) >> 8) & 1, (*(v7 + 224) >> 8) & 1);
  (*(*a2 + 32))(a2, 57, *(v8 + 472), *(v7 + 472));
  v16 = *(v8 + 608);
  v17 = *(v7 + 608);
  v18 = *(*a2 + 32);

  return v18(a2, 58, v16, v17);
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::addRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this, const MTLPipelineLibrarySerializer::RenderPipelineDescriptor *a2)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = (*(**(this + 1) + 48))(*(this + 1));
  (*(*v4 + 64))(v4, "MTLRenderPipelineDescriptor");
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 1))
    {
      goto LABEL_7;
    }

    v5 = *a2;
    goto LABEL_6;
  }

  v5 = a2;
  if (*(a2 + 23))
  {
LABEL_6:
    (*(*v4 + 72))(v4, [MEMORY[0x1E696AEC0] stringWithUTF8String:v5]);
  }

LABEL_7:
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeRenderPipelineDescriptorInternal(this, v4, *(a2 + 9));
  v6 = *(a2 + 9) + 48;
  if (*(*(a2 + 9) + 304))
  {
    v7 = (*(**(this + 1) + 24))(*(this + 1), a2 + 80);
    (*(*v4 + 24))(v4, 1, v7);
  }

  if (*(v6 + 264))
  {
    v8 = (*(**(this + 1) + 24))(*(this + 1), a2 + 112);
    (*(*v4 + 24))(v4, 2, v8);
  }

  if (*(a2 + 19) != *(a2 + 18))
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = *(a2 + 18);
    if (*(a2 + 19) != v10)
    {
      v11 = 0;
      do
      {
        v12 = *(v10 + 8 * v11);
        v30[0] = @"library";
        v13 = *v12;
        v30[1] = @"index";
        v31[0] = v13;
        v31[1] = [MEMORY[0x1E696AD98] numberWithInt:v11];
        [v9 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v31, v30, 2)}];
        ++v11;
        v10 = *(a2 + 18);
      }

      while (v11 < (*(a2 + 19) - v10) >> 3);
    }

    (*(*v4 + 24))(v4, 31, v9);
  }

  if (*(a2 + 22) != *(a2 + 21))
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v15 = *(a2 + 21);
    if (*(a2 + 22) != v15)
    {
      v16 = 0;
      do
      {
        v17 = *(v15 + 8 * v16);
        v28[0] = @"library";
        v18 = *v17;
        v28[1] = @"index";
        v29[0] = v18;
        v29[1] = [MEMORY[0x1E696AD98] numberWithInt:v16];
        [v14 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, v28, 2)}];
        ++v16;
        v15 = *(a2 + 21);
      }

      while (v16 < (*(a2 + 22) - v15) >> 3);
    }

    (*(*v4 + 24))(v4, 32, v14);
  }

  v19 = (*(**(this + 1) + 160))(*(this + 1), a2 + 24);
  v20 = (*(**(this + 1) + 160))(*(this + 1), a2 + 48);
  if (v19)
  {
    (*(*v4 + 24))(v4, 19, v19);
  }

  if (v20)
  {
    (*(*v4 + 24))(v4, 20, v20);
  }

  v21 = *(this + 1);
  v22 = *(a2 + 23);
  v23 = *a2;
  v24 = (*(*v4 + 56))(v4);
  if (v22 >= 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = v23;
  }

  (*(*v21 + 184))(v21, v25, v24);
  result = (*(*v4 + 8))(v4);
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedTileAttachments(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this, MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal *a2)
{
  v4 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v5 = a2->_descriptors[v4];
    if (v5)
    {
      v6 = *(this + 12);
      if (!v6)
      {
        v6 = objc_opt_new();
        *(this + 12) = v6;
      }

      v7 = (*(**(this + 1) + 128))(*(this + 1));
      (*(*v7 + 32))(v7, 0, v4, 8);
      (*(*v7 + 32))(v7, 1, -[MTLTileRenderPipelineColorAttachmentDescriptorInternal pixelFormat](v5, "pixelFormat"), [v6 pixelFormat]);
      v11 = (*(*v7 + 56))(v7);
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v11);
      (*(*v7 + 8))(v7);
    }

    ++v4;
  }

  while (v4 != 8);
  v8 = __p;
  if (v13 == __p)
  {
    v9 = 0;
    if (!__p)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v9 = (*(**(this + 1) + 152))(*(this + 1), &__p);
  v8 = __p;
  if (__p)
  {
LABEL_9:
    v13 = v8;
    operator delete(v8);
  }

  return v9;
}

void sub_185BFCA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeTileRenderPipelineDescriptorInternal(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 13);
  if (!v6)
  {
    v6 = objc_opt_new();
    *(a1 + 13) = v6;
  }

  v7 = v6 + 56;
  v8 = a3 + 56;
  if (*(v8 + 16))
  {
    (*(*a2 + 16))(a2, 0);
  }

  (*(*a2 + 32))(a2, 4, *(v8 + 32), *(v7 + 32));
  (*(*a2 + 32))(a2, 6, *(v8 + 64), *(v7 + 64));
  (*(*a2 + 32))(a2, 2, *(v8 + 8), *(v7 + 8));
  if (*v8)
  {
    if (([*v8 isEqual:*v7] & 1) == 0)
    {
      v9 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedTileAttachments(a1, *v8);
      if (v9)
      {
        (*(*a2 + 24))(a2, 3, v9);
      }
    }
  }

  (*(*a2 + 32))(a2, 8, *(v8 + 72), *(v7 + 72));
  result = *(v8 + 56);
  if (result)
  {
    result = [result isEqual:*(v7 + 56)];
    if ((result & 1) == 0)
    {
      v11 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedBuffers(a1, *(v8 + 56));
      v12 = *(*a2 + 24);

      return v12(a2, 5, v11);
    }
  }

  return result;
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::addTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *a1, uint64_t **a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = (*(**(a1 + 1) + 120))(*(a1 + 1));
  (*(*v4 + 64))(v4, "MTLTileRenderPipelineDescriptor");
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      goto LABEL_7;
    }

    v5 = *a2;
    goto LABEL_6;
  }

  v5 = a2;
  if (*(a2 + 23))
  {
LABEL_6:
    (*(*v4 + 72))(v4, [MEMORY[0x1E696AEC0] stringWithUTF8String:v5]);
  }

LABEL_7:
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeTileRenderPipelineDescriptorInternal(a1, v4, a2[9]);
  if (a2[9][10])
  {
    v6 = (*(**(a1 + 1) + 24))(*(a1 + 1), a2 + 10);
    (*(*v4 + 24))(v4, 1, v6);
  }

  if (a2[15] != a2[14])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = a2[14];
    if (a2[15] != v8)
    {
      v9 = 0;
      do
      {
        v10 = v8[v9];
        v21[0] = @"library";
        v11 = *v10;
        v21[1] = @"index";
        v22[0] = v11;
        v22[1] = [MEMORY[0x1E696AD98] numberWithInt:v9];
        [v7 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, v21, 2)}];
        ++v9;
        v8 = a2[14];
      }

      while (v9 < a2[15] - v8);
    }

    (*(*v4 + 24))(v4, 7, v7);
  }

  v12 = (*(**(a1 + 1) + 160))(*(a1 + 1), a2 + 3);
  v13 = (*(**(a1 + 1) + 160))(*(a1 + 1), a2 + 6);
  if (v12)
  {
    (*(*v4 + 24))(v4, 9, v12);
  }

  if (v13)
  {
    (*(*v4 + 24))(v4, 10, v13);
  }

  v14 = *(a1 + 1);
  v15 = *(a2 + 23);
  v16 = *a2;
  v17 = (*(*v4 + 56))(v4);
  if (v15 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = v16;
  }

  (*(*v14 + 192))(v14, v18, v17);
  result = (*(*v4 + 8))(v4);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeMeshRenderPipelineDescriptorInternal(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 14);
  if (!v6)
  {
    v6 = objc_opt_new();
    *(a1 + 14) = v6;
  }

  v7 = [v6 _descriptorPrivate];
  v8 = [a3 _descriptorPrivate];
  if (*(v8 + 80))
  {
    (*(*a2 + 16))(a2, 0);
  }

  (*(*a2 + 32))(a2, 4, *(v8 + 112), *(v7 + 112));
  (*(*a2 + 32))(a2, 5, *(v8 + 120), *(v7 + 120));
  (*(*a2 + 32))(a2, 6, (*(v8 + 60) >> 41) & 1, (*(v7 + 60) >> 41) & 1);
  (*(*a2 + 32))(a2, 7, (*(v8 + 60) >> 42) & 1, (*(v7 + 60) >> 42) & 1);
  (*(*a2 + 32))(a2, 8, *(v8 + 136), *(v7 + 136));
  (*(*a2 + 32))(a2, 9, *(v8 + 128), *(v7 + 128));
  (*(*a2 + 32))(a2, 13, *(v8 + 32), *(v7 + 32));
  (*(*a2 + 32))(a2, 14, *(v8 + 60) & 3, *(v7 + 60) & 3);
  (*(*a2 + 32))(a2, 15, (*(v8 + 60) >> 2) & 3, (*(v7 + 60) >> 2) & 3);
  (*(*a2 + 32))(a2, 16, (*(v8 + 60) >> 4) & 1, (*(v7 + 60) >> 4) & 1);
  (*(*a2 + 40))(a2, 28, *(v8 + 56), *(v7 + 56));
  (*(*a2 + 32))(a2, 27, *(v8 + 48), *(v7 + 48));
  if (*v8)
  {
    if (([*v8 isEqual:*v7] & 1) == 0)
    {
      v9 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedAttachments(a1, *v8);
      if (v9)
      {
        (*(*a2 + 24))(a2, 20, v9);
      }
    }
  }

  (*(*a2 + 32))(a2, 19, (*(v8 + 60) >> 9) & 1, (*(v7 + 60) >> 9) & 1);
  (*(*a2 + 32))(a2, 18, (*(v8 + 60) >> 37) & 0xFLL, (*(v7 + 60) >> 37) & 0xFLL);
  (*(*a2 + 32))(a2, 21, *(v8 + 8), *(v7 + 8));
  (*(*a2 + 32))(a2, 22, *(v8 + 16), *(v7 + 16));
  (*(*a2 + 32))(a2, 23, (*(v8 + 60) >> 33) & 1, (*(v7 + 60) >> 33) & 1);
  (*(*a2 + 32))(a2, 29, *(v8 + 24), *(v7 + 24));
  v10 = *(v8 + 144);
  if (v10 && ([v10 isEqual:*(v7 + 144)] & 1) == 0)
  {
    v11 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedBuffers(a1, *(v8 + 144));
    (*(*a2 + 24))(a2, 10, v11);
  }

  v12 = *(v8 + 152);
  if (v12 && ([v12 isEqual:*(v7 + 152)] & 1) == 0)
  {
    v13 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedBuffers(a1, *(v8 + 152));
    (*(*a2 + 24))(a2, 11, v13);
  }

  v14 = *(v8 + 160);
  if (v14 && ([v14 isEqual:*(v7 + 160)] & 1) == 0)
  {
    v15 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializedBuffers(a1, *(v8 + 160));
    (*(*a2 + 24))(a2, 12, v15);
  }

  (*(*a2 + 32))(a2, 30, (*(v8 + 60) >> 25) & 1, (*(v7 + 60) >> 25) & 1);
  (*(*a2 + 32))(a2, 31, (*(v8 + 60) >> 22) & 7, (*(v7 + 60) >> 22) & 7);
  (*(*a2 + 32))(a2, 32, (*(v8 + 60) >> 30) & 1, (*(v7 + 60) >> 30) & 1);
  (*(*a2 + 32))(a2, 33, (*(v8 + 60) >> 14), (*(v7 + 60) >> 14));
  (*(*a2 + 32))(a2, 34, (*(v8 + 60) >> 13) & 1, (*(v7 + 60) >> 13) & 1);
  (*(*a2 + 32))(a2, 35, (*(v8 + 60) >> 12) & 1, (*(v7 + 60) >> 12) & 1);
  (*(*a2 + 32))(a2, 36, (*(v8 + 60) >> 11) & 1, (*(v7 + 60) >> 11) & 1);
  (*(*a2 + 32))(a2, 37, (*(v8 + 60) >> 10) & 1, (*(v7 + 60) >> 10) & 1);
  (*(*a2 + 32))(a2, 38, *(v8 + 68), *(v7 + 68));
  (*(*a2 + 32))(a2, 39, (*(v8 + 60) >> 26) & 0xFLL, (*(v7 + 60) >> 26) & 0xFLL);
  (*(*a2 + 32))(a2, 40, (*(v8 + 60) >> 5) & 1, (*(v7 + 60) >> 5) & 1);
  (*(*a2 + 32))(a2, 41, HIDWORD(*(v8 + 60)) & 1, HIDWORD(*(v7 + 60)) & 1);
  v16 = *(v8 + 288);
  v17 = *(v7 + 288);
  v18 = *(*a2 + 32);

  return v18(a2, 44, v16, v17);
}

uint64_t MTLPipelineLibrarySerializer::PipelineLibrarySerializer::addMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineLibrarySerializer *this, const MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor *a2)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = (*(**(this + 1) + 136))(*(this + 1));
  (*(*v4 + 64))(v4, "MTLMeshRenderPipelineDescriptor");
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 1))
    {
      goto LABEL_7;
    }

    v5 = *a2;
    goto LABEL_6;
  }

  v5 = a2;
  if (*(a2 + 23))
  {
LABEL_6:
    (*(*v4 + 72))(v4, [MEMORY[0x1E696AEC0] stringWithUTF8String:v5]);
  }

LABEL_7:
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeMeshRenderPipelineDescriptorInternal(this, v4, *(a2 + 9));
  v6 = [*(a2 + 9) _descriptorPrivate];
  if (v6[11])
  {
    v7 = (*(**(this + 1) + 24))(*(this + 1), a2 + 80);
    (*(*v4 + 24))(v4, 1, v7);
  }

  if (v6[12])
  {
    v8 = (*(**(this + 1) + 24))(*(this + 1), a2 + 112);
    (*(*v4 + 24))(v4, 2, v8);
  }

  if (v6[13])
  {
    v9 = (*(**(this + 1) + 24))(*(this + 1), a2 + 144);
    (*(*v4 + 24))(v4, 3, v9);
  }

  if (*(a2 + 23) != *(a2 + 22))
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = *(a2 + 22);
    if (*(a2 + 23) != v11)
    {
      v12 = 0;
      do
      {
        v13 = *(v11 + 8 * v12);
        v38[0] = @"library";
        v14 = *v13;
        v38[1] = @"index";
        v39[0] = v14;
        v39[1] = [MEMORY[0x1E696AD98] numberWithInt:v12];
        [v10 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v39, v38, 2)}];
        ++v12;
        v11 = *(a2 + 22);
      }

      while (v12 < (*(a2 + 23) - v11) >> 3);
    }

    (*(*v4 + 24))(v4, 24, v10);
  }

  if (*(a2 + 26) != *(a2 + 25))
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v16 = *(a2 + 25);
    if (*(a2 + 26) != v16)
    {
      v17 = 0;
      do
      {
        v18 = *(v16 + 8 * v17);
        v36[0] = @"library";
        v19 = *v18;
        v36[1] = @"index";
        v37[0] = v19;
        v37[1] = [MEMORY[0x1E696AD98] numberWithInt:v17];
        [v15 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v37, v36, 2)}];
        ++v17;
        v16 = *(a2 + 25);
      }

      while (v17 < (*(a2 + 26) - v16) >> 3);
    }

    (*(*v4 + 24))(v4, 25, v15);
  }

  if (*(a2 + 29) != *(a2 + 28))
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v21 = *(a2 + 28);
    if (*(a2 + 29) != v21)
    {
      v22 = 0;
      do
      {
        v23 = *(v21 + 8 * v22);
        v34[0] = @"library";
        v24 = *v23;
        v34[1] = @"index";
        v35[0] = v24;
        v35[1] = [MEMORY[0x1E696AD98] numberWithInt:v22];
        [v20 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v35, v34, 2)}];
        ++v22;
        v21 = *(a2 + 28);
      }

      while (v22 < (*(a2 + 29) - v21) >> 3);
    }

    (*(*v4 + 24))(v4, 26, v20);
  }

  v25 = (*(**(this + 1) + 160))(*(this + 1), a2 + 24);
  v26 = (*(**(this + 1) + 160))(*(this + 1), a2 + 48);
  if (v25)
  {
    (*(*v4 + 24))(v4, 42, v25);
  }

  if (v26)
  {
    (*(*v4 + 24))(v4, 43, v26);
  }

  v27 = *(this + 1);
  v28 = *(a2 + 23);
  v29 = *a2;
  v30 = (*(*v4 + 56))(v4);
  if (v28 >= 0)
  {
    v31 = a2;
  }

  else
  {
    v31 = v29;
  }

  (*(*v27 + 200))(v27, v31, v30);
  result = (*(*v4 + 8))(v4);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLPipelineLibrarySerializer::valueFromConstantData(MTLPipelineLibrarySerializer *this, _DWORD *a2, const char *a3, double _D0)
{
  if (this <= 36)
  {
    if (this <= 28)
    {
      if (this == 3)
      {
        LODWORD(_D0) = *a2;
        v9 = MEMORY[0x1E696AD98];
      }

      else
      {
        if (this != 16)
        {
          goto LABEL_37;
        }

        _H0 = *a2;
        v9 = MEMORY[0x1E696AD98];
        __asm { FCVT            S0, H0 }
      }

      return [v9 numberWithFloat:{a3, _D0}];
    }

    if (this == 29)
    {
      v18 = *a2;
      v19 = MEMORY[0x1E696AD98];

      return [v19 numberWithInt:v18];
    }

    else
    {
      if (this != 33)
      {
        goto LABEL_37;
      }

      v14 = *a2;
      v15 = MEMORY[0x1E696AD98];

      return [v15 numberWithUnsignedInt:v14];
    }
  }

  else if (this <= 44)
  {
    if (this == 37)
    {
      v20 = *a2;
      v21 = MEMORY[0x1E696AD98];

      return [v21 numberWithShort:v20];
    }

    else
    {
      if (this != 41)
      {
        goto LABEL_37;
      }

      v16 = *a2;
      v17 = MEMORY[0x1E696AD98];

      return [v17 numberWithUnsignedShort:v16];
    }
  }

  else
  {
    if (this != 45)
    {
      if (this == 49 || this == 53)
      {
        v5 = *a2;
        v6 = MEMORY[0x1E696AD98];

        return [v6 numberWithUnsignedChar:v5];
      }

LABEL_37:
      abort();
    }

    v22 = *a2;
    v23 = MEMORY[0x1E696AD98];

    return [v23 numberWithChar:v22];
  }
}

uint64_t MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::setVector(id *this, unsigned int a2, uint64_t a3, char *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  LODWORD(v8) = MTLDataTypeGetComponentCount(a3);
  ComponentType = MTLDataTypeGetComponentType(a3);
  v12 = ComponentType;
  if (v8 == 1)
  {
    v13 = MTLPipelineLibrarySerializer::valueFromConstantData(ComponentType, a4, v10, v11);
  }

  else
  {
    v14 = v8;
    MEMORY[0x1EEE9AC00](ComponentType);
    v16 = v24 - v15;
    v17 = _MTLConstantDataSize(v12);
    if (v8)
    {
      v20 = v17;
      v8 = v8;
      v21 = v16;
      do
      {
        *v21++ = MTLPipelineLibrarySerializer::valueFromConstantData(v12, a4, v18, v19);
        a4 += v20;
        --v8;
      }

      while (v8);
    }

    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:v14];
  }

  result = [this[1] setObject:v13 forKeyedSubscript:*(this[2] + a2)];
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLPipelineLibrarySerializer::JSONSerializationContext::addLibrary(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v4 = a1 + 16;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"MTLLibrary", @"type", *a2, @"name", *(a2 + 8), @"fileName", 0}];
  if (*(v4 + 24) == 1)
  {
    [v7 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(a2 + 16)), @"isFromSource"}];
  }

  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (v9 >= v8)
  {
    v11 = (v9 - *v4) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - *v4;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(v4, v14);
    }

    v15 = (8 * v11);
    *v15 = v7;
    v10 = 8 * v11 + 8;
    v16 = *(a1 + 16);
    v17 = *(a1 + 24) - v16;
    v18 = v15 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = *(a1 + 16);
    *(a1 + 16) = v18;
    *(a1 + 24) = v10;
    *(a1 + 32) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = v7;
    v10 = (v9 + 1);
  }

  *(a1 + 24) = v10;
  [*(a1 + 8) addObject:v7];
  return (v6 - v5) >> 3;
}

uint64_t MTLPipelineLibrarySerializer::JSONSerializationContext::serializeFunctionRef(uint64_t a1, unsigned int *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if ((v2 & 0x80000000) != 0)
  {
    v7 = *(a2 + 1);
    v10[0] = @"name";
    v10[1] = @"library";
    v11[0] = v7;
    v11[1] = @"specialized";
    v4 = MEMORY[0x1E695DF20];
    v5 = v11;
    v6 = v10;
  }

  else
  {
    v3 = *(*(a1 + 16) + 8 * v2);
    v13[0] = *(a2 + 1);
    v12[0] = @"name";
    v12[1] = @"library";
    v13[1] = [v3 objectForKeyedSubscript:?];
    v4 = MEMORY[0x1E695DF20];
    v5 = v13;
    v6 = v12;
  }

  result = [v4 dictionaryWithObjects:v5 forKeys:v6 count:2];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void MTLPipelineLibrarySerializer::PipelineLibraryJSONSerializer::PipelineLibraryJSONSerializer(MTLPipelineLibrarySerializer::PipelineLibraryJSONSerializer *this, char a2)
{
  v3 = MTLPipelineLibrarySerializer::PipelineLibrarySerializer::PipelineLibrarySerializer(this);
  *v3 = &unk_1EF473648;
  *(v3 + 128) = (a2 & 4) != 0;
  operator new();
}

void sub_185BFE4A0(_Unwind_Exception *a1)
{
  MEMORY[0x1865FF210](v2, 0x1081C40A1D151D1);
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::~PipelineLibrarySerializer(v1);
  _Unwind_Resume(a1);
}

void MTLPipelineLibrarySerializer::PipelineLibraryJSONSerializer::~PipelineLibraryJSONSerializer(MTLPipelineLibrarySerializer::PipelineLibraryJSONSerializer *this)
{
  *this = &unk_1EF473648;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::~PipelineLibrarySerializer(this);
}

{
  MTLPipelineLibrarySerializer::PipelineLibraryJSONSerializer::~PipelineLibraryJSONSerializer(this);

  JUMPOUT(0x1865FF210);
}

id MTLPipelineLibrarySerializer::PipelineLibraryJSONSerializer::finalize(MTLPipelineLibrarySerializer::PipelineLibraryJSONSerializer *this)
{
  v1 = *(*(this + 1) + 8);
  if (v1)
  {
    if ((*(this + 128) & 1) == 0)
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u.%u", 1, 0];
      v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Offline Compilation", @"type", v2, @"version", v1, @"contents", 0}];
    }

    v4 = 0;
    v1 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v1 options:1 error:&v4];
    if (!v1)
    {
      MTLPipelineLibrarySerializer::PipelineLibraryJSONSerializer::finalize(&v4);
    }
  }

  return v1;
}

uint64_t MTLSerializer::Context::CreateString(MTLSerializer::Context *this, const char *a2)
{
  if (a2)
  {
    operator new();
  }

  return 0;
}

uint64_t MTLPipelineLibrarySerializer::BinarySerializationContext::serializePipelineLibrary(MTLPipelineLibrarySerializer::BinarySerializationContext *this)
{
  v1 = *(this + 42);
  if (!v1)
  {
    MTLSerializer::Context::CreatePropertyListSerializer((this + 312));
  }

  return *(v1 + 32);
}

void MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::~PipelineLibraryBinarySerializer(MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer *this)
{
  *this = &unk_1EF4736B8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::~PipelineLibrarySerializer(this);
}

{
  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::~PipelineLibraryBinarySerializer(this);

  JUMPOUT(0x1865FF210);
}

uint64_t MTLPipelineLibrarySerializer::BinarySerializationContext::writeToMemory(MTLPipelineLibrarySerializer::BinarySerializationContext *this, char *a2, unint64_t a3)
{
  if (MTLPipelineLibrarySerializer::BinarySerializationContext::serializePipelineLibrary(this) > a3)
  {
    return 0;
  }

  v5 = *(**(this + 42) + 16);

  return v5();
}

void *MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::finalize(MTLPipelineLibrarySerializer::BinarySerializationContext **this)
{
  v2 = MTLPipelineLibrarySerializer::BinarySerializationContext::serializePipelineLibrary(this[1]);
  v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v2];
  if (MTLPipelineLibrarySerializer::BinarySerializationContext::writeToMemory(this[1], [v3 bytes], v2) != v2)
  {

    return 0;
  }

  return v3;
}

void MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeWithNameObjectSerializer(MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer *a1, void *a2)
{
  (*(*a2 + 56))(a2);
  v4 = a2[2];
  v5 = v4[4];
  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  (*(*v4 + 16))(v4, v6, v5);
  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::resetContext(a1);
}

void MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::resetContext(MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator new();
}

void MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer *this, MTLRenderPipelineDescriptor *a2)
{
  v4 = (*(**(this + 1) + 48))(*(this + 1));
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeRenderPipelineDescriptorInternal(this, v4, a2);
  v5 = a2 + 1;
  vertexPreloadedLibraries = v5[5]._vertexPreloadedLibraries;
  if (vertexPreloadedLibraries)
  {
    (*(*v4 + 32))(v4, 1, [(NSArray *)vertexPreloadedLibraries functionRef], -1);
  }

  fragmentPreloadedLibraries = v5[5]._fragmentPreloadedLibraries;
  if (fragmentPreloadedLibraries)
  {
    (*(*v4 + 32))(v4, 2, [(NSArray *)fragmentPreloadedLibraries functionRef], -1);
  }

  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeWithNameObjectSerializer(this, v4);
}

void sub_185BFEFB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeComputePipelineDescriptor(MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer *this, MTLComputePipelineDescriptor *a2)
{
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeComputePipelineDescriptorInternal(this, v4, a2);
  insertLibraries = a2[1]._insertLibraries;
  if (insertLibraries)
  {
    (*(*v4 + 32))(v4, 0, [(NSArray *)insertLibraries functionRef], -1);
  }

  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeWithNameObjectSerializer(this, v4);
}

void sub_185BFF0F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer *this, MTLTileRenderPipelineDescriptor *a2)
{
  v4 = (*(**(this + 1) + 120))(*(this + 1));
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeTileRenderPipelineDescriptorInternal(this, v4, a2);
  maxCallStackDepth = a2[1]._maxCallStackDepth;
  if (maxCallStackDepth)
  {
    (*(*v4 + 32))(v4, 1, [maxCallStackDepth functionRef], -1);
  }

  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeWithNameObjectSerializer(this, v4);
}

void sub_185BFF228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer *this, MTLMeshRenderPipelineDescriptor *a2)
{
  v4 = (*(**(this + 1) + 136))(*(this + 1));
  MTLPipelineLibrarySerializer::PipelineLibrarySerializer::serializeMeshRenderPipelineDescriptorInternal(this, v4, a2);
  v5 = [(MTLMeshRenderPipelineDescriptor *)a2 _descriptorPrivate];
  objectFunction = v5->objectFunction;
  if (objectFunction)
  {
    (*(*v4 + 32))(v4, 1, [(MTLFunction *)objectFunction functionRef], -1);
  }

  meshFunction = v5->meshFunction;
  if (meshFunction)
  {
    (*(*v4 + 32))(v4, 2, [(MTLFunction *)meshFunction functionRef], -1);
  }

  fragmentFunction = v5->fragmentFunction;
  if (fragmentFunction)
  {
    (*(*v4 + 32))(v4, 3, [(MTLFunction *)fragmentFunction functionRef], -1);
  }

  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::serializeWithNameObjectSerializer(this, v4);
}

void sub_185BFF3DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 **MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::deserializeStageInputDescriptor(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v37[0] = a3;
  v37[1] = a4;
  result = MTLSerializer::SerializedCompactPropertyList::iterator(v37, &v29);
  if (v32 < v31)
  {
    while (1)
    {
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          LODWORD(v38) = 0;
          if (v35 + v36 > v30)
          {
            goto LABEL_65;
          }

          memcpy(&v38, (v29 + v36), v35);
          result = [a2 setIndexType:v38];
        }

        else if (v34 == 3)
        {
          LODWORD(v38) = 0;
          if (v35 + v36 > v30)
          {
            goto LABEL_65;
          }

          memcpy(&v38, (v29 + v36), v35);
          result = [a2 setIndexBufferIndex:v38];
        }
      }

      else if (v34)
      {
        if (v34 == 1)
        {
          result = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v29);
          v27 = result;
          v28 = v6;
          if (result)
          {
            if (v6 <= 3)
            {
              goto LABEL_65;
            }

            v7 = *result;
            if (*result)
            {
              v8 = 0;
              do
              {
                result = MTLSerializer::SerializedObjectList::getObject(&v27, v8);
                if (result)
                {
                  v10 = result;
                  v11 = v9;
                  v12 = [a2 layouts];
                  v46 = v10;
                  v47 = v11;
                  result = MTLSerializer::SerializedCompactPropertyList::iterator(&v46, &v38);
                  if (v41 < v40)
                  {
                    v13 = 0;
                    v14 = v43;
                    while (1)
                    {
                      if (v14 > 1)
                      {
                        if (v14 == 2)
                        {
                          __dst = 0;
                          if (v44 + v45 > v39)
                          {
                            goto LABEL_65;
                          }

                          memcpy(&__dst, (v38 + v45), v44);
                          result = [v13 setStepRate:__dst];
                        }

                        else if (v14 == 3)
                        {
                          __dst = 0;
                          if (v44 + v45 > v39)
                          {
                            goto LABEL_65;
                          }

                          memcpy(&__dst, (v38 + v45), v44);
                          result = [v13 setStride:__dst];
                        }
                      }

                      else if (v14)
                      {
                        if (v14 == 1)
                        {
                          __dst = 0;
                          if (v44 + v45 > v39)
                          {
                            goto LABEL_65;
                          }

                          memcpy(&__dst, (v38 + v45), v44);
                          result = [v13 setStepFunction:__dst];
                        }
                      }

                      else
                      {
                        __dst = 0;
                        if (v44 + v45 > v39)
                        {
                          goto LABEL_65;
                        }

                        memcpy(&__dst, (v38 + v45), v44);
                        result = [v12 objectAtIndexedSubscript:__dst];
                        v13 = result;
                      }

                      if (++v41 >= v40)
                      {
                        break;
                      }

                      if (v42 + 2 > v39)
                      {
                        goto LABEL_65;
                      }

                      v14 = *(v38 + v42);
                      v15 = *(v38 + v42 + 1);
                      v43 = v14;
                      v44 = v15;
                      v45 = v42 + 2;
                      v42 += 2 + v15;
                    }
                  }
                }

                ++v8;
              }

              while (v8 != v7);
            }
          }
        }
      }

      else
      {
        result = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v29);
        v27 = result;
        v28 = v16;
        if (result)
        {
          if (v16 <= 3)
          {
            goto LABEL_65;
          }

          v17 = *result;
          if (*result)
          {
            v18 = 0;
            do
            {
              result = MTLSerializer::SerializedObjectList::getObject(&v27, v18);
              if (result)
              {
                v20 = result;
                v21 = v19;
                v22 = [a2 attributes];
                v46 = v20;
                v47 = v21;
                result = MTLSerializer::SerializedCompactPropertyList::iterator(&v46, &v38);
                if (v41 < v40)
                {
                  v23 = 0;
                  v24 = v43;
                  while (1)
                  {
                    if (v24 > 1)
                    {
                      if (v24 == 2)
                      {
                        __dst = 0;
                        if (v44 + v45 > v39)
                        {
                          goto LABEL_65;
                        }

                        memcpy(&__dst, (v38 + v45), v44);
                        result = [v23 setOffset:__dst];
                      }

                      else if (v24 == 3)
                      {
                        __dst = 0;
                        if (v44 + v45 > v39)
                        {
                          goto LABEL_65;
                        }

                        memcpy(&__dst, (v38 + v45), v44);
                        result = [v23 setBufferIndex:__dst];
                      }
                    }

                    else if (v24)
                    {
                      if (v24 == 1)
                      {
                        __dst = 0;
                        if (v44 + v45 > v39)
                        {
                          goto LABEL_65;
                        }

                        memcpy(&__dst, (v38 + v45), v44);
                        result = [v23 setFormat:__dst];
                      }
                    }

                    else
                    {
                      __dst = 0;
                      if (v44 + v45 > v39)
                      {
                        goto LABEL_65;
                      }

                      memcpy(&__dst, (v38 + v45), v44);
                      result = [v22 objectAtIndexedSubscript:__dst];
                      v23 = result;
                    }

                    if (++v41 >= v40)
                    {
                      break;
                    }

                    if (v42 + 2 > v39)
                    {
                      goto LABEL_65;
                    }

                    v24 = *(v38 + v42);
                    v25 = *(v38 + v42 + 1);
                    v43 = v24;
                    v44 = v25;
                    v45 = v42 + 2;
                    v42 += 2 + v25;
                  }
                }
              }

              ++v18;
            }

            while (v18 != v17);
          }
        }
      }

      if (++v32 >= v31)
      {
        break;
      }

      if (v33 + 2 > v30)
      {
LABEL_65:
        abort();
      }

      v26 = *(v29 + v33 + 1);
      v34 = *(v29 + v33);
      v35 = v26;
      v36 = v33 + 2;
      v33 += 2 + v26;
    }
  }

  return result;
}

unsigned __int8 **MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::deserializeVertexDescriptor(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v36[0] = a3;
  v36[1] = a4;
  result = MTLSerializer::SerializedCompactPropertyList::iterator(v36, v29);
  if (v31 < v30)
  {
    while (1)
    {
      if (v33 == 1)
      {
        result = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(v29);
        v27 = result;
        v28 = v16;
        if (result)
        {
          if (v16 <= 3)
          {
            goto LABEL_57;
          }

          v17 = *result;
          if (*result)
          {
            v18 = 0;
            do
            {
              result = MTLSerializer::SerializedObjectList::getObject(&v27, v18);
              if (result)
              {
                v20 = result;
                v21 = v19;
                v22 = [a2 layouts];
                v45 = v20;
                v46 = v21;
                result = MTLSerializer::SerializedCompactPropertyList::iterator(&v45, &v37);
                if (v40 < v39)
                {
                  v23 = 0;
                  v24 = v42;
                  while (1)
                  {
                    if (v24 > 1)
                    {
                      if (v24 == 2)
                      {
                        __dst = 0;
                        if (v43 + v44 > v38)
                        {
                          goto LABEL_57;
                        }

                        memcpy(&__dst, (v37 + v44), v43);
                        result = [v23 setStepRate:__dst];
                      }

                      else if (v24 == 3)
                      {
                        __dst = 0;
                        if (v43 + v44 > v38)
                        {
                          goto LABEL_57;
                        }

                        memcpy(&__dst, (v37 + v44), v43);
                        result = [v23 setStride:__dst];
                      }
                    }

                    else if (v24)
                    {
                      if (v24 == 1)
                      {
                        __dst = 0;
                        if (v43 + v44 > v38)
                        {
                          goto LABEL_57;
                        }

                        memcpy(&__dst, (v37 + v44), v43);
                        result = [v23 setStepFunction:__dst];
                      }
                    }

                    else
                    {
                      __dst = 0;
                      if (v43 + v44 > v38)
                      {
                        goto LABEL_57;
                      }

                      memcpy(&__dst, (v37 + v44), v43);
                      result = [v22 objectAtIndexedSubscript:__dst];
                      v23 = result;
                    }

                    if (++v40 >= v39)
                    {
                      break;
                    }

                    if (v41 + 2 > v38)
                    {
                      goto LABEL_57;
                    }

                    v24 = *(v37 + v41);
                    v25 = *(v37 + v41 + 1);
                    v42 = v24;
                    v43 = v25;
                    v44 = v41 + 2;
                    v41 += 2 + v25;
                  }
                }
              }

              ++v18;
            }

            while (v18 != v17);
          }
        }
      }

      else if (!v33)
      {
        result = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(v29);
        v27 = result;
        v28 = v6;
        if (result)
        {
          if (v6 <= 3)
          {
            goto LABEL_57;
          }

          v7 = *result;
          if (*result)
          {
            v8 = 0;
            do
            {
              result = MTLSerializer::SerializedObjectList::getObject(&v27, v8);
              if (result)
              {
                v10 = result;
                v11 = v9;
                v12 = [a2 attributes];
                v45 = v10;
                v46 = v11;
                result = MTLSerializer::SerializedCompactPropertyList::iterator(&v45, &v37);
                if (v40 < v39)
                {
                  v13 = 0;
                  v14 = v42;
                  while (1)
                  {
                    if (v14 > 1)
                    {
                      if (v14 == 2)
                      {
                        __dst = 0;
                        if (v43 + v44 > v38)
                        {
                          goto LABEL_57;
                        }

                        memcpy(&__dst, (v37 + v44), v43);
                        result = [v13 setOffset:__dst];
                      }

                      else if (v14 == 3)
                      {
                        __dst = 0;
                        if (v43 + v44 > v38)
                        {
                          goto LABEL_57;
                        }

                        memcpy(&__dst, (v37 + v44), v43);
                        result = [v13 setBufferIndex:__dst];
                      }
                    }

                    else if (v14)
                    {
                      if (v14 == 1)
                      {
                        __dst = 0;
                        if (v43 + v44 > v38)
                        {
                          goto LABEL_57;
                        }

                        memcpy(&__dst, (v37 + v44), v43);
                        result = [v13 setFormat:__dst];
                      }
                    }

                    else
                    {
                      __dst = 0;
                      if (v43 + v44 > v38)
                      {
                        goto LABEL_57;
                      }

                      memcpy(&__dst, (v37 + v44), v43);
                      result = [v12 objectAtIndexedSubscript:__dst];
                      v13 = result;
                    }

                    if (++v40 >= v39)
                    {
                      break;
                    }

                    if (v41 + 2 > v38)
                    {
                      goto LABEL_57;
                    }

                    v14 = *(v37 + v41);
                    v15 = *(v37 + v41 + 1);
                    v42 = v14;
                    v43 = v15;
                    v44 = v41 + 2;
                    v41 += 2 + v15;
                  }
                }
              }

              ++v8;
            }

            while (v8 != v7);
          }
        }
      }

      if (++v31 >= v30)
      {
        break;
      }

      if ((v32 + 2) > v29[1])
      {
LABEL_57:
        abort();
      }

      v26 = *(v29[0] + v32 + 1);
      v33 = *(v29[0] + v32);
      v34 = v26;
      v35 = v32 + 2;
      v32 += 2 + v26;
    }
  }

  return result;
}

void *MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newComputePipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *this, unsigned __int8 **a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = objc_opt_new();
  MTLSerializer::SerializedCompactPropertyList::iterator(a2, &v27);
  if (v30 < v29)
  {
    while (1)
    {
      if (v32 <= 5)
      {
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            PropertyAsObject = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v27);
            v13 = v12;
            v14 = objc_alloc(MEMORY[0x1E696AEC0]);
            if (PropertyAsObject)
            {
              if (!v13)
              {
                goto LABEL_49;
              }

              v15 = PropertyAsObject;
              while (*v15++)
              {
                if (!--v13)
                {
                  goto LABEL_49;
                }
              }
            }

            v10 = [v14 initWithUTF8String:{PropertyAsObject, v25, v26}];
            [v4 setLabel:v10];
            goto LABEL_42;
          }

          if (v32 == 3)
          {
            v5 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v27);
            if (v5)
            {
              v7 = v5;
              v8 = v6;
              v9 = [v4 stageInputDescriptor];
              MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::deserializeStageInputDescriptor(v9, v9, v7, v8);
            }

            else
            {
              [v4 setStageInputDescriptor:0];
            }
          }
        }

        else
        {
          if (!v32)
          {
            v10 = (*(*this + 16))(this, &v27);
            [v4 setComputeFunction:v10];
LABEL_42:

            goto LABEL_43;
          }

          if (v32 == 1)
          {
            LODWORD(v25) = 0;
            if (v33 + v34 > v28)
            {
              goto LABEL_49;
            }

            memcpy(&v25, (v27 + v34), v33);
            [v4 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:v25 != 0];
          }
        }
      }

      else if (v32 <= 7)
      {
        if (v32 == 6)
        {
          v17 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v27);
          v25 = v17;
          v26 = v18;
          if (v17)
          {
            if (v18 <= 3)
            {
              goto LABEL_49;
            }

            v19 = *v17;
            if (*v17)
            {
              v20 = 0;
              do
              {
                Object = MTLSerializer::SerializedObjectList::getObject(&v25, v20);
                if (Object)
                {
                  MTLPipelineLibrarySerializer::deserializeBuffers([v4 buffers], Object, v22);
                }

                ++v20;
              }

              while (v19 != v20);
            }
          }
        }

        else
        {
          LODWORD(v25) = 0;
          if (v33 + v34 > v28)
          {
            goto LABEL_49;
          }

          memcpy(&v25, (v27 + v34), v33);
          [v4 setSupportIndirectCommandBuffers:v25 != 0];
        }
      }

      else
      {
        switch(v32)
        {
          case 8:
            LODWORD(v25) = 0;
            if (v33 + v34 > v28)
            {
              goto LABEL_49;
            }

            memcpy(&v25, (v27 + v34), v33);
            [v4 setMaxTotalThreadsPerThreadgroup:v25];
            break;
          case 10:
            LODWORD(v25) = 0;
            if (v33 + v34 > v28)
            {
              goto LABEL_49;
            }

            memcpy(&v25, (v27 + v34), v33);
            [v4 setTextureWriteRoundingMode:v25];
            break;
          case 12:
            LODWORD(v25) = 0;
            if (v33 + v34 > v28)
            {
              goto LABEL_49;
            }

            memcpy(&v25, (v27 + v34), v33);
            [v4 setNeedsCustomBorderColorSamplers:v25 != 0];
            break;
        }
      }

LABEL_43:
      if (++v30 >= v29)
      {
        return v4;
      }

      if (v31 + 2 > v28)
      {
LABEL_49:
        abort();
      }

      v23 = *(v27 + v31 + 1);
      v32 = *(v27 + v31);
      v33 = v23;
      v34 = v31 + 2;
      v31 += 2 + v23;
    }
  }

  return v4;
}

unsigned __int8 **MTLPipelineLibrarySerializer::deserializeBuffers(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v15[0] = a2;
  v15[1] = a3;
  result = MTLSerializer::SerializedCompactPropertyList::iterator(v15, &v7);
  if (v10 < v9)
  {
    v5 = 0;
    while (1)
    {
      if (v12 == 1)
      {
        __dst = 0;
        if (v13 + v14 > v8)
        {
          goto LABEL_13;
        }

        memcpy(&__dst, (v7 + v14), v13);
        result = [v5 setMutability:__dst];
      }

      else if (!v12)
      {
        __dst = 0;
        if (v13 + v14 > v8)
        {
          goto LABEL_13;
        }

        memcpy(&__dst, (v7 + v14), v13);
        result = [a1 objectAtIndexedSubscript:__dst];
        v5 = result;
      }

      if (++v10 >= v9)
      {
        break;
      }

      if (v11 + 2 > v8)
      {
LABEL_13:
        abort();
      }

      v6 = *(v7 + v11 + 1);
      v12 = *(v7 + v11);
      v13 = v6;
      v14 = v11 + 2;
      v11 += 2 + v6;
    }
  }

  return result;
}
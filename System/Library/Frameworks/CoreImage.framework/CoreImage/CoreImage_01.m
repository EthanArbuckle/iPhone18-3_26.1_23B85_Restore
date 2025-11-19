void *std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<unsigned long long const,CI::DAGHelper::TextureReadFunction>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

CI::DAGHelper::TextureReadFunction *CI::DAGHelper::TextureReadFunction::TextureReadFunction(CI::DAGHelper::TextureReadFunction *this)
{
  v2 = std::string::basic_string[abi:nn200100]<0>(this, "");
  std::vector<unsigned long>::vector[abi:nn200100](v2 + 3, 0, 0);
  *(this + 48) = 0;
  return this;
}

void sub_19CC4D70C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__erase_unique<unsigned long long>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(a1, v4);
  std::__destroy_at[abi:nn200100]<std::pair<unsigned long long const,CI::DAGHelper::TextureReadFunction>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void *CI::setDC(CI *this, const vec2 *a2)
{
  result = CI::_thread_dc();
  *result = *v3;
  return result;
}

double CI::SWRendererPipeline::initSamplers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v3 = a3;
    v6 = 0;
    v7 = 40;
    v8 = a3;
    do
    {
      v9 = *(*(a1 + 8) + v7);
      v10 = *(a2 + (*(v9 + 8) << 6));
      v11 = (a2 + (*(v9 + 32) << 6));
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v11[3];
      *v3 = &unk_1F10302B8;
      if (v10)
      {
        v10 = CI::Object::ref(v10);
      }

      *(v3 + 8) = v10;
      *(v3 + 16) = v13;
      *(v3 + 32) = v14;
      *(v3 + 48) = v15;
      result = *&v16;
      *(v3 + 64) = v16;
      ++v6;
      v7 += 64;
      v3 += 80;
      v8 += 80;
    }

    while (*(a1 + 24) > v6);
  }

  return result;
}

uint64_t CI::SWRendererPipeline::execute(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6 = (a2 + (*(*(*a1 + 40) + 8) << 6));
  v7 = *a6 + 0.5;
  v8 = a6[1] + 0.5;
  *&v9 = v6[2] + ((v6[1] * v8) + (v7 * *v6));
  *(&v9 + 1) = v6[5] + ((v8 * v6[4]) + (v7 * v6[3]));
  *a3 = v9;
  if (a1[2] >= 2uLL)
  {
    v16 = 1;
    v17 = 88;
    do
    {
      v18 = (*(*a1 + v17))(*a1 + v17 - 24, a2, a3, a4, a5, a6);
      v19 = &a3[2 * v16];
      *v19 = v18;
      v19[1] = v20;
      ++v16;
      v17 += 64;
    }

    while (a1[2] > v16);
  }

  return 1;
}

void CI::createMainProgramCodeAndArgs(CI *this, CI::Context *a2, const char *a3, const CI::ProgramNode *a4, CI::SerialObjectPtrArray *a5)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  operator new();
}

void CI::SerialObjectPtrArray::clear(CI::SerialObjectPtrArray *this)
{
  if (*this >= 1)
  {
    v2 = 0;
    v3 = -80;
    do
    {
      v4 = (this + 8 * v2 + 24);
      if (v2 > 9)
      {
        v5 = (*(this + 2) + v3);
      }

      else
      {
        v5 = (this + 8 * v2 + 24);
      }

      if (*v5)
      {
        CI::Object::unref(*v5);
      }

      if (v2 > 9)
      {
        v4 = (*(this + 2) + v3);
      }

      *v4 = 0;
      ++v2;
      v3 += 8;
    }

    while (v2 < *this);
  }

  *this = 0;
}

void ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke(uint64_t a1, FILE *a2)
{
  v4 = *(*(a1 + 56) + 48);
  if ((*(*v4 + 16))(v4) == 34)
  {
    v4 = (*(*v4 + 48))(v4, 0);
  }

  v5 = 1;
  fwrite("#define kernel\n", 0xFuLL, 1uLL, a2);
  fputc(10, a2);
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2000000000;
  v81 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2000000000;
  v77 = 0;
  v6 = *(a1 + 56);
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 0x40000000;
  v75[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_2;
  v75[3] = &unk_1E75C16D8;
  v75[4] = &v82;
  v75[5] = v76;
  v75[6] = &v78;
  CI::ProgramNode::traverse_dag_preorder(v6, v4, v75, 0);
  v7 = *(v83 + 6);
  if (v7)
  {
    fprintf(a2, "uniform highp %s _samplers [%d];\n", *(a1 + 64), v7);
    fprintf(a2, "uniform highp mat3 _transforms [%d];\n", *(v83 + 6));
    fprintf(a2, "uniform highp vec4 _extents [%d];\n", *(v83 + 6));
    fputc(10, a2);
    v5 = *(v83 + 6) == 0;
  }

  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(v79 + 6);
  fwrite("const lowp vec4 _ci_constants = vec4(1.0,0.0,1.0/257.0,256.0/257.0);\n", 0x45uLL, 1uLL, a2);
  fwrite("precision highp float;\n", 0x17uLL, 1uLL, a2);
  fputc(10, a2);
  fwrite("#define half float\n", 0x13uLL, 1uLL, a2);
  fwrite("#define hvec2 vec2\n", 0x13uLL, 1uLL, a2);
  fwrite("#define hvec3 vec3\n", 0x13uLL, 1uLL, a2);
  fwrite("#define hvec4 vec4\n", 0x13uLL, 1uLL, a2);
  fwrite("#define hmat2 mat2\n", 0x13uLL, 1uLL, a2);
  fwrite("#define hmat3 mat3\n", 0x13uLL, 1uLL, a2);
  fwrite("#define hmat4 mat4\n", 0x13uLL, 1uLL, a2);
  fwrite("highp vec2 _dc;\n", 0x10uLL, 1uLL, a2);
  fwrite("varying highp vec2 p0;\n", 0x17uLL, 1uLL, a2);
  fputc(10, a2);
  fwrite("#define hsampler2D sampler2D\n", 0x1DuLL, 1uLL, a2);
  if (!v5)
  {
    fwrite("#define sampler int\n", 0x14uLL, 1uLL, a2);
    fwrite("#define hsampler int\n", 0x15uLL, 1uLL, a2);
    switch(v10)
    {
      case 0:
        fprintf(a2, "vec4 sample(sampler s, vec2 p) { return %s(_samplers[s], p); }\n");
        break;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
        fprintf(a2, "vec4 sample(sampler s, vec2 p) { return %s(_samplers[s], p)%s; }\n");
        break;
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
        fprintf(a2, "vec4 sample(sampler s, vec2 p) { vec4 s = %s(_samplers[s], p); s = %s; return s; }\n");
        break;
      default:
        break;
    }

    fwrite("vec2 samplerTransform(sampler s, vec2 p) { return (vec3(p, 1.0) * _transforms[s]).xy; }\n", 0x58uLL, 1uLL, a2);
    fwrite("vec4 samplerExtent(sampler s) { return _extents[s]; }\n", 0x36uLL, 1uLL, a2);
    fwrite("vec2 samplerOrigin(sampler s) { return _extents[s].xy; }\n", 0x39uLL, 1uLL, a2);
    fwrite("vec2 samplerSize(sampler s)   { return _extents[s].zw; }\n", 0x39uLL, 1uLL, a2);
    fwrite("vec2 samplerCoord(sampler s)  { return samplerTransform(s,_dc); }\n", 0x42uLL, 1uLL, a2);
    fwrite("#define _samplerOffset(src, offset) (samplerTransform(src,offset) - samplerTransform(src,vec2(0.0)))\n", 0x65uLL, 1uLL, a2);
    fwrite("vec4 gatherX (sampler s, vec2 p) {\n", 0x23uLL, 1uLL, a2);
    fwrite("  return vec4(\n", 0xFuLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2(-0.5,-0.5))).x,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2( 0.5,-0.5))).x,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2( 0.5, 0.5))).x,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2(-0.5, 0.5))).x);\n", 0x37uLL, 1uLL, a2);
    fwrite("}\n", 2uLL, 1uLL, a2);
    fwrite("vec4 gatherY (sampler s, vec2 p) {\n", 0x23uLL, 1uLL, a2);
    fwrite("  return vec4(\n", 0xFuLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2(-0.5,-0.5))).y,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2( 0.5,-0.5))).y,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2( 0.5, 0.5))).y,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2(-0.5, 0.5))).y);\n", 0x37uLL, 1uLL, a2);
    fwrite("}\n", 2uLL, 1uLL, a2);
    fwrite("vec4 gatherZ (sampler s, vec2 p) {\n", 0x23uLL, 1uLL, a2);
    fwrite("  return vec4(\n", 0xFuLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2(-0.5,-0.5))).z,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2( 0.5,-0.5))).z,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2( 0.5, 0.5))).z,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2(-0.5, 0.5))).z);\n", 0x37uLL, 1uLL, a2);
    fwrite("}\n", 2uLL, 1uLL, a2);
    fwrite("vec4 gatherW (sampler s, vec2 p) {\n", 0x23uLL, 1uLL, a2);
    fwrite("  return vec4(\n", 0xFuLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2(-0.5,-0.5))).w,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2( 0.5,-0.5))).w,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2( 0.5, 0.5))).w,\n", 0x36uLL, 1uLL, a2);
    fwrite("    sample(s, p+_samplerOffset(s,vec2(-0.5, 0.5))).w);\n", 0x37uLL, 1uLL, a2);
    fwrite("}\n", 2uLL, 1uLL, a2);
    fwrite("vec4 _unordered_gatherX (sampler s, vec2 p) { return gatherX(s,p); }\n", 0x45uLL, 1uLL, a2);
    fwrite("vec4 _unordered_gatherY (sampler s, vec2 p) { return gatherY(s,p); }\n", 0x45uLL, 1uLL, a2);
    fwrite("vec4 _unordered_gatherZ (sampler s, vec2 p) { return gatherZ(s,p); }\n", 0x45uLL, 1uLL, a2);
    fwrite("vec4 _unordered_gatherW (sampler s, vec2 p) { return gatherW(s,p); }\n", 0x45uLL, 1uLL, a2);
    fputc(10, a2);
  }

  fprintf(a2, "vec4 _read_pixel(%s i, vec2 c, mat3 m) { return %s(i, (vec3(c, 1.0) * m).xy); }\n", v9, v8);
  fprintf(a2, "vec4 _read_pixel_420(%s Y, %s cc, vec2 c, vec2 f, mat3 m) {\n", v9, v9);
  fwrite("  highp vec3 p = vec3(c, 1.0) * m;\n", 0x23uLL, 1uLL, a2);
  fprintf(a2, "  return vec4(%s(Y, p.xy).r, %s(cc, f * p.xy).rg, 1.0);\n", v8, v8);
  fwrite("}\n", 2uLL, 1uLL, a2);
  fputc(10, a2);
  fwrite("vec2 destCoord() { return _dc; }\n", 0x21uLL, 1uLL, a2);
  fwrite("void writeImage(vec4 c, vec2 p) { gl_FragData[0] = c; }\n", 0x38uLL, 1uLL, a2);
  fwrite("void writeImagePlane(vec4 c, vec2 p) { gl_FragData[1] = c; }\n", 0x3DuLL, 1uLL, a2);
  fwrite("vec2 writeCoord() { return p0; }\n", 0x21uLL, 1uLL, a2);
  fputc(10, a2);
  fwrite("vec4  compare(vec4  x, vec4  y, vec4  z) { return mix(y, z, step(0.0, x)); }\n", 0x4DuLL, 1uLL, a2);
  fwrite("vec3  compare(vec3  x, vec3  y, vec3  z) { return mix(y, z, step(0.0, x)); }\n", 0x4DuLL, 1uLL, a2);
  fwrite("vec2  compare(vec2  x, vec2  y, vec2  z) { return mix(y, z, step(0.0, x)); }\n", 0x4DuLL, 1uLL, a2);
  fwrite("float compare(float x, float y, float z) { return mix(y, z, step(0.0, x)); }\n", 0x4DuLL, 1uLL, a2);
  fwrite("vec4 premultiply   (vec4 s) { return vec4(s.rgb*s.a, s.a); }\n", 0x3DuLL, 1uLL, a2);
  fwrite("vec4 unpremultiply (vec4 s) { return vec4(s.rgb/max(s.a,0.00001), s.a); }\n", 0x4AuLL, 1uLL, a2);
  fwrite("vec3 srgb_to_linear(vec3 s) { return sign(s)*mix(abs(s)/12.92, pow(abs(s)/1.055 + 0.052132701421801, vec3(2.4)), step(0.04045, abs(s))); }\n", 0x8BuLL, 1uLL, a2);
  fwrite("vec3 linear_to_srgb(vec3 s) { return sign(s)*mix(abs(s)*12.92, pow(abs(s), vec3(0.4166667)) * 1.055 - 0.055,   step(0.0031308, abs(s))); }\n", 0x8BuLL, 1uLL, a2);
  fwrite("vec4 srgb_to_linear(vec4 s) { s = unpremultiply(s); s.rgb = srgb_to_linear(s.rgb); return premultiply(s); }\n", 0x6CuLL, 1uLL, a2);
  fwrite("vec4 linear_to_srgb(vec4 s) { s = unpremultiply(s); s.rgb = linear_to_srgb(s.rgb); return premultiply(s); }\n", 0x6CuLL, 1uLL, a2);
  fwrite("float sin_    (float x) { return sin(x); }\n", 0x2BuLL, 1uLL, a2);
  fwrite("vec2  sin_    (vec2  x) { return sin(x); }\n", 0x2BuLL, 1uLL, a2);
  fwrite("vec3  sin_    (vec3  x) { return sin(x); }\n", 0x2BuLL, 1uLL, a2);
  fwrite("vec4  sin_    (vec4  x) { return sin(x); }\n", 0x2BuLL, 1uLL, a2);
  fwrite("float cos_    (float x) { return cos(x); }\n", 0x2BuLL, 1uLL, a2);
  fwrite("vec2  cos_    (vec2  x) { return cos(x); }\n", 0x2BuLL, 1uLL, a2);
  fwrite("vec3  cos_    (vec3  x) { return cos(x); }\n", 0x2BuLL, 1uLL, a2);
  fwrite("vec4  cos_    (vec4  x) { return cos(x); }\n", 0x2BuLL, 1uLL, a2);
  fwrite("vec2  cossin  (float x) { return vec2(cos(x),sin(x)); }\n", 0x38uLL, 1uLL, a2);
  fwrite("vec2  cossin_ (float x) { return vec2(cos(x),sin(x)); }\n", 0x38uLL, 1uLL, a2);
  fwrite("vec2  sincos  (float x) { return vec2(sin(x),cos(x)); }\n", 0x38uLL, 1uLL, a2);
  fwrite("vec2  sincos_ (float x) { return vec2(sin(x),cos(x)); }\n", 0x38uLL, 1uLL, a2);
  fputc(10, a2);
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x4002000000;
  v72[3] = __Block_byref_object_copy__0;
  v74[1] = 0;
  v74[0] = 0;
  v72[4] = __Block_byref_object_dispose__0;
  v73 = v74;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x4002000000;
  v69[3] = __Block_byref_object_copy__11;
  v71[1] = 0;
  v71[0] = 0;
  v69[4] = __Block_byref_object_dispose__12;
  v70 = v71;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x4002000000;
  v66[3] = __Block_byref_object_copy__13;
  v68[1] = 0;
  v68[0] = 0;
  v66[4] = __Block_byref_object_dispose__14;
  v67 = v68;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x4002000000;
  v63[3] = __Block_byref_object_copy__15;
  v65[1] = 0;
  v65[0] = 0;
  v63[4] = __Block_byref_object_dispose__16;
  v64 = v65;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x4002000000;
  v59[3] = __Block_byref_object_copy__17;
  v59[4] = __Block_byref_object_dispose__18;
  v60 = 0;
  v62 = 0;
  v61 = 0;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 0x40000000;
  v58[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_3_27;
  v58[3] = &unk_1E75C1740;
  v58[5] = v66;
  v58[4] = &__block_literal_global_1;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 0x40000000;
  v57[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_4;
  v57[3] = &unk_1E75C1768;
  v57[5] = v66;
  v57[4] = &__block_literal_global_26_0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 0x40000000;
  v56[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_5;
  v56[3] = &unk_1E75C1790;
  v56[5] = v66;
  v56[4] = &__block_literal_global_1;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 0x40000000;
  v55[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_6;
  v55[3] = &unk_1E75C17B8;
  v55[4] = v69;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 0x40000000;
  v54[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_7;
  v54[3] = &unk_1E75C17E0;
  v54[4] = v69;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 0x40000000;
  v53[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_8;
  v53[3] = &unk_1E75C1808;
  v53[4] = v72;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 0x40000000;
  v52[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_9;
  v52[3] = &unk_1E75C1830;
  v52[4] = v59;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 0x40000000;
  v48[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_10;
  v48[3] = &unk_1E75C1858;
  v11 = *(a1 + 40);
  v49 = *(a1 + 32);
  v50 = v11;
  v51 = *(a1 + 48);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2000000000;
  v47 = 0;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 0x40000000;
  v45[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_11;
  v45[3] = &unk_1E75C1880;
  v45[4] = v49;
  v45[5] = v11;
  v45[6] = v46;
  v45[7] = v51;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 0x40000000;
  v44[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_12;
  v44[3] = &unk_1E75C18A8;
  v44[4] = v59;
  v12 = *(a1 + 56);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 0x40000000;
  v42[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_13;
  v42[3] = &unk_1E75C18D0;
  v42[4] = v56;
  v42[5] = v55;
  v42[8] = v69;
  v42[7] = v63;
  v42[6] = v54;
  v43 = *(a1 + 88);
  CI::ProgramNode::traverse_dag_preorder(v12, v4, v42, &__block_literal_global_58_0);
  fputc(10, *MEMORY[0x1E69E9858]);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 0x40000000;
  v40[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_17;
  v40[3] = &unk_1E75C1918;
  v40[4] = v48;
  v40[5] = v52;
  v13 = *(a1 + 56);
  v40[8] = a2;
  v40[9] = v13;
  v41 = *(a1 + 88);
  v40[7] = v63;
  v40[6] = v45;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 0x40000000;
  v39[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_19;
  v39[3] = &unk_1E75C19D8;
  v39[4] = v55;
  v39[5] = v52;
  v39[10] = &v82;
  v39[11] = a2;
  v14 = *(a1 + 80);
  v39[12] = *(a1 + 64);
  v39[13] = v14;
  v39[6] = v48;
  v39[7] = v40;
  v39[8] = v53;
  v39[9] = &__block_literal_global_88;
  CI::ProgramNode::traverse_dag(v13, v4, v39, 0);
  if ((*(a1 + 88) & 1) == 0)
  {
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x4002000000;
    v35[3] = __Block_byref_object_copy__99;
    v35[4] = __Block_byref_object_dispose__100;
    __p = 0;
    v38 = 0;
    v37 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x4002000000;
    v32[3] = __Block_byref_object_copy__15;
    v34[1] = 0;
    v34[0] = 0;
    v32[4] = __Block_byref_object_dispose__16;
    v33 = v34;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2000000000;
    v31 = 0;
    fwrite("void main () {\n", 0xFuLL, 1uLL, a2);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_102;
    v29[3] = &unk_1E75C1A00;
    v29[4] = v44;
    v29[5] = v57;
    v29[6] = a2;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_2_112;
    v28[3] = &unk_1E75C1A28;
    v28[4] = v32;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2000000000;
    v27 = -99;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_3_115;
    v25[3] = &unk_1E75C1A50;
    v25[4] = v55;
    v25[5] = v26;
    v25[6] = a2;
    v15 = *(a1 + 56);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_4_120;
    v24[3] = &unk_1E75C1AA0;
    v16 = *(a1 + 80);
    v24[8] = &v82;
    v24[9] = v35;
    v24[4] = v55;
    v24[5] = v25;
    v24[10] = v16;
    v24[11] = a2;
    v24[6] = v28;
    v24[7] = v29;
    CI::ProgramNode::traverse_dag_preorder(v15, v4, v24, 0);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v17 = *(a1 + 56);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_6_128;
    v19[3] = &unk_1E75C1B18;
    v19[4] = v55;
    v19[5] = v58;
    v19[6] = v25;
    v19[7] = v44;
    v19[12] = &v82;
    v19[13] = &v20;
    v18 = *(a1 + 80);
    v19[14] = a2;
    v19[15] = v18;
    v19[8] = v57;
    v19[9] = &__block_literal_global_88;
    v19[10] = v29;
    v19[11] = v30;
    CI::ProgramNode::traverse_dag(v17, v4, v19, &__block_literal_global_143);
    fprintf(a2, "  gl_FragColor= vec4(_%d);\n", *(v21 + 6));
    fwrite("}\n", 2uLL, 1uLL, a2);
    fputc(10, a2);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v32, 8);
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v33, v34[0]);
    _Block_object_dispose(v35, 8);
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }
  }

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v59, 8);
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  _Block_object_dispose(v63, 8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v64, v65[0]);
  _Block_object_dispose(v66, 8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v67, v68[0]);
  _Block_object_dispose(v69, 8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v70, v71[0]);
  _Block_object_dispose(v72, 8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v73, v74[0]);
  _Block_object_dispose(v76, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_2(void *a1, void *a2)
{
  if ((*(*a2 + 16))(a2) == 59)
  {
    v4 = a2[7];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v10 = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_3;
    v11 = &unk_1E75C16B0;
    v12 = a1[4];
    v13 = a2;
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = v4 + 6;
      do
      {
        v7 = v6;
        if (v5 >= 0xA)
        {
          v7 = (*(v4 + 2) + 8 * v5 - 80);
        }

        (v10)(v9, v5++, *v7);
        v6 += 2;
      }

      while (v5 < *v4);
    }
  }

  result = (*(*a2 + 16))(a2);
  if (result == 55)
  {
    if (*(*(a1[4] + 8) + 24))
    {
      result = (*(*a2 + 424))(a2);
      *(*(a1[6] + 8) + 24) = result;
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_3(uint64_t a1, signed int a2)
{
  result = CI::ColorKernelNode::kernel_argument_type(*(a1 + 40), a2);
  if (result == 2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void *__Block_byref_object_copy__0(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *__Block_byref_object_copy__11(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void __Block_byref_object_dispose__12(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a1 + 40, *(a1 + 48));
}

{
  _Block_object_dispose(*(a1 + 40), 131);
}

void *__Block_byref_object_copy__13(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void __Block_byref_object_dispose__14(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a1 + 40, *(a1 + 48));
}

{
  _Block_object_dispose(*(a1 + 40), 131);
}

void *__Block_byref_object_copy__15(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void __Block_byref_object_dispose__16(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a1 + 40, *(a1 + 48));
}

{
  _Block_object_dispose(*(a1 + 40), 131);
}

__n128 __Block_byref_object_copy__17(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__18(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

{
  _Block_object_dispose(*(a1 + 40), 131);
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_19(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  result = 0;
  v4 = a2 + 1;
  do
  {
    result = (v2 - 47) | (16 * result);
    v5 = *v4++;
    v2 = v5;
  }

  while (v5);
  return result;
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_2_22(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    do
    {
      v4 = (v3 - 47) | (16 * v4);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
    v7 = 16 * v4;
  }

  else
  {
    v7 = 0;
  }

  return v7 | (a3 + 1);
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_3_27(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = (*(*(a1 + 32) + 16))();
  v6 = *(v2 + 48);
  v5 = v2 + 48;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v3 < *(v7 + 32))
  {
LABEL_9:
    v7 = v5;
  }

  if (v7 == *(*(a1 + 40) + 8) + 48)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*(v7 + 40) + 100);
  }
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = (*(*(a1 + 32) + 16))();
  v6 = *(v2 + 48);
  v5 = v2 + 48;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v3 < *(v7 + 32))
  {
LABEL_9:
    v7 = v5;
  }

  if (v7 == *(*(a1 + 40) + 8) + 48)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*(v7 + 40) + 100);
  }
}

void *___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_5(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 56);
  v5[0] = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v5[2] = v5;
  result = std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v3 + 40, v5);
  *(result + 10) = v2;
  return result;
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(*(a1 + 32) + 8);
  v5 = *(v2 + 48);
  v3 = v2 + 48;
  v4 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + 36);
  v7 = v3;
  do
  {
    v8 = *(v4 + 28);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v3 && v6 >= *(v7 + 28))
  {
    return *(v7 + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_7(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  v3 = (v1 + 48);
  result = 0xFFFFFFFFLL;
  if (v2 != v3)
  {
    do
    {
      v5 = *(v2 + 8);
      if (result <= v5)
      {
        result = v5;
      }

      else
      {
        result = result;
      }

      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

BOOL ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_8(uint64_t a1, unint64_t a2)
{
  v12 = a2;
  v2 = *(*(a1 + 32) + 8);
  v5 = *(v2 + 48);
  v3 = v2 + 48;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
LABEL_9:
    v6 = v3;
  }

  v10 = v6 == v3;
  std::__tree<char const*>::__emplace_unique_key_args<char const*,char const* const&>(*(*(a1 + 32) + 8) + 40, &v12);
  return v10;
}

unint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_9(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 | (a2 << 32);
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[5];
  v7 = v4[6];
  v6 = v4[7];
  v8 = v7 - v5;
  if (v7 >= v6)
  {
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - v5;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v4 + 5), v13);
    }

    v14 = v7 - v5;
    v15 = (8 * (v8 >> 3));
    *v15 = v3;
    v9 = v15 + 1;
    memcpy(0, v5, v14);
    v16 = v4[5];
    v4[5] = 0;
    v4[6] = v9;
    v4[7] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = v3;
    v9 = v7 + 8;
  }

  result = v8 >> 3;
  v4[6] = v9;
  return result;
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_10(void *a1, uint64_t a2, int a3, const char *a4, CI::Object *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = *(*(a1[4] + 8) + 24);
  if (v9)
  {
    CI::SerialValArray<int>::append(v9, a3);
  }

  if (*(*(a1[5] + 8) + 24))
  {
    v14 = 0;
    *__str = 0;
    snprintf(__str, 0xAuLL, "%s%d", a4, a2);
    v10 = strlen(__str);
    CI::SerialStringArray::append(*(*(a1[5] + 8) + 24), __str, v10);
  }

  v11 = *(*(a1[6] + 8) + 24);
  if (v11)
  {
    if (!a5)
    {
      operator new();
    }

    CI::SerialObjectPtrArray::append(v11, a5);
  }

  return a2;
}

void ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_11(void *a1, int a2, CI::Object *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1[4] + 8) + 24);
  if (v5)
  {
    CI::SerialValArray<int>::append(v5, 2);
    v6 = *(*(a1[4] + 8) + 24);
    if (v6)
    {
      CI::SerialValArray<int>::append(v6, 40);
      v7 = *(*(a1[4] + 8) + 24);
      if (v7)
      {
        CI::SerialValArray<int>::append(v7, 8);
      }
    }
  }

  if (*(*(a1[5] + 8) + 24))
  {
    v15 = 0;
    *__str = 0;
    v14 = 0;
    snprintf(__str, 0x14uLL, "_samplers[%d]", *(*(a1[6] + 8) + 24));
    v8 = strlen(__str);
    CI::SerialStringArray::append(*(*(a1[5] + 8) + 24), __str, v8);
    snprintf(__str, 0x14uLL, "_transforms[%d]", *(*(a1[6] + 8) + 24));
    v9 = strlen(__str);
    CI::SerialStringArray::append(*(*(a1[5] + 8) + 24), __str, v9);
    snprintf(__str, 0x14uLL, "_extents[%d]", *(*(a1[6] + 8) + 24));
    v10 = strlen(__str);
    CI::SerialStringArray::append(*(*(a1[5] + 8) + 24), __str, v10);
  }

  v11 = *(*(a1[7] + 8) + 24);
  if (v11)
  {
    CI::SerialObjectPtrArray::append(v11, a3);
    v12 = *(*(a1[7] + 8) + 24);
    if (v12)
    {
      CI::SerialObjectPtrArray::append(v12, a3);
    }
  }

  operator new();
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_12(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (((a3 | a2) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4 == v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v4;
    while (*v6 != (a3 | (a2 << 32)))
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = v5;
        break;
      }
    }
  }

  if (v5 == v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v6 - v4) >> 3;
  }
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_13(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9 < 0)
  {
    std::__tree<CI::NodeIndex>::__emplace_unique_key_args<CI::NodeIndex,CI::NodeIndex const&>(*(a1[7] + 8) + 40, a2 + 9);
  }

  (*(a1[4] + 16))();
  result = (*(a1[5] + 16))();
  if ((result & 0x80000000) != 0)
  {
    v14 = (*(a1[6] + 16))() + 1;
    result = std::__tree<std::__value_type<CI::NodeIndex,int>,std::__map_value_compare<CI::NodeIndex,std::__value_type<CI::NodeIndex,int>,std::less<CI::NodeIndex>,true>,std::allocator<std::__value_type<CI::NodeIndex,int>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(*(a1[8] + 8) + 40, a2 + 9);
    *(result + 32) = v14;
  }

  if ((a9 & 0x80000000) == 0)
  {
    result = (*(*a2 + 16))(a2);
    if (a3)
    {
      if (result == 60)
      {
        v15 = (*(*a3 + 48))(a3, a5);
        result = (*(a1[5] + 16))();
        if ((result & 0x80000000) != 0)
        {
          v16 = result;
          result = std::__tree<std::__value_type<CI::NodeIndex,int>,std::__map_value_compare<CI::NodeIndex,std::__value_type<CI::NodeIndex,int>,std::less<CI::NodeIndex>,true>,std::allocator<std::__value_type<CI::NodeIndex,int>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(*(a1[8] + 8) + 40, (v15 + 36));
          *(result + 32) = v16;
        }
      }
    }
  }

  return result;
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_17(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  switch(a2)
  {
    case 1:
    case 30:
      return result;
    case 2:
      v40 = *(*(result + 56) + 8);
      v43 = *(v40 + 48);
      v41 = v40 + 48;
      v42 = v43;
      if (!v43)
      {
        goto LABEL_36;
      }

      v44 = 1.0;
      v75 = 0.0;
      v45 = 0.0;
      v46 = 0.0;
      v47 = 1.0;
      v48 = 0.0;
      break;
    case 4:
      operator new();
    case 5:
    case 12:
      v19 = *(result + 64);
      v20 = *(result + 32);
      v21 = (*(*(result + 40) + 16))();
      (*(v20 + 16))(v20, v21, a2, "_u", a6);
      return fprintf(v19, "uniform highp float _u%d;\n");
    case 6:
    case 13:
      v25 = *(result + 64);
      v26 = *(result + 32);
      v27 = (*(*(result + 40) + 16))();
      (*(v26 + 16))(v26, v27, a2, "_u", a6);
      return fprintf(v25, "uniform highp vec2 _u%d;\n");
    case 7:
    case 14:
      v16 = *(result + 64);
      v17 = *(result + 32);
      v18 = (*(*(result + 40) + 16))();
      (*(v17 + 16))(v17, v18, a2, "_u", a6);
      return fprintf(v16, "uniform highp vec3 _u%d;\n");
    case 8:
    case 15:
    case 27:
      v10 = *(result + 64);
      v11 = *(result + 32);
      v12 = (*(*(result + 40) + 16))();
      (*(v11 + 16))(v11, v12, a2, "_u", a6);
      return fprintf(v10, "uniform highp vec4 _u%d;\n");
    case 9:
    case 16:
      v28 = *(result + 64);
      v29 = *(result + 32);
      v30 = (*(*(result + 40) + 16))();
      (*(v29 + 16))(v29, v30, a2, "_u", a6);
      return fprintf(v28, "uniform highp mat2 _u%d;\n");
    case 10:
    case 17:
      v13 = *(result + 64);
      v14 = *(result + 32);
      v15 = (*(*(result + 40) + 16))();
      (*(v14 + 16))(v14, v15, a2, "_u", a6);
      return fprintf(v13, "uniform highp mat3 _u%d;\n");
    case 11:
    case 18:
      v22 = *(result + 64);
      v23 = *(result + 32);
      v24 = (*(*(result + 40) + 16))();
      (*(v23 + 16))(v23, v24, a2, "_u", a6);
      return fprintf(v22, "uniform highp mat4 _u%d;\n");
    case 19:
      v37 = *(result + 64);
      v38 = *(result + 32);
      v39 = (*(*(result + 40) + 16))();
      (*(v38 + 16))(v38, v39, 19, "_u", a6);
      return fprintf(v37, "uniform int _u%d;\n");
    case 20:
      v72 = *(result + 64);
      v73 = *(result + 32);
      v74 = (*(*(result + 40) + 16))();
      (*(v73 + 16))(v73, v74, 20, "_u", a6);
      return fprintf(v72, "uniform int2 _u%d;\n");
    case 21:
      v31 = *(result + 64);
      v32 = *(result + 32);
      v33 = (*(*(result + 40) + 16))();
      (*(v32 + 16))(v32, v33, 21, "_u", a6);
      return fprintf(v31, "uniform int3 _u%d;\n");
    case 22:
      v34 = *(result + 64);
      v35 = *(result + 32);
      v36 = (*(*(result + 40) + 16))();
      (*(v35 + 16))(v35, v36, 22, "_u", a6);
      return fprintf(v34, "uniform int4 _u%d;\n");
    default:
      return fprintf(*(result + 64), "// uniform %d not handled\n");
  }

  while (1)
  {
    v49 = v45;
    v50 = v46;
    v51 = v47;
    while (1)
    {
      v52 = *(a6 + 36);
      v53 = v41;
      do
      {
        v54 = *(v42 + 28);
        v55 = v54 >= v52;
        v56 = v54 < v52;
        if (v55)
        {
          v53 = v42;
        }

        v42 = *(v42 + 8 * v56);
      }

      while (v42);
      if (v53 == v41 || v52 < *(v53 + 28))
      {
        goto LABEL_36;
      }

      if ((*(*a6 + 16))(a6) != 34)
      {
        break;
      }

      v57 = *(a6 + 56);
      v58 = *(a6 + 64);
      v59 = *(a6 + 72);
      v60 = *(a6 + 80);
      v45 = v49 * v60 + v59 * v44;
      v61 = *(a6 + 88);
      v62 = *(a6 + 96);
      v63 = v49 * v62 + v61 * v44;
      v44 = v58 * v49 + v57 * v44;
      v46 = v58 * v51 + v57 * v50;
      v47 = v51 * v60 + v59 * v50;
      v48 = v48 + v63;
      v75 = v51 * v62 + v61 * v50 + v75;
      v49 = v45;
      v51 = v47;
      v50 = v46;
LABEL_27:
      a6 = (*(*a6 + 48))(a6, 0);
      v68 = *(*(v7 + 56) + 8);
      v69 = *(v68 + 48);
      v41 = v68 + 48;
      v42 = v69;
      if (!v69)
      {
        goto LABEL_36;
      }
    }

    v64 = (*(*a6 + 16))(a6);
    v65 = *a6;
    if (v64 == 53)
    {
      break;
    }

    v66 = (*(v65 + 16))(a6);
    v67 = *a6;
    if (v66 != 36)
    {
      if ((*(v67 + 16))(a6) != 55)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    a6 = (*(v67 + 48))(a6, 0);
    v70 = *(*(v7 + 56) + 8);
    v71 = *(v70 + 48);
    v41 = v70 + 48;
    v42 = v71;
    if (!v71)
    {
LABEL_36:
      (*(**(v7 + 72) + 48))(*(v7 + 72), a4);
      operator new();
    }
  }

  (*(v65 + 424))(a6);
  goto LABEL_27;
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_18(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0xFFFFFFFFLL;
  if ((a3 & 0x80000000) == 0 && *a2 > a3)
  {
    v6 = a3 > 9 ? *(a2 + 16) + 8 * a3 - 80 : a2 + 8 * a3 + 24;
    v7 = (*(**v6 + 16))();
    if (CI::is_any_TypeNode(v7))
    {
      if (a3)
      {
        v8 = 0;
        LODWORD(v3) = 0;
        v9 = -80;
        do
        {
          if (v8 > 9)
          {
            v10 = *(a2 + 16) + v9;
          }

          else
          {
            v10 = a2 + 24 + 8 * v8;
          }

          v11 = (*(**v10 + 16))();
          v3 = (v3 + CI::is_any_TypeNode(v11));
          ++v8;
          v9 += 8;
        }

        while (a3 != v8);
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

void ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_19(void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a1[4] + 16))();
  if (*(*(a1[10] + 8) + 24) && ((*(*a2 + 16))(a2) == 34 || (*(*a2 + 16))(a2) == 53 || (*(*a2 + 16))(a2) == 36 || (*(*a2 + 16))(a2) == 55))
  {
    return;
  }

  if ((*(*a2 + 16))(a2) == 54 || (*(*a2 + 16))(a2) == 35 || (*(*a2 + 16))(a2) == 52 || (*(*a2 + 16))(a2) == 60)
  {
    if (!*(*(a1[10] + 8) + 24) && (!a3 || (*(*a3 + 16))(a3) != 57 || ((*(*a3 + 424))(a3, a5) & 1) == 0))
    {
      if ((*(*a2 + 16))(a2) == 54)
      {
        v10 = (*(*a2 + 216))(a2);
      }

      else
      {
        v10 = 0;
      }

      if ((*(*a2 + 16))(a2) == 52)
      {
        v10 = (*(*a2 + 216))(a2);
      }

      (*(a1[5] + 16))();
      if (v10 == 2)
      {
        (*(a1[5] + 16))();
        operator new();
      }

      operator new();
    }

    return;
  }

  if ((*(*a2 + 16))(a2) == 58 || (*(*a2 + 16))(a2) == 57 || (*(*a2 + 16))(a2) == 59)
  {
    v11 = 0;
  }

  else
  {
    v30 = (*(*a2 + 336))(a2, a1[13]);
    if (!v30)
    {
      v33 = a1[11];
      v34 = a2[9];
      v35 = (*(*a2 + 16))(a2);
      v36 = CI::name_for_type(v35);
      fprintf(v33, "// nid:%d %s failed to convert_to_kernel_node() \n\n", v34, v36);
      return;
    }

    v11 = v30;
    a2 = v30;
  }

  if ((*(*a2 + 16))(a2) == 58)
  {
    v12 = *(a2 + 7);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 0x40000000;
    v54 = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_20;
    v55 = &unk_1E75C1960;
    v56 = a1[7];
    v57 = a2;
    v58 = v9;
    if (*v12 >= 1)
    {
      v13 = 0;
      v14 = v12 + 6;
      do
      {
        v15 = v14;
        if (v13 >= 0xA)
        {
          v15 = (*(v12 + 2) + 8 * v13 - 80);
        }

        (v54)(v53, v13++, *v15);
        v14 += 2;
      }

      while (v13 < *v12);
    }

LABEL_47:
    if (*(a2 + 6))
    {
      v28 = (*(a1[8] + 16))();
      v29 = a1[11];
      if (v28)
      {
        fprintf(v29, "%s\n");
      }

      else
      {
        fprintf(v29, "// %s\n\n");
      }
    }

    goto LABEL_54;
  }

  if ((*(*a2 + 16))(a2) == 57)
  {
    v16 = *(a2 + 7);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 0x40000000;
    v46 = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_21;
    v47 = &unk_1E75C1988;
    v17 = a1[9];
    v50 = a2;
    v51 = v16;
    v18 = a1[7];
    v48 = v17;
    v49 = v18;
    v52 = v9;
    if (*v16 >= 1)
    {
      v19 = 0;
      v20 = v16 + 6;
      do
      {
        v21 = v20;
        if (v19 >= 0xA)
        {
          v21 = (*(v16 + 2) + 8 * v19 - 80);
        }

        (v46)(v45, v19++, *v21);
        v20 += 2;
      }

      while (v19 < *v16);
    }

    goto LABEL_47;
  }

  if ((*(*a2 + 16))(a2) == 59)
  {
    v22 = *(a2 + 7);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 0x40000000;
    v38 = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_22;
    v39 = &unk_1E75C19B0;
    v23 = a1[9];
    v42 = a2;
    v43 = v22;
    v24 = a1[7];
    v40 = v23;
    v41 = v24;
    v44 = v9;
    if (*v22 >= 1)
    {
      v25 = 0;
      v26 = v22 + 6;
      do
      {
        v27 = v26;
        if (v25 >= 0xA)
        {
          v27 = (*(v22 + 2) + 8 * v25 - 80);
        }

        (v38)(v37, v25++, *v27);
        v26 += 2;
      }

      while (v25 < *v22);
    }

    goto LABEL_47;
  }

  v31 = a1[11];
  v32 = (*(*a2 + 16))(a2);
  CI::name_for_type(v32);
  fprintf(v31, "\n// nid:%d type:%s leaf:%d\n");
LABEL_54:
  if (v11)
  {
    CI::Object::unref(v11);
  }
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_20(uint64_t a1, signed int a2)
{
  CI::ColorKernelNode::kernel_argument_type(*(a1 + 40), a2);
  v3.n128_u64[0] = *MEMORY[0x1E695F050];
  v4.n128_u64[0] = *(MEMORY[0x1E695F050] + 8);
  v5.n128_u64[0] = *(MEMORY[0x1E695F050] + 16);
  v6.n128_u64[0] = *(MEMORY[0x1E695F050] + 24);
  v7 = *(*(a1 + 32) + 16);

  return v7(v3, v4, v5, v6);
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_21(uint64_t a1, signed int a2)
{
  CI::ColorKernelNode::kernel_argument_type(*(a1 + 48), a2);
  (*(*(a1 + 32) + 16))();
  v3.n128_u64[0] = *MEMORY[0x1E695F050];
  v4.n128_u64[0] = *(MEMORY[0x1E695F050] + 8);
  v5.n128_u64[0] = *(MEMORY[0x1E695F050] + 16);
  v6.n128_u64[0] = *(MEMORY[0x1E695F050] + 24);
  v7 = *(*(a1 + 40) + 16);

  return v7(v3, v4, v5, v6);
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_22(uint64_t a1, signed int a2)
{
  CI::ColorKernelNode::kernel_argument_type(*(a1 + 48), a2);
  v3 = (*(*(a1 + 32) + 16))();
  if ((v3 & 0x80000000) != 0)
  {
    v8 = MEMORY[0x1E695F050];
  }

  else
  {
    v8 = (*(*(a1 + 48) + 64) + 32 * v3);
  }

  v4.n128_u64[0] = *v8;
  v5.n128_u64[0] = v8[1];
  v6.n128_u64[0] = v8[2];
  v7.n128_u64[0] = v8[3];
  v9 = *(*(a1 + 40) + 16);

  return v9(v4, v5, v6, v7);
}

__n128 __Block_byref_object_copy__99(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__100(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_102(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6 != 30)
  {
    v7 = result;
    if (a3)
    {
      fwrite(", ", 2uLL, 1uLL, *(result + 48));
    }

    if (a6 - 9 < 0xA)
    {
      goto LABEL_7;
    }

    if (a6 <= 0x1B)
    {
      if (((1 << a6) & 0x87801E0) != 0)
      {
LABEL_7:
        v8 = *(v7 + 48);
        v11 = (*(*(v7 + 32) + 16))();
        v9 = "_u%d";
        return fprintf(v8, v9, v11);
      }

      if (a6 == 2)
      {
        return fprintf(*(v7 + 48), "%d");
      }

      if (a6 == 4)
      {
        v8 = *(v7 + 48);
        v11 = (*(*(v7 + 32) + 16))();
        v9 = "_i%d";
        return fprintf(v8, v9, v11);
      }
    }

    if (a6 == 1)
    {
      if ((*(*(v7 + 40) + 16))() == -1)
      {
        fwrite("/*?*/", 5uLL, 1uLL, *(v7 + 48));
      }

      return fprintf(*(v7 + 48), "_%d");
    }

    else
    {
      v10 = *(v7 + 48);

      return fputc(63, v10);
    }
  }

  return result;
}

BOOL ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_2_112(uint64_t a1, unsigned int a2)
{
  v12 = a2;
  v2 = *(*(a1 + 32) + 8);
  v5 = *(v2 + 48);
  v3 = v2 + 48;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 28);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 28) > a2)
  {
LABEL_9:
    v6 = v3;
  }

  v10 = v6 == v3;
  std::__tree<CI::NodeIndex>::__emplace_unique_key_args<CI::NodeIndex,CI::NodeIndex const&>(*(*(a1 + 32) + 8) + 40, &v12);
  return v10;
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_3_115(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result != *(*(a1[5] + 8) + 24))
  {
    v3 = result;
    v4 = a1[6];
    if (result == -1)
    {
      result = fwrite("  _dc = p0;\n", 0xCuLL, 1uLL, v4);
    }

    else
    {
      result = fprintf(v4, "  _dc = _%ddc;\n", result);
    }

    *(*(a1[5] + 8) + 24) = v3;
  }

  return result;
}

void ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_4_120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v12 = (*(*(a1 + 32) + 16))();
  if (a9 < 0)
  {
    v13 = v12;
    if (!*(*(*(a1 + 64) + 8) + 24) || (*(*a2 + 16))(a2) != 34 && (*(*a2 + 16))(a2) != 53 && (*(*a2 + 16))(a2) != 36)
    {
      if ((*(*a2 + 16))(a2) == 58)
      {
        v14 = 0;
      }

      else
      {
        v15 = (*(*a2 + 336))(a2, *(a1 + 80));
        if (!v15)
        {
          return;
        }

        v14 = v15;
        a2 = v15;
      }

      if ((*(*a2 + 16))(a2) == 58)
      {
        v16 = *(*(a1 + 72) + 8);
        v18 = v16[6];
        v17 = v16[7];
        if (v18 >= v17)
        {
          v20 = v16[5];
          v21 = v18 - v20;
          v22 = (v18 - v20) >> 2;
          v23 = v22 + 1;
          if ((v22 + 1) >> 62)
          {
            std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
          }

          v24 = v17 - v20;
          if (v24 >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
          v26 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v26 = v23;
          }

          if (v26)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CI::NodeIndex>>((v16 + 5), v26);
          }

          v27 = (v18 - v20) >> 2;
          v28 = (4 * v22);
          v29 = (4 * v22 - 4 * v27);
          *v28 = *(a2 + 36);
          v19 = v28 + 1;
          memcpy(v29, v20, v21);
          v30 = v16[5];
          v16[5] = v29;
          v16[6] = v19;
          v16[7] = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v18 = *(a2 + 36);
          v19 = v18 + 4;
        }

        v16[6] = v19;
        (*(*(a1 + 40) + 16))();
        if ((*(*(a1 + 48) + 16))())
        {
          v31 = "  vec2 ";
          v32 = 7;
        }

        else
        {
          v31 = "  ";
          v32 = 2;
        }

        fwrite(v31, v32, 1uLL, *(a1 + 88));
        fprintf(*(a1 + 88), "_%ddc = %s(", v13, *(*(a2 + 48) + 24));
        v33 = *(a2 + 56);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 0x40000000;
        v38 = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_5_124;
        v39 = &unk_1E75C1A78;
        v40 = *(a1 + 56);
        v41 = a2;
        v43 = v13;
        v42 = a8;
        if (*v33 >= 1)
        {
          v34 = 0;
          v35 = v33 + 6;
          do
          {
            v36 = v35;
            if (v34 >= 0xA)
            {
              v36 = (*(v33 + 2) + 8 * v34 - 80);
            }

            (v38)(v37, v34++, *v36);
            v35 += 2;
          }

          while (v34 < *v33);
        }

        fwrite(");\n", 3uLL, 1uLL, *(a1 + 88));
      }

      if (v14)
      {
        CI::Object::unref(v14);
      }
    }
  }
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_5_124(uint64_t a1, signed int a2)
{
  CI::ColorKernelNode::kernel_argument_type(*(a1 + 40), a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_6_128(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (*(*(a1 + 32) + 16))();
  v14 = (*(*(a1 + 40) + 16))();
  ++*(*(*(a1 + 88) + 8) + 24);
  if (a3 && (*(*a3 + 16))(a3) == 57)
  {
    v15 = (*(*a3 + 424))(a3, a5);
  }

  else
  {
    v15 = 0;
  }

  if ((*(*a2 + 16))(a2) == 55 && *(*(*(a1 + 96) + 8) + 24))
  {
    return;
  }

  if ((*(*a2 + 16))(a2) != 54 && (*(*a2 + 16))(a2) != 35 && (*(*a2 + 16))(a2) != 52 && (*(*a2 + 16))(a2) != 60)
  {
    if ((*(*a2 + 16))(a2) == 58 || (*(*a2 + 16))(a2) == 57 || (*(*a2 + 16))(a2) == 59)
    {
      v18 = 0;
    }

    else
    {
      v29 = (*(*a2 + 336))(a2, *(a1 + 120));
      if ((v29 == 0) | v15 & 1)
      {
        v30 = *(a1 + 112);
        v31 = a2[9];
        v32 = (*(*a2 + 16))(a2);
        v33 = CI::name_for_type(v32);
        fprintf(v30, "// nid:%d %s failed to convert_to_kernel_node() \n\n", v31, v33);
        return;
      }

      v18 = v29;
      a2 = v29;
    }

    if ((*(*a2 + 16))(a2) == 58)
    {
      if (*(*(*(a1 + 96) + 8) + 24))
      {
        goto LABEL_46;
      }

      v19 = (*(*(a1 + 64) + 16))();
      v20 = *(a1 + 112);
      if (v19 < 0)
      {
        fprintf(v20, "  vec4 _%d = _%d; //? %s\n");
      }

      else
      {
        fprintf(v20, "  vec4 _%d = _%d; // %s\n");
      }
    }

    else
    {
      if ((*(*a2 + 16))(a2) == 57)
      {
        (*(*(a1 + 48) + 16))();
        fprintf(*(a1 + 112), "  vec4 _%d = %s(", v14, *(*(a2 + 6) + 24));
        v21 = *(a2 + 7);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 0x40000000;
        v48 = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_7_134;
        v49 = &unk_1E75C1AC8;
        v51 = a2;
        v52 = v21;
        v50 = *(a1 + 72);
        v54 = v13;
        v53 = a8;
        if (*v21 >= 1)
        {
          v22 = 0;
          v23 = v21 + 6;
          do
          {
            v24 = v23;
            if (v22 >= 0xA)
            {
              v24 = (*(v21 + 2) + 8 * v22 - 80);
            }

            (v48)(v47, v22++, *v24);
            v23 += 2;
          }

          while (v22 < *v21);
        }
      }

      else
      {
        if ((*(*a2 + 16))(a2) != 59)
        {
          v34 = *(a1 + 112);
          v35 = a2[9];
          v36 = (*(*a2 + 16))(a2);
          v37 = CI::name_for_type(v36);
          fprintf(v34, "// %d nid:%d %s \n", v13, v35, v37);
          if (!v18)
          {
            return;
          }

LABEL_47:
          CI::Object::unref(v18);
          return;
        }

        (*(*(a1 + 48) + 16))();
        fprintf(*(a1 + 112), "  vec4 _%d = %s(", v14, *(*(a2 + 6) + 24));
        v25 = *(a2 + 7);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 0x40000000;
        v39 = ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_8_136;
        v40 = &unk_1E75C1AF0;
        v42 = a2;
        v43 = v25;
        v41 = *(a1 + 72);
        v45 = a5;
        v46 = v13;
        v44 = a8;
        if (*v25 >= 1)
        {
          v26 = 0;
          v27 = v25 + 6;
          do
          {
            v28 = v27;
            if (v26 >= 0xA)
            {
              v28 = (*(v25 + 2) + 8 * v26 - 80);
            }

            (v39)(v38, v26++, *v28);
            v27 += 2;
          }

          while (v26 < *v25);
        }
      }

      fwrite(");\n", 3uLL, 1uLL, *(a1 + 112));
    }

    *(*(*(a1 + 104) + 8) + 24) = v14;
LABEL_46:
    if (!v18)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!((*(*(*(a1 + 96) + 8) + 24) != 0) | v15 & 1))
  {
    if ((*(*a2 + 16))(a2) == 54)
    {
      v16 = (*(*a2 + 216))(a2);
    }

    else
    {
      v16 = 0;
    }

    if ((*(*a2 + 16))(a2) == 52)
    {
      v16 = (*(*a2 + 216))(a2);
    }

    (*(*(a1 + 48) + 16))();
    (*(*(a1 + 56) + 16))();
    v17 = *(a1 + 112);
    if (v16 == 2)
    {
      fprintf(v17, "  vec4 _%d = _read_pixel_420(_i%d, _i%d, _dc, _u%d, _t%d);\n");
    }

    else
    {
      fprintf(v17, "  vec4 _%d = _read_pixel(_i%d, _dc, _t%d);\n");
    }

    *(*(*(a1 + 104) + 8) + 24) = v14;
  }
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_7_134(uint64_t a1, unsigned int a2)
{
  CI::ColorKernelNode::get_argument(*(a1 + 48), a2);
  CI::ColorKernelNode::kernel_argument_type(*(a1 + 48), a2);
  (*(*(a1 + 32) + 16))();
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t ___ZN2CI28createMainProgramCodeAndArgsEPNS_7ContextEPKcPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEjb_block_invoke_8_136(uint64_t a1, signed int a2)
{
  CI::ColorKernelNode::kernel_argument_type(*(a1 + 48), a2);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

CI::SerialStringArray *CI::SerialStringArray::SerialStringArray(CI::SerialStringArray *this, unsigned int a2, int a3)
{
  *this = 0;
  v6 = a2 + a2 * a3;
  *(this + 4) = v6;
  *(this + 3) = malloc_type_malloc(v6, 0x100004077774924uLL);
  v7 = malloc_type_malloc(8 * a2, 0x10040436913F5uLL);
  if (a2 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2;
  }

  *(this + 1) = a2;
  *(this + 2) = v8;
  v9 = *(this + 3);
  *(this + 4) = v7;
  *(this + 5) = v9;
  *(this + 3) = a3;
  return this;
}

void *CI::SerialStringArray::append(CI::SerialStringArray *this, const char *__src, size_t __n)
{
  v6 = *this;
  v7 = *(this + 1);
  v8 = *(this + 5);
  if (v6 >= v7)
  {
    v9 = *(this + 3);
  }

  else
  {
    v9 = *(this + 3);
    if (&v8[__n] < &v9[*(this + 4)])
    {
      goto LABEL_11;
    }
  }

  v10 = *(this + 3);
  v11 = *(this + 2) + v7;
  *(this + 1) = v11;
  v12 = v11 + v11 * v10;
  if (v12 <= v8 + __n - v9 + 1)
  {
    LODWORD(v12) = v8 + __n - v9 + 1;
  }

  *(this + 4) = v12;
  v13 = v8 - v9;
  *(this + 3) = malloc_type_realloc(v9, v12, 0x100004077774924uLL);
  v14 = malloc_type_realloc(*(this + 4), 8 * *(this + 1), 0x10040436913F5uLL);
  v15 = *(this + 3);
  v8 = (v15 + v13);
  *(this + 4) = v14;
  *(this + 5) = v15 + v13;
  v16 = *this;
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v15 - v9;
    v19 = 8 * v16;
    do
    {
      *(*(this + 4) + v17) += v18;
      v17 += 8;
    }

    while (v19 != v17);
    v8 = *(this + 5);
  }

LABEL_11:
  result = memcpy(v8, __src, __n);
  *(*(this + 5) + __n) = 0;
  v22 = *(this + 4);
  v21 = *(this + 5);
  v23 = *this;
  *this = v23 + 1;
  *(v22 + 8 * v23) = v21;
  *(this + 5) = v21 + __n + 1;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::NodeIndex>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void *std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<char const*>::__emplace_unique_key_args<char const*,char const* const&>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<CI::NodeIndex>::__emplace_unique_key_args<CI::NodeIndex,CI::NodeIndex const&>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<CI::NodeIndex,int>,std::__map_value_compare<CI::NodeIndex,std::__value_type<CI::NodeIndex,int>,std::less<CI::NodeIndex>,true>,std::allocator<std::__value_type<CI::NodeIndex,int>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

const __CFString *CoreAnayticsAppIndentifier(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    v3.location = 0;
    v3.length = Length;
    if (CFStringFindWithOptions(v1, @"com.microsoft", v3, 1uLL, 0))
    {
      return @"Microsoft";
    }

    else
    {
      v4.location = 0;
      v4.length = Length;
      if (CFStringFindWithOptions(v1, @"com.adobe", v4, 1uLL, 0))
      {
        return @"Adobe";
      }

      else
      {
        v5.location = 0;
        v5.length = Length;
        if (CFStringFindWithOptions(v1, @"com.google", v5, 1uLL, 0))
        {
          return @"Google";
        }

        else
        {
          v6.location = 0;
          v6.length = Length;
          if (CFStringFindWithOptions(v1, @"com.facebook", v6, 1uLL, 0))
          {
            return @"Facebook";
          }

          else
          {
            v7.location = 0;
            v7.length = Length;
            if (CFStringFindWithOptions(v1, @"com.burbn.instagram", v7, 1uLL, 0))
            {
              return @"Instagram";
            }

            else
            {
              v8.location = 0;
              v8.length = Length;
              if (CFStringFindWithOptions(v1, @"com.gentlemencoders", v8, 1uLL, 0))
              {
                return @"GentlemenCoders";
              }

              else
              {
                v9.location = 0;
                v9.length = Length;
                if (CFStringFindWithOptions(v1, @"com.fxfactory", v9, 1uLL, 0))
                {
                  return @"FxFactory";
                }

                else
                {
                  v10.location = 0;
                  v10.length = Length;
                  if (CFStringFindWithOptions(v1, @"com.ubercab", v10, 1uLL, 0))
                  {
                    return @"Uber";
                  }

                  else
                  {
                    v11.location = 0;
                    v11.length = Length;
                    if (CFStringFindWithOptions(v1, @"com.postmates", v11, 1uLL, 0))
                    {
                      return @"Postmates";
                    }

                    else
                    {
                      v12.location = 0;
                      v12.length = Length;
                      if (CFStringFindWithOptions(v1, @"com.dynamicappdesign.rawplus", v12, 1uLL, 0))
                      {
                        return @"RawPlus";
                      }

                      else
                      {
                        v13.location = 0;
                        v13.length = Length;
                        if (CFStringFindWithOptions(v1, @"com.pixelmatorteam", v13, 1uLL, 0))
                        {
                          return @"Pixelmator";
                        }

                        else
                        {
                          v14.location = 0;
                          v14.length = Length;
                          if (CFStringFindWithOptions(v1, @"com.vidvox", v14, 1uLL, 0))
                          {
                            return @"Vidvox";
                          }

                          else
                          {
                            v15.location = 0;
                            v15.length = Length;
                            if (CFStringFindWithOptions(v1, @"com.boinx", v15, 1uLL, 0))
                            {
                              return @"Boinx";
                            }

                            else
                            {
                              v16.location = 0;
                              v16.length = Length;
                              if (CFStringFindWithOptions(v1, @"com.ecamm", v16, 1uLL, 0))
                              {
                                return @"Ecamm";
                              }

                              else
                              {
                                v17.location = 0;
                                v17.length = Length;
                                if (CFStringFindWithOptions(v1, @"com.crossforward", v17, 1uLL, 0))
                                {
                                  return @"CrossForward";
                                }

                                else
                                {
                                  v18.location = 0;
                                  v18.length = Length;
                                  if (CFStringFindWithOptions(v1, @"com.apple", v18, 1uLL, 0))
                                  {
                                    return v1;
                                  }

                                  else
                                  {
                                    return @"Other";
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const char *acLog(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = getenv("CI_DEBUG_AUTOCROP");
  if (result)
  {
    result = atoi(result);
    if (result)
    {
      return vfprintf(*MEMORY[0x1E69E9848], a1, &a9);
    }
  }

  return result;
}

char *BGHashMapCreate(unsigned int a1)
{
  v2 = malloc_type_malloc(16 * a1 + 24, 0x102004093CA8EA1uLL);
  v3 = v2;
  *v2 = v2 + 24;
  *(v2 + 2) = a1;
  *(v2 + 2) = 0;
  if (a1)
  {
    v4 = (a1 + 15) & 0x1FFFFFFF0;
    v5 = vdupq_n_s64(a1 - 1);
    v6 = xmmword_19CF22DD0;
    v7 = xmmword_19CF22DE0;
    v8 = xmmword_19CF22DF0;
    v9 = xmmword_19CF22E00;
    v10 = xmmword_19CF22E10;
    v11 = xmmword_19CF22E20;
    v12 = xmmword_19CF22E30;
    v13 = xmmword_19CF22E40;
    v14 = v2 + 136;
    v15 = vdupq_n_s64(0x10uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v5, v13));
      if (vuzp1_s8(vuzp1_s16(v16, *v5.i8), *v5.i8).u8[0])
      {
        *(v14 - 112) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v5), *&v5).i8[1])
      {
        *(v14 - 96) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v12))), *&v5).i8[2])
      {
        *(v14 - 80) = 0;
        *(v14 - 64) = 0;
      }

      v17 = vmovn_s64(vcgeq_u64(v5, v11));
      if (vuzp1_s8(*&v5, vuzp1_s16(v17, *&v5)).i32[1])
      {
        *(v14 - 48) = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v17, *&v5)).i8[5])
      {
        *(v14 - 32) = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v10)))).i8[6])
      {
        *(v14 - 16) = 0;
        *v14 = 0;
      }

      v18 = vmovn_s64(vcgeq_u64(v5, v9));
      if (vuzp1_s8(vuzp1_s16(v18, *v5.i8), *v5.i8).u8[0])
      {
        v14[16] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v5), *&v5).i8[1])
      {
        v14[32] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v8))), *&v5).i8[2])
      {
        v14[48] = 0;
        v14[64] = 0;
      }

      v19 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s8(*&v5, vuzp1_s16(v19, *&v5)).i32[1])
      {
        v14[80] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v19, *&v5)).i8[5])
      {
        v14[96] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6)))).i8[6])
      {
        v14[112] = 0;
        v14[128] = 0;
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v10 = vaddq_s64(v10, v15);
      v9 = vaddq_s64(v9, v15);
      v8 = vaddq_s64(v8, v15);
      v7 = vaddq_s64(v7, v15);
      v14 += 256;
      v6 = vaddq_s64(v6, v15);
      v4 -= 16;
    }

    while (v4);
  }

  v20 = malloc_type_malloc(0x1D4D8uLL, 0x102004014030ADEuLL);
  *v20 = v20 + 3;
  v20[1] = 5000;
  v20[2] = 0;
  *(v3 + 2) = v20;
  return v3;
}

void BGHashMapRelease(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      do
      {
        v3 = v2[2];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

void BGHashClear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    do
    {
      v4 = v3[2];
      free(v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v2 + 12) = 0;
  *(v2 + 16) = 0;
  v5 = *a1;
  v6 = 16 * *(a1 + 8);

  bzero(v5, v6);
}

uint64_t BGHashFindKey(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *a1 + 16 * ((257 * (16974593 * a2 + BYTE3(a2) + 66049 * BYTE1(a2) + (BYTE2(a2) | (BYTE2(a2) << 8))) + BYTE4(a2) + 842144005) % *(a1 + 8));
  if (*v3 != 1)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  while (*v4 != a2)
  {
    v4 = *(v4 + 16);
    if (!v4)
    {
      return 0;
    }
  }

  *a3 = *(v4 + 8);
  return 1;
}

char *BGHashSetValue(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*a1 + 16 * ((257 * (16974593 * a2 + BYTE3(a2) + 66049 * BYTE1(a2) + (BYTE2(a2) | (BYTE2(a2) << 8))) + BYTE4(a2) + 842144005) % *(a1 + 8)));
  v6 = *v5;
  result = bgNewLinkedListEntry(a1);
  if (v6 == 1)
  {
    *(result + 2) = *(v5 + 1);
  }

  else
  {
    *(result + 2) = 0;
    *v5 = 1;
  }

  *result = a2;
  *(result + 2) = a3;
  *(v5 + 1) = result;
  return result;
}

char *bgNewLinkedListEntry(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2[3];
  if (v3 == v2[2])
  {
    v2 = malloc_type_malloc(24 * v3 + 24, 0x102004014030ADEuLL);
    v4 = (v2 + 6);
    *v2 = v2 + 6;
    v2[2] = v3;
    v2[3] = 0;
    *(v2 + 2) = *(a1 + 16);
    *(a1 + 16) = v2;
    v3 = 0;
  }

  else
  {
    v4 = *v2;
  }

  v2[3] = v3 + 1;
  return &v4[24 * v3];
}

uint64_t hash_shift(uint64_t a1, int a2, int a3)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v3 = *(v5 + a2) + a3;
  if (v3 > 0xFF)
  {
    return -1;
  }

  *(v5 + a2) = v3;
  return v5[0];
}

void sub_19CC57224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *initBitmap(uint64_t a1, int a2, int a3, int a4, int a5, float a6)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = a6;
  v7 = a4 * a2 * a5;
  *(a1 + 16) = a4 * a2;
  *(a1 + 20) = v7;
  *(a1 + 24) = v7 * a3;
  result = malloc_type_malloc(v7 * a3, 0x100004077774924uLL);
  *a1 = result;
  return result;
}

void termBitmap(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
}

uint64_t constructBitmap(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, float a8)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 28) = a5;
  *(result + 32) = a6;
  *(result + 36) = a8;
  *(result + 16) = a7 / a6;
  *(result + 20) = a7;
  *(result + 24) = a7 * a4;
  return result;
}

float constructSliceBitmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  *a2 = *a1 + v4 * a3 + v6 * a4 * v7;
  *(a2 + 8) = HIDWORD(a4) - a4;
  *(a2 + 12) = HIDWORD(a3) - a3;
  *(a2 + 16) = v5;
  *(a2 + 20) = v4;
  *(a2 + 24) = v4 * (HIDWORD(a3) - a3);
  *(a2 + 28) = v6;
  *(a2 + 32) = v7;
  result = *(a1 + 36);
  *(a2 + 36) = result;
  return result;
}

BOOL bilinearLookupTest(uint64_t a1, float a2, float a3)
{
  result = 0;
  if (a2 >= 0.0 && a3 >= 0.0)
  {
    return (*(a1 + 8) - 1) >= a2 && (*(a1 + 12) - 1) >= a3;
  }

  return result;
}

uint64_t bilinearLookup(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = v4 - v6;
  v10 = v3 - v8;
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + v8 * v11 + v12 * v6);
  v14 = *v13 + ((v13[v12] - *v13) * v9);
  return rintf(v14 + (((v13[v11] + ((v13[v12 + v11] - v13[v11]) * v9)) - v14) * v10));
}

uint64_t bilinearLookupAccurate(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = rintf((v4 - v6) * 64.0);
  v10 = rintf((v3 - v8) * 64.0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + v8 * v11 + v12 * v6);
  v14 = v13[v11];
  LODWORD(v11) = v13[v12 + v11];
  LODWORD(v13) = *v13 + (((v13[v12] - *v13) * v9 + 32) >> 6);
  return ((v14 - v13 + (((v11 - v14) * v9 + 32) >> 6)) * v10 + (v13 << 6));
}

double bilinearCbCrLookup(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = v4 - v6;
  v10 = v3 - v8;
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + v8 * v11 + v12 * v6);
  v14 = *v13 + ((v13[v12] - *v13) * v9);
  return rintf(v14 + (((v13[v11] + ((v13[v12 + v11] - v13[v11]) * v9)) - v14) * v10));
}

float bilinearARGB8LookupComponents(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, float a6, float a7)
{
  v7 = 0.0;
  v8 = 0.0;
  if (a6 >= 0.0)
  {
    v8 = a6;
    if ((*(a1 + 8) - 1) < a6)
    {
      v8 = (*(a1 + 8) - 1);
    }
  }

  v9 = *(a1 + 12);
  if (a7 >= 0.0)
  {
    v7 = a7;
    if ((v9 - 1) < a7)
    {
      v7 = (v9 - 1);
    }
  }

  v10 = vcvtms_s32_f32(v8);
  v11 = vcvtms_s32_f32(v7);
  if (*(a1 + 8) - 2 < v10)
  {
    v10 = *(a1 + 8) - 2;
  }

  v12 = v9 - 2;
  if (v12 >= v11)
  {
    v12 = v11;
  }

  v13 = v8 - v10;
  v14 = v7 - v12;
  v15 = *(a1 + 16);
  v16 = *(a1 + 28);
  v17 = (*a1 + v12 * v15 + v16 * v10);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[v16];
  v23 = v17[v16 + 1];
  v24 = v17[v16 + 2];
  v25 = v17[v16 + 3];
  v26 = v17[v15];
  v27 = v17[v15 + 1];
  v28 = v17[v15 + 2];
  v29 = v17[v15 + 3];
  v30 = &v17[v16 + v15];
  LODWORD(v15) = *v30;
  LODWORD(v16) = v30[1];
  v31 = v30[2];
  LODWORD(v30) = v30[3];
  v32 = v18 + ((v22 - v18) * v13);
  *a2 = rintf(v32 + (((v26 + ((v15 - v26) * v13)) - v32) * v14));
  v33 = v19 + ((v23 - v19) * v13);
  *a3 = rintf(v33 + (((v27 + ((v16 - v27) * v13)) - v33) * v14));
  v34 = v20 + ((v24 - v20) * v13);
  *a4 = rintf(v34 + (((v28 + ((v31 - v28) * v13)) - v34) * v14));
  v35 = v21 + ((v25 - v21) * v13);
  result = rintf(v35 + (((v29 + ((v30 - v29) * v13)) - v35) * v14));
  *a5 = result;
  return result;
}

int *copySliceOfBitmapToBitmap(int *result, char **a2, uint64_t a3, uint64_t a4)
{
  if (result[8] == *(a2 + 8) && (v4 = result, result[7] == *(a2 + 7)))
  {
    v5 = HIDWORD(a3) - a3;
    if (SHIDWORD(a3) > a3)
    {
      v6 = a4;
      v7 = HIDWORD(a4) - a4;
      v8 = *a2;
      v9 = result[5];
      v10 = *result + v9 * a3;
      v11 = *(a2 + 5);
      do
      {
        v12 = v4[8] * v4[7];
        result = memmove(v8, (v10 + v12 * v6), v12 * v7);
        v10 += v9;
        v8 += v11;
        --v5;
      }

      while (v5);
    }
  }

  else
  {

    return puts("copySliceOfBitmapToBitmap: bytes per sample or samples per pixel differs!");
  }

  return result;
}

int *copyBitmapToSliceOfBitmap(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result[8] == *(a2 + 32) && (v5 = result, result[7] == *(a2 + 28)))
  {
    v6 = HIDWORD(a3) - a3;
    if (SHIDWORD(a3) > a3)
    {
      v7 = a4;
      v8 = HIDWORD(a4) - a4;
      v9 = *(a2 + 20);
      v10 = *a2 + v9 * a3;
      v11 = *result;
      v12 = result[5];
      do
      {
        result = memmove((v10 + *(a2 + 28) * v7 * *(a2 + 32)), v11, v5[7] * v8 * v5[8]);
        v11 += v12;
        v10 += v9;
        --v6;
      }

      while (v6);
    }
  }

  else
  {

    return puts("copyBitmapToSliceOfBitmap: bytes per sample or samples per pixel differs!");
  }

  return result;
}

unint64_t bitmapToBitmapDifferenceBitmapRect(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int8x8_t a7)
{
  v7 = *(a1 + 12);
  if (v7 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = (*(a1 + 32) * *(a1 + 28));
  v11 = *a2;
  v12 = *(a1 + 20);
  v13 = *(a1 + 8);
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a1 + 8);
  }

  v15 = 0;
  v16 = *a1 + 3;
  v17 = 0;
  do
  {
    if (v13 >= 1)
    {
      if (v10 > 8 || ((1 << v10) & 0x116) == 0)
      {
        puts("bitmapToBitmapDifferenceBitmapRect: source pixel configuration illegal");
        return 0;
      }

      v18 = 0;
      v19 = v16;
      v20 = v11;
      v21 = v15;
      do
      {
        v22 = *(v19 - 3);
        switch(v10)
        {
          case 4:
            if (v22 != *v20 || (*(v19 - 2) == v20[1] ? (v24 = *(v19 - 1) == v20[2]) : (v24 = 0), v24 ? (v25 = *v19 == v20[3]) : (v25 = 0), !v25))
            {
LABEL_35:
              v15 = __PAIR64__(v18, v9);
              if (v8)
              {
                a7 = vcgt_s32(v17, __PAIR64__(v18, v9));
                v17 = vmin_s32(__PAIR64__(v18, v9), v17);
                v15 = vbsl_s8(a7, v21, vmax_s32(__PAIR64__(v18, v9), v21));
                v8 = 1;
              }

              else
              {
                v8 = 1;
                v17 = __PAIR64__(v18, v9);
              }

              goto LABEL_38;
            }

            break;
          case 2:
            if (v22 != *v20 || *(v19 - 2) != v20[1])
            {
              goto LABEL_35;
            }

            break;
          case 1:
            if (v22 != *v20)
            {
              goto LABEL_35;
            }

            break;
          default:
            if (v22 != *v20)
            {
              goto LABEL_35;
            }

            v15.i32[0] = *(v20 + 1);
            a7.i32[0] = *(v19 - 2);
            a7 = (vmovl_u8(a7).u64[0] & 0xFF00FF00FF00FFLL);
            if ((vmaxv_u16(vmvn_s8(vceq_s16(a7, (vmovl_u8(v15).u64[0] & 0xFF00FF00FF00FFLL)))) & 1) != 0 || v19[2] != v20[5] || v19[3] != v20[6] || v19[4] != v20[7])
            {
              goto LABEL_35;
            }

            break;
        }

        v15 = v21;
LABEL_38:
        ++v18;
        v20 += *(a2 + 32) * *(a2 + 28);
        v19 += v10;
        v21 = v15;
      }

      while (v14 != v18);
    }

    ++v9;
    v11 += *(a2 + 20);
    v16 += v12;
  }

  while (v9 != v7);
  if (v8)
  {
    v26.i64[0] = v17.u32[0];
    v26.i64[1] = v17.u32[1];
    return vorrq_s8(vshll_n_s32(vadd_s32(v15, 0x100000001), 0x20uLL), v26).u64[0];
  }

  return 0;
}

uint64_t intersectBitmapRects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (SHIDWORD(a1) >= SHIDWORD(a3))
  {
    v4 = HIDWORD(a3);
  }

  else
  {
    v4 = HIDWORD(a1);
  }

  return v3 | (v4 << 32);
}

uint64_t unionBitmapRects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (SHIDWORD(a1) <= SHIDWORD(a3))
  {
    v4 = HIDWORD(a3);
  }

  else
  {
    v4 = HIDWORD(a1);
  }

  return v3 | (v4 << 32);
}

unint64_t alignedBitmapRectAroundPoint(uint64_t a1, int a2, int a3)
{
  if ((a3 + a2))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return (a2 - a3) & 0xFFFFFFFE | ((v3 + a3 + a2) << 32);
}

unint64_t clipBitmapRectToBitmapBounds(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = HIDWORD(a1);
  if ((*(a3 + 12) & 0xFFFFFFFE) < SHIDWORD(a1))
  {
    LODWORD(v3) = *(a3 + 12) & 0xFFFFFFFE;
  }

  return a1 & ~(a1 >> 31) | ((v3 - ((v3 - (a1 & ~(a1 >> 31))) & 1)) << 32);
}

uint64_t clipBitmapRectToWidthAndHeight(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1;
  if ((a4 & 0xFFFFFFFE) >= SHIDWORD(a1))
  {
    v5 = HIDWORD(a1);
  }

  else
  {
    v5 = a4 & 0xFFFFFFFE;
  }

  if (a1 < 0)
  {
    v4 = 0;
  }

  return v4 | (v5 << 32);
}

uint64_t applyMaxFilter8(char **a1, int a2)
{
  if (*(a1 + 2) < a2)
  {
    return 1;
  }

  v4 = *(a1 + 3);
  if (v4 < a2)
  {
    return 1;
  }

  v5 = *(a1 + 4);
  v6 = *(a1 + 7);
  if (v4 <= v5)
  {
    v4 = *(a1 + 4);
  }

  result = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
  if (result)
  {
    v7 = a2;
    v8 = a2 / -2;
    v9 = a2 - a2 / 2;
    v10 = *(a1 + 3);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = *a1;
      v58 = result;
      v61 = v6 * (v8 - 1);
      v14 = a2 / 2;
      if (1 - v8 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 1 - v8;
      }

      do
      {
        v60 = v12;
        memmove(result, v13, *(a1 + 2));
        if (v6 < 1)
        {
          result = v58;
          v7 = a2;
        }

        else
        {
          v16 = 0;
          result = v58;
          v7 = a2;
          do
          {
            v17 = v58 + v16;
            v18 = &v13[v16];
            if (a2 < -1)
            {
              v24 = 0;
            }

            else
            {
              v19 = 0;
              v20 = a2 / -2;
              do
              {
                if (v19 <= v14)
                {
                  v21 = a2 / 2;
                }

                else
                {
                  v21 = v19;
                }

                if (v19 < v14)
                {
                  v22 = -v19;
                }

                else
                {
                  v22 = a2 / -2;
                }

                if (v22 >= v9)
                {
                  v11 = 0;
                }

                else
                {
                  v11 = 0;
                  v23 = v6 * (v21 + v20);
                  do
                  {
                    if (v11 <= *(v17 + v23))
                    {
                      v11 = *(v17 + v23);
                    }

                    ++v22;
                    v23 += v6;
                  }

                  while (v22 < v9);
                }

                ++v19;
                *v18 = v11;
                v17 += v6;
                v18 += v6;
                --v20;
              }

              while (v19 != v15);
              v24 = v15;
            }

            v25 = *(a1 + 2);
            v26 = v25 - v9;
            if (v24 < v25 - v9)
            {
              v27 = (v17 + v61);
              v28 = (v17 + v61 + v6 * a2);
              do
              {
                if (v11 <= *v27 || v11 <= *v28)
                {
                  v29 = &v27[v6];
                  if (&v27[v6] <= v28)
                  {
                    v11 = 0;
                    do
                    {
                      if (v11 <= *v29)
                      {
                        v11 = *v29;
                      }

                      v29 += v6;
                    }

                    while (v29 <= v28);
                  }

                  else
                  {
                    v11 = 0;
                  }
                }

                ++v24;
                v17 += v6;
                *v18 = v11;
                v27 += v6;
                v28 += v6;
                v18 += v6;
              }

              while (v24 < v26);
              goto LABEL_44;
            }

            v26 = v24;
            while (v26 < v25)
            {
              if (v26 + v9 <= v25)
              {
                v30 = a2 - a2 / 2;
              }

              else
              {
                v30 = v25 - v26;
              }

              if (v8 >= v30)
              {
                LOBYTE(v31) = 0;
              }

              else
              {
                v31 = 0;
                v32 = v6 * v8;
                v33 = a2 / -2;
                do
                {
                  if (v31 <= *(v17 + v32))
                  {
                    v31 = *(v17 + v32);
                  }

                  ++v33;
                  v32 += v6;
                }

                while (v33 < v30);
              }

              *v18 = v31;
              ++v26;
              v17 += v6;
              v18 += v6;
LABEL_44:
              v25 = *(a1 + 2);
            }

            ++v16;
          }

          while (v16 != v6);
        }

        v12 = v60 + 1;
        v13 += v5;
        v10 = *(a1 + 3);
      }

      while (v60 + 1 < v10);
    }

    if (*(a1 + 2) * v6 >= 1)
    {
      v34 = 0;
      v35 = *a1;
      v36 = 1 - v8;
      v37 = a2 / 2;
      if (1 - v8 <= 1)
      {
        v36 = 1;
      }

      do
      {
        if (v10 >= 1)
        {
          v38 = 0;
          v39 = v35;
          do
          {
            *(result + v38) = *v39;
            v39 += v5;
            v10 = *(a1 + 3);
            ++v38;
          }

          while (v38 < v10);
        }

        if (v7 < -1)
        {
          v48 = 0;
          v46 = 0;
          v43 = result;
          v42 = v35;
        }

        else
        {
          v40 = 0;
          v41 = a2 / -2;
          v42 = v35;
          v43 = result;
          do
          {
            if (v40 <= v37)
            {
              v44 = a2 / 2;
            }

            else
            {
              v44 = v40;
            }

            if (v40 < v37)
            {
              v45 = -v40;
            }

            else
            {
              v45 = a2 / -2;
            }

            if (v45 >= v9)
            {
              v46 = 0;
            }

            else
            {
              v46 = 0;
              v47 = v44 + v41;
              do
              {
                if (v46 <= *(v43 + v47))
                {
                  v46 = *(v43 + v47);
                }

                ++v47;
              }

              while (v47 < v9);
            }

            ++v40;
            *v42 = v46;
            ++v43;
            v42 += v5;
            --v41;
          }

          while (v40 != v36);
          v10 = *(a1 + 3);
          v48 = v36;
        }

        v49 = v10 - v9;
        if (v48 < v10 - v9)
        {
          v50 = (v43 + v8 - 1);
          v51 = &v50[v7];
          do
          {
            if (v46 <= *v50 || v46 <= *v51)
            {
              v52 = v50 + 1;
              if (v50 + 1 <= v51)
              {
                v46 = 0;
                do
                {
                  v54 = *v52++;
                  v53 = v54;
                  if (v46 <= v54)
                  {
                    v46 = v53;
                  }
                }

                while (v52 <= v51);
              }

              else
              {
                v46 = 0;
              }
            }

            ++v48;
            ++v43;
            *v42 = v46;
            ++v50;
            ++v51;
            v42 += v5;
          }

          while (v48 < v49);
          goto LABEL_98;
        }

        v49 = v48;
        while (v49 < v10)
        {
          if (v49 + v9 <= v10)
          {
            v55 = a2 - a2 / 2;
          }

          else
          {
            v55 = v10 - v49;
          }

          if (v8 >= v55)
          {
            LOBYTE(v56) = 0;
          }

          else
          {
            v56 = 0;
            v57 = v8;
            do
            {
              if (v56 <= *(v43 + v57))
              {
                v56 = *(v43 + v57);
              }

              ++v57;
            }

            while (v57 < v55);
          }

          *v42 = v56;
          ++v49;
          ++v43;
          v42 += v5;
LABEL_98:
          v10 = *(a1 + 3);
        }

        ++v34;
        ++v35;
      }

      while (v34 < *(a1 + 2) * v6);
    }

    free(result);
    return 1;
  }

  return result;
}

void *initBitmask(int a1, int a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
  if (!v4)
  {
    v8 = "initBitmask: bitmap record can not be allocated";
    goto LABEL_7;
  }

  v5 = v4;
  v6 = a1 + 7;
  if (a1 < -7)
  {
    v6 = a1 + 14;
  }

  v4[2] = a1;
  v4[3] = a2;
  v4[4] = v6 >> 3;
  v7 = malloc_type_calloc(a2, v6 >> 3, 0x100004077774924uLL);
  *v5 = v7;
  if (!v7)
  {
    free(v5);
    v8 = "initBitmask: bitmap body can not be allocated";
LABEL_7:
    puts(v8);
    return 0;
  }

  return v5;
}

void termBitmask(void **a1)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }

  else
  {

    puts("termBitmask: bitmap was null");
  }
}

uint64_t bitValueFromBitmask(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  result = 0;
  if ((a3 & 0x80000000) == 0 && *(a1 + 8) > a2)
  {
    if (*(a1 + 12) > a3)
    {
      return (*(*a1 + *(a1 + 16) * a3 + (a2 >> 3)) >> (a2 & 7)) & 1;
    }

    return 0;
  }

  return result;
}

uint64_t setBitInBitmask(uint64_t result, unsigned int a2, int a3, int a4)
{
  if ((a2 & 0x80000000) == 0 && (a3 & 0x80000000) == 0 && *(result + 8) > a2 && *(result + 12) > a3)
  {
    v4 = *result + *(result + 16) * a3;
    v5 = a2 >> 3;
    v6 = 1 << (a2 & 7);
    v7 = *(v4 + v5);
    v8 = v7 | v6;
    v9 = v7 & ~v6;
    if (a4)
    {
      v9 = v8;
    }

    *(v4 + v5) = v9;
  }

  return result;
}

uint64_t bitmaskMinus(uint64_t result, uint64_t a2)
{
  if (*(result + 8) != *(a2 + 8))
  {
    return puts("bitmaskMinus: bitmasks have different shapes");
  }

  v2 = *(result + 12);
  if (v2 != *(a2 + 12))
  {
    return puts("bitmaskMinus: bitmasks have different shapes");
  }

  v3 = *(result + 16);
  if (v3 != *(a2 + 16))
  {
    return puts("bitmaskMinus: bitmasks have different shapes");
  }

  v4 = v3 * v2;
  if (v4 >= 1)
  {
    v5 = *a2;
    v6 = *result;
    do
    {
      v7 = *v5++;
      *v6++ &= ~v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t spreadBitmask(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(result + 8);
    do
    {
      if (v8 <= 0)
      {
        LODWORD(v10) = v7 + 1;
      }

      else
      {
        v9 = 0;
        v10 = v7 + 1;
        do
        {
          v11 = *v6;
          v12 = *(v6 + 12);
          v13 = *(v6 + 16);
          v14 = *v6 + v13 * v7;
          v15 = a3;
          if (v9)
          {
            v15 = a3;
            if (v12 > v7)
            {
              v15 = (*(v14 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7)) & 1;
            }
          }

          v16 = v9 + 1;
          v17 = a3;
          if (v8 > (v9 + 1))
          {
            v17 = a3;
            if (v12 > v7)
            {
              v17 = (*(v14 + ((v9 + 1) >> 3)) >> ((v9 + 1) & 7)) & 1;
            }
          }

          v18 = v9 >> 3;
          v19 = v9 & 7;
          v20 = a3;
          if (v7)
          {
            v20 = a3;
            if (v12 >= v7)
            {
              v20 = (*(v11 + v13 * (v7 - 1) + v18) >> v19) & 1;
            }
          }

          v21 = a3;
          if (v12 > v10)
          {
            v21 = (*(v11 + v13 * v10 + v18) >> v19) & 1;
          }

          result = setBitInBitmask(a2, v16 - 1, v7, v15 | (*(v14 + v18) >> v19) & 1 | v17 | v20 | v21);
          v8 = *(v6 + 8);
          v9 = v16;
        }

        while (v16 < v8);
        v3 = *(v6 + 12);
      }

      v7 = v10;
    }

    while (v10 < v3);
  }

  return result;
}

void spreadBitmask3(uint64_t a1, uint64_t a2, int a3)
{
  v6 = bitmaskBoundingBitmapRect(a1);
  v8 = v7;
  bzero(*a2, *(a2 + 12) * *(a2 + 16));
  v9 = *(a1 + 12);
  if (v6 < 1 || ((v10 = HIDWORD(v6), v9 > SHIDWORD(v6)) ? (v11 = v8 < 1) : (v11 = 1), v11 || *(a1 + 8) <= SHIDWORD(v8)))
  {
    if (v9 < 1)
    {
      return;
    }

    v31 = 0;
    v32 = *(a1 + 8);
    while (v32 <= 0)
    {
      LODWORD(v35) = v31 + 1;
LABEL_61:
      v31 = v35;
      if (v35 >= v9)
      {
        return;
      }
    }

    v33 = 0;
    v34 = v31 - 1;
    v35 = v31 + 1;
    while (1)
    {
      v36 = 2 * a3;
      v37 = a3;
      if (!v33)
      {
        goto LABEL_35;
      }

      v38 = *(a1 + 12);
      v39 = a3;
      if (v31)
      {
        v39 = a3;
        if (v38 >= v31)
        {
          v39 = (*(*a1 + *(a1 + 16) * v34 + ((v33 - 1) >> 3)) >> ((v33 - 1) & 7)) & 1;
        }
      }

      v40 = a3;
      if (v38 > v31)
      {
        v40 = (*(*a1 + *(a1 + 16) * v31 + ((v33 - 1) >> 3)) >> ((v33 - 1) & 7)) & 1;
      }

      v36 = v40 + v39;
      if (v38 > v35)
      {
        break;
      }

      v37 = a3;
      if (v31)
      {
LABEL_36:
        v41 = *a1;
        v42 = *(a1 + 12);
        v43 = *(a1 + 16);
        if (v42 >= v31)
        {
          v44 = (*(v41 + v43 * v34 + (v33 >> 3)) >> (v33 & 7)) & 1;
        }

        else
        {
          v44 = a3;
        }

        goto LABEL_41;
      }

LABEL_39:
      v41 = *a1;
      v44 = a3;
      v42 = *(a1 + 12);
      v43 = *(a1 + 16);
LABEL_41:
      v45 = v43;
      v46 = v33 >> 3;
      v47 = v33 & 7;
      v48 = a3;
      if (v42 > v35)
      {
        v48 = (*(v41 + v43 * v35 + v46) >> v47) & 1;
      }

      v49 = v33 + 1;
      v50 = a3;
      if (v32 > (v33 + 1))
      {
        v50 = a3;
        if (v42 >= v31)
        {
          v50 = a3;
          if (v31)
          {
            v50 = (*(v41 + v43 * v34 + ((v33 + 1) >> 3)) >> ((v33 + 1) & 7)) & 1;
          }
        }
      }

      v51 = v41 + v43 * v31;
      v52 = *(v51 + v46);
      v53 = a3;
      v54 = a3;
      if (v32 > v49)
      {
        v53 = a3;
        if (v42 > v31)
        {
          v53 = (*(v51 + ((v33 + 1) >> 3)) >> ((v33 + 1) & 7)) & 1;
        }

        if (v42 <= v35)
        {
          v54 = a3;
        }

        else
        {
          v54 = (*(v41 + v45 * v35 + ((v33 + 1) >> 3)) >> ((v33 + 1) & 7)) & 1;
        }
      }

      v55 = v37 + v36 + v44;
      v56 = (v52 >> v47) & 1;
      if (v55 + v56 + v48 + v50 + v53 + v54 > 1 || v56 != 0)
      {
        setBitInBitmask(a2, v33, v31, 1);
        v32 = *(a1 + 8);
      }

      v33 = v49;
      if (v49 >= v32)
      {
        v9 = *(a1 + 12);
        goto LABEL_61;
      }
    }

    v37 = (*(*a1 + *(a1 + 16) * v35 + ((v33 - 1) >> 3)) >> ((v33 - 1) & 7)) & 1;
LABEL_35:
    if (v31)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (v6 < SHIDWORD(v6))
  {
    v12 = v6;
    do
    {
      if (v8 >= SHIDWORD(v8))
      {
        LODWORD(v13) = v12 + 1;
      }

      else
      {
        v13 = v12 + 1;
        v14 = v8;
        do
        {
          v15 = *a1;
          v16 = *(a1 + 16);
          v17 = *a1 + v16 * (v12 - 1);
          v18 = v14 + 6;
          if ((v14 - 1) >= 0)
          {
            v18 = v14 - 1;
          }

          v19 = v18 >> 3;
          v20 = (v14 - 1) & 7;
          v21 = v15 + v16 * v12;
          v22 = v15 + v16 * v13;
          v23 = *(v22 + v19);
          v24 = ((*(v21 + v19) >> v20) & 1) + ((*(v17 + v19) >> v20) & 1);
          v25 = v23 >> v20;
          v26 = v14 >> 3;
          v27 = v24 + (v25 & 1) + ((*(v17 + v26) >> (v14 & 7)) & 1);
          v28 = (*(v21 + v26) >> (v14 & 7)) & 1;
          v29 = v14 + 1;
          if (v27 + v28 + ((*(v22 + v26) >> (v14 & 7)) & 1) + ((*(v17 + ((v14 + 1) >> 3)) >> ((v14 + 1) & 7)) & 1) + ((*(v21 + ((v14 + 1) >> 3)) >> ((v14 + 1) & 7)) & 1) + ((*(v22 + ((v14 + 1) >> 3)) >> ((v14 + 1) & 7)) & 1u) > 1 || v28 != 0)
          {
            setBitInBitmask(a2, v14, v12, 1);
          }

          v14 = v29;
        }

        while (HIDWORD(v8) != v29);
      }

      v12 = v13;
    }

    while (v13 != v10);
  }
}

unint64_t bitmaskBoundingBitmapRect(uint64_t a1)
{
  v5 = a1 + 8;
  v3 = *(a1 + 8);
  v4 = *(v5 + 4);
  if (v4 < 1)
  {
    v49 = 0;
    v48 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *a1;
    v8 = *(a1 + 16);
    v9 = vdupq_n_s32(v3 - 1);
    v10 = -1;
    v11.i64[0] = 0x700000007;
    v11.i64[1] = 0x700000007;
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13.i64[0] = 0x800000008;
    v13.i64[1] = 0x800000008;
    v14 = v3;
    v15 = -1;
    v16 = v4;
    do
    {
      if (v8 >= 1)
      {
        v17 = 0;
        while (!v7[v17])
        {
          if (v8 == ++v17)
          {
            goto LABEL_22;
          }
        }

        if (v3 >= 1)
        {
          v18 = vdupq_n_s32(v10);
          v19 = vdupq_n_s32(v14);
          v20 = vdupq_n_s32(v15);
          v21 = vdupq_n_s32(v16);
          v22 = (v3 + 7) & 0xFFFFFFF8;
          v23 = v7;
          v24 = v18;
          v25 = v19;
          v26 = vdupq_n_s32(v6);
          v27 = v20;
          v28 = v21;
          v29 = xmmword_19CF22EA0;
          v30 = xmmword_19CF22E90;
          do
          {
            v31 = v28;
            v32 = v21;
            v33 = v27;
            v34 = v20;
            v35 = v25;
            v36 = v19;
            v37 = v24;
            v38 = v18;
            v39 = vcgeq_u32(v9, v29);
            v40 = vmovn_s32(v39);
            v41 = vuzp1_s8(v40, *v9.i8);
            if (v41.i8[0])
            {
              v41.i8[0] = *v23;
            }

            if (vuzp1_s8(v40, *&v9).i8[1])
            {
              v41.i8[1] = *v23;
              v41.i8[2] = *v23;
              v41.i8[3] = *v23;
            }

            v42 = vcgeq_u32(v9, v30);
            v43 = vmovn_s32(v42);
            if (vuzp1_s8(*&v9, v43).i32[1])
            {
              v41.i8[4] = *v23;
            }

            if (vuzp1_s8(*&v9, v43).i8[5])
            {
              v41.i8[5] = *v23;
            }

            if (vuzp1_s8(*&v9, v43).i8[6])
            {
              v41.i8[6] = *v23;
              v41.i8[7] = *v23;
            }

            v44 = vmovl_u8(v41);
            v45 = vmovl_high_u16(v44);
            v46 = vbicq_s8(v39, vceqzq_s32(vandq_s8(vshlq_u32(v12, vandq_s8(v29, v11)), vmovl_u16(*v44.i8))));
            v47 = vbicq_s8(v42, vceqzq_s32(vandq_s8(vshlq_u32(v12, vandq_s8(v30, v11)), v45)));
            v28 = vbslq_s8(v47, vminq_s32(v26, v28), v28);
            v21 = vbslq_s8(v46, vminq_s32(v26, v21), v21);
            v27 = vbslq_s8(v47, vmaxq_s32(v26, v27), v27);
            v20 = vbslq_s8(v46, vmaxq_s32(v26, v20), v20);
            v25 = vbslq_s8(v47, vminq_s32(v30, v25), v25);
            v19 = vbslq_s8(v46, vminq_s32(v29, v36), v36);
            v24 = vbslq_s8(v47, vmaxq_s32(v30, v37), v37);
            v18 = vbslq_s8(v46, vmaxq_s32(v29, v38), v38);
            v29 = vaddq_s32(v29, v13);
            v30 = vaddq_s32(v30, v13);
            ++v23;
            v22 -= 8;
          }

          while (v22);
          v10 = vmaxvq_s32(vmaxq_s32(vbslq_s8(v39, v18, v38), vbslq_s8(v42, v24, v37)));
          v14 = vminvq_s32(vminq_s32(vbslq_s8(v39, v19, v36), vbslq_s8(v42, v25, v35)));
          v15 = vmaxvq_s32(vmaxq_s32(vbslq_s8(v39, v20, v34), vbslq_s8(v42, v27, v33)));
          v16 = vminvq_s32(vminq_s32(vbslq_s8(v39, v21, v32), vbslq_s8(v42, v28, v31)));
        }
      }

LABEL_22:
      ++v6;
      v7 += v8;
    }

    while (v6 != v4);
    v48 = v10 + 1;
    v49 = v15 + 1;
    LODWORD(v4) = v16;
    v3 = v14;
  }

  return makeBitmapRect(v3, v4, v48, v49);
}

uint64_t chokeBitmask(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(result + 8);
    do
    {
      if (v8 <= 0)
      {
        LODWORD(v10) = v7 + 1;
      }

      else
      {
        v9 = 0;
        v10 = v7 + 1;
        do
        {
          v11 = *v6;
          v12 = *(v6 + 12);
          v13 = *(v6 + 16);
          v14 = *v6 + v13 * v7;
          LOBYTE(v15) = a3;
          if (v9)
          {
            LOBYTE(v15) = a3;
            if (v12 > v7)
            {
              v15 = *(v14 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7);
            }
          }

          v16 = v9 + 1;
          LOBYTE(v17) = a3;
          if (v8 > v16)
          {
            LOBYTE(v17) = a3;
            if (v12 > v7)
            {
              v17 = *(v14 + (v16 >> 3)) >> ((v9 + 1) & 7);
            }
          }

          v18 = v9 >> 3;
          v19 = v9 & 7;
          LOBYTE(v20) = a3;
          if (v7)
          {
            LOBYTE(v20) = a3;
            if (v12 >= v7)
            {
              v20 = *(v11 + v13 * (v7 - 1) + v18) >> v19;
            }
          }

          LOBYTE(v21) = a3;
          if (v12 > v10)
          {
            v21 = *(v11 + v13 * v10 + v18) >> v19;
          }

          result = setBitInBitmask(a2, v16 - 1, v7, (*(v14 + v18) >> v19) & 1 & v15 & v17 & v20 & v21);
          v8 = *(v6 + 8);
          v9 = v16;
        }

        while (v16 < v8);
        v3 = *(v6 + 12);
      }

      v7 = v10;
    }

    while (v10 < v3);
  }

  return result;
}

unsigned __int8 *computeThresholdedBitmask(unsigned __int8 *result, uint64_t *a2, int a3)
{
  v3 = *(result + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 2);
    v6 = *a2;
    v7 = *result;
    v8 = *(a2 + 4);
    v9 = *(result + 7);
    v10 = *(result + 4);
    do
    {
      if (v5 >= 1)
      {
        v11 = 0;
        result = v7;
        do
        {
          if (*result > a3)
          {
            *(v6 + (v11 >> 3)) |= 1 << (v11 & 7);
          }

          ++v11;
          result += v9;
        }

        while (v5 != v11);
      }

      ++v4;
      v7 += v10;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return result;
}

unint64_t bitmaskBoundingBitmapRectWithSeedPoint(uint64_t *a1, int a2, int a3)
{
  if (a2 < 0 || (LODWORD(v4) = a3, a3 < 0) || (v5 = *(a1 + 2), v5 <= a2) || (v6 = *(a1 + 3), v6 <= a3) || (v7 = *a1, v8 = *(a1 + 4), v9 = *a1 + v8 * a3, v10 = a2 >> 3, v11 = 1 << (a2 & 7), (v11 & *(v9 + v10)) == 0))
  {
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = 0;
    v4 = 0;
  }

  else
  {
    LODWORD(v12) = a2;
    while (1)
    {
      v13 = __OFSUB__(v12, 1);
      v12 = (v12 - 1);
      if (((v12 & 0x80000000) != 0) != v13)
      {
        break;
      }

      if (((*(v9 + (v12 >> 3)) >> (v12 & 7)) & 1) == 0)
      {
        v14 = (v12 + 1);
        goto LABEL_15;
      }
    }

    v14 = 0;
LABEL_15:
    v18 = a2 + 1;
    while (v5 != v18)
    {
      v19 = *(v9 + (v18 >> 3));
      v20 = v18++ & 7;
      if (((v19 >> v20) & 1) == 0)
      {
        v16 = v18 - 1;
        goto LABEL_20;
      }
    }

    v16 = v5;
LABEL_20:
    LODWORD(v15) = v4 + 1;
    v21 = (v7 + v10 + (v4 - 1) * v8);
    v22 = v4;
    while (1)
    {
      v23 = v22-- < 1;
      if (v23)
      {
        break;
      }

      v24 = *v21;
      LODWORD(v15) = v15 - 1;
      v21 -= v8;
      if ((v11 & v24) == 0)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v15) = 0;
LABEL_25:
    v25 = ~v4 + v6;
    v26 = (v7 + v10 + v8 + v8 * v4);
    do
    {
      if (!v25)
      {
        v4 = v6;
        goto LABEL_30;
      }

      v27 = *v26;
      v4 = (v4 + 1);
      --v25;
      v26 += v8;
    }

    while ((v11 & v27) != 0);
    while (1)
    {
LABEL_30:
      if (v14 < 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v4 <= v15;
        v29 = 1;
        v30 = v14;
        while (v4 > v15)
        {
          v31 = v30 + 6;
          if (v30 >= 1)
          {
            v31 = v30 - 1;
          }

          v32 = (v7 + v8 * v15 + (v31 >> 3));
          v33 = v4 - v15;
          while (((1 << ((v30 - 1) & 7)) & *v32) == 0)
          {
            v32 += v8;
            if (!--v33)
            {
              v14 = v30;
              v28 = v29;
              goto LABEL_43;
            }
          }

          v29 = 0;
          v23 = v30 < 2;
          v30 = (v30 - 1);
          if (v23)
          {
            v14 = 0;
            break;
          }
        }
      }

LABEL_43:
      if (v16 < v5)
      {
        v34 = v28;
        v35 = v16;
        while (2)
        {
          if (v4 > v15)
          {
            v36 = (v7 + v8 * v15 + v35 / 8);
            v37 = v4 - v15;
            while (((1 << (v35 & 7)) & *v36) == 0)
            {
              v36 += v8;
              if (!--v37)
              {
                v16 = v35;
                goto LABEL_52;
              }
            }

            v34 = 0;
            v35 = (v35 + 1);
            if (v35 != v5)
            {
              continue;
            }

            v16 = v5;
LABEL_52:
            v28 = v34;
          }

          break;
        }
      }

      if (v15 >= 1)
      {
        v15 = v15;
        v38 = v28;
        while (v14 < v16)
        {
          v39 = v14;
          while (((*(v7 + (v15 - 1) * v8 + v39 / 8) >> (v39 & 7)) & 1) == 0)
          {
            if (v16 == ++v39)
            {
              goto LABEL_64;
            }
          }

          v38 = 0;
          v23 = v15-- < 2;
          if (v23)
          {
            LODWORD(v15) = 0;
            v38 = 0;
            goto LABEL_64;
          }
        }
      }

      v38 = v28;
LABEL_64:
      if (v4 < v6)
      {
        v4 = v4;
        v40 = v38;
LABEL_66:
        if (v14 < v16)
        {
          break;
        }
      }

      if (v38)
      {
        goto LABEL_11;
      }
    }

    v41 = v14;
    do
    {
      if ((*(v7 + v4 * v8 + v41 / 8) >> (v41 & 7)))
      {
        v40 = 0;
        if (++v4 != v6)
        {
          goto LABEL_66;
        }

        v4 = v6;
        goto LABEL_30;
      }

      ++v41;
    }

    while (v16 != v41);
    if (!v40)
    {
      goto LABEL_30;
    }
  }

LABEL_11:

  return makeBitmapRect(v14, v15, v16, v4);
}

double bitmaskCentroidUsingBoundingRect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= SHIDWORD(a2))
  {
    return ((HIDWORD(a3) + a3) / 2);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a2;
  do
  {
    if (a3 < SHIDWORD(a3))
    {
      v7 = a3;
      do
      {
        v8 = *(*a1 + *(a1 + 16) * v6 + v7 / 8);
        v9 = 1 << (v7 & 7);
        v10 = (v9 & v8) == 0;
        if ((v9 & v8) != 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = 0;
        }

        v5 += v11;
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v6;
        }

        v4 += v12;
        if (!v10)
        {
          ++v3;
        }

        ++v7;
      }

      while (HIDWORD(a3) != v7);
    }

    ++v6;
  }

  while (v6 != HIDWORD(a2));
  if (v3)
  {
    return ((1.0 / v3) * v5);
  }

  else
  {
    return ((HIDWORD(a3) + a3) / 2);
  }
}

double bitmaskCentroid(uint64_t a1)
{
  v3 = bitmaskBoundingBitmapRect(a1);

  return bitmaskCentroidUsingBoundingRect(a1, v3, v2);
}

float bitmaskOvalnessUsingBoundingRect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1.0 / (HIDWORD(a3) - a3);
  v4 = HIDWORD(a2) - a2;
  v5 = 1.0 / (HIDWORD(a2) - a2);
  if (SHIDWORD(a2) <= a2)
  {
    v12 = -0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = rintf(v5 * 16777000.0);
    v9 = rintf(v3 * 16777000.0);
    do
    {
      if (SHIDWORD(a3) > a3)
      {
        v10 = (v9 >> 1) + 2048;
        v11 = a3;
        do
        {
          v7 += (*(*a1 + *(a1 + 16) * a2 + v11 / 8) >> (v11 & 7)) & 1 ^ ((((((v8 >> 1) + 2048 + v6 * v8) >> 12) - 2048) * ((((v8 >> 1) + 2048 + v6 * v8) >> 12) - 2048) + ((v10 >> 12) - 2048) * ((v10 >> 12) - 2048)) < 0x400000);
          ++v11;
          v10 += v9;
        }

        while (HIDWORD(a3) != v11);
      }

      LODWORD(a2) = a2 + 1;
      ++v6;
    }

    while (v6 != v4);
    v12 = v7 * -2.0;
  }

  return v12 * v5 * v3 + 1.0;
}

uint64_t bitmaskAreaUsingBoundingRect(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIDWORD(a2);
  if (a2 >= SHIDWORD(a2))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    if (a3 < SHIDWORD(a3))
    {
      v5 = a3;
      do
      {
        v4 = ((*(*a1 + *(a1 + 16) * a2 + v5 / 8) >> (v5 & 7)) & 1) + v4;
        ++v5;
      }

      while (HIDWORD(a3) != v5);
    }

    LODWORD(a2) = a2 + 1;
  }

  while (a2 != v3);
  return v4;
}

uint64_t bitmaskArea(uint64_t a1)
{
  v3 = bitmaskBoundingBitmapRect(a1);

  return bitmaskAreaUsingBoundingRect(a1, v3, v2);
}

uint64_t closestSetBitInBitmaskUsingBoundingRect(uint64_t result, unint64_t a2, uint64_t a3, int *a4, int *a5, double a6, double a7)
{
  v7 = HIDWORD(a2);
  if (a2 >= SHIDWORD(a2))
  {
    v10 = -1;
    v9 = -1;
  }

  else
  {
    v8 = (*(result + 8) * *(result + 8) + *(result + 12) * *(result + 12));
    v9 = -1;
    v10 = -1;
    do
    {
      if (a3 < SHIDWORD(a3))
      {
        v11 = a2 - a7;
        v12 = v11 * v11;
        v13 = a3;
        do
        {
          if ((*(*result + *(result + 16) * a2 + v13 / 8) >> (v13 & 7)))
          {
            v14 = v13 - a6;
            v15 = v12 + (v14 * v14);
            if (v15 < v8)
            {
              v10 = v13;
              v9 = a2;
              v8 = v15;
            }
          }

          ++v13;
        }

        while (HIDWORD(a3) != v13);
      }

      LODWORD(a2) = a2 + 1;
    }

    while (a2 != v7);
  }

  *a4 = v10;
  *a5 = v9;
  return result;
}

double bitmaskContrastUsingBoundingRect(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, float *a5, int *a6)
{
  v6 = HIDWORD(a4);
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (a4 <= 1)
  {
    LODWORD(a4) = 1;
  }

  if (v8 <= v6)
  {
    LODWORD(v6) = v8 - 1;
  }

  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  if (v7 <= SHIDWORD(a3))
  {
    v10 = v7 - 1;
  }

  else
  {
    v10 = HIDWORD(a3);
  }

  if (v9 >= v10)
  {
    *a5 = 0.0;
    *a6 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a2;
    v15 = *(a2 + 4);
    v16 = v15 * v9;
    v17 = *(a2 + 7);
    v18 = *a2 + v16 + -v15 - v17;
    v19 = *a2 + v16 + v17 - v15;
    v20 = *a2 + v16 - v17;
    v21 = *a2 + v17 + v16;
    v22 = *a2 + v16 - v15;
    v23 = v14 + v15 + v16 - v17;
    v24 = v14 + v15 + v16;
    v25 = v14 + v16 + v17 + v15;
    v26 = v17 * a4;
    v46 = v10;
    v47 = a4;
    do
    {
      if (a4 >= v6)
      {
        ++v9;
      }

      else
      {
        v27 = v19;
        v28 = *(a1 + 16);
        v29 = *a1 + v28 * v9;
        v30 = *a1 + v28 * (v9 + 1);
        v31 = *a1 + v28 * (v9 - 1);
        v32 = v25;
        v33 = v24;
        v49 = v23;
        v50 = v21;
        v51 = v20;
        v52 = v19;
        v53 = v22;
        v34 = v18;
        v35 = a4;
        do
        {
          v36 = v35 >> 3;
          v37 = v35 + 1;
          if (((*(v29 + v36) >> (v35 & 7)) & 1) != 0 && ((*(v29 + ((v35 + 1) >> 3)) >> ((v35 + 1) & 7)) & 1) + ((*(v30 + v36) >> (v35 & 7)) & 1) + ((*(v29 + ((v35 - 1) >> 3)) >> ((v35 - 1) & 7)) & 1) + ((*(v31 + v36) >> (v35 & 7)) & 1u) <= 3)
          {
            v38 = *(v34 + v26) - *(v32 + v26);
            if (v38 < 0)
            {
              v38 = *(v32 + v26) - *(v34 + v26);
            }

            v39 = *(v22 + v26) - *(v33 + v26);
            if (v39 < 0)
            {
              v39 = *(v33 + v26) - *(v22 + v26);
            }

            v40 = *(v27 + v26) - *(v23 + v26);
            if (v40 < 0)
            {
              v40 = *(v23 + v26) - *(v27 + v26);
            }

            v41 = *(v20 + v26) - *(v21 + v26);
            if (v41 < 0)
            {
              v41 = *(v21 + v26) - *(v20 + v26);
            }

            v42 = v40 + v41 + v39 + v38;
            if (v42 >= v11)
            {
              v43 = v11;
            }

            else
            {
              v43 = v42;
            }

            if (v12)
            {
              v11 = v43;
            }

            else
            {
              v11 = v42;
            }

            v13 += v42;
            ++v12;
          }

          v34 += v17;
          v22 += v17;
          v27 += v17;
          v20 += v17;
          v21 += v17;
          v23 += v17;
          v33 += v17;
          v32 += v17;
          v35 = v37;
        }

        while (v6 != v37);
        v10 = v46;
        LODWORD(a4) = v47;
        ++v9;
        v19 = v52;
        v22 = v53;
        v21 = v50;
        v20 = v51;
        v23 = v49;
      }

      v18 += v15;
      v22 += v15;
      v19 += v15;
      v20 += v15;
      v21 += v15;
      v23 += v15;
      v24 += v15;
      v25 += v15;
    }

    while (v9 != v10);
    *a5 = v11;
    *a6 = v12;
    if (v12)
    {
      *&result = v13 / v12;
      return result;
    }
  }

  return 0.0;
}

void getBitmaskInfo(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = bitmaskBoundingBitmapRect(a1);
  v8 = v7;
  *(a3 + 36) = v6;
  *(a3 + 44) = v7;
  *a3 = bitmaskCentroidUsingBoundingRect(a1, v6, v7);
  *(a3 + 8) = v9;
  *(a3 + 16) = bitmaskAreaUsingBoundingRect(a1, v6, v8);
  *(a3 + 20) = bitmaskOvalnessUsingBoundingRect(a1, v6, v8);
  v10 = bitmaskContrastUsingBoundingRect(a1, a2, v6, v8, (a3 + 28), (a3 + 32));
  *(a3 + 24) = LODWORD(v10);
  v11 = *(a3 + 36) < 1 || *(a3 + 40) >= *(a1 + 12) || *(a3 + 44) < 1 || *(a3 + 48) >= *(a1 + 8);
  *(a3 + 56) = v11;
}

void getBitmaskInfoWithSeedPoint(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v8 = bitmaskBoundingBitmapRectWithSeedPoint(a1, a4, a5);
  v10 = v9;
  *(a3 + 36) = v8;
  *(a3 + 44) = v9;
  *a3 = bitmaskCentroidUsingBoundingRect(a1, v8, v9);
  *(a3 + 8) = v11;
  *(a3 + 16) = bitmaskAreaUsingBoundingRect(a1, v8, v10);
  *(a3 + 20) = bitmaskOvalnessUsingBoundingRect(a1, v8, v10);
  v12 = bitmaskContrastUsingBoundingRect(a1, a2, v8, v10, (a3 + 28), (a3 + 32));
  *(a3 + 24) = LODWORD(v12);
  v13 = *(a3 + 36) < 1 || *(a3 + 40) >= *(a1 + 12) || *(a3 + 44) < 1 || *(a3 + 48) >= *(a1 + 8);
  *(a3 + 56) = v13;
}

__n64 CI::sw_accordianWarpS(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = *(v3 + 40);
  v6 = *(v3 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (v5 == 5)
  {
    v8 = v7;
  }

  v17 = *v8;
  v18 = *(a2 + (v4 << 6));
  LODWORD(v9) = HIDWORD(*v8);
  result.n64_u64[0] = *CI::getDC(a1);
  v11 = (result.n64_f32[1] - *&v17) / v9;
  if (v11 <= 1.0)
  {
    v12 = (result.n64_f32[1] - *&v17) / v9;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v11 < 0.0;
  v14 = 0.0;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = 1.0 - fabs(((v14 * *&v18) + (floorf((v14 * *&v18) * 0.5) * -2.0)) + -1.0);
  result.n64_f32[0] = (vmuls_lane_f32(v15, *&v18, 1) + 1.0) * result.n64_f32[0];
  result.n64_u32[1] = fminf(result.n64_f32[1], fmaxf(result.n64_f32[1] - v9, *&v17));
  return result;
}

void CI::WarpKernel::~WarpKernel(CI::WarpKernel *this)
{
  CI::Kernel::~Kernel(this);

  JUMPOUT(0x19EAF5590);
}

__n64 CI::sw_accordianWarpT(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = *(v3 + 40);
  v6 = *(v3 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (v5 == 5)
  {
    v8 = v7;
  }

  v23 = *v8;
  v24 = *(a2 + (v4 << 6));
  LODWORD(v9) = HIDWORD(*v8);
  result.n64_u64[0] = *CI::getDC(a1);
  _V16.S[2] = DWORD2(v23);
  _S2 = result.n64_f32[1] - *&v23;
  v13 = (result.n64_f32[1] - *&v23) / v9;
  if (v13 <= 1.0)
  {
    v14 = (result.n64_f32[1] - *&v23) / v9;
  }

  else
  {
    v14 = 1.0;
  }

  _NF = v13 < 0.0;
  v16 = 0.0;
  if (!_NF)
  {
    v16 = v14;
  }

  v17 = 1.0 - fabs(((v16 * *&v24) + (floorf((v16 * *&v24) * 0.5) * -2.0)) + -1.0);
  __asm { FMLA            S4, S2, V16.S[2] }

  result.n64_f32[0] = (vmuls_lane_f32(v17, *&v24, 1) + 1.0) * result.n64_f32[0];
  result.n64_u32[1] = fmaxf(result.n64_f32[1], fminf(_S4, *(&v23 + 3) + result.n64_f32[1]));
  return result;
}

double CI::sw_accordionMix(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = *(v3 + 80);
  v14 = *(v3 + 112);
  v15 = *(v3 + 104);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v28 = *v7;
  v29 = *v11;
  v26 = *(a2 + (v12 << 6));
  v27 = *(a2 + (v13 << 6));
  v25 = *v17;
  LODWORD(v18) = HIDWORD(*v17);
  DC = CI::getDC(a1);
  v20 = (*(DC + 4) - *&v25) / v18;
  if (v20 <= 1.0)
  {
    v21 = (*(DC + 4) - *&v25) / v18;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v20 < 0.0;
  v23 = 0.0;
  if (!v22)
  {
    v23 = v21;
  }

  *&result = vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v28, 1.0 - v27), v29, v27), 1.0 - vmuls_lane_f32((v23 * v26.f32[0]) - floorf(v23 * v26.f32[0]), v26, 2)).u64[0];
  return result;
}

double CI::sw_accordionFoldTransition(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v8 = *(v4 + 80);
  v9 = *(v4 + 112);
  v10 = *(v4 + 104);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v13 = a4 + 80 * v6;
  v14 = a4 + 80 * v5;
  v44 = *(a2 + (v7 << 6));
  v46 = *(a2 + (v8 << 6));
  v47 = *v12;
  LODWORD(v15) = HIDWORD(v12->i64[0]);
  v16 = *CI::getDC(a1);
  v19 = *(&v16 + 1);
  v20 = v47;
  _S11 = *(&v16 + 1) - *v47.i32;
  *v22.f64 = (*(&v16 + 1) - *v47.i32) / v15;
  if (*v22.f64 <= 1.0)
  {
    v23 = (*(&v16 + 1) - *v47.i32) / v15;
  }

  else
  {
    v23 = 1.0;
  }

  _NF = *v22.f64 < 0.0;
  v22.f64[0] = 0.0;
  if (!_NF)
  {
    *v22.f64 = v23;
  }

  v25 = v44;
  *v22.f64 = *v22.f64 * v44.f32[0];
  v26 = 1.0;
  v27 = 1.0 - fabs((*v22.f64 + (floorf(*v22.f64 * 0.5) * -2.0)) + -1.0);
  *&v27 = v27;
  *&v26 = fminf(*(&v16 + 1), fmaxf(*(&v16 + 1) - v15, *v47.i32));
  v28 = (vmuls_lane_f32(*&v27, *v44.f32, 1) + 1.0) * *&v16;
  v20.i32[0] = *(v14 + 28);
  *&v29 = *(v14 + 24) + ((*(v14 + 20) * *&v26) + (v28 * *(v14 + 16)));
  v25.i32[0] = *(v14 + 36);
  *&v27 = *&v26 * *(v14 + 32);
  v45 = 1.0 - vmuls_lane_f32(*v22.f64 - floorf(*v22.f64), v44, 2);
  *v22.f64 = *v25.i32 + (*&v27 + (v28 * *v20.i32));
  *(&v29 + 1) = *v22.f64;
  *_Q0.i64 = CI::BitmapSampler::read(*(v14 + 8), v29, v22, v27, v26, v20, v25, v17, v18);
  v43 = _Q0;
  _Q1 = v47;
  __asm { FMLA            S0, S11, V1.S[2] }

  *_Q1.f64 = fmaxf(v19, fminf(_Q0.f32[0], *&v47.i32[3] + v19));
  LODWORD(v35) = *(v13 + 28);
  _Q0.f32[0] = *(v13 + 24) + ((*_Q1.f64 * *(v13 + 20)) + (v28 * *(v13 + 16)));
  LODWORD(v36) = *(v13 + 32);
  v37.i32[0] = *(v13 + 36);
  *_Q1.f64 = *v37.i32 + ((*_Q1.f64 * *&v36) + (v28 * *&v35));
  _Q0.i32[1] = LODWORD(_Q1.f64[0]);
  *v41.i64 = CI::BitmapSampler::read(*(v13 + 8), *_Q0.i64, _Q1, v36, v35, v37, v38, v39, v40);
  *&result = vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v43, 1.0 - v46), v41, v46), v45).u64[0];
  return result;
}

float32x2_t CI::sw_tile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v15 = *v11;
  v13 = vmul_f32(*&vextq_s8(v15, v15, 8uLL), vsub_f32(*CI::getDC(a1), *v7));
  return vadd_f32(v12, vmul_f32(*v15.i8, vminnm_f32(vsub_f32(v13, vrndm_f32(v13)), vdup_n_s32(0x3F7FFFFFu))));
}

float32x2_t CI::sw_lowq_affine(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v17 = *v11;
  v18 = *v15;
  DC = CI::getDC(a1);
  v20 = vmul_f32(v17, *DC);
  v21 = vmul_f32(v18, *DC);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v20, v21), vzip2_s32(v20, v21)));
}

uint64_t CGAffineTransformFromObject(objc_object *a1, CGAffineTransform *a2)
{
  if (!a1)
  {
    v5 = *MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 32);
    *&a2->c = *(MEMORY[0x1E695EFD0] + 16);
    *&a2->tx = v6;
    *&a2->a = v5;
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)a1 transformStruct];
      *&a2->a = 0u;
      *&a2->c = 0u;
      *&a2->tx = 0u;
      return 1;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(objc_object *)a1 count]== 6)
    {
      [-[objc_object objectAtIndex:](a1 objectAtIndex:{0), "doubleValue"}];
      a2->a = v8;
      v7 = 1;
      [-[objc_object objectAtIndex:](a1 objectAtIndex:{1), "doubleValue"}];
      a2->b = v9;
      [-[objc_object objectAtIndex:](a1 objectAtIndex:{2), "doubleValue"}];
      a2->c = v10;
      [-[objc_object objectAtIndex:](a1 objectAtIndex:{3), "doubleValue"}];
      a2->d = v11;
      [-[objc_object objectAtIndex:](a1 objectAtIndex:{4), "doubleValue"}];
      a2->tx = v12;
      [-[objc_object objectAtIndex:](a1 objectAtIndex:{5), "doubleValue"}];
      a2->ty = v13;
      return v7;
    }

    return 0;
  }

  v4 = [(objc_object *)a1 objCType];
  if (strcmp(v4, "{CGAffineTransform=dddddd}") && strcmp(v4, "{?=dddddd}"))
  {
    return 0;
  }

  [(objc_object *)a1 getValue:a2 size:48];
  return 1;
}

double CI::sw_ASGh50(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = 2.0;
  v7 = 0.5;
  v8.f64[0] = floor(floorf(COERCE_FLOAT(*DC)) * 2.0 + 0.499) + 0.5;
  *v8.f64 = v8.f64[0];
  LODWORD(v7) = *(v4 + 16);
  LODWORD(v6) = *(v4 + 20);
  v9.i32[1] = 0;
  v10.i32[0] = *(v4 + 24);
  v11 = *(v4 + 28);
  *v12.i32 = *v10.i32 + (*&v7 + (*&v6 * 0.0));
  v13 = *(v4 + 32);
  v14 = *(v4 + 36);
  *&v12.i32[1] = v14 + (v11 + (v13 * 0.0));
  *v15.i32 = *v10.i32 + ((*&v6 * 0.0) + (*&v7 * 0.0));
  *v9.i32 = v14 + ((v13 * 0.0) + (v11 * 0.0));
  v15.i32[1] = v9.i32[0];
  v16 = vsub_f32(*v12.i8, *v15.i8);
  *&v6 = vmuls_lane_f32(*&v6, *DC, 1);
  *&v17 = *v10.i32 + (*&v6 + (*v8.f64 * *&v7));
  *&v7 = vmuls_lane_f32(v13, *DC, 1);
  *v8.f64 = v14 + (*&v7 + (*v8.f64 * v11));
  HIDWORD(v17) = LODWORD(v8.f64[0]);
  v80 = *&v17;
  *v18.i64 = CI::BitmapSampler::read(*(v4 + 8), v17, v8, v7, v6, v9, v15, v12, v10);
  v19 = vdupq_n_s32(0x3F0006F2u);
  v77 = vmulq_f32(v18, v19);
  *v26.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v16, v80)), v19, v20, v21, v22, v23, v24, v25);
  v74 = v26;
  *_Q0.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(v80, v16)), v27, v28, v29, v30, v31, v32, v33);
  v35 = v77;
  v78 = vaddq_f32(v77, vmulq_f32(vaddq_f32(v74, _Q0), vdupq_n_s32(0x3E96D656u)));
  __asm { FMOV            V0.2S, #3.0 }

  v40 = vmul_f32(v16, *_Q0.f32);
  *v47.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v40, v80)), v35, v41, v42, v43, v44, v45, v46);
  v75 = v47;
  *_Q0.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(v80, v40)), v48, v49, v50, v51, v52, v53, v54);
  v56 = v78;
  v79 = vaddq_f32(v78, vmulq_f32(vaddq_f32(v75, _Q0), vdupq_n_s32(0xBD4FC321)));
  __asm { FMOV            V0.2S, #5.0 }

  v57 = vmul_f32(v16, *_Q0.f32);
  *v64.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v57, v80)), v56, v58, v59, v60, v61, v62, v63);
  v76 = v64;
  *v72.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(v80, v57)), v65, v66, v67, v68, v69, v70, v71);
  *&result = vaddq_f32(v79, vmulq_f32(vaddq_f32(v76, v72), vdupq_n_s32(0x3BC6C851u))).u64[0];
  return result;
}

double CI::sw_ASGv50(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = 2.0;
  v7 = 0.5;
  v8.f64[0] = floor(floorf(COERCE_FLOAT(HIDWORD(*DC))) * 2.0 + 0.499) + 0.5;
  *v8.f64 = v8.f64[0];
  LODWORD(v7) = *(v4 + 16);
  LODWORD(v6) = *(v4 + 20);
  v9.i32[1] = 0;
  v10.i32[0] = *(v4 + 24);
  v11.i32[0] = *(v4 + 28);
  *v12.i32 = *v10.i32 + (*&v6 + (*&v7 * 0.0));
  v13 = *(v4 + 32);
  v14 = *(v4 + 36);
  *&v12.i32[1] = v14 + (v13 + (*v11.i32 * 0.0));
  v15.f32[0] = *v10.i32 + ((*&v6 * 0.0) + (*&v7 * 0.0));
  *v9.i32 = v14 + ((v13 * 0.0) + (*v11.i32 * 0.0));
  v15.f32[1] = *v9.i32;
  v16 = vsub_f32(*v12.i8, v15);
  *&v6 = *&v6 * *v8.f64;
  *&v7 = *v10.i32 + (*&v6 + (COERCE_FLOAT(*DC) * *&v7));
  *v8.f64 = v14 + ((v13 * *v8.f64) + (COERCE_FLOAT(*DC) * *v11.i32));
  v79 = __PAIR64__(LODWORD(v8.f64[0]), LODWORD(v7));
  *v17.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(__PAIR64__(LODWORD(v8.f64[0]), LODWORD(v7))), v8, v7, v6, v9, v12, v10, v11);
  v18 = vdupq_n_s32(0x3F0006F2u);
  v76 = vmulq_f32(v17, v18);
  *v25.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v16, v79)), v18, v19, v20, v21, v22, v23, v24);
  v73 = v25;
  *_Q0.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(v79, v16)), v26, v27, v28, v29, v30, v31, v32);
  v34 = v76;
  v77 = vaddq_f32(v76, vmulq_f32(vaddq_f32(v73, _Q0), vdupq_n_s32(0x3E96D656u)));
  __asm { FMOV            V0.2S, #3.0 }

  v39 = vmul_f32(v16, *_Q0.f32);
  *v46.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v39, v79)), v34, v40, v41, v42, v43, v44, v45);
  v74 = v46;
  *_Q0.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(v79, v39)), v47, v48, v49, v50, v51, v52, v53);
  v55 = v77;
  v78 = vaddq_f32(v77, vmulq_f32(vaddq_f32(v74, _Q0), vdupq_n_s32(0xBD4FC321)));
  __asm { FMOV            V0.2S, #5.0 }

  v56 = vmul_f32(v16, *_Q0.f32);
  *v63.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v56, v79)), v55, v57, v58, v59, v60, v61, v62);
  v75 = v63;
  *v71.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(v79, v56)), v64, v65, v66, v67, v68, v69, v70);
  *&result = vaddq_f32(v78, vmulq_f32(vaddq_f32(v75, v71), vdupq_n_s32(0x3BC6C851u))).u64[0];
  return result;
}

unint64_t CI::sw_ASGh66(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = 0.5 * COERCE_FLOAT(*DC);
  v7 = floorf(v6);
  v8 = floor((v6 - v7) + (v6 - v7));
  v98 = v8;
  v9 = 1.5;
  v10.f64[0] = floor(floorf(COERCE_FLOAT(*DC)) * 1.5 + 0.499) + 0.5;
  *v10.f64 = v10.f64[0];
  v11 = *(v4 + 16);
  LODWORD(v9) = *(v4 + 20);
  v12.i32[1] = 0;
  v13.i32[0] = *(v4 + 24);
  v14 = *(v4 + 28);
  *v15.i32 = *v13.i32 + (v11 + (*&v9 * 0.0));
  v16 = *(v4 + 32);
  v17 = *(v4 + 36);
  *&v15.i32[1] = v17 + (v14 + (v16 * 0.0));
  *v18.i32 = *v13.i32 + ((*&v9 * 0.0) + (v11 * 0.0));
  *v12.i32 = v17 + ((v16 * 0.0) + (v14 * 0.0));
  v18.i32[1] = v12.i32[0];
  v19 = vsub_f32(*v15.i8, *v18.i8);
  v20 = vadd_f32(v19, v19);
  v21 = vadd_f32(v19, v20);
  v22 = vadd_f32(v20, v20);
  *&v9 = vmuls_lane_f32(*&v9, *DC, 1);
  *&v23 = *v13.i32 + (*&v9 + (*v10.f64 * v11));
  *(&v23 + 1) = v17 + (vmuls_lane_f32(v16, *DC, 1) + (*v10.f64 * v14));
  v99 = v23;
  *v24.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v23, v22)), v10, v23, v9, v12, v18, v15, v13);
  v96 = v24;
  *v32.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v99, v21)), v25, v26, v27, v28, v29, v30, v31);
  v97 = v32;
  *v40.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v99, v20)), v33, v34, v35, v36, v37, v38, v39);
  v95 = v40;
  *v48.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v99, v19)), v41, v42, v43, v44, v45, v46, v47);
  v94 = v48;
  *v56.i64 = CI::BitmapSampler::read(*(v4 + 8), v99, v49, v50, v51, v52, v53, v54, v55);
  v93 = v56;
  *v64.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v19, *&v99)), v57, v58, v59, v60, v61, v62, v63);
  v91 = v64;
  *v72.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v20, *&v99)), v65, v66, v67, v68, v69, v70, v71);
  v90 = v72;
  *v80.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(*&v99, v21)), v73, v74, v75, v76, v77, v78, v79);
  v92 = v80;
  *v88.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(*&v99, v22)), v81, v82, v83, v84, v85, v86, v87);
  return vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v93, vdupq_n_s32(0x3F2AA3BCu)), vmulq_f32(vaddq_f32(v94, v91), vdupq_n_s32(0x3E75B08Du))), vmulq_f32(vaddq_f32(v95, v90), vdupq_n_s32(0xBD9EC1EA))), vmulq_f32(vaddq_f32(v96, v88), vdupq_n_s32(0x3B8D1E61u))), 1.0 - v98), vaddq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v93, v91), vdupq_n_s32(0x3F086A95u)), vmulq_f32(vaddq_f32(v95, v92), vdupq_n_s32(0xBD32FB50))), vmulq_f32(vaddq_f32(v97, v88), vdupq_n_s32(0x3C31480Cu))), v98).u64[0];
}

unint64_t CI::sw_ASGv66(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = vmuls_lane_f32(0.5, *DC, 1);
  v7 = floorf(v6);
  v8 = floor((v6 - v7) + (v6 - v7));
  v98 = v8;
  v9 = 1.5;
  v10.f64[0] = floor(floorf(COERCE_FLOAT(HIDWORD(*DC))) * 1.5 + 0.499) + 0.5;
  *v10.f64 = v10.f64[0];
  v11 = *(v4 + 16);
  LODWORD(v9) = *(v4 + 20);
  v12.i32[1] = 0;
  v13.i32[0] = *(v4 + 24);
  v14.i32[0] = *(v4 + 28);
  *v15.i32 = *v13.i32 + (*&v9 + (v11 * 0.0));
  v16 = *(v4 + 32);
  v17 = *(v4 + 36);
  *&v15.i32[1] = v17 + (v16 + (*v14.i32 * 0.0));
  v18.f32[0] = *v13.i32 + ((*&v9 * 0.0) + (v11 * 0.0));
  *v12.i32 = v17 + ((v16 * 0.0) + (*v14.i32 * 0.0));
  v18.f32[1] = *v12.i32;
  v19 = vsub_f32(*v15.i8, v18);
  v20 = vadd_f32(v19, v19);
  v21 = vadd_f32(v19, v20);
  v22 = vadd_f32(v20, v20);
  *&v9 = *&v9 * *v10.f64;
  *&v23 = *v13.i32 + (*&v9 + (COERCE_FLOAT(*DC) * v11));
  *v10.f64 = v16 * *v10.f64;
  *(&v23 + 1) = v17 + (*v10.f64 + (COERCE_FLOAT(*DC) * *v14.i32));
  v99 = v23;
  *v24.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v23, v22)), v10, v23, v9, v12, v15, v13, v14);
  v96 = v24;
  *v32.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v99, v21)), v25, v26, v27, v28, v29, v30, v31);
  v97 = v32;
  *v40.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v99, v20)), v33, v34, v35, v36, v37, v38, v39);
  v95 = v40;
  *v48.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v99, v19)), v41, v42, v43, v44, v45, v46, v47);
  v94 = v48;
  *v56.i64 = CI::BitmapSampler::read(*(v4 + 8), v99, v49, v50, v51, v52, v53, v54, v55);
  v93 = v56;
  *v64.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v19, *&v99)), v57, v58, v59, v60, v61, v62, v63);
  v91 = v64;
  *v72.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v20, *&v99)), v65, v66, v67, v68, v69, v70, v71);
  v90 = v72;
  *v80.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v21, *&v99)), v73, v74, v75, v76, v77, v78, v79);
  v92 = v80;
  *v88.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v22, *&v99)), v81, v82, v83, v84, v85, v86, v87);
  return vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v93, vdupq_n_s32(0x3F2AA3BCu)), vmulq_f32(vaddq_f32(v94, v91), vdupq_n_s32(0x3E75B08Du))), vmulq_f32(vaddq_f32(v95, v90), vdupq_n_s32(0xBD9EC1EA))), vmulq_f32(vaddq_f32(v96, v88), vdupq_n_s32(0x3B8D1E61u))), 1.0 - v98), vaddq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v93, v91), vdupq_n_s32(0x3F086A95u)), vmulq_f32(vaddq_f32(v95, v92), vdupq_n_s32(0xBD32FB50))), vmulq_f32(vaddq_f32(v97, v88), vdupq_n_s32(0x3C31480Cu))), v98).u64[0];
}

unint64_t CI::sw_ASGv75(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  LODWORD(v6) = HIDWORD(*DC);
  v7 = floor(((v6 / 3.0) - floorf(v6 / 3.0)) * 3.0);
  v8 = 0.5;
  v9.f64[0] = floor(floorf(v6) * 1.33333333 + 0.5) + 0.5;
  *v9.f64 = v9.f64[0];
  v10 = *(v4 + 16);
  LODWORD(v8) = *(v4 + 20);
  v11.i32[0] = *(v4 + 24);
  v12.i32[0] = *(v4 + 28);
  *v13.i32 = *v11.i32 + (*&v8 + (v10 * 0.0));
  v14.i32[0] = *(v4 + 32);
  v15 = *(v4 + 36);
  *&v13.i32[1] = v15 + (*v14.i32 + (*v12.i32 * 0.0));
  v16.f32[0] = *v11.i32 + ((*&v8 * 0.0) + (v10 * 0.0));
  v16.f32[1] = v15 + ((*v14.i32 * 0.0) + (*v12.i32 * 0.0));
  v17 = vsub_f32(*v13.i8, v16);
  v18 = vadd_f32(v17, v17);
  v19 = vadd_f32(v17, v18);
  v20 = vadd_f32(v18, v18);
  *&v8 = *&v8 * *v9.f64;
  *&v21 = *v11.i32 + (*&v8 + (COERCE_FLOAT(*DC) * v10));
  *v9.f64 = *v14.i32 * *v9.f64;
  *(&v21 + 1) = v15 + (*v9.f64 + (COERCE_FLOAT(*DC) * *v12.i32));
  v106 = v21;
  *v22.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v21, v20)), v9, v21, v8, v13, v11, v12, v14);
  v105 = v22;
  *v30.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v106, v19)), v23, v24, v25, v26, v27, v28, v29);
  v104 = v30;
  *v38.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v106, v18)), v31, v32, v33, v34, v35, v36, v37);
  v103 = v38;
  *v46.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v106, v17)), v39, v40, v41, v42, v43, v44, v45);
  v102 = v46;
  *v54.i64 = CI::BitmapSampler::read(*(v4 + 8), v106, v47, v48, v49, v50, v51, v52, v53);
  v101 = v54;
  *v62.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v17, *&v106)), v55, v56, v57, v58, v59, v60, v61);
  v100 = v62;
  *v70.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v18, *&v106)), v63, v64, v65, v66, v67, v68, v69);
  v99 = v70;
  *v78.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v19, *&v106)), v71, v72, v73, v74, v75, v76, v77);
  v98 = v78;
  *v86.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v20, *&v106)), v79, v80, v81, v82, v83, v84, v85);
  v87 = vdupq_n_s32(0x39C168EBu);
  v88 = vdupq_n_s32(0x3C151754u);
  v89 = vdupq_n_s32(0x3D0D1CCEu);
  v90 = vmulq_f32(v101, vdupq_n_s32(0x3F2998B2u));
  v91 = vdupq_n_s32(0x3EE24338u);
  v92 = vdupq_n_s32(0x3DA75B23u);
  v93 = vdupq_n_s32(0x3B46B2D7u);
  v94 = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vmulq_f32(v104, v88), vmulq_f32(v105, v87)), vmulq_f32(v103, v89)), v90), vmulq_f32(v100, v91)), vmulq_f32(v99, v92)), vmulq_f32(v86, v93));
  v95 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vmulq_f32(v105, v93), vmulq_f32(v103, v92)), vmulq_f32(v102, v91)), v90), vmulq_f32(v99, v89)), vmulq_f32(v98, v88)), vmulq_f32(v86, v87));
  v88.f32[0] = fminf(v7, 1.0);
  v96 = vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v101, vdupq_n_s32(0x3F4010EAu)), vmulq_f32(vaddq_f32(v102, v100), vdupq_n_s32(0x3E41574Eu))), vmulq_f32(vaddq_f32(v103, v99), vdupq_n_s32(0xBD9BD797))), vmulq_f32(vaddq_f32(v104, v98), vdupq_n_s32(0x3C472ACCu))), 1.0 - v88.f32[0]), v94, v88.f32[0]);
  v94.f32[0] = fmaxf(v7 + -1.0, 0.0);
  return vmlaq_n_f32(vmulq_n_f32(v96, 1.0 - v94.f32[0]), v95, v94.f32[0]).u64[0];
}

unint64_t CI::sw_ASGh80(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = floor(((0.25 * COERCE_FLOAT(*DC)) - floorf(0.25 * COERCE_FLOAT(*DC))) * 4.0);
  v7 = 1.25;
  v8.f64[0] = floor(floorf(COERCE_FLOAT(*DC)) * 1.25 + 0.499) + 0.5;
  *v8.f64 = v8.f64[0];
  v9 = *(v4 + 16);
  LODWORD(v7) = *(v4 + 20);
  v10.i32[0] = *(v4 + 24);
  v11.i32[0] = *(v4 + 28);
  *v12.i32 = *v10.i32 + (v9 + (*&v7 * 0.0));
  v13 = *(v4 + 32);
  v14 = *(v4 + 36);
  *&v12.i32[1] = v14 + (*v11.i32 + (v13 * 0.0));
  *v15.i32 = *v10.i32 + ((*&v7 * 0.0) + (v9 * 0.0));
  *&v15.i32[1] = v14 + ((v13 * 0.0) + (*v11.i32 * 0.0));
  v16 = vsub_f32(*v12.i8, *v15.i8);
  v17 = vadd_f32(v16, v16);
  v18 = vadd_f32(v16, v17);
  v19 = vadd_f32(v17, v17);
  *&v7 = vmuls_lane_f32(*&v7, *DC, 1);
  *&v20 = *v10.i32 + (*&v7 + (*v8.f64 * v9));
  *(&v20 + 1) = v14 + (vmuls_lane_f32(v13, *DC, 1) + (*v8.f64 * *v11.i32));
  v108 = v20;
  *v21.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v20, v19)), v8, v20, v7, v15, v12, v10, v11);
  v107 = v21;
  *v29.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v108, v18)), v22, v23, v24, v25, v26, v27, v28);
  v106 = v29;
  *v37.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v108, v17)), v30, v31, v32, v33, v34, v35, v36);
  v105 = v37;
  *v45.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v108, v16)), v38, v39, v40, v41, v42, v43, v44);
  v104 = v45;
  *v53.i64 = CI::BitmapSampler::read(*(v4 + 8), v108, v46, v47, v48, v49, v50, v51, v52);
  v103 = v53;
  *v61.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v16, *&v108)), v54, v55, v56, v57, v58, v59, v60);
  v102 = v61;
  *v69.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v17, *&v108)), v62, v63, v64, v65, v66, v67, v68);
  v101 = v69;
  *v77.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(*&v108, v18)), v70, v71, v72, v73, v74, v75, v76);
  v100 = v77;
  *v85.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(*&v108, v19)), v78, v79, v80, v81, v82, v83, v84);
  v86 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v103, vdupq_n_s32(0x3F4CDCC0u)), vmulq_f32(vaddq_f32(v104, v102), vdupq_n_s32(0x3E1CCAF7u))), vmulq_f32(vaddq_f32(v105, v101), vdupq_n_s32(0xBD84D643))), vmulq_f32(vaddq_f32(v106, v100), vdupq_n_s32(0x3C456854u))), vmulq_f32(vaddq_f32(v107, v85), vdupq_n_s32(0xB9DFA948)));
  v87 = vdupq_n_s32(0x395DE0F1u);
  v88 = vdupq_n_s32(0x3BE3920Bu);
  v89 = vdupq_n_s32(0x3CE3D41Bu);
  v90 = vmulq_f32(v103, vdupq_n_s32(0x3F3D4D47u));
  v91 = vdupq_n_s32(0x3EB8D105u);
  v92 = vdupq_n_s32(0x3DBB4F61u);
  v93 = vdupq_n_s32(0x3C465F60u);
  v94 = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vmulq_f32(v106, v88), vmulq_f32(v107, v87)), vmulq_f32(v105, v89)), v90), vmulq_f32(v102, v91)), vmulq_f32(v101, v92)), vmulq_f32(v100, v93));
  v95 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v103, v102), vdupq_n_s32(0x3F138E4Au)), vmulq_f32(vaddq_f32(v104, v101), vdupq_n_s32(0xBDA10EBE))), vmulq_f32(vaddq_f32(v106, v85), vdupq_n_s32(0x3B14DF20u))), vmulq_f32(v107, vdupq_n_s32(0xB82907CC)));
  v96 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vmulq_f32(v106, v93), vmulq_f32(v105, v92)), vmulq_f32(v104, v91)), v90), vmulq_f32(v101, v89)), vmulq_f32(v100, v88)), vmulq_f32(v85, v87));
  v88.f32[0] = fminf(v6, 1.0);
  v97 = vmlaq_n_f32(vmulq_n_f32(v86, 1.0 - v88.f32[0]), v94, v88.f32[0]);
  v88.f32[0] = fmaxf(v6 + -1.0, 0.0);
  v98 = vmlaq_n_f32(vmulq_n_f32(v97, 1.0 - v88.f32[0]), v95, v88.f32[0]);
  v88.f32[0] = fmaxf(v6 + -2.0, 0.0);
  return vmlaq_n_f32(vmulq_n_f32(v98, 1.0 - v88.f32[0]), v96, v88.f32[0]).u64[0];
}

unint64_t CI::sw_ASGv80(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = vmuls_lane_f32(0.25, *DC, 1);
  v7 = floor((v6 - floorf(v6)) * 4.0);
  v8 = 1.25;
  v9.f64[0] = floor(floorf(COERCE_FLOAT(HIDWORD(*DC))) * 1.25 + 0.499) + 0.5;
  *v9.f64 = v9.f64[0];
  v10 = *(v4 + 16);
  LODWORD(v8) = *(v4 + 20);
  v11.i32[0] = *(v4 + 24);
  v12.i32[0] = *(v4 + 28);
  *v13.i32 = *v11.i32 + (*&v8 + (v10 * 0.0));
  v14.i32[0] = *(v4 + 32);
  v15 = *(v4 + 36);
  *&v13.i32[1] = v15 + (*v14.i32 + (*v12.i32 * 0.0));
  v16.f32[0] = *v11.i32 + ((*&v8 * 0.0) + (v10 * 0.0));
  v16.f32[1] = v15 + ((*v14.i32 * 0.0) + (*v12.i32 * 0.0));
  v17 = vsub_f32(*v13.i8, v16);
  v18 = vadd_f32(v17, v17);
  v19 = vadd_f32(v17, v18);
  v20 = vadd_f32(v18, v18);
  *&v8 = *&v8 * *v9.f64;
  *&v21 = *v11.i32 + (*&v8 + (COERCE_FLOAT(*DC) * v10));
  *v9.f64 = *v14.i32 * *v9.f64;
  *(&v21 + 1) = v15 + (*v9.f64 + (COERCE_FLOAT(*DC) * *v12.i32));
  v109 = v21;
  *v22.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v21, v20)), v9, v21, v8, v13, v11, v12, v14);
  v108 = v22;
  *v30.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v109, v19)), v23, v24, v25, v26, v27, v28, v29);
  v107 = v30;
  *v38.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v109, v18)), v31, v32, v33, v34, v35, v36, v37);
  v106 = v38;
  *v46.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v109, v17)), v39, v40, v41, v42, v43, v44, v45);
  v105 = v46;
  *v54.i64 = CI::BitmapSampler::read(*(v4 + 8), v109, v47, v48, v49, v50, v51, v52, v53);
  v104 = v54;
  *v62.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v17, *&v109)), v55, v56, v57, v58, v59, v60, v61);
  v103 = v62;
  *v70.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v18, *&v109)), v63, v64, v65, v66, v67, v68, v69);
  v102 = v70;
  *v78.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v19, *&v109)), v71, v72, v73, v74, v75, v76, v77);
  v101 = v78;
  *v86.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v20, *&v109)), v79, v80, v81, v82, v83, v84, v85);
  v87 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v104, vdupq_n_s32(0x3F4CDCC0u)), vmulq_f32(vaddq_f32(v105, v103), vdupq_n_s32(0x3E1CCAF7u))), vmulq_f32(vaddq_f32(v106, v102), vdupq_n_s32(0xBD84D643))), vmulq_f32(vaddq_f32(v107, v101), vdupq_n_s32(0x3C456854u))), vmulq_f32(vaddq_f32(v108, v86), vdupq_n_s32(0xB9DFA948)));
  v88 = vdupq_n_s32(0x395DE0F1u);
  v89 = vdupq_n_s32(0x3BE3920Bu);
  v90 = vdupq_n_s32(0x3CE3D41Bu);
  v91 = vmulq_f32(v104, vdupq_n_s32(0x3F3D4D47u));
  v92 = vdupq_n_s32(0x3EB8D105u);
  v93 = vdupq_n_s32(0x3DBB4F61u);
  v94 = vdupq_n_s32(0x3C465F60u);
  v95 = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vmulq_f32(v107, v89), vmulq_f32(v108, v88)), vmulq_f32(v106, v90)), v91), vmulq_f32(v103, v92)), vmulq_f32(v102, v93)), vmulq_f32(v101, v94));
  v96 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v104, v103), vdupq_n_s32(0x3F138E4Au)), vmulq_f32(vaddq_f32(v105, v102), vdupq_n_s32(0xBDA10EBE))), vmulq_f32(vaddq_f32(v107, v86), vdupq_n_s32(0x3B14DF20u))), vmulq_f32(v108, vdupq_n_s32(0xB82907CC)));
  v97 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vmulq_f32(v107, v94), vmulq_f32(v106, v93)), vmulq_f32(v105, v92)), v91), vmulq_f32(v102, v90)), vmulq_f32(v101, v89)), vmulq_f32(v86, v88));
  v89.f32[0] = fminf(v7, 1.0);
  v98 = vmlaq_n_f32(vmulq_n_f32(v87, 1.0 - v89.f32[0]), v95, v89.f32[0]);
  v89.f32[0] = fmaxf(v7 + -1.0, 0.0);
  v99 = vmlaq_n_f32(vmulq_n_f32(v98, 1.0 - v89.f32[0]), v96, v89.f32[0]);
  v89.f32[0] = fmaxf(v7 + -2.0, 0.0);
  return vmlaq_n_f32(vmulq_n_f32(v99, 1.0 - v89.f32[0]), v97, v89.f32[0]).u64[0];
}

unint64_t CI::sw_ASGh60(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = floor(((COERCE_FLOAT(*DC) / 3.0) - floorf(COERCE_FLOAT(*DC) / 3.0)) * 3.0);
  v7.f64[0] = floor(floorf(COERCE_FLOAT(*DC)) / 0.6 + 0.499) + 0.5;
  *v7.f64 = v7.f64[0];
  v8 = *(v4 + 16);
  v9 = *(v4 + 20);
  v10.i32[0] = *(v4 + 24);
  v11.i32[0] = *(v4 + 28);
  *v12.i32 = *v10.i32 + (v8 + (v9 * 0.0));
  v13 = *(v4 + 32);
  v14 = *(v4 + 36);
  *&v12.i32[1] = v14 + (*v11.i32 + (v13 * 0.0));
  *v15.i32 = *v10.i32 + ((v9 * 0.0) + (v8 * 0.0));
  *&v15.i32[1] = v14 + ((v13 * 0.0) + (*v11.i32 * 0.0));
  v16 = vsub_f32(*v12.i8, *v15.i8);
  v17 = vadd_f32(v16, v16);
  v18 = vadd_f32(v16, v17);
  v19 = vadd_f32(v17, v17);
  *&v20 = vmuls_lane_f32(v9, *DC, 1);
  *&v21 = *v10.i32 + (*&v20 + (*v7.f64 * v8));
  *(&v21 + 1) = v14 + (vmuls_lane_f32(v13, *DC, 1) + (*v7.f64 * *v11.i32));
  v107 = v21;
  *v22.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v21, v19)), v7, v21, v20, v15, v12, v10, v11);
  v106 = v22;
  *v30.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v107, v18)), v23, v24, v25, v26, v27, v28, v29);
  v105 = v30;
  *v38.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v107, v17)), v31, v32, v33, v34, v35, v36, v37);
  v104 = v38;
  *v46.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v107, v16)), v39, v40, v41, v42, v43, v44, v45);
  v103 = v46;
  *v54.i64 = CI::BitmapSampler::read(*(v4 + 8), v107, v47, v48, v49, v50, v51, v52, v53);
  v102 = v54;
  *v62.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v16, *&v107)), v55, v56, v57, v58, v59, v60, v61);
  v101 = v62;
  *v70.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v17, *&v107)), v63, v64, v65, v66, v67, v68, v69);
  v100 = v70;
  *v78.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v18, *&v107)), v71, v72, v73, v74, v75, v76, v77);
  v99 = v78;
  *v86.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v19, *&v107)), v79, v80, v81, v82, v83, v84, v85);
  v87 = vdupq_n_s32(0x3C14C7A3u);
  v88 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v102, vdupq_n_s32(0x3F19A4F0u)), vmulq_f32(vaddq_f32(v103, v101), vdupq_n_s32(0x3E8A9AC3u))), vmulq_f32(vaddq_f32(v104, v100), vdupq_n_s32(0xBD71927F))), vmulq_f32(vaddq_f32(v105, v99), vdupq_n_s32(0xBCAADC82))), vmulq_f32(vaddq_f32(v106, v86), vdupq_n_s32(0x3C140D7Eu)));
  v89 = vdupq_n_s32(0x3D474371u);
  v90 = vdupq_n_s32(0x3EDD553Fu);
  v91 = vmulq_f32(v102, vdupq_n_s32(0x3F0DF9F0u));
  v92 = vdupq_n_s32(0x3DEB32CFu);
  v93 = vdupq_n_s32(0x3D8C7B7Cu);
  v94 = vdupq_n_s32(0x3BAAAD28u);
  v95 = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vmulq_f32(v106, v87), vmulq_f32(v105, v89)), vmulq_f32(v103, v90)), v91), vmulq_f32(v101, v92)), vmulq_f32(v100, v93)), vmulq_f32(v86, v94));
  v96 = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vmulq_f32(v106, v94), vmulq_f32(v104, v93)), vmulq_f32(v103, v92)), v91), vmulq_f32(v101, v90)), vmulq_f32(v99, v89)), vmulq_f32(v86, v87));
  v89.f32[0] = fminf(v6, 1.0);
  v97 = vmlaq_n_f32(vmulq_n_f32(v88, 1.0 - v89.f32[0]), v95, v89.f32[0]);
  v95.f32[0] = fmaxf(v6 + -1.0, 0.0);
  return vmlaq_n_f32(vmulq_n_f32(v97, 1.0 - v95.f32[0]), v96, v95.f32[0]).u64[0];
}

unint64_t CI::sw_ASGv60(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  LODWORD(v6) = HIDWORD(*DC);
  v7 = 3.0;
  v8 = floor(((v6 / 3.0) - floorf(v6 / 3.0)) * 3.0);
  v9.f64[0] = floor(floorf(v6) / 0.6 + 0.499) + 0.5;
  *v9.f64 = v9.f64[0];
  v10 = *(v4 + 16);
  LODWORD(v7) = *(v4 + 20);
  v11.i32[0] = *(v4 + 24);
  v12.i32[0] = *(v4 + 28);
  *v13.i32 = *v11.i32 + (*&v7 + (v10 * 0.0));
  v14.i32[0] = *(v4 + 32);
  v15 = *(v4 + 36);
  *&v13.i32[1] = v15 + (*v14.i32 + (*v12.i32 * 0.0));
  v16.f32[0] = *v11.i32 + ((*&v7 * 0.0) + (v10 * 0.0));
  v16.f32[1] = v15 + ((*v14.i32 * 0.0) + (*v12.i32 * 0.0));
  v17 = vsub_f32(*v13.i8, v16);
  v18 = vadd_f32(v17, v17);
  v19 = vadd_f32(v17, v18);
  v20 = vadd_f32(v18, v18);
  *&v7 = *&v7 * *v9.f64;
  *&v21 = *v11.i32 + (*&v7 + (COERCE_FLOAT(*DC) * v10));
  *v9.f64 = *v14.i32 * *v9.f64;
  *(&v21 + 1) = v15 + (*v9.f64 + (COERCE_FLOAT(*DC) * *v12.i32));
  v107 = v21;
  *v22.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v21, v20)), v9, v21, v7, v13, v11, v12, v14);
  v106 = v22;
  *v30.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v107, v19)), v23, v24, v25, v26, v27, v28, v29);
  v105 = v30;
  *v38.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v107, v18)), v31, v32, v33, v34, v35, v36, v37);
  v104 = v38;
  *v46.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vsub_f32(*&v107, v17)), v39, v40, v41, v42, v43, v44, v45);
  v103 = v46;
  *v54.i64 = CI::BitmapSampler::read(*(v4 + 8), v107, v47, v48, v49, v50, v51, v52, v53);
  v102 = v54;
  *v62.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v17, *&v107)), v55, v56, v57, v58, v59, v60, v61);
  v101 = v62;
  *v70.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v18, *&v107)), v63, v64, v65, v66, v67, v68, v69);
  v100 = v70;
  *v78.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v19, *&v107)), v71, v72, v73, v74, v75, v76, v77);
  v99 = v78;
  *v86.i64 = CI::BitmapSampler::read(*(v4 + 8), COERCE_DOUBLE(vadd_f32(v20, *&v107)), v79, v80, v81, v82, v83, v84, v85);
  v87 = vdupq_n_s32(0x3C14C7A3u);
  v88 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v102, vdupq_n_s32(0x3F19A4F0u)), vmulq_f32(vaddq_f32(v103, v101), vdupq_n_s32(0x3E8A9AC3u))), vmulq_f32(vaddq_f32(v104, v100), vdupq_n_s32(0xBD71927F))), vmulq_f32(vaddq_f32(v105, v99), vdupq_n_s32(0xBCAADC82))), vmulq_f32(vaddq_f32(v106, v86), vdupq_n_s32(0x3C140D7Eu)));
  v89 = vdupq_n_s32(0x3D474371u);
  v90 = vdupq_n_s32(0x3EDD553Fu);
  v91 = vmulq_f32(v102, vdupq_n_s32(0x3F0DF9F0u));
  v92 = vdupq_n_s32(0x3DEB32CFu);
  v93 = vdupq_n_s32(0x3D8C7B7Cu);
  v94 = vdupq_n_s32(0x3BAAAD28u);
  v95 = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vmulq_f32(v106, v87), vmulq_f32(v105, v89)), vmulq_f32(v103, v90)), v91), vmulq_f32(v101, v92)), vmulq_f32(v100, v93)), vmulq_f32(v86, v94));
  v96 = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vmulq_f32(v106, v94), vmulq_f32(v104, v93)), vmulq_f32(v103, v92)), v91), vmulq_f32(v101, v90)), vmulq_f32(v99, v89)), vmulq_f32(v86, v87));
  v89.f32[0] = fminf(v8, 1.0);
  v97 = vmlaq_n_f32(vmulq_n_f32(v88, 1.0 - v89.f32[0]), v95, v89.f32[0]);
  v95.f32[0] = fmaxf(v8 + -1.0, 0.0);
  return vmlaq_n_f32(vmulq_n_f32(v97, 1.0 - v95.f32[0]), v96, v95.f32[0]).u64[0];
}

float64x2_t Rectangle::integralize@<Q0>(Rectangle *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  if (fabs(this->var0) == INFINITY || (var1 = this->var1, fabs(var1) == INFINITY))
  {
    result = vdupq_n_s64(0x7FF0000000000000uLL);
    *a3 = result;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    v6 = this->var0 == -8.98846567e307 && var1 == -8.98846567e307;
    if (v6 && this->var2 == 1.79769313e308 && this->var3 == 1.79769313e308)
    {
      result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *a3 = result;
      *(a3 + 16) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      Rectangle::inset(this, a2, a2, v8);
      v7 = vrndmq_f64(v8[0]);
      result = vsubq_f64(vrndpq_f64(vaddq_f64(v8[0], v8[1])), v7);
      *a3 = v7;
      *(a3 + 16) = result;
    }
  }

  return result;
}

void ___ZL5downHP7CIImagedd_block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  roiDownK(*&a2, v5, v6, 1);
}

void roiDownK(CGRect a1, float a2, float a3, int a4)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v8 = 1.0;
  if (a4)
  {
    v9 = 1.0 / a3;
  }

  else
  {
    v9 = 1.0;
  }

  if (a4)
  {
    v10 = -a2;
  }

  else
  {
    v8 = 1.0 / a3;
    v10 = 0.0;
  }

  if (a4)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = -a2;
  }

  CGAffineTransformMakeScale(&v12, v9, v8);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v14 = CGRectApplyAffineTransform(v13, &v12);
  CGRectInset(v14, v10, v11);
}

int64x2_t Rectangle::inset@<Q0>(Rectangle *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  var0 = this->var0;
  if (fabs(this->var0) == INFINITY)
  {
    goto LABEL_14;
  }

  var1 = this->var1;
  if (fabs(var1) == INFINITY)
  {
    goto LABEL_14;
  }

  v6 = var0 == -8.98846567e307 && var1 == -8.98846567e307;
  if (v6 && this->var2 == 1.79769313e308 && this->var3 == 1.79769313e308)
  {
    result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *a4 = result;
    *(a4 + 16) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    return result;
  }

  var2 = this->var2;
  v9 = fabs(var2) + a2 * -2.0;
  if (v9 < 0.0 || (var3 = this->var3, v11 = fabs(var3) + a3 * -2.0, v11 < 0.0))
  {
LABEL_14:
    result = vdupq_n_s64(0x7FF0000000000000uLL);
    *a4 = result;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  else
  {
    *result.i64 = fmin(var0, var0 + var2) + a2;
    *a4 = result.i64[0];
    *(a4 + 8) = fmin(var1, var3 + var1) + a3;
    *(a4 + 16) = v9;
    *(a4 + 24) = v11;
  }

  return result;
}

double CI::sw_asgDownH(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v231 = *v8;
  v10 = *(a2 + (*(v4 + 56) << 6));
  DC = CI::getDC(a1);
  _Q2 = v231;
  *_Q3.i8 = vmul_f32(*v231.i8, *DC);
  v230 = _Q3;
  v14.i64[0] = 0.5;
  *v14.i32 = floor(*_Q3.i32 + -0.5) + 0.5;
  v216 = v14;
  v15 = _Q3;
  v15.i32[0] = v14.i32[0];
  v16 = vextq_s8(_Q2, _Q2, 8uLL);
  __asm { FMOV            V2.2S, #5.0 }

  *_Q2.i8 = vmul_f32(*&v16.f64[0], *_Q2.i8);
  *v21.i8 = vsub_f32(*v15.i8, *_Q2.i8);
  __asm { FMOV            V3.2S, #4.0 }

  *_Q3.i8 = vmul_f32(*&v16.f64[0], *_Q3.i8);
  *_Q4.i8 = vsub_f32(*v15.i8, *_Q3.i8);
  v208 = _Q4;
  __asm { FMOV            V4.2S, #3.0 }

  *_Q4.i8 = vmul_f32(*&v16.f64[0], *_Q4.i8);
  *v23.i8 = vsub_f32(*v15.i8, *_Q4.i8);
  v210 = v23;
  *v23.i8 = vadd_f32(*&v16.f64[0], *&v16.f64[0]);
  *v24.i8 = vsub_f32(*v15.i8, *v23.i8);
  v212 = v24;
  *v24.i8 = vsub_f32(*v15.i8, *&v16.f64[0]);
  v214 = v24;
  *v24.i8 = vadd_f32(*&v16.f64[0], *v15.i8);
  *v23.i8 = vadd_f32(*v23.i8, *v15.i8);
  v217 = v24;
  v219 = v23;
  *_Q4.i8 = vadd_f32(*_Q4.i8, *v15.i8);
  *_Q3.i8 = vadd_f32(*_Q3.i8, *v15.i8);
  v221 = _Q4;
  v222 = _Q3;
  *_Q2.i8 = vadd_f32(*_Q2.i8, *v15.i8);
  v226 = _Q2;
  __asm { FMOV            V2.2S, #6.0 }

  *&v16.f64[0] = vmul_f32(*&v16.f64[0], *_Q2.i8);
  *v15.i8 = vadd_f32(*&v16.f64[0], *v15.i8);
  v229 = v15;
  v206 = *v21.i8;
  _Q2.i32[0] = *(v9 + 28);
  *v15.i32 = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v21.i8, 1) + (*v21.i32 * *(v9 + 16)));
  _Q3.i32[0] = *(v9 + 36);
  *v16.f64 = *_Q3.i32 + (vmuls_lane_f32(*(v9 + 32), *v21.i8, 1) + (*v21.i32 * *_Q2.i32));
  v15.i32[1] = LODWORD(v16.f64[0]);
  *v25.i64 = CI::BitmapSampler::read(*(v9 + 8), *v15.i64, v16, *_Q2.i64, *_Q3.i64, _Q4, v23, v21, v24);
  v204 = v25;
  LODWORD(v26) = *(v9 + 28);
  v25.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v208.i8, 1) + (*v208.i32 * *(v9 + 16)));
  LODWORD(v27) = *(v9 + 36);
  *v28.f64 = *&v27 + (vmuls_lane_f32(*(v9 + 32), *v208.i8, 1) + (*v208.i32 * *&v26));
  v25.i32[1] = LODWORD(v28.f64[0]);
  *v32.i64 = CI::BitmapSampler::read(*(v9 + 8), *v25.i64, v28, v26, v27, v208, v29, v30, v31);
  v203 = v32;
  LODWORD(v33) = *(v9 + 28);
  v32.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v210.i8, 1) + (*v210.i32 * *(v9 + 16)));
  LODWORD(v34) = *(v9 + 36);
  *v35.f64 = *&v34 + (vmuls_lane_f32(*(v9 + 32), *v210.i8, 1) + (*v210.i32 * *&v33));
  v32.i32[1] = LODWORD(v35.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v9 + 8), *v32.i64, v35, v33, v34, v210, v36, v37, v38);
  v202 = v39;
  LODWORD(v40) = *(v9 + 28);
  v39.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v212.i8, 1) + (*v212.i32 * *(v9 + 16)));
  LODWORD(v41) = *(v9 + 36);
  *v42.f64 = *&v41 + (vmuls_lane_f32(*(v9 + 32), *v212.i8, 1) + (*v212.i32 * *&v40));
  v39.i32[1] = LODWORD(v42.f64[0]);
  *v46.i64 = CI::BitmapSampler::read(*(v9 + 8), *v39.i64, v42, v40, v41, v212, v43, v44, v45);
  v201 = v46;
  LODWORD(v47) = *(v9 + 28);
  v46.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v214.i8, 1) + (*v214.i32 * *(v9 + 16)));
  LODWORD(v48) = *(v9 + 36);
  *v49.f64 = *&v48 + (vmuls_lane_f32(*(v9 + 32), *v214.i8, 1) + (*v214.i32 * *&v47));
  v46.i32[1] = LODWORD(v49.f64[0]);
  *v53.i64 = CI::BitmapSampler::read(*(v9 + 8), *v46.i64, v49, v47, v48, v214, v50, v51, v52);
  v200 = v53;
  LODWORD(v54) = *(v9 + 28);
  v53.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v230.i8, 1) + (*v216.i32 * *(v9 + 16)));
  LODWORD(v55) = *(v9 + 36);
  *v56.f64 = *&v55 + (vmuls_lane_f32(*(v9 + 32), *v230.i8, 1) + (*v216.i32 * *&v54));
  v53.i32[1] = LODWORD(v56.f64[0]);
  *v59.i64 = CI::BitmapSampler::read(*(v9 + 8), *v53.i64, v56, v54, v55, v230, v216, v57, v58);
  v199 = v59;
  LODWORD(v60) = *(v9 + 28);
  v59.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v217.i8, 1) + (*v217.i32 * *(v9 + 16)));
  LODWORD(v61) = *(v9 + 36);
  *v62.f64 = *&v61 + (vmuls_lane_f32(*(v9 + 32), *v217.i8, 1) + (*v217.i32 * *&v60));
  v59.i32[1] = LODWORD(v62.f64[0]);
  *v66.i64 = CI::BitmapSampler::read(*(v9 + 8), *v59.i64, v62, v60, v61, v217, v63, v64, v65);
  v198 = v66;
  LODWORD(v67) = *(v9 + 28);
  v66.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v219.i8, 1) + (*v219.i32 * *(v9 + 16)));
  LODWORD(v68) = *(v9 + 36);
  *v69.f64 = *&v68 + (vmuls_lane_f32(*(v9 + 32), *v219.i8, 1) + (*v219.i32 * *&v67));
  v66.i32[1] = LODWORD(v69.f64[0]);
  *v73.i64 = CI::BitmapSampler::read(*(v9 + 8), *v66.i64, v69, v67, v68, v219, v70, v71, v72);
  v197 = v73;
  LODWORD(v74) = *(v9 + 28);
  v73.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v221.i8, 1) + (*v221.i32 * *(v9 + 16)));
  LODWORD(v75) = *(v9 + 36);
  *v76.f64 = *&v75 + (vmuls_lane_f32(*(v9 + 32), *v221.i8, 1) + (*v221.i32 * *&v74));
  v73.i32[1] = LODWORD(v76.f64[0]);
  *v80.i64 = CI::BitmapSampler::read(*(v9 + 8), *v73.i64, v76, v74, v75, v221, v77, v78, v79);
  v196 = v80;
  LODWORD(v81) = *(v9 + 28);
  v80.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v222.i8, 1) + (*v222.i32 * *(v9 + 16)));
  LODWORD(v82) = *(v9 + 36);
  *v83.f64 = *&v82 + (vmuls_lane_f32(*(v9 + 32), *v222.i8, 1) + (*v222.i32 * *&v81));
  v80.i32[1] = LODWORD(v83.f64[0]);
  *v87.i64 = CI::BitmapSampler::read(*(v9 + 8), *v80.i64, v83, v81, v82, v222, v84, v85, v86);
  v195 = v87;
  LODWORD(v88) = *(v9 + 28);
  v87.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v226.i8, 1) + (*v226.i32 * *(v9 + 16)));
  LODWORD(v89) = *(v9 + 36);
  *v90.f64 = *&v89 + (vmuls_lane_f32(*(v9 + 32), *v226.i8, 1) + (*v226.i32 * *&v88));
  v87.i32[1] = LODWORD(v90.f64[0]);
  *v94.i64 = CI::BitmapSampler::read(*(v9 + 8), *v87.i64, v90, v88, v89, v226, v91, v92, v93);
  v194 = v94;
  LODWORD(v95) = *(v9 + 28);
  v94.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v229.i8, 1) + (*v229.i32 * *(v9 + 16)));
  LODWORD(v96) = *(v9 + 36);
  *v97.f64 = *&v96 + (vmuls_lane_f32(*(v9 + 32), *v229.i8, 1) + (*v229.i32 * *&v95));
  v94.i32[1] = LODWORD(v97.f64[0]);
  *v101.i64 = CI::BitmapSampler::read(*(v9 + 8), *v94.i64, v97, v95, v96, v229, v98, v99, v100);
  v103 = *v230.i8;
  v102 = *v231.i32;
  v193 = v101;
  v104 = fabsf(v10 + (vsub_f32(v206, *v230.i8).f32[0] / *v231.i32));
  v207 = 0.0;
  v205 = 0.0;
  if (v104 < 3.0)
  {
    v105 = v104;
    v205 = 1.0;
    if (v105 >= 0.000001)
    {
      v106 = v105 * 3.14159265;
      v107 = sinf(v106);
      v108 = v106 * 0.125;
      v109 = v107 / v106;
      v110 = cos(v108);
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v110 = v110;
      v205 = (((v109 * *&v110) * *&v110) * *&v110) * *&v110;
    }
  }

  v111 = fabsf(v10 + (vsub_f32(*v208.i8, v103).f32[0] / v102));
  if (v111 < 3.0)
  {
    v112 = v111;
    v207 = 1.0;
    if (v112 >= 0.000001)
    {
      v113 = v112 * 3.14159265;
      v114 = sinf(v113);
      v115 = v113 * 0.125;
      v116 = v114 / v113;
      v117 = cos(v115);
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v117 = v117;
      v207 = (((v116 * *&v117) * *&v117) * *&v117) * *&v117;
    }
  }

  v118 = fabsf(v10 + (vsub_f32(*v210.i8, v103).f32[0] / v102));
  v211 = 0.0;
  v209 = 0.0;
  if (v118 < 3.0)
  {
    v119 = v118;
    v209 = 1.0;
    if (v119 >= 0.000001)
    {
      v120 = v119 * 3.14159265;
      v121 = sinf(v120);
      v122 = v120 * 0.125;
      v123 = v121 / v120;
      v124 = cos(v122);
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v124 = v124;
      v209 = (((v123 * *&v124) * *&v124) * *&v124) * *&v124;
    }
  }

  v125 = fabsf(v10 + (vsub_f32(*v212.i8, v103).f32[0] / v102));
  if (v125 < 3.0)
  {
    v126 = v125;
    v211 = 1.0;
    if (v126 >= 0.000001)
    {
      v127 = v126 * 3.14159265;
      v128 = sinf(v127);
      v129 = v127 * 0.125;
      v130 = v128 / v127;
      v131 = cos(v129);
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v131 = v131;
      v211 = (((v130 * *&v131) * *&v131) * *&v131) * *&v131;
    }
  }

  v132 = fabsf(v10 + (vsub_f32(*v214.i8, v103).f32[0] / v102));
  v215 = 0.0;
  v213 = 0.0;
  if (v132 < 3.0)
  {
    v133 = v132;
    v213 = 1.0;
    if (v133 >= 0.000001)
    {
      v134 = v133 * 3.14159265;
      v135 = sinf(v134);
      v136 = v134 * 0.125;
      v137 = v135 / v134;
      v138 = cos(v136);
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v138 = v138;
      v213 = (((v137 * *&v138) * *&v138) * *&v138) * *&v138;
    }
  }

  v139 = fabsf(v10 + ((*v216.i32 - v103.f32[0]) / v102));
  if (v139 < 3.0)
  {
    v140 = v139;
    v215 = 1.0;
    if (v140 >= 0.000001)
    {
      v141 = v140 * 3.14159265;
      v142 = sinf(v141);
      v143 = v141 * 0.125;
      v144 = v142 / v141;
      v145 = cos(v143);
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v145 = v145;
      v215 = (((v144 * *&v145) * *&v145) * *&v145) * *&v145;
    }
  }

  v146 = fabsf(v10 + (vsub_f32(*v217.i8, v103).f32[0] / v102));
  v147 = 0.0;
  v148 = 0.0;
  if (v146 < 3.0)
  {
    v149 = v146;
    v148 = 1.0;
    if (v149 >= 0.000001)
    {
      v150 = v149 * 3.14159265;
      v151 = sinf(v150);
      v152 = v150 * 0.125;
      v153 = v151 / v150;
      v154 = cos(v152);
      v147 = 0.0;
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v154 = v154;
      v148 = (((v153 * *&v154) * *&v154) * *&v154) * *&v154;
    }
  }

  v155 = fabsf(v10 + (vsub_f32(*v219.i8, v103).f32[0] / v102));
  v220 = v148;
  if (v155 < 3.0)
  {
    v156 = v155;
    v147 = 1.0;
    if (v156 >= 0.000001)
    {
      v157 = v156 * 3.14159265;
      v158 = sinf(v157);
      v159 = v157 * 0.125;
      v160 = v158 / v157;
      v161 = cos(v159);
      v148 = v220;
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v161 = v161;
      v147 = (((v160 * *&v161) * *&v161) * *&v161) * *&v161;
    }
  }

  v162 = fabsf(v10 + (vsub_f32(*v221.i8, v103).f32[0] / v102));
  v163 = 0.0;
  v164 = 0.0;
  v218 = v147;
  if (v162 < 3.0)
  {
    v165 = v162;
    v164 = 1.0;
    if (v165 >= 0.000001)
    {
      v166 = v165 * 3.14159265;
      v167 = sinf(v166);
      v168 = v166 * 0.125;
      v169 = v167 / v166;
      v170 = cos(v168);
      v163 = 0.0;
      v147 = v218;
      v148 = v220;
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v170 = v170;
      v164 = (((v169 * *&v170) * *&v170) * *&v170) * *&v170;
    }
  }

  v171 = fabsf(v10 + (vsub_f32(*v222.i8, v103).f32[0] / v102));
  if (v171 < 3.0)
  {
    v172 = v171;
    v163 = 1.0;
    if (v172 >= 0.000001)
    {
      v173 = v172 * 3.14159265;
      v223 = v164;
      v174 = sinf(v173);
      v175 = v173 * 0.125;
      v176 = v174 / v173;
      v177 = cos(v175);
      v164 = v223;
      v147 = v218;
      v148 = v220;
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v177 = v177;
      v163 = (((v176 * *&v177) * *&v177) * *&v177) * *&v177;
    }
  }

  v178 = fabsf(v10 + (vsub_f32(*v226.i8, v103).f32[0] / v102));
  v179 = 0.0;
  v180 = 0.0;
  if (v178 < 3.0)
  {
    v181 = v178;
    v180 = 1.0;
    if (v181 >= 0.000001)
    {
      v182 = v181 * 3.14159265;
      v224 = v164;
      v227 = v163;
      v183 = sinf(v182);
      v184 = v182 * 0.125;
      v185 = v183 / v182;
      v186 = cos(v184);
      v179 = 0.0;
      v164 = v224;
      v163 = v227;
      v147 = v218;
      v148 = v220;
      v103 = *v230.i8;
      v102 = *v231.i32;
      *&v186 = v186;
      v180 = (((v185 * *&v186) * *&v186) * *&v186) * *&v186;
    }
  }

  v187 = COERCE_DOUBLE(vsub_f32(*v229.i8, v103));
  *&v187 = fabsf(v10 + (*&v187 / v102));
  if (*&v187 < 3.0)
  {
    v187 = *&v187;
    v179 = 1.0;
    if (v187 >= 0.000001)
    {
      v188 = v187 * 3.14159265;
      v225 = v164;
      v228 = v163;
      v232 = v180;
      v189 = sinf(v188);
      v190 = v188 * 0.125;
      v191 = v189 / v188;
      v187 = cos(v190);
      v180 = v232;
      v164 = v225;
      v163 = v228;
      v147 = v218;
      v148 = v220;
      *&v187 = v187;
      v179 = (((v191 * *&v187) * *&v187) * *&v187) * *&v187;
    }
  }

  *&v187 = ((((((((((v205 + v207) + v209) + v211) + v213) + v215) + v148) + v147) + v164) + v163) + v180) + v179;
  *&result = vdivq_f32(vaddq_f32(vmulq_n_f32(v198, v148), vaddq_f32(vmulq_n_f32(v197, v147), vaddq_f32(vmulq_n_f32(v196, v164), vaddq_f32(vmulq_n_f32(v195, v163), vaddq_f32(vmulq_n_f32(v194, v180), vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v204, v205), vmulq_n_f32(v203, v207)), vmulq_n_f32(v202, v209)), vmulq_n_f32(v201, v211)), vmulq_n_f32(v200, v213)), vmulq_n_f32(v199, v215)), vmulq_n_f32(v193, v179))))))), vdupq_lane_s32(*&v187, 0)).u64[0];
  return result;
}

float ___ZL5downVP7CIImagedd_block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  roiDownK(*&a2, v5, v6, 0);
  return result;
}

double CI::sw_asgDownV(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v213 = *v8;
  v10 = *(a2 + (*(v4 + 56) << 6));
  DC = CI::getDC(a1);
  _Q2 = v213;
  *v13.i8 = vmul_f32(*v213.i8, *DC);
  v205 = v13;
  v14 = *&v13.i32[1];
  v15.i64[0] = 0.5;
  *v15.i32 = floor(*&v13.i32[1] + -0.5) + 0.5;
  v221 = v15;
  v16 = v13;
  v16.i32[1] = v15.i32[0];
  v17 = vextq_s8(_Q2, _Q2, 8uLL);
  __asm { FMOV            V2.2S, #5.0 }

  *_Q2.i8 = vmul_f32(*&v17.f64[0], *_Q2.i8);
  *v13.i8 = vsub_f32(*v16.i8, *_Q2.i8);
  __asm { FMOV            V4.2S, #4.0 }

  v23 = vmul_f32(*&v17.f64[0], _D4);
  *_Q5.i8 = vsub_f32(*v16.i8, v23);
  v210 = _Q5;
  __asm { FMOV            V5.2S, #3.0 }

  *_Q5.i8 = vmul_f32(*&v17.f64[0], *_Q5.i8);
  *v25.i8 = vsub_f32(*v16.i8, *_Q5.i8);
  v214 = v25;
  *v25.i8 = vadd_f32(*&v17.f64[0], *&v17.f64[0]);
  *v26.i8 = vsub_f32(*v16.i8, *v25.i8);
  v216 = v26;
  *v26.i8 = vsub_f32(*v16.i8, *&v17.f64[0]);
  v218 = v26;
  *v26.i8 = vadd_f32(*&v17.f64[0], *v16.i8);
  v220 = v26;
  *v25.i8 = vadd_f32(*v25.i8, *v16.i8);
  *_Q5.i8 = vadd_f32(*_Q5.i8, *v16.i8);
  v223 = v25;
  v224 = _Q5;
  *v27.i8 = vadd_f32(v23, *v16.i8);
  *_Q2.i8 = vadd_f32(*_Q2.i8, *v16.i8);
  v226 = v27;
  v228 = _Q2;
  __asm { FMOV            V2.2S, #6.0 }

  *&v17.f64[0] = vmul_f32(*&v17.f64[0], *_Q2.i8);
  *v16.i8 = vadd_f32(*&v17.f64[0], *v16.i8);
  v232 = v16;
  _Q5.i32[0] = *(v9 + 36);
  *v27.i32 = vmuls_lane_f32(*(v9 + 32), *v13.i8, 1);
  *_Q2.i32 = *v27.i32 + (*v13.i32 * *(v9 + 28));
  v28 = *&v13.i32[1];
  *v16.i32 = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v13.i8, 1) + (*v13.i32 * *(v9 + 16)));
  *v17.f64 = *_Q5.i32 + *_Q2.i32;
  *&v16.i32[1] = *_Q5.i32 + *_Q2.i32;
  *v29.i64 = CI::BitmapSampler::read(*(v9 + 8), *v16.i64, v17, *_Q2.i64, *v13.i64, v27, _Q5, v25, v26);
  v212 = v29;
  v30.i32[0] = *(v9 + 36);
  *&v31 = vmuls_lane_f32(*(v9 + 32), *v210.i8, 1);
  *&v32 = *&v31 + (*v210.i32 * *(v9 + 28));
  v33 = *&v210.i32[1];
  v29.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v210.i8, 1) + (*v210.i32 * *(v9 + 16)));
  *v34.f64 = *v30.i32 + *&v32;
  v29.f32[1] = *v30.i32 + *&v32;
  *v37.i64 = CI::BitmapSampler::read(*(v9 + 8), *v29.i64, v34, v32, v31, v30, v210, v35, v36);
  v211 = v37;
  LODWORD(v38) = *(v9 + 28);
  v37.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v214.i8, 1) + (*v214.i32 * *(v9 + 16)));
  LODWORD(v39) = *(v9 + 36);
  *v40.f64 = *&v39 + (vmuls_lane_f32(*(v9 + 32), *v214.i8, 1) + (*v214.i32 * *&v38));
  v37.i32[1] = LODWORD(v40.f64[0]);
  *v44.i64 = CI::BitmapSampler::read(*(v9 + 8), *v37.i64, v40, v38, v39, v214, v41, v42, v43);
  v209 = v44;
  LODWORD(v45) = *(v9 + 28);
  v44.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v216.i8, 1) + (*v216.i32 * *(v9 + 16)));
  LODWORD(v46) = *(v9 + 36);
  *v47.f64 = *&v46 + (vmuls_lane_f32(*(v9 + 32), *v216.i8, 1) + (*v216.i32 * *&v45));
  v44.i32[1] = LODWORD(v47.f64[0]);
  *v51.i64 = CI::BitmapSampler::read(*(v9 + 8), *v44.i64, v47, v45, v46, v216, v48, v49, v50);
  v208 = v51;
  LODWORD(v52) = *(v9 + 28);
  v51.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v218.i8, 1) + (*v218.i32 * *(v9 + 16)));
  LODWORD(v53) = *(v9 + 36);
  *v54.f64 = *&v53 + (vmuls_lane_f32(*(v9 + 32), *v218.i8, 1) + (*v218.i32 * *&v52));
  v51.i32[1] = LODWORD(v54.f64[0]);
  *v58.i64 = CI::BitmapSampler::read(*(v9 + 8), *v51.i64, v54, v52, v53, v218, v55, v56, v57);
  v207 = v58;
  v59.i32[0] = *(v9 + 36);
  *&v60 = *(v9 + 32) * *v221.i32;
  *&v61 = *&v60 + (*v205.i32 * *(v9 + 28));
  v58.f32[0] = *(v9 + 24) + ((*(v9 + 20) * *v221.i32) + (*v205.i32 * *(v9 + 16)));
  *v62.f64 = *v59.i32 + *&v61;
  v58.f32[1] = *v59.i32 + *&v61;
  *v64.i64 = CI::BitmapSampler::read(*(v9 + 8), *v58.i64, v62, v61, v60, v59, v221, v205, v63);
  v206 = v64;
  LODWORD(v65) = *(v9 + 28);
  v64.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v220.i8, 1) + (*v220.i32 * *(v9 + 16)));
  LODWORD(v66) = *(v9 + 36);
  *v67.f64 = *&v66 + (vmuls_lane_f32(*(v9 + 32), *v220.i8, 1) + (*v220.i32 * *&v65));
  v64.i32[1] = LODWORD(v67.f64[0]);
  *v71.i64 = CI::BitmapSampler::read(*(v9 + 8), *v64.i64, v67, v65, v66, v220, v68, v69, v70);
  v204 = v71;
  LODWORD(v72) = *(v9 + 28);
  v71.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v223.i8, 1) + (*v223.i32 * *(v9 + 16)));
  LODWORD(v73) = *(v9 + 36);
  *v74.f64 = *&v73 + (vmuls_lane_f32(*(v9 + 32), *v223.i8, 1) + (*v223.i32 * *&v72));
  v71.i32[1] = LODWORD(v74.f64[0]);
  *v78.i64 = CI::BitmapSampler::read(*(v9 + 8), *v71.i64, v74, v72, v73, v223, v75, v76, v77);
  v203 = v78;
  LODWORD(v79) = *(v9 + 28);
  v78.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v224.i8, 1) + (*v224.i32 * *(v9 + 16)));
  LODWORD(v80) = *(v9 + 36);
  *v81.f64 = *&v80 + (vmuls_lane_f32(*(v9 + 32), *v224.i8, 1) + (*v224.i32 * *&v79));
  v78.i32[1] = LODWORD(v81.f64[0]);
  *v85.i64 = CI::BitmapSampler::read(*(v9 + 8), *v78.i64, v81, v79, v80, v224, v82, v83, v84);
  v202 = v85;
  LODWORD(v86) = *(v9 + 28);
  v85.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v226.i8, 1) + (*v226.i32 * *(v9 + 16)));
  LODWORD(v87) = *(v9 + 36);
  *v88.f64 = *&v87 + (vmuls_lane_f32(*(v9 + 32), *v226.i8, 1) + (*v226.i32 * *&v86));
  v85.i32[1] = LODWORD(v88.f64[0]);
  *v92.i64 = CI::BitmapSampler::read(*(v9 + 8), *v85.i64, v88, v86, v87, v226, v89, v90, v91);
  v201 = v92;
  LODWORD(v93) = *(v9 + 28);
  v92.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v228.i8, 1) + (*v228.i32 * *(v9 + 16)));
  LODWORD(v94) = *(v9 + 36);
  *v95.f64 = *&v94 + (vmuls_lane_f32(*(v9 + 32), *v228.i8, 1) + (*v228.i32 * *&v93));
  v92.i32[1] = LODWORD(v95.f64[0]);
  *v99.i64 = CI::BitmapSampler::read(*(v9 + 8), *v92.i64, v95, v93, v94, v228, v96, v97, v98);
  v200 = v99;
  LODWORD(v100) = *(v9 + 28);
  v99.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v232.i8, 1) + (*v232.i32 * *(v9 + 16)));
  LODWORD(v101) = *(v9 + 36);
  *v102.f64 = *&v101 + (vmuls_lane_f32(*(v9 + 32), *v232.i8, 1) + (*v232.i32 * *&v100));
  v99.i32[1] = LODWORD(v102.f64[0]);
  *v106.i64 = CI::BitmapSampler::read(*(v9 + 8), *v99.i64, v102, v100, v101, v232, v103, v104, v105);
  v199 = v106;
  v107 = fabsf(v10 + ((v28 - v14) / *&v213.i32[1]));
  v213.i32[0] = 0;
  v108 = 0.0;
  if (v107 < 3.0)
  {
    v109 = v107;
    v108 = 1.0;
    if (v109 >= 0.000001)
    {
      v110 = v109 * 3.14159265;
      v111 = sinf(v110);
      v112 = v110 * 0.125;
      v113 = v111 / v110;
      v114 = cos(v112);
      v108 = (((v113 * v114) * v114) * v114) * v114;
    }
  }

  v198 = v108;
  v115 = fabsf(v10 + ((v33 - v14) / *&v213.i32[1]));
  if (v115 < 3.0)
  {
    v116 = v115;
    v213.i32[0] = 1.0;
    if (v116 >= 0.000001)
    {
      v117 = v116 * 3.14159265;
      v118 = sinf(v117);
      v119 = v117 * 0.125;
      v120 = v118 / v117;
      v121 = cos(v119);
      *v213.i32 = (((v120 * v121) * v121) * v121) * v121;
    }
  }

  v122 = fabsf(v10 + ((*&v214.i32[1] - v14) / *&v213.i32[1]));
  v217 = 0.0;
  v123 = 0.0;
  if (v122 < 3.0)
  {
    v124 = v122;
    v123 = 1.0;
    if (v124 >= 0.000001)
    {
      v125 = v124 * 3.14159265;
      v126 = sinf(v125);
      v127 = v125 * 0.125;
      v128 = v126 / v125;
      v129 = cos(v127);
      v123 = (((v128 * v129) * v129) * v129) * v129;
    }
  }

  v215 = v123;
  v130 = fabsf(v10 + ((*&v216.i32[1] - v14) / *&v213.i32[1]));
  if (v130 < 3.0)
  {
    v131 = v130;
    v217 = 1.0;
    if (v131 >= 0.000001)
    {
      v132 = v131 * 3.14159265;
      v133 = sinf(v132);
      v134 = v132 * 0.125;
      v135 = v133 / v132;
      v136 = cos(v134);
      v217 = (((v135 * v136) * v136) * v136) * v136;
    }
  }

  v137 = fabsf(v10 + ((*&v218.i32[1] - v14) / *&v213.i32[1]));
  v138 = 0.0;
  v139 = 0.0;
  if (v137 < 3.0)
  {
    v140 = v137;
    v139 = 1.0;
    if (v140 >= 0.000001)
    {
      v141 = v140 * 3.14159265;
      v142 = sinf(v141);
      v143 = v141 * 0.125;
      v144 = v142 / v141;
      v145 = cos(v143);
      v138 = 0.0;
      *&v145 = v145;
      v139 = (((v144 * *&v145) * *&v145) * *&v145) * *&v145;
    }
  }

  v219 = v139;
  v146 = fabsf(v10 + ((*v221.i32 - v14) / *&v213.i32[1]));
  if (v146 < 3.0)
  {
    v147 = v146;
    v138 = 1.0;
    if (v147 >= 0.000001)
    {
      v148 = v147 * 3.14159265;
      v149 = sinf(v148);
      v150 = v148 * 0.125;
      v151 = v149 / v148;
      v152 = cos(v150);
      v138 = (((v151 * v152) * v152) * v152) * v152;
    }
  }

  v222 = v138;
  v153 = fabsf(v10 + ((*&v220.i32[1] - v14) / *&v213.i32[1]));
  v154 = 0.0;
  v155 = 0.0;
  if (v153 < 3.0)
  {
    v156 = v153;
    v155 = 1.0;
    if (v156 >= 0.000001)
    {
      v157 = v156 * 3.14159265;
      v158 = sinf(v157);
      v159 = v157 * 0.125;
      v160 = v158 / v157;
      v161 = cos(v159);
      v154 = 0.0;
      *&v161 = v161;
      v155 = (((v160 * *&v161) * *&v161) * *&v161) * *&v161;
    }
  }

  *v223.i32 = v155;
  v162 = fabsf(v10 + ((*&v223.i32[1] - v14) / *&v213.i32[1]));
  if (v162 < 3.0)
  {
    v163 = v162;
    v154 = 1.0;
    if (v163 >= 0.000001)
    {
      v164 = v163 * 3.14159265;
      v165 = sinf(v164);
      v166 = v164 * 0.125;
      v167 = v165 / v164;
      v168 = cos(v166);
      v154 = (((v167 * v168) * v168) * v168) * v168;
    }
  }

  v169 = fabsf(v10 + ((*&v224.i32[1] - v14) / *&v213.i32[1]));
  v170 = 0.0;
  v171 = 0.0;
  v225 = v154;
  if (v169 < 3.0)
  {
    v172 = v169;
    v171 = 1.0;
    if (v172 >= 0.000001)
    {
      v173 = v172 * 3.14159265;
      v174 = sinf(v173);
      v175 = v173 * 0.125;
      v176 = v174 / v173;
      v177 = cos(v175);
      v170 = 0.0;
      v154 = v225;
      *&v177 = v177;
      v171 = (((v176 * *&v177) * *&v177) * *&v177) * *&v177;
    }
  }

  v178 = fabsf(v10 + ((*&v226.i32[1] - v14) / *&v213.i32[1]));
  if (v178 < 3.0)
  {
    v179 = v178;
    v170 = 1.0;
    if (v179 >= 0.000001)
    {
      v180 = v179 * 3.14159265;
      v229 = v171;
      v181 = sinf(v180);
      v182 = v180 * 0.125;
      v183 = v181 / v180;
      v184 = cos(v182);
      v171 = v229;
      v154 = v225;
      *&v184 = v184;
      v170 = (((v183 * *&v184) * *&v184) * *&v184) * *&v184;
    }
  }

  HIDWORD(v185) = v232.i32[1];
  *&v185 = fabsf(v10 + ((*&v228.i32[1] - v14) / *&v213.i32[1]));
  v186 = 0.0;
  v187 = 0.0;
  if (*&v185 < 3.0)
  {
    v185 = *&v185;
    v187 = 1.0;
    if (v185 >= 0.000001)
    {
      v188 = v185 * 3.14159265;
      v230 = v171;
      v233 = v170;
      v189 = sinf(v188);
      v190 = v188 * 0.125;
      v191 = v189 / v188;
      v185 = cos(v190);
      v186 = 0.0;
      v171 = v230;
      v170 = v233;
      v154 = v225;
      *&v185 = v185;
      v187 = (((v191 * *&v185) * *&v185) * *&v185) * *&v185;
    }
  }

  v192 = fabsf(v10 + ((*&v232.i32[1] - v14) / *&v213.i32[1]));
  if (v192 < 3.0)
  {
    v185 = v192;
    v186 = 1.0;
    if (v185 >= 0.000001)
    {
      v193 = v185 * 3.14159265;
      v231 = v171;
      v234 = v170;
      v227 = v187;
      v194 = sinf(v193);
      v195 = v193 * 0.125;
      v196 = v194 / v193;
      v185 = cos(v195);
      v187 = v227;
      v171 = v231;
      v170 = v234;
      v154 = v225;
      *&v185 = v185;
      v186 = (((v196 * *&v185) * *&v185) * *&v185) * *&v185;
    }
  }

  *&v185 = ((((((((((v198 + *v213.i32) + v215) + v217) + v219) + v222) + *v223.i32) + v154) + v171) + v170) + v187) + v186;
  *&result = vdivq_f32(vaddq_f32(vmulq_n_f32(v204, *v223.i32), vaddq_f32(vmulq_n_f32(v203, v154), vaddq_f32(vmulq_n_f32(v202, v171), vaddq_f32(vmulq_n_f32(v201, v170), vaddq_f32(vmulq_n_f32(v200, v187), vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v212, v198), vmulq_n_f32(v211, *v213.i32)), vmulq_n_f32(v209, v215)), vmulq_n_f32(v208, v217)), vmulq_n_f32(v207, v219)), vmulq_n_f32(v206, v222)), vmulq_n_f32(v199, v186))))))), vdupq_lane_s32(*&v185, 0)).u64[0];
  return result;
}

void *CI::AreaHistogram::loadKernel(void *a1, uint64_t a2)
{
  if (CI::AreaHistogram::getKernelCache(void)::onceToken != -1)
  {
    CI::AreaHistogram::loadKernel();
  }

  v4 = CI::AreaHistogram::getKernelCache(void)::kernelCache;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", objc_msgSend(a1, "registryID")), a2];
  objc_sync_enter(v4);
  v6 = [v4 objectForKey:v5];
  if (!v6)
  {
    v7 = [a1 newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleWithIdentifier:", @"com.apple.CoreImage", 0}];
    v8 = [v7 newFunctionWithName:a2];
    v6 = [a1 newComputePipelineStateWithFunction:v8 error:0];
    [v4 setObject:v6 forKey:v5];
  }

  objc_sync_exit(v4);
  return v6;
}

double CI::sw_CIAreaHistogramScaleAndClamp(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v6 + 16) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  LODWORD(a5) = *(a2 + (*(v6 + 32) << 6));
  LODWORD(a6) = *(a2 + (*(v6 + 56) << 6));
  *&result = vminnmq_f32(vmaxnmq_f32(vdupq_lane_s32(*&a5, 0), 0), vdivq_f32(vrndmq_f32(vmulq_n_f32(vmulq_n_f32(*v10, *&a5), *&a6)), vdupq_lane_s32(*&a6, 0))).u64[0];
  return result;
}

double CI::sw_CIAreaHistogramScale(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = vdupq_n_s32(0x437F0000u);
  *&result = vdivq_f32(vrndmq_f32(vmulq_f32(vmulq_n_f32(*v7, *(a2 + (*(v3 + 32) << 6))), v8)), v8).u64[0];
  return result;
}

unint64_t CI::sw_prepHistogram(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  v8.i32[3] = 0;
  v9 = vmaxnmq_f32(v8, 0);
  v9.i32[3] = 0;
  return vmulq_n_f32(vminnmq_f32(v9, xmmword_19CF23060), *(a2 + (*(v3 + 32) << 6))).u64[0];
}

double CI::sw_logHistogram(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 16) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  a4.i32[0] = *(a2 + (*(v4 + 32) << 6));
  v14 = a4;
  v9 = *v8;
  v10 = *(a2 + (*(v4 + 56) << 6));
  v9.i32[3] = 0;
  v11 = _simd_log2_f4(v9);
  *v12.i32 = v10 - *v14.i32;
  *&result = vdivq_f32(vsubq_f32(v11, vdupq_lane_s32(v14, 0)), vdupq_lane_s32(v12, 0)).u64[0];
  return result;
}

double CI::sw_perc_norm_red(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v12.i32[0] = fmaxf(vsubq_f32(*v7, *v11).f32[0] / fmaxf(COERCE_FLOAT(HIDWORD(v11->i64[0])) - COERCE_FLOAT(*v11), 0.00001), 0.0);
  return *v12.i64;
}

double CI::sw_perc_accum_red(uint64_t a1, uint64_t a2, double a3, float64x2_t a4, double a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *(a1 + 40);
  v13 = *(a2 + (v12[4] << 6));
  v14 = *(a2 + (v12[7] << 6));
  v15 = v14;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  if (v14 >= 1)
  {
    v20 = 0;
    v21 = a12 + 80 * v12[1];
    while (1)
    {
      v17 = v20;
      v22 = v20 + 0.5;
      LODWORD(a5) = *(v21 + 24);
      a8.i32[0] = *(v21 + 36);
      *a7.i32 = *(v21 + 32) * 0.5;
      *&a6 = *a7.i32 + (v22 * *(v21 + 28));
      *&v23 = *&a5 + ((*(v21 + 20) * 0.5) + (v22 * *(v21 + 16)));
      *a4.f64 = *a8.i32 + *&a6;
      *(&v23 + 1) = *a8.i32 + *&a6;
      a3 = CI::BitmapSampler::read(*(v21 + 8), v23, a4, a5, a6, a7, a8, a9, a10);
      v19 = v19 + *&a3;
      if (v19 >= v13)
      {
        break;
      }

      v18 = v18 + *&a3;
      if (v15 == ++v20)
      {
        v17 = v15;
        break;
      }
    }
  }

  if (v13 > 0.0 && (v19 - v18) > 0.0)
  {
    v16 = (v13 - v18) / (v19 - v18);
  }

  *&a3 = (v17 + v16) / v14;
  *&result = vdupq_lane_s32(*&a3, 0).u64[0];
  return result;
}

double CI::sw_perc_denorm_red(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  *&v12 = COERCE_FLOAT(*v11) + (COERCE_FLOAT(*v7) * (COERCE_FLOAT(HIDWORD(*v11)) - COERCE_FLOAT(*v11)));
  return *&v12;
}

double CI::sw_perc_clip_hard(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v13 = 1.0;
  if (COERCE_FLOAT(*v7) < *v11)
  {
    v13 = 0.0;
  }

  *&v12 = v13;
  return *&v12;
}

double CI::sw_perc_clip_soft(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v13 = 0;
  if (COERCE_FLOAT(*v7) >= *v11)
  {
    v13 = *v7;
  }

  LODWORD(v12) = v13;
  return *&v12;
}

uint64_t CI::sw_prepHoughTransform(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v23 = *v7;
  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = *(a2 + (*(v3 + 56) << 6));
  DC = CI::getDC(a1);
  if (sqrtf(vaddv_f32(*&vmulq_f32(v23, v23))) < v9)
  {
    return 0;
  }

  v22 = HIDWORD(*DC);
  v12 = atanf(v23.f32[0] / -v23.f32[1]);
  v13 = ((v12 / 3.1416) + 0.5) * 180.0 / 255.0;
  v24 = v13;
  _KR00_8 = __sincosf_stret(v12);
  _V2.S[1] = v22;
  __asm
  {
    FMLA            S0, S1, V2.S[1]
    FMOV            V1.4S, #1.0
  }

  *&_Q1 = fabsf(_S0) / v8;
  *(&_Q1 + 1) = v24;
  return _Q1;
}

id ___ZN2CI13AreaHistogramL14getKernelCacheEv_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  CI::AreaHistogram::getKernelCache(void)::kernelCache = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_19CC6834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t QuaggaLibraryCore(char **a1)
{
  if (!QuaggaLibraryCore(char **)::frameworkLibrary)
  {
    QuaggaLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  return QuaggaLibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL17QuaggaLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  QuaggaLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL28getACBSConfigCreateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = QuaggaLibrary();
  result = dlsym(v2, "ACBSConfigCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACBSConfigCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t QuaggaLibrary(void)
{
  v3 = 0;
  v0 = QuaggaLibraryCore(&v3);
  if (!v0)
  {
    QuaggaLibrary(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

void *___ZL43getACBSConfigSetSymbologiesEnabledSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = QuaggaLibrary();
  result = dlsym(v2, "ACBSConfigSetSymbologiesEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getACBSConfigSetMaxQRModuleSamplesSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = QuaggaLibrary();
  result = dlsym(v2, "ACBSConfigSetMaxQRModuleSamples");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL68getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = QuaggaLibrary();
  result = dlsym(v2, "ACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL26getACBSConfigFreeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = QuaggaLibrary();
  result = dlsym(v2, "ACBSConfigFree");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACBSConfigFreeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL83getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = QuaggaLibrary();
  result = dlsym(v2, "ACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncoding");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double maximum_time(double a1, double a2, float a3, float a4)
{
  v4 = vcvtps_s32_f32((vmuls_lane_f32(*&a2, *&a1, 1) + (*&a1 * *(&a2 + 1))) / a3);
  if (*&a2 < 0.00001)
  {
    v5 = sqrtf(*(&a1 + 1) / a4) + (v4 - 1);
LABEL_7:
    v7 = v5;
    return v7 + 0.00001;
  }

  if (*(&a2 + 1) < 0.00001)
  {
    v5 = sqrtf(*&a1 / a4) + (v4 - 1);
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v6 = vsqrt_f32(vdiv_f32(*&a1, vmul_n_f32(*&a2, a4)));
    v5 = fminf(v6.f32[0], v6.f32[1]);
    goto LABEL_7;
  }

  v7 = 0.0;
  if (v4 >= 2)
  {
    v9 = vmul_n_f32(*&a2, a4);
    v10 = vsqrt_f32(vdiv_f32(*&a1, v9));
    v11 = fminf(v10.f32[0], v10.f32[1]);
    v7 = 0.0;
    v12 = 1;
    for (i = 1; i != v4; ++i)
    {
      v14 = i;
      v15 = i * a3;
      v16 = (-(v15 * *(&a2 + 1)) / *&a2);
      v17 = (((*&a2 * v15) / *(&a2 + 1)) - (*(&a1 + 1) / *(&a2 + 1)));
      if (-*(&a2 + 1) * v16 < -*(&a2 + 1) * v17)
      {
        v17 = v16;
      }

      v18 = ((*(&a2 + 1) * a3) * v14) + v17 * *&a2;
      if (v12)
      {
        v19 = fmax(v7, (v11 + (i - 1)));
        v12 = v18 <= 0.00001;
        if (v18 > 0.00001)
        {
          v7 = v19;
        }
      }

      v20 = ((*&a2 * a3) * v14) - v17 * *(&a2 + 1);
      v21.f32[0] = *&a1 - v18;
      v21.f32[1] = v20;
      v22 = vsqrt_f32(vdiv_f32(v21, v9));
      v7 = fmax(v7, (fminf(v22.f32[0], v22.f32[1]) + v14));
    }
  }

  return v7 + 0.00001;
}

float32x2_t CI::sw_barsSwipe(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 32);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 40) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v13 = *(a2 + (*(v3 + 8) << 6));
  v8 = *v7;
  v9 = *(a2 + (*(v3 + 56) << 6));
  DC = CI::getDC(a1);
  v11 = fmaxf(v9 - fabsf(floorf(*(&v13 + 2) + vaddv_f32(vmul_f32(*&v13, *DC)))), 0.0);
  return vadd_f32(*CI::getDC(DC), vmul_n_f32(v8, v11 * v11));
}

double CI::sw_CBHorzGuided(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = a4 + 80 * v4[4];
  v7 = *(a2 + (v4[7] << 6));
  v8 = *(a2 + (v4[10] << 6));
  v9 = *(a2 + (v4[13] << 6));
  DC = CI::getDC(a1);
  *v11.i8 = *DC;
  v56 = v11;
  LODWORD(v12) = *(v5 + 28);
  *&v13 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v14) = *(v5 + 36);
  *v15.f64 = *&v14 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v12));
  HIDWORD(v13) = LODWORD(v15.f64[0]);
  *v19.i64 = CI::BitmapSampler::read(*(v5 + 8), v13, v15, v12, v14, v11, v16, v17, v18);
  v55 = v19;
  LODWORD(v20) = *(v6 + 28);
  v19.f32[0] = *(v6 + 24) + (vmuls_lane_f32(*(v6 + 20), *v56.i8, 1) + (*v56.i32 * *(v6 + 16)));
  LODWORD(v21) = *(v6 + 36);
  *v22.f64 = *&v21 + (vmuls_lane_f32(*(v6 + 32), *v56.i8, 1) + (*v56.i32 * *&v20));
  v19.i32[1] = LODWORD(v22.f64[0]);
  v26 = CI::BitmapSampler::read(*(v6 + 8), *v19.i64, v22, v20, v21, v56, v23, v24, v25);
  v28 = v7;
  v54 = v26;
  if (v7 < 0)
  {
    *&v27 = 0;
    v31 = 0uLL;
  }

  else
  {
    v29 = -v28;
    v30 = (2 * v28) | 1;
    v31 = 0uLL;
    *&v27 = 0;
    do
    {
      v59 = v27;
      v60 = v31;
      v32 = expf(-((v29 * v29) * v9));
      HIDWORD(v33.f64[0]) = 0;
      *v34.i8 = vadd_f32(*v56.i8, COERCE_UNSIGNED_INT(v29));
      v57 = v34;
      LODWORD(v35) = *(v5 + 28);
      *&v36 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *v34.i8, 1) + (*v34.i32 * *(v5 + 16)));
      LODWORD(v37) = *(v5 + 36);
      *v33.f64 = *&v37 + (vmuls_lane_f32(*(v5 + 32), *v34.i8, 1) + (*v34.i32 * *&v35));
      HIDWORD(v36) = LODWORD(v33.f64[0]);
      *v41.i64 = CI::BitmapSampler::read(*(v5 + 8), v36, v33, v35, v37, v34, v38, v39, v40);
      v61 = v41;
      HIDWORD(v42) = v57.i32[1];
      v43.i32[0] = *(v6 + 36);
      *&v44 = vmuls_lane_f32(*(v6 + 32), *v57.i8, 1);
      *&v42 = *&v44 + (*v57.i32 * *(v6 + 28));
      v41.f32[0] = *(v6 + 24) + (vmuls_lane_f32(*(v6 + 20), *v57.i8, 1) + (*v57.i32 * *(v6 + 16)));
      *v45.f64 = *v43.i32 + *&v42;
      v41.f32[1] = *v43.i32 + *&v42;
      *v48.i64 = CI::BitmapSampler::read(*(v6 + 8), *v41.i64, v45, v42, v44, v43, v57, v46, v47);
      v58 = v48;
      v49 = vsubq_f32(v61, v55);
      v50 = vmulq_f32(v49, v49);
      v51 = expf(-((v50.f32[2] + vaddv_f32(*v50.f32)) * v8));
      v27 = v59;
      v52 = vmuls_lane_f32(v32 * v51, v61, 3);
      *&v27 = *&v59 + v52;
      ++v29;
      v31 = vaddq_f32(v60, vmulq_n_f32(v58, v52));
      --v30;
    }

    while (v30);
  }

  result = v54;
  if (*&v27 >= 0.00001)
  {
    *&result = vdivq_f32(v31, vdupq_lane_s32(*&v27, 0)).u64[0];
  }

  return result;
}

double CI::sw_CBVertGuided(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = a4 + 80 * v4[4];
  v7 = *(a2 + (v4[7] << 6));
  v8 = *(a2 + (v4[10] << 6));
  v9 = *(a2 + (v4[13] << 6));
  DC = CI::getDC(a1);
  *v11.i8 = *DC;
  v56 = v11;
  LODWORD(v12) = *(v5 + 28);
  *&v13 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v14) = *(v5 + 36);
  *v15.f64 = *&v14 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v12));
  HIDWORD(v13) = LODWORD(v15.f64[0]);
  *v19.i64 = CI::BitmapSampler::read(*(v5 + 8), v13, v15, v12, v14, v11, v16, v17, v18);
  v55 = v19;
  LODWORD(v20) = *(v6 + 28);
  v19.f32[0] = *(v6 + 24) + (vmuls_lane_f32(*(v6 + 20), *v56.i8, 1) + (*v56.i32 * *(v6 + 16)));
  LODWORD(v21) = *(v6 + 36);
  *v22.f64 = *&v21 + (vmuls_lane_f32(*(v6 + 32), *v56.i8, 1) + (*v56.i32 * *&v20));
  v19.i32[1] = LODWORD(v22.f64[0]);
  v26 = CI::BitmapSampler::read(*(v6 + 8), *v19.i64, v22, v20, v21, v56, v23, v24, v25);
  v28 = v7;
  v54 = v26;
  if (v7 < 0)
  {
    *&v27 = 0;
    v31 = 0uLL;
  }

  else
  {
    v29 = -v28;
    v30 = (2 * v28) | 1;
    v31 = 0uLL;
    *&v27 = 0;
    do
    {
      v59 = v27;
      v60 = v31;
      v32 = expf(-((v29 * v29) * v9));
      LODWORD(v33.f64[0]) = 0;
      *(v33.f64 + 1) = v29;
      *v34.i8 = vadd_f32(*v56.i8, *&v33.f64[0]);
      v57 = v34;
      LODWORD(v35) = *(v5 + 28);
      *&v36 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *v34.i8, 1) + (*v34.i32 * *(v5 + 16)));
      LODWORD(v37) = *(v5 + 36);
      *v33.f64 = *&v37 + (vmuls_lane_f32(*(v5 + 32), *v34.i8, 1) + (*v34.i32 * *&v35));
      HIDWORD(v36) = LODWORD(v33.f64[0]);
      *v41.i64 = CI::BitmapSampler::read(*(v5 + 8), v36, v33, v35, v37, v34, v38, v39, v40);
      v61 = v41;
      HIDWORD(v42) = v57.i32[1];
      v43.i32[0] = *(v6 + 36);
      *&v44 = vmuls_lane_f32(*(v6 + 32), *v57.i8, 1);
      *&v42 = *&v44 + (*v57.i32 * *(v6 + 28));
      v41.f32[0] = *(v6 + 24) + (vmuls_lane_f32(*(v6 + 20), *v57.i8, 1) + (*v57.i32 * *(v6 + 16)));
      *v45.f64 = *v43.i32 + *&v42;
      v41.f32[1] = *v43.i32 + *&v42;
      *v48.i64 = CI::BitmapSampler::read(*(v6 + 8), *v41.i64, v45, v42, v44, v43, v57, v46, v47);
      v58 = v48;
      v49 = vsubq_f32(v61, v55);
      v50 = vmulq_f32(v49, v49);
      v51 = expf(-((v50.f32[2] + vaddv_f32(*v50.f32)) * v8));
      v27 = v59;
      v52 = vmuls_lane_f32(v32 * v51, v61, 3);
      *&v27 = *&v59 + v52;
      ++v29;
      v31 = vaddq_f32(v60, vmulq_n_f32(v58, v52));
      --v30;
    }

    while (v30);
  }

  result = v54;
  if (*&v27 >= 0.00001)
  {
    *&result = vdivq_f32(v31, vdupq_lane_s32(*&v27, 0)).u64[0];
  }

  return result;
}

double CI::sw_CBHorz(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = *(a2 + (v4[4] << 6));
  v7 = *(a2 + (v4[7] << 6));
  v8 = *(a2 + (v4[10] << 6));
  DC = CI::getDC(a1);
  *v10.i8 = *DC;
  LODWORD(v11) = *(v5 + 28);
  *&v12 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v13) = *(v5 + 36);
  v39 = *DC;
  *v14.f64 = *&v13 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v11));
  HIDWORD(v12) = LODWORD(v14.f64[0]);
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v12, v14, v11, v13, v10, v15, v16, v17);
  v20 = v6;
  v40 = v18;
  if (v6 < 0)
  {
    *&v19 = 0;
    v23 = 0uLL;
  }

  else
  {
    v21 = -v20;
    v22 = (2 * v20) | 1;
    v23 = 0uLL;
    *&v19 = 0;
    do
    {
      v42 = v19;
      v43 = v23;
      v24 = expf(-((v21 * v21) * v8));
      HIDWORD(v25.f64[0]) = 0;
      v26 = vadd_f32(v39, COERCE_UNSIGNED_INT(v21));
      LODWORD(v27) = *(v5 + 24);
      v28.i32[0] = *(v5 + 36);
      *v29.i32 = vmuls_lane_f32(*(v5 + 32), v26, 1);
      *&v30 = *v29.i32 + (v26.f32[0] * *(v5 + 28));
      v26.f32[0] = *&v27 + (vmuls_lane_f32(*(v5 + 20), v26, 1) + (v26.f32[0] * *(v5 + 16)));
      *v25.f64 = *v28.i32 + *&v30;
      v26.f32[1] = *v28.i32 + *&v30;
      *v33.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v26, v25, v27, v30, v29, v28, v31, v32);
      v41 = v33;
      v34 = vsubq_f32(v33, v40);
      v35 = vmulq_f32(v34, v34);
      v36 = expf(-((v35.f32[2] + vaddv_f32(*v35.f32)) * v7));
      v19 = v42;
      v37 = vmuls_lane_f32(v24 * v36, v41, 3);
      *&v19 = *&v42 + v37;
      ++v21;
      v23 = vaddq_f32(v43, vmulq_n_f32(v41, v37));
      --v22;
    }

    while (v22);
  }

  result = *v40.i64;
  if (*&v19 >= 0.00001)
  {
    *&result = vdivq_f32(v23, vdupq_lane_s32(*&v19, 0)).u64[0];
  }

  return result;
}

double CI::sw_CBVert(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = *(a2 + (v4[4] << 6));
  v7 = *(a2 + (v4[7] << 6));
  v8 = *(a2 + (v4[10] << 6));
  DC = CI::getDC(a1);
  *v10.i8 = *DC;
  LODWORD(v11) = *(v5 + 28);
  *&v12 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v13) = *(v5 + 36);
  v39 = *DC;
  *v14.f64 = *&v13 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v11));
  HIDWORD(v12) = LODWORD(v14.f64[0]);
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v12, v14, v11, v13, v10, v15, v16, v17);
  v20 = v6;
  v40 = v18;
  if (v6 < 0)
  {
    *&v19 = 0;
    v23 = 0uLL;
  }

  else
  {
    v21 = -v20;
    v22 = (2 * v20) | 1;
    v23 = 0uLL;
    *&v19 = 0;
    do
    {
      v42 = v19;
      v43 = v23;
      v24 = expf(-((v21 * v21) * v8));
      LODWORD(v25.f64[0]) = 0;
      *(v25.f64 + 1) = v21;
      v26 = vadd_f32(v39, *&v25.f64[0]);
      LODWORD(v27) = *(v5 + 24);
      v28.i32[0] = *(v5 + 36);
      *v29.i32 = vmuls_lane_f32(*(v5 + 32), v26, 1);
      *&v30 = *v29.i32 + (v26.f32[0] * *(v5 + 28));
      v26.f32[0] = *&v27 + (vmuls_lane_f32(*(v5 + 20), v26, 1) + (v26.f32[0] * *(v5 + 16)));
      *v25.f64 = *v28.i32 + *&v30;
      v26.f32[1] = *v28.i32 + *&v30;
      *v33.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v26, v25, v27, v30, v29, v28, v31, v32);
      v41 = v33;
      v34 = vsubq_f32(v33, v40);
      v35 = vmulq_f32(v34, v34);
      v36 = expf(-((v35.f32[2] + vaddv_f32(*v35.f32)) * v7));
      v19 = v42;
      v37 = vmuls_lane_f32(v24 * v36, v41, 3);
      *&v19 = *&v42 + v37;
      ++v21;
      v23 = vaddq_f32(v43, vmulq_n_f32(v41, v37));
      --v22;
    }

    while (v22);
  }

  result = *v40.i64;
  if (*&v19 >= 0.00001)
  {
    *&result = vdivq_f32(v23, vdupq_lane_s32(*&v19, 0)).u64[0];
  }

  return result;
}

double CI::sw_add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vaddq_f32(*v7, *v11).u64[0];
  return result;
}

double CI::sw_multiply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_f32(*v7, *v11).u64[0];
  return result;
}

double CI::sw_min(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vminnmq_f32(*v7, *v11).u64[0];
  return result;
}

double CI::sw_max(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmaxnmq_f32(*v7, *v11).u64[0];
  return result;
}

uint64_t CI::sw_src(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t CI::sw_dst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

double CI::sw_srcOver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vaddq_f32(*v7, vmulq_n_f32(*v11, 1.0 - COERCE_FLOAT(HIDWORD(*v7)))).u64[0];
  return result;
}

double CI::sw_dstOver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vaddq_f32(*v11, vmulq_n_f32(*v7, 1.0 - COERCE_FLOAT(HIDWORD(*v11)))).u64[0];
  return result;
}

double CI::sw_srcIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_laneq_f32(*v7, *v11, 3).u64[0];
  return result;
}

double CI::sw_dstIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_laneq_f32(*v11, *v7, 3).u64[0];
  return result;
}

double CI::sw_srcOut(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = a3 + 16 * v9;
  v11 = a2 + (v9 << 6);
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_n_f32(*v7, 1.0 - *(v11 + 12)).u64[0];
  return result;
}

double CI::sw_dstOut(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_n_f32(*v11, 1.0 - *(v7 + 12)).u64[0];
  return result;
}

double CI::sw_srcAtop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vaddq_f32(vmulq_laneq_f32(*v7, *v11, 3), vmulq_n_f32(*v11, 1.0 - COERCE_FLOAT(HIDWORD(*v7)))).u64[0];
  return result;
}

double CI::sw_dstAtop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vaddq_f32(vmulq_laneq_f32(*v11, *v7, 3), vmulq_n_f32(*v7, 1.0 - COERCE_FLOAT(HIDWORD(*v11)))).u64[0];
  return result;
}

double CI::sw_exclusiveOr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vaddq_f32(vmulq_n_f32(*v11, 1.0 - COERCE_FLOAT(HIDWORD(*v7))), vmulq_n_f32(*v7, 1.0 - COERCE_FLOAT(HIDWORD(*v11)))).u64[0];
  return result;
}

double CI::sw_multiplyBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_f32(vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001)), vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001)));
  v14.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v14, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_screenBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  v16 = vsubq_f32(vaddq_f32(v14, v15), vmulq_f32(v14, v15));
  v16.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_overlayBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  v16 = vsubq_f32(vaddq_f32(v14, v15), vmulq_f32(v14, v15));
  __asm { FMOV            V16.4S, #-1.0 }

  v22 = vaddq_f32(vaddq_f32(v16, v16), _Q16);
  _Q16.i64[0] = 0x3F0000003F000000;
  _Q16.i64[1] = 0x3F0000003F000000;
  v23 = vbslq_s8(vcgtq_f32(v15, _Q16), v22, vmulq_f32(v14, vaddq_f32(v15, v15)));
  v23.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v23, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_darkenBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  v16 = vminnmq_f32(v15, v14);
  v16.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_lightenBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  v16 = vmaxnmq_f32(v15, v14);
  v16.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_colorDodgeBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  LODWORD(v12) = HIDWORD(*v7);
  v13 = vmulq_n_f32(*v7, 1.0 / fmaxf(v12, 0.00001));
  v13.f32[3] = v12;
  LODWORD(v14) = HIDWORD(*v11);
  __asm { FMOV            V7.4S, #1.0 }

  v20 = vdivq_f32(vmulq_n_f32(*v11, 1.0 / fmaxf(v14, 0.00001)), vmaxnmq_f32(vsubq_f32(_Q7, v13), vdupq_n_s32(0x33D6BF95u)));
  v20.i32[3] = 1.0;
  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v20, 0), _Q7), *v7, 3), *v11, 3), vaddq_f32(vmulq_n_f32(*v11, 1.0 - v12), vmulq_n_f32(*v7, 1.0 - v14))).u64[0];
  return result;
}

double CI::sw_colorBurnBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  LODWORD(v12) = HIDWORD(*v7);
  v13 = vmulq_n_f32(*v7, 1.0 / fmaxf(v12, 0.00001));
  v13.f32[3] = v12;
  LODWORD(v14) = HIDWORD(*v11);
  __asm { FMOV            V7.4S, #1.0 }

  v20 = vsubq_f32(_Q7, vdivq_f32(vsubq_f32(_Q7, vmulq_n_f32(*v11, 1.0 / fmaxf(v14, 0.00001))), vmaxnmq_f32(v13, vdupq_n_s32(0x33D6BF95u))));
  v20.i32[3] = 1.0;
  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v20, 0), _Q7), *v7, 3), *v11, 3), vaddq_f32(vmulq_n_f32(*v11, 1.0 - v12), vmulq_n_f32(*v7, 1.0 - v14))).u64[0];
  return result;
}

double CI::sw_hardLightBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  v16 = vsubq_f32(vaddq_f32(v14, v15), vmulq_f32(v14, v15));
  __asm { FMOV            V16.4S, #-1.0 }

  v22 = vaddq_f32(vaddq_f32(v16, v16), _Q16);
  _Q16.i64[0] = 0x3F0000003F000000;
  _Q16.i64[1] = 0x3F0000003F000000;
  v23 = vbslq_s8(vcgtq_f32(v14, _Q16), v22, vmulq_f32(v15, vaddq_f32(v14, v14)));
  v23.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v23, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_softLightBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  __asm
  {
    FMOV            V16.4S, #16.0
    FMOV            V17.4S, #-12.0
  }

  v22 = vmulq_f32(v15, vaddq_f32(vmulq_f32(v15, _Q16), _Q17));
  __asm { FMOV            V17.4S, #4.0 }

  v24 = vmulq_f32(v15, vaddq_f32(v22, _Q17));
  __asm { FMOV            V17.4S, #0.25 }

  v26 = vbslq_s8(vcgtq_f32(v15, _Q17), vsqrtq_f32(v15), v24);
  __asm { FMOV            V17.4S, #-1.0 }

  v28 = vaddq_f32(vaddq_f32(v14, v14), _Q17);
  __asm { FMOV            V17.4S, #1.0 }

  v30.i64[0] = 0x3F0000003F000000;
  v30.i64[1] = 0x3F0000003F000000;
  v31 = vaddq_f32(v15, vmulq_f32(v28, vbslq_s8(vcgtq_f32(v14, v30), vsubq_f32(v26, v15), vmulq_f32(v15, vsubq_f32(_Q17, v15)))));
  v31.i32[3] = 1.0;
  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v31, 0), _Q17), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_differenceBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  v16 = vabdq_f32(v15, v14);
  v16.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_exclusionBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  v16.i64[0] = 0xC0000000C0000000;
  v16.i64[1] = 0xC0000000C0000000;
  v17 = vaddq_f32(vaddq_f32(v14, v15), vmulq_f32(v14, vmulq_f32(v15, v16)));
  v17.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v17, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_hueBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v15 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14 = vcgtq_f32(v15, vdupq_lane_s32(*v15.f32, 1)).u64[0];
  v15.f32[3] = v13;
  v16 = vdupq_lane_s32(v14, 0);
  v17.i64[0] = vrev64q_s32(v15).u64[0];
  v17.i64[1] = v15.i64[1];
  v18 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v19 = vbslq_s8(v16, v15, v17);
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v19.i8, 1), vdupq_laneq_s32(v19, 2)), 0), v19, vuzp1q_s32(v19, vrev64q_s32(v19)));
  v21 = v20;
  v21.i32[0] = v20.i32[1];
  v22 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v20, vdupq_lane_s32(*v20.f32, 1)), 0), v20, v21);
  v23 = 0uLL;
  if (*v22.i32 > *&v22.i32[2])
  {
    v24 = v18;
    v24.i32[3] = HIDWORD(*v11);
    v25.i64[0] = vrev64q_s32(v24).u64[0];
    v25.i64[1] = v24.i64[1];
    v26 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v18, vdupq_lane_s32(*v18.f32, 1)), 0), v24, v25);
    v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v26.i8, 1), vdupq_laneq_s32(v26, 2)), 0), v26, vuzp1q_s32(v26, vrev64q_s32(v26)));
    v28 = v27;
    v28.i32[0] = v27.i32[1];
    v29 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v27, vdupq_lane_s32(*v27.f32, 1)), 0), v27, v28);
    v30 = vmulq_n_f32(vsubq_f32(v15, vdupq_laneq_s32(v22, 2)), *v29.i32 - *&v29.i32[2]);
    *v22.i32 = *v22.i32 - *&v22.i32[2];
    v23 = vdivq_f32(v30, vdupq_lane_s32(*v22.i8, 0));
  }

  v31 = vcvt_f32_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(vzip2_s32(*v18.f32, *v23.f32)), vdupq_n_s64(0x3FE2E147AE147AE1uLL)), vdupq_n_s64(0x3FD3333333333333uLL), vcvtq_f64_f32(vzip1_s32(*v18.f32, *v23.f32))), vdupq_n_s64(0x3FBC28F5C28F5C29uLL), vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v23, v23, 8uLL)))));
  v32 = vaddq_f32(v23, vdupq_lane_s32(vsub_f32(v31, vdup_lane_s32(v31, 1)), 0));
  v34 = v32.f32[2];
  v33 = v32.f32[1] * 0.59 + v32.f32[0] * 0.3 + v32.f32[2] * 0.11;
  *&v33 = v33;
  *&v34 = fminf(fminf(v32.f32[0], v32.f32[1]), v32.f32[2]);
  v35 = fmaxf(fmaxf(v32.f32[0], v32.f32[1]), v32.f32[2]);
  if (*&v34 < 0.0)
  {
    v36 = vdupq_lane_s32(*&v33, 0);
    *&v34 = *&v33 - *&v34;
    v32 = vaddq_f32(v36, vdivq_f32(vmulq_n_f32(vsubq_f32(v32, v36), *&v33), vdupq_lane_s32(*&v34, 0)));
  }

  if (v35 > 1.0)
  {
    v37 = vdupq_lane_s32(*&v33, 0);
    v38 = vmulq_n_f32(vsubq_f32(v32, v37), 1.0 - *&v33);
    *&v33 = v35 - *&v33;
    v32 = vaddq_f32(v37, vdivq_f32(v38, vdupq_lane_s32(*&v33, 0)));
  }

  v32.i32[3] = 1.0;
  __asm { FMOV            V5.4S, #1.0 }

  *&result = vaddq_f32(vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3])), vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v32, 0), _Q5), *v7, 3), v12, 3)).u64[0];
  return result;
}

double CI::sw_saturationBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  LODWORD(v12) = HIDWORD(*v11);
  v13 = vmulq_n_f32(*v11, 1.0 / fmaxf(v12, 0.00001));
  v14 = v13;
  v14.f32[3] = v12;
  v15.i64[0] = vrev64q_s32(v14).u64[0];
  v15.i64[1] = v14.i64[1];
  v16 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v13, vdupq_lane_s32(*v13.f32, 1)), 0), v14, v15);
  v17 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v16.i8, 1), vdupq_laneq_s32(v16, 2)), 0), v16, vuzp1q_s32(v16, vrev64q_s32(v16)));
  v18 = v17;
  v18.i32[0] = v17.i32[1];
  v19 = *v7;
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v17, vdupq_lane_s32(*v17.f32, 1)), 0), v17, v18);
  v21 = 0uLL;
  LODWORD(v22) = HIDWORD(*v7);
  if (*v20.i32 > *&v20.i32[2])
  {
    v23 = vmulq_n_f32(v19, 1.0 / fmaxf(v22, 0.00001));
    v24 = vdupq_lane_s32(*&vcgtq_f32(v23, vdupq_lane_s32(*v23.f32, 1)), 0);
    v23.i32[3] = HIDWORD(*v7);
    v25.i64[0] = vrev64q_s32(v23).u64[0];
    v25.i64[1] = v23.i64[1];
    v26 = vbslq_s8(v24, v23, v25);
    v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v26.i8, 1), vdupq_laneq_s32(v26, 2)), 0), v26, vuzp1q_s32(v26, vrev64q_s32(v26)));
    v28 = v27;
    v28.i32[0] = v27.i32[1];
    v29 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v27, vdupq_lane_s32(*v27.f32, 1)), 0), v27, v28);
    *v20.i32 = *v20.i32 - *&v20.i32[2];
    v21 = vdivq_f32(vmulq_n_f32(vsubq_f32(v14, vdupq_laneq_s32(v29, 2)), *v29.i32 - *&v29.i32[2]), vdupq_lane_s32(*v20.i8, 0));
  }

  v30 = vcvt_f32_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(vzip2_s32(*v13.f32, *v21.f32)), vdupq_n_s64(0x3FE2E147AE147AE1uLL)), vdupq_n_s64(0x3FD3333333333333uLL), vcvtq_f64_f32(vzip1_s32(*v13.f32, *v21.f32))), vdupq_n_s64(0x3FBC28F5C28F5C29uLL), vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v21, v21, 8uLL)))));
  v31 = vaddq_f32(v21, vdupq_lane_s32(vsub_f32(v30, vdup_lane_s32(v30, 1)), 0));
  v33 = v31.f32[2];
  v32 = v31.f32[1] * 0.59 + v31.f32[0] * 0.3 + v31.f32[2] * 0.11;
  *&v32 = v32;
  *&v33 = fminf(fminf(v31.f32[0], v31.f32[1]), v31.f32[2]);
  v34 = fmaxf(fmaxf(v31.f32[0], v31.f32[1]), v31.f32[2]);
  if (*&v33 < 0.0)
  {
    v35 = vdupq_lane_s32(*&v32, 0);
    *&v33 = *&v32 - *&v33;
    v31 = vaddq_f32(v35, vdivq_f32(vmulq_n_f32(vsubq_f32(v31, v35), *&v32), vdupq_lane_s32(*&v33, 0)));
  }

  if (v34 > 1.0)
  {
    v36 = vdupq_lane_s32(*&v32, 0);
    v37 = vmulq_n_f32(vsubq_f32(v31, v36), 1.0 - *&v32);
    *&v32 = v34 - *&v32;
    v31 = vaddq_f32(v36, vdivq_f32(v37, vdupq_lane_s32(*&v32, 0)));
  }

  v31.i32[3] = 1.0;
  __asm { FMOV            V5.4S, #1.0 }

  *&result = vaddq_f32(vaddq_f32(vmulq_n_f32(*v11, 1.0 - v22), vmulq_n_f32(v19, 1.0 - v12)), vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v31, 0), _Q5), v19, 3), *v11, 3)).u64[0];
  return result;
}

double CI::sw_colorBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  LODWORD(v12) = HIDWORD(*v7);
  v13 = vmulq_n_f32(*v7, 1.0 / fmaxf(v12, 0.00001));
  v14 = v13.f32[0];
  v15 = v13;
  v15.f32[3] = v12;
  LODWORD(v16) = HIDWORD(*v11);
  v17 = vmulq_n_f32(*v11, 1.0 / fmaxf(v16, 0.00001));
  v18 = v13.f32[1] * 0.59 + v14 * 0.3;
  v22.i32[1] = 1069295861;
  v19 = v18 + v13.f32[2] * 0.11;
  *v17.i64 = v17.f32[1] * 0.59 + v17.f32[0] * 0.3 + v17.f32[2] * 0.11;
  v17.f32[0] = *v17.i64;
  v17.f32[0] = v17.f32[0] - v19;
  v20 = vaddq_f32(v15, vdupq_lane_s32(*v17.f32, 0));
  v21 = v20.f32[1] * 0.59 + v20.f32[0] * 0.3 + v20.f32[2] * 0.11;
  *&v21 = v21;
  *v22.i32 = fminf(fminf(v20.f32[0], v20.f32[1]), v20.f32[2]);
  v23 = fmaxf(fmaxf(v20.f32[0], v20.f32[1]), v20.f32[2]);
  if (*v22.i32 < 0.0)
  {
    v24 = vdupq_lane_s32(*&v21, 0);
    *v22.i32 = *&v21 - *v22.i32;
    v20 = vaddq_f32(v24, vdivq_f32(vmulq_n_f32(vsubq_f32(v20, v24), *&v21), vdupq_lane_s32(v22, 0)));
  }

  if (v23 > 1.0)
  {
    v25 = vdupq_lane_s32(*&v21, 0);
    v26 = vmulq_n_f32(vsubq_f32(v20, v25), 1.0 - *&v21);
    *&v21 = v23 - *&v21;
    v20 = vaddq_f32(v25, vdivq_f32(v26, vdupq_lane_s32(*&v21, 0)));
  }

  v20.i32[3] = 1.0;
  __asm { FMOV            V6.4S, #1.0 }

  *&result = vaddq_f32(vaddq_f32(vmulq_n_f32(*v11, 1.0 - v12), vmulq_n_f32(*v7, 1.0 - v16)), vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v20, 0), _Q6), *v7, 3), *v11, 3)).u64[0];
  return result;
}

double CI::sw_luminosityBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  LODWORD(v15) = HIDWORD(*v11);
  v16 = vmulq_n_f32(*v11, 1.0 / fmaxf(v15, 0.00001));
  v16.f32[3] = v15;
  *v14.i64 = v14.f32[1] * 0.59 + v14.f32[0] * 0.3 + v14.f32[2] * 0.11;
  v14.f32[0] = *v14.i64;
  v17 = v16.f32[1] * 0.59 + v16.f32[0] * 0.3 + v16.f32[2] * 0.11;
  v14.f32[0] = v14.f32[0] - v17;
  v18 = vaddq_f32(v16, vdupq_lane_s32(*v14.f32, 0));
  v20 = v18.f32[2];
  v19 = v18.f32[1] * 0.59 + v18.f32[0] * 0.3 + v18.f32[2] * 0.11;
  *&v19 = v19;
  *&v20 = fminf(fminf(v18.f32[0], v18.f32[1]), v18.f32[2]);
  v21 = fmaxf(fmaxf(v18.f32[0], v18.f32[1]), v18.f32[2]);
  if (*&v20 < 0.0)
  {
    v22 = vdupq_lane_s32(*&v19, 0);
    *&v20 = *&v19 - *&v20;
    v18 = vaddq_f32(v22, vdivq_f32(vmulq_n_f32(vsubq_f32(v18, v22), *&v19), vdupq_lane_s32(*&v20, 0)));
  }

  if (v21 > 1.0)
  {
    v23 = vdupq_lane_s32(*&v19, 0);
    v24 = vmulq_n_f32(vsubq_f32(v18, v23), 1.0 - *&v19);
    *&v19 = v21 - *&v19;
    v18 = vaddq_f32(v23, vdivq_f32(v24, vdupq_lane_s32(*&v19, 0)));
  }

  if (v13 >= 0.000001)
  {
    v18.i32[3] = 1.0;
    __asm { FMOV            V6.4S, #1.0 }

    v12.i64[0] = vaddq_f32(vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v15)), vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v18, 0), _Q6), *v7, 3), v12, 3)).u64[0];
  }

  return *v12.i64;
}

double CI::sw_subtractBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vsubq_f32(vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001)), vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001)));
  v14.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v14, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_divideBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  LODWORD(v12) = HIDWORD(*v7);
  v13 = vmulq_n_f32(*v7, 1.0 / fmaxf(v12, 0.00001));
  v13.f32[3] = v12;
  LODWORD(v14) = HIDWORD(*v11);
  v15 = vdivq_f32(vmulq_n_f32(*v11, 1.0 / fmaxf(v14, 0.00001)), vmaxnmq_f32(v13, vdupq_n_s32(0x33D6BF95u)));
  v15.i32[3] = 1.0;
  __asm { FMOV            V3.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v15, 0), _Q3), *v7, 3), *v11, 3), vaddq_f32(vmulq_n_f32(*v11, 1.0 - v12), vmulq_n_f32(*v7, 1.0 - v14))).u64[0];
  return result;
}

double CI::sw_linearBurnBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  __asm { FMOV            V4.4S, #-1.0 }

  v19 = vaddq_f32(vaddq_f32(vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001)), vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001))), _Q4);
  v19.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v19, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}
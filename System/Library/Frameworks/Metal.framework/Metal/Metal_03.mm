uint64_t AirReflection::Node::node_as_FragmentFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 1) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void MTLArgumentDeserializer::MTLArgumentDeserializer(MTLArgumentDeserializer *this, uint64_t a2)
{
  *this = &unk_1EF474F68;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = -1;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 13) = a2;
  *(this + 28) = 0;
  *(this + 15) = 0;
}

void std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

uint64_t std::deque<ContextStack>::push_back(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 73 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<ContextStack>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *a2;
  v10 = *(v6 + 8 * (v8 / 0x49)) + 56 * (v8 % 0x49);
  *(v10 + 8) = *(a2 + 8);
  *v10 = v9;
  result = std::unordered_map<unsigned long,MTLStructTypeInternal *>::unordered_map(v10 + 16, (a2 + 2));
  ++*(a1 + 40);
  return result;
}

void *std::deque<ContextStack>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<ContextStack *>::emplace_back<ContextStack *&>(a1, &v10);
}

void sub_185BB983C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned long,MTLStructTypeInternal *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,MTLStructTypeInternal *> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__split_buffer<ContextStack *>::emplace_back<ContextStack *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t AirReflection::Node::node_as_BufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x40000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t ReflectionDeserializeContext::getStructForId(ReflectionDeserializeContext *this, unint64_t a2)
{
  v13 = a2;
  v3 = *(this + 4);
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = (v4 + 8 * (v3 / 0x49));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 56 * (v3 % 0x49);
  }

  while (1)
  {
    if (v5 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(this + 5) + *(this + 4);
      v9 = *(v4 + 8 * (v8 / 0x49)) + 56 * (v8 % 0x49);
    }

    if (v7 == v9)
    {
      return 0;
    }

    v10 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>((v7 + 16), &v13);
    if (v10)
    {
      break;
    }

    v7 += 56;
    if (v7 - *v6 == 4088)
    {
      v11 = v6[1];
      ++v6;
      v7 = v11;
    }

    v4 = *(this + 1);
    v5 = *(this + 2);
  }

  return v10[3];
}

MTLStructTypeInternal *deserializeStructArgument(uint64_t a1, unsigned int *a2, uint64_t a3, ReflectionDeserializeContext *a4, _BYTE *a5)
{
  v8 = a3 + 4;
  v9 = (a3 + 4 + 4 * *a2);
  v10 = AirReflection::Node::node_as_StructTypeInfo((v9 + *v9));
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  StructForId = ReflectionDeserializeContext::getStructForId(a4, *a2);
  if (StructForId)
  {
    if (a5)
    {
      *a5 = 0;
    }

    return StructForId;
  }

  v15 = [MTLStructTypeInternal alloc];
  v16 = *(a4 + 5) + *(a4 + 4) - 1;
  v17 = *(*(a4 + 1) + 8 * (v16 / 0x49)) + 56 * (v16 % 0x49);
  v134 = *a2;
  v135 = v15;
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,MTLStructTypeInternal *>>((v17 + 16), &v134);
  v18 = (v11 - *v11);
  if (*v18 < 5u || (v19 = v18[2]) == 0)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v20 = v11 + v19;
  v21 = *(v11 + v19);
  v22 = *(v11 + v19 + v21);
  v23 = malloc_type_calloc(v22, 8uLL, 0x80040B8603338uLL);
  v24 = v23;
  if (!v22)
  {
LABEL_20:
    v14 = [(MTLStructTypeInternal *)v15 initWithMembers:v24 count:0];
    v30 = 0;
    goto LABEL_21;
  }

  v25 = 0;
  v26 = v11 + v21 + v19 + 24;
  v124 = a4;
  v121 = v15;
  v122 = v8;
  while (1)
  {
    v27 = *(v26 - 20) - *(v26 + *(v26 - 20) - 20);
    v28 = *(v26 + v27 - 20);
    if (v28 >= 0x13 && (*(v26 + v27 - 2) || v28 >= 0x15 && *(v26 + v27)))
    {
      break;
    }

    ++v25;
    v26 += 4;
    if (v25 >= v22)
    {
      v29 = 0;
      goto LABEL_24;
    }
  }

  v29 = 1;
LABEL_24:
  v31 = 0;
  v123 = v29;
  v126 = v23;
  v127 = v29;
  v32 = v11 + v19 + 8;
  v125 = v22;
  do
  {
    v33 = *&v20[v21 + 4];
    v34 = &v20[v21 + v33];
    v35 = v33 + *&v20[v21 + 16 + v33 - *(v34 + 1)];
    v36 = v35 + *&v20[v21 + 4 + v35];
    v37 = strlen(&v20[v21 + 8 + v36]);
    v38 = pixelFormatAndALUTypeFromString((v21 + v32 + v36), v37);
    v39 = v33 - *(v34 + 1);
    v40 = &v20[v21 + v39];
    v41 = *(v40 + 2);
    v132 = v38;
    if (v41 >= 0x15)
    {
      if (*(v40 + 12))
      {
        v42 = *&v20[v21 + 4 + v33 + *(v40 + 12)];
      }

      else
      {
LABEL_29:
        v42 = 0;
      }

      v43 = &v20[v21 + v39];
      if (*(v43 + 11))
      {
        v134 = 0;
        if (*(v43 + 11))
        {
          v44 = &v20[v21 + 4 + v33 + *(v43 + 11)];
        }

        else
        {
          v44 = 0;
        }

        deserializeArgument(a1, v44, a3, v124, &v134);
        v45 = v134;
        if (v134)
        {
          v46 = v134;
          v131 = [v45 index];
          v47 = 57;
        }

        else
        {
          v131 = v42;
          v53 = &v20[v21];
          v54 = v33 + *&v20[v21 + 16 + v33 - *(v34 + 1)];
          v55 = v54 + *&v20[v21 + 4 + v54];
          v56 = strlen(&v20[v21 + 8 + v55]);
          if (!dataTypeFromString((v21 + v32 + v55), v56))
          {
            v46 = 0;
            v133 = 0;
            goto LABEL_45;
          }

          v57 = v33 + *&v53[v33 - *(v34 + 1) + 16];
          v58 = v57 + *&v53[v57 + 4];
          v59 = strlen(&v53[v58 + 8]);
          v60 = dataTypeFromString((v21 + v32 + v58), v59);
          v46 = 0;
          v47 = v60;
        }

        v133 = v47;
LABEL_45:

        goto LABEL_51;
      }

      goto LABEL_38;
    }

    if (v41 >= 0x13)
    {
      goto LABEL_29;
    }

    if (v41 < 5)
    {
      v46 = 0;
      v131 = 0;
      goto LABEL_50;
    }

    v42 = 0;
LABEL_38:
    v131 = v42;
    if (!*&v20[v21 + 8 + v39])
    {
      v46 = 0;
LABEL_50:
      v133 = 0;
      goto LABEL_51;
    }

    v48 = *(v124 + 5) + *(v124 + 4) - 1;
    v49 = *(*(*(v124 + 1) + 8 * (v48 / 0x49)) + 56 * (v48 % 0x49));
    memset(v136, 0, sizeof(v136));
    v137 = 1065353216;
    v134 = v49;
    LOBYTE(v135) = 1;
    memset(v138, 0, sizeof(v138));
    v139 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(v136, v138);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v138);
    std::deque<ContextStack>::push_back(v124, &v134);
    ContextStack::~ContextStack(&v134);
    v50 = &v20[v21 + v33 - *(v34 + 1)];
    if (*(v50 + 2) >= 5u && (v51 = *(v50 + 4)) != 0)
    {
      v52 = &v20[v21 + 4 + v33 + v51];
    }

    else
    {
      v52 = 0;
    }

    v46 = deserializeStructArgument(a1, v52, a3, v124, 0);
    std::deque<ContextStack>::pop_back(v124);
    v133 = 1;
LABEL_51:
    v61 = *(v34 + 1);
    v62 = &v20[v21];
    if (*&v20[v21 + 4 + v33 - v61] < 5u)
    {
      v63 = v127;
    }

    else
    {
      v63 = v127;
      if (*&v62[v33 - v61 + 8])
      {
        v64 = (v122 + 4 * *&v20[v21 + 4 + v33 + *&v62[v33 - v61 + 8]]);
        v65 = AirReflection::Node::node_as_StructTypeInfo((v64 + *v64));
        v66 = (v65 - *v65);
        if (*v66 >= 5u && (v67 = v66[2]) != 0)
        {
          v68 = (v65 + v67 + *(v65 + v67));
        }

        else
        {
          v68 = 0;
        }

        StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride(v68, a3);
        v61 = *(v34 + 1);
        v63 = v127;
        if (StructIndirectArgumentIndexStride > v123)
        {
          v70 = (v122 + 4 * *&v20[v21 + 4 + v33 + *&v20[v21 + 8 + v33 - *(v34 + 1)]]);
          v71 = AirReflection::Node::node_as_StructTypeInfo((v70 + *v70));
          v72 = (v71 - *v71);
          if (*v72 >= 5u && (v73 = v72[2]) != 0)
          {
            v74 = (v71 + v73 + *(v71 + v73));
          }

          else
          {
            v74 = 0;
          }

          v63 = getStructIndirectArgumentIndexStride(v74, a3);
          v61 = *(v34 + 1);
        }
      }
    }

    if (!*&v62[v33 - v61 + 14] || (v75 = *&v20[v21 + 4 + v33 + *&v62[v33 - v61 + 14]], !v75))
    {
      v76 = v33 + *&v20[v21 + 16 + v33 - v61];
      v77 = v76 + *&v20[v21 + 4 + v76];
      v78 = strlen(&v20[v21 + 8 + v77]);
      v75 = arraySizeFromTypeName((v21 + v32 + v77), v78);
    }

    v79 = HIDWORD(v132);
    v132 = v132;
    v130 = v31;
    if (v75 >= 1)
    {
      if (v46)
      {
        v80 = [MTLArrayTypeInternal alloc];
        v81 = &v20[v21 + v33 - *(v34 + 1)];
        if (*(v81 + 2) >= 9u && (v82 = *(v81 + 6)) != 0)
        {
          v83 = *&v20[v21 + 4 + v33 + v82];
        }

        else
        {
          v83 = 0;
        }

        v84 = [(MTLArrayTypeInternal *)v80 initWithArrayLength:v75 elementType:v133 stride:v83 pixelFormat:v132 aluType:v79 details:v46];

        if (!v63)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v99 = v79;
        v100 = v133;
        if (!v133)
        {
          v101 = v33 + *&v20[v21 + 16 + v33 - *(v34 + 1)];
          v102 = v101 + *&v20[v21 + 4 + v101];
          v103 = strlen(&v20[v21 + 8 + v102]);
          v100 = dataTypeFromString((v21 + v32 + v102), v103);
        }

        v104 = [MTLArrayTypeInternal alloc];
        v105 = &v20[v21 + v33 - *(v34 + 1)];
        if (*(v105 + 2) >= 9u && (v106 = *(v105 + 6)) != 0)
        {
          v107 = *&v20[v21 + 4 + v33 + v106];
        }

        else
        {
          v107 = 0;
        }

        v84 = [(MTLArrayTypeInternal *)v104 initWithArrayLength:v75 elementType:v100 stride:v107 pixelFormat:v132 aluType:v99 details:0];
        if (!v63)
        {
          goto LABEL_75;
        }
      }

      [(MTLArrayTypeInternal *)v84 setArgumentIndexStride:v63];
LABEL_75:
      [(MTLArrayTypeInternal *)v84 setIsIndirectArgumentBuffer:v123];
      v79 = 0;
      v46 = v84;
      v132 = 0;
      v133 = 2;
    }

    v85 = *(v34 + 1);
    v86 = -v85;
    v87 = v33 - v85;
    v88 = &v20[v21 + v87];
    v89 = v79;
    if (!v88[4])
    {
      v90 = v88[2];
      v91 = v88[7];
      if ((!v91 || !*&v20[v21 + 4 + v33 + v91]) && (v90 < 0x13 || !*&v20[v21 + 22 + v87]))
      {
        v92 = v33 + *&v20[v21 + 16 + v87];
        v93 = v92 + *&v20[v21 + 4 + v92];
        v94 = strlen(&v20[v21 + 8 + v93]);
        v133 = dataTypeFromString((v21 + v32 + v93), v94);
        v86 = -*(v34 + 1);
      }
    }

    v95 = *&v20[v21 + 4 + v33 + v86];
    if (v95 < 0xF)
    {
LABEL_94:
      v98 = &stru_1EF478240;
      goto LABEL_95;
    }

    if (*&v20[v21 + 18 + v86 + v33])
    {
      v96 = *&v20[v21 + 18 + v86 + v33];
      v97 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v20[v21 + 8 + v33 + v96 + *&v20[v21 + 4 + v33 + v96]]];
    }

    else
    {
      if (v95 < 0x11 || !*&v20[v21 + 20 + v86 + v33])
      {
        goto LABEL_94;
      }

      v108 = *&v20[v21 + 20 + v86 + v33];
      v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user(%s)", &v20[v21 + 8 + v33 + v108 + *&v20[v21 + 4 + v33 + v108]]];
    }

    v98 = v97;
LABEL_95:
    v109 = &v20[v21 + v33 - *(v34 + 1)];
    if (*(v109 + 2) >= 7u && (v110 = *(v109 + 5)) != 0)
    {
      v111 = *&v20[v21 + 4 + v33 + v110];
    }

    else
    {
      v111 = 0;
    }

    v112 = [MTLStructMemberInternal alloc];
    v113 = v33 - *(v34 + 1);
    v114 = *&v20[v21 + 4 + v113];
    if (v114 < 0x19)
    {
      v116 = 0xFFFFFFFFLL;
      v117 = 0xFFFFFFFFLL;
      v24 = v126;
      v115 = v89;
      v118 = v130;
      if (v114 < 0x17)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v24 = v126;
      v115 = v89;
      if (*&v20[v21 + 28 + v113])
      {
        v116 = *&v20[v21 + 4 + v33 + *&v20[v21 + 28 + v113]];
      }

      else
      {
        v116 = 0xFFFFFFFFLL;
      }

      v118 = v130;
    }

    v119 = *&v20[v21 + 26 + v113];
    if (v119)
    {
      v117 = *&v20[v21 + 4 + v33 + v119];
    }

    else
    {
      v117 = 0xFFFFFFFFLL;
    }

LABEL_109:
    v24[v118] = [(MTLStructMemberInternal *)v112 initWithName:v98 offset:v111 dataType:v133 pixelFormat:v132 aluType:v115 indirectArgumentIndex:v131 render_target:v116 raster_order_group:v117 details:v46];
    if (v46)
    {
    }

    v31 = v118 + 1;
    v20 += 4;
    v32 += 4;
  }

  while (v125 != v31);
  v14 = [(MTLStructTypeInternal *)v121 initWithMembers:v24 count:v125];
  for (i = 0; i != v125; ++i)
  {
  }

  v30 = v123;
LABEL_21:
  free(v24);
  [(MTLStructTypeInternal *)v14 setIsIndirectArgumentBuffer:v30];
  return v14;
}

void ContextStack::~ContextStack(ContextStack *this)
{
  for (i = (this + 32); ; i[3])
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 16);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,MTLStructTypeInternal *>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t arraySizeFromTypeName(void *__src, size_t __len)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v12 = __len;
  if (__len)
  {
    memmove(&v11, __src, __len);
  }

  *(&v11 + __len) = 0;
  v3 = v12;
  v4 = v11;
  if (v12 >= 0)
  {
    v5 = &v11;
  }

  else
  {
    v5 = v11;
  }

  v13[0] = 0;
  v14 = v5;
  v13[1] = strlen(v5);
  NextToken = BasicParser::getNextToken(v13);
  if (!strcmp(NextToken, "array"))
  {
    v8 = 0;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  do
  {
    v7 = NextToken;
    NextToken = BasicParser::getNextToken(v13);
  }

  while (NextToken);
  v8 = atol(v7);
  if (v3 < 0)
  {
LABEL_13:
    operator delete(v4);
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t std::deque<ContextStack>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  ContextStack::~ContextStack((*(a1[1] + 8 * (v2 / 0x49)) + 56 * (v2 % 0x49)));
  --a1[5];

  return std::deque<ContextStack>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<ContextStack>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 73 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x49)
  {
    a2 = 1;
  }

  if (v5 < 0x92)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t textureTypeFromString(void *__src, size_t __len, _DWORD *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v20 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (v20 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v23[0] = 0;
  v24 = p_dst;
  v23[1] = strlen(p_dst);
  NextToken = BasicParser::getNextToken(v23);
  if (!strcmp(NextToken, "array"))
  {
    NextToken = BasicParser::getNextToken(v23);
  }

  if (atomic_load_explicit(&textureTypeMapOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v21;
    v22 = __p;
    std::__call_once(&textureTypeMapOnce, &v22, std::__call_once_proxy[abi:ne200100]<std::tuple<textureTypeMap(void)::$_0 &&>>);
  }

  v9 = textureTypeMap(void)::nonGlobalTextureTypeMap;
  std::string::basic_string[abi:ne200100]<0>(__p, NextToken);
  v10 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(v9, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(v10 + 56);
  *a4 = *(v10 + 60);
  v12 = BasicParser::getNextToken(v23);
  v13 = bufferTypeMap();
  std::string::basic_string[abi:ne200100]<0>(__p, v12);
  v14 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(v13, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = *(v14 + 60);
  if (v20 < 0)
  {
    operator delete(__dst);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_185BBAD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AirReflection::Node::node_as_TextureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262146) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unsigned int *flatbuffers::String::str@<X0>(unsigned int *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    this = memcpy(a2, this + 1, v3);
  }

  a2[v3] = 0;
  return this;
}

uint64_t arrayIsIndirectArgumentBuffer(void *a1)
{
  while (1)
  {
    v1 = a1;
    v2 = [a1 elementType];
    if (v2 != 2)
    {
      break;
    }

    a1 = [v1 elementArrayType];
  }

  if ((v2 - 57) < 4 || (v2 - 78) <= 0x3D && ((1 << (v2 - 78)) & 0x2000000000000007) != 0)
  {
    return 1;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v4 = [v1 elementStructType];

  return structIsIndirectArgumentBuffer(v4);
}

uint64_t deserializeGlobalBindings(void *a1, unsigned int *a2, ReflectionDeserializeContext *a3, uint64_t a4, void **a5)
{
  if (a2 && (v10 = *a2, *a5 = malloc_type_malloc(8 * v10, 0x80040B8603338uLL), v10))
  {
    v11 = 0;
    LODWORD(v12) = 0;
    LODWORD(v13) = 0;
    v14 = a2 + 1;
    do
    {
      v15 = *v14++;
      v16 = AirReflection::Node::node_as_GlobalBinding((a4 + 4 + 4 * v15 + *(a4 + 4 + 4 * v15)));
      v17 = (v16 - *v16);
      if (*v17 >= 7u && (v18 = v17[3]) != 0)
      {
        v19 = (v16 + v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = deserializeArgument(a1, v19, a4, a3, *a5 + v11);
      v13 = (v13 + HIDWORD(v20));
      v12 = (v12 + v20);
      v11 += HIDWORD(v20);
      --v10;
    }

    while (v10);
    v21 = v13 << 32;
  }

  else
  {
    v21 = 0;
    v12 = 0;
  }

  return v21 | v12;
}

uint64_t AirReflection::Node::node_as_RenderTargetRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 135168)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v10;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLReturnValueInternal>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **std::__split_buffer<MTLReturnValueInternal>::~__split_buffer(void **a1)
{
  std::__split_buffer<MTLReturnValueInternal>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

uint64_t std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MTLReturnValueInternal>::__emplace_back_slow_path<MTLReturnValueInternal>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 32) = v5;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v6 = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 56) = v6;
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

uint64_t std::deque<ContextStack>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x49];
    v7 = (*v6 + 56 * (v5 % 0x49));
    v8 = v2[(a1[5] + v5) / 0x49] + 56 * ((a1[5] + v5) % 0x49);
    if (v7 != v8)
    {
      do
      {
        ContextStack::~ContextStack(v7);
        v7 = (v9 + 56);
        if (v7 - *v6 == 4088)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 36;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 73;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<ContextStack *>::~__split_buffer(a1);
}

void MTLArgumentDeserializer::deserializePluginData(uint64_t a1, dispatch_data_t data)
{
  if (!*(a1 + 56))
  {
    buffer_ptr[3] = v2;
    buffer_ptr[4] = v3;
    v9 = 0;
    buffer_ptr[0] = 0;
    if (data)
    {
      v5 = dispatch_data_create_map(data, buffer_ptr, &v9);
      if (v5)
      {
        v6 = v5;
        if (v9)
        {
          v7 = objc_alloc(MEMORY[0x1E695DEF0]);
          v8 = [v7 initWithBytes:buffer_ptr[0] length:v9];
        }

        else
        {
          v8 = 0;
        }

        *(a1 + 56) = v8;
        dispatch_release(v6);
      }
    }
  }
}

void MTLFragmentReflectionDeserializer::~MTLFragmentReflectionDeserializer(id *this)
{
  *this = &unk_1EF475038;
  if (*(this + 136) == 1)
  {
  }

  this[16] = 0;

  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);
}

void MTLFragmentReflectionDeserializerAIR::~MTLFragmentReflectionDeserializerAIR(id *this)
{
  MTLFragmentReflectionDeserializer::~MTLFragmentReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void std::__split_buffer<MTLReturnValueInternal>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 80;
    std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](v4, i - 80);
  }
}

uint64_t std::vector<MTLReturnValueInternal>::__emplace_back_slow_path<MTLReturnValueInternal>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLReturnValueInternal>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v10 = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 56) = v10;
  *&v19 = 80 * v2 + 80;
  v11 = a1[1];
  v12 = 80 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<MTLReturnValueInternal>::~__split_buffer(&v17);
  return v16;
}

void sub_185BBBC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MTLReturnValueInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t deserializeUserAnnotation<AirReflection::VertexFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 0xDu)
  {
    return 0;
  }

  v3 = v2[6];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

void MTLArgumentDeserializer::~MTLArgumentDeserializer(MTLArgumentDeserializer *this)
{
  *this = &unk_1EF474F68;
  if (*(this + 4))
  {
    v2 = 0;
    do
    {
    }

    while (v2 < *(this + 4));
  }

  free(*(this + 1));
  v3 = *(this + 3);
  if (v3)
  {
    if (*(this + 8))
    {
      v4 = 0;
      do
      {
      }

      while (v4 < *(this + 8));
      v3 = *(this + 3);
    }

    free(v3);
  }

  *(this + 7) = 0;
  v5 = *(this + 15);
  if (v5)
  {
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 64);
}

void MTLFragmentReflectionReader::~MTLFragmentReflectionReader(MTLFragmentReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

uint64_t std::__split_buffer<ContextStack *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t MTLInputStageReflectionReader::deserialize(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a1[2] + 24))(a1[2]);
  if (a4)
  {
    v7 = (*a1)[4];
    v8 = (a1[2] + 18);

    return v7(a1, a4, v8);
  }

  return result;
}

void MTLVertexReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = v5;
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    v13 = *v12;
    if (v13 >= 7 && (!v12[3] ? (v14 = 0) : (v14 = (v7 + v12[3] + *(v7 + v12[3]))), v13 >= 0xF && (v15 = v12[7]) != 0 && v14 && *v14))
    {
      v16 = &v14[*(v7 + v15 + *(v7 + v15) + 4)];
      v17 = AirReflection::Node::node_as_VertexFunction((v16 + v16[1] + 4));
      v18 = v17;
      v19 = (v17 - *v17);
      if (*v19 >= 9u && (v20 = v19[4]) != 0)
      {
        v21 = (v17 + v20 + *(v17 + v20));
      }

      else
      {
        v21 = 0;
      }

      memset(v49, 0, sizeof(v49));
      *__p = 0u;
      v44 = 0u;
      v46 = 1065353216;
      v42 = 1;
      LOBYTE(v43) = 0;
      v52 = 0u;
      v53 = 0u;
      v54 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v44, &v52);
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v52);
      std::deque<ContextStack>::push_back(v49, &v42);
      ContextStack::~ContextStack(&v42);
      v22 = deserializeArguments(a2, v21, v14, v49, (a1 + 8), (*(a1 + 104) & 0x200000) == 0, (a1 + 48));
      v23 = (v7 - *v7);
      if (*v23 >= 0x1Du && (v24 = v23[14]) != 0)
      {
        v25 = (v7 + v24 + *(v7 + v24));
      }

      else
      {
        v25 = 0;
      }

      v26 = deserializeGlobalBindings(a2, v25, v49, v14, (a1 + 24));
      deserializeInputArguments(v21, v14, a1);
      v27 = (v18 - *v18);
      if (*v27 >= 7u)
      {
        v28 = v27[3];
        if (v28)
        {
          v39 = HIDWORD(v26);
          v29 = (v18 + v28 + *(v18 + v28));
          *&v53 = 0;
          v30 = 0uLL;
          v52 = 0u;
          if (*v29)
          {
            v31 = 0;
            v32 = v29 + 1;
            do
            {
              deserializeReturn(a2, v32, v14, v49, &v48, &v42);
              std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v52, &v42);
              if (v47 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v44) < 0)
              {
                operator delete(v43);
              }

              ++v31;
              ++v32;
            }

            while (v31 < *v29);
            v30 = v52;
            v33 = v53;
          }

          else
          {
            v33 = 0;
          }

          v40 = v30;
          v41 = v33;
          *&v53 = 0;
          v52 = 0uLL;
          *(a1 + 120) = newReturnValueFromArray(&v40);
          v42 = &v40;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
          v42 = &v52;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
          HIDWORD(v26) = v39;
        }
      }

      *(a1 + 16) = HIDWORD(v22);
      *(a1 + 32) = HIDWORD(v26);
      *(a1 + 36) = v22;
      *(a1 + 40) = deserializeUserAnnotation<AirReflection::VertexFunction const*>(v14, v18);
      getPostVertexDumpOutputVertex(v7, (a1 + 128), a2, &v42);
      v34 = v42;
      v35 = v43;
      if ((*(a1 + 106) & 8) != 0)
      {
        v36 = (v43 - v42) >> 3;
        *(a1 + 132) = v36;
        if (*(a1 + 128))
        {
          *(a1 + 136) = malloc_type_calloc(v36, 8uLL, 0x80040B8603338uLL);
          v34 = v42;
          v35 = v43;
          if (v43 != v42)
          {
            v37 = 0;
            do
            {
              *(*(a1 + 136) + 8 * v37) = v34[v37];
              ++v37;
              v34 = v42;
              v35 = v43;
            }

            while (v37 < (v43 - v42) >> 3);
          }
        }
      }

      if (v35 != v34)
      {
        v38 = 0;
        do
        {

          v34 = v42;
        }

        while (v38 < (v43 - v42) >> 3);
      }

      dispatch_release(v6);
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      std::deque<ContextStack>::~deque[abi:ne200100](v49);
    }

    else
    {
      dispatch_release(v5);
    }
  }
}

void sub_185BBC434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v25 - 128);
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::deque<ContextStack>::~deque[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t AirReflection::Node::node_as_VertexFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 3) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_SamplerArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262145) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t ReflectionValidator<MTLVertexReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLVertexReflectionReader>::Create(a2 | 0x80000, v6);
  }

  return 1;
}

void *MTLInputStageReflectionReader::MTLInputStageReflectionReader(void *result, uint64_t a2)
{
  *result = &unk_1EF475000;
  result[1] = a2;
  result[2] = a2;
  return result;
}

uint64_t AirReflection::Node::node_as_VertexIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270339) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PositionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131074) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_VertexOutputRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131076) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

uint64_t getPostVertexDumpOutputVertex@<X0>(int *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = a1 - *a1;
  if (*(v7 + 3))
  {
    v8 = a1 + *(v7 + 3) + *(a1 + *(v7 + 3));
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + 4 * *(a1 + *(v7 + 7) + *(a1 + *(v7 + 7)) + 4);
  v10 = AirReflection::Node::node_as_VertexFunction((v9 + 4 + *(v9 + 4)));
  v11 = v10;
  v12 = (v10 - *v10);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (v10 + v13);
  }

  else
  {
    v14 = 0;
  }

  result = getDefaultPostVertexBuiltins(v8, a4, 0, v14, a3);
  v16 = result;
  v17 = (v11 - *v11);
  if (*v17 >= 7u)
  {
    v18 = v17[3];
    if (v18)
    {
      v19 = (v11 + v18 + *(v11 + v18));
      if (*v19)
      {
        v20 = 0;
        v21 = v19 + 1;
        do
        {
          result = getPostVertexDumpOutputForNode(v21, v8, a4, v16);
          v16 = result;
          ++v20;
          ++v21;
        }

        while (v20 < *v19);
      }
    }
  }

  *a2 = v16;
  return result;
}

void sub_185BBCD00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLInputStageReflectionReader::attributes@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*(this + 16) + 192);
  v3 = *(*(this + 16) + 200) - v2;
  if (v3)
  {
    *a2 = v2;
    *(a2 + 8) = v3 >> 3;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v4;
  return this;
}

void deserializeInputArguments(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      v5 = a1 + 1;
      v6 = a2 + 4;
      v7 = a3 + 144;
      do
      {
        v8 = *v5++;
        v9 = (v6 + 4 * v8 + *(v6 + 4 * v8));
        v10 = (v9 - *v9);
        if (*v10 >= 5u)
        {
          v11 = v10[2];
          if (v11)
          {
            v12 = *(v9 + v11);
            if (v12 == 266249)
            {
              v19 = AirReflection::Node::node_as_StageInArg(v9);
              v20 = v19;
              v21 = (v19 - *v19);
              v22 = *v21;
              v17 = *(v19 + v21[3]);
              if (v22 < 0xF)
              {
                *(v7 + v17) = 1;
                if (v22 >= 0xD)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                if (v21[7])
                {
                  v23 = *(v19 + v21[7]) == 0;
                }

                else
                {
                  v23 = 1;
                }

                *(v7 + v17) = v23;
LABEL_33:
                if (v21[6])
                {
                  v35 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v36 = (v20 + *(v20 - *v20 + 12));
                  v26 = [v35 initWithCString:v36 + *v36 + 4 encoding:4];
                  goto LABEL_36;
                }
              }

              v26 = 0;
LABEL_36:
              v27 = [MTLAttributeInternal alloc];
              v37 = (v20 - *v20);
              if (*v37 >= 0xBu && (v38 = v37[5]) != 0)
              {
                v39 = (v20 + v38 + *(v20 + v38));
              }

              else
              {
                v39 = 0;
              }

              flatbuffers::String::str(v39, __p);
              v31 = stringToDataType(__p);
              v40 = (v20 - *v20);
              v34 = *v40 < 0xFu || (v41 = v40[7]) == 0 || *(v20 + v41) == 0;
              goto LABEL_44;
            }

            if (v12 == 270340)
            {
              v13 = AirReflection::Node::node_as_VertexInputArg(v9);
              v14 = v13;
              v15 = (v13 - *v13);
              v16 = *v15;
              v17 = *(v13 + v15[3]);
              if (v16 < 0xF)
              {
                *(v7 + v17) = 1;
                if (v16 >= 0xD)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                if (v15[7])
                {
                  v18 = *(v13 + v15[7]) == 0;
                }

                else
                {
                  v18 = 1;
                }

                *(v7 + v17) = v18;
LABEL_20:
                if (v15[6])
                {
                  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v25 = (v14 + *(v14 - *v14 + 12));
                  v26 = [v24 initWithCString:v25 + *v25 + 4 encoding:4];
LABEL_23:
                  v27 = [MTLAttributeInternal alloc];
                  v28 = (v14 - *v14);
                  if (*v28 >= 0xBu && (v29 = v28[5]) != 0)
                  {
                    v30 = (v14 + v29 + *(v14 + v29));
                  }

                  else
                  {
                    v30 = 0;
                  }

                  flatbuffers::String::str(v30, __p);
                  v31 = stringToDataType(__p);
                  v32 = (v14 - *v14);
                  v34 = *v32 < 0xFu || (v33 = v32[7]) == 0 || *(v14 + v33) == 0;
LABEL_44:
                  v42 = [(MTLAttributeInternal *)v27 initWithName:v26 attributeIndex:v17 attributeType:v31 used:v34];
                  if (v44 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v45 = v42;

                  std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a3 + 192, &v45);
                  goto LABEL_47;
                }
              }

              v26 = 0;
              goto LABEL_23;
            }
          }
        }

LABEL_47:
        --v3;
      }

      while (v3);
    }
  }
}

void sub_185BBD0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createVertexFunctionDescriptor(flatbuffers::FlatBufferBuilder *this, void *a2, int *a3, int a4)
{
  v4 = a4;
  v7 = a2 + 6;
  v8 = a2[40];
  if (v8)
  {
    v46 = a2 + 6;
    v9 = *(v8 + 16);
    if (v9)
    {
      __p = 0;
      v51 = 0;
      v52 = 0;
      v10 = 31;
      do
      {
        v11 = *(v9 + 8);
        if (v11)
        {
          *(this + 70) = 1;
          v12 = *(this + 8);
          v13 = *(this + 12);
          v14 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [v11 format], 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, [v11 offset], 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 8, [v11 bufferIndex], 0);
          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v12 - v13 + v14);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v49);
        }

        else
        {
          *(this + 70) = 1;
          v15 = *(this + 8);
          v16 = *(this + 12);
          v17 = *(this + 10);
          if (*(this + 80) == 1)
          {
            v18 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this, 6, v18);
            if (*(this + 80))
            {
              v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
              flatbuffers::FlatBufferBuilder::TrackField(this, 8, v19);
              if (*(this + 80))
              {
                v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 0);
                flatbuffers::FlatBufferBuilder::TrackField(this, 4, v20);
              }
            }
          }

          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v15 - v16 + v17);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v49);
        }

        v9 += 8;
        --v10;
      }

      while (v10);
      if (v51 == __p)
      {
        v21 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
      }

      else
      {
        v21 = __p;
      }

      v22 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v21, (v51 - __p) >> 2);
      v4 = a4;
      if (__p)
      {
        v51 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = *(v8 + 8);
    if (v24)
    {
      v45 = v22;
      __p = 0;
      v51 = 0;
      v52 = 0;
      v25 = 31;
      do
      {
        v26 = *(v24 + 8);
        if (v26)
        {
          *(this + 70) = 1;
          v27 = *(this + 8);
          v28 = *(this + 12);
          v29 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [v26 stepFunction], 1);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, [v26 stepRate], 1);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 8, [v26 stride], 0);
          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v27 - v28 + v29);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v49);
        }

        else
        {
          *(this + 70) = 1;
          v30 = *(this + 8);
          v31 = *(this + 12);
          v32 = *(this + 10);
          if (*(this + 80) == 1)
          {
            v33 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this, 8, v33);
            if (*(this + 80))
            {
              v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 1);
              flatbuffers::FlatBufferBuilder::TrackField(this, 6, v34);
              if (*(this + 80))
              {
                v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 1);
                flatbuffers::FlatBufferBuilder::TrackField(this, 4, v35);
              }
            }
          }

          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v30 - v31 + v32);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v49);
        }

        v24 += 8;
        --v25;
      }

      while (v25);
      if (v51 == __p)
      {
        v36 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
      }

      else
      {
        v36 = __p;
      }

      v37 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v36, (v51 - __p) >> 2);
      v4 = a4;
      v22 = v45;
      if (__p)
      {
        v51 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v37 = 0;
    }

    *(this + 70) = 1;
    v38 = *(this + 10);
    v39 = *(this + 8) - *(this + 12);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v22);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v37);
    v23 = flatbuffers::FlatBufferBuilder::EndTable(this, v39 + v38);
    v7 = v46;
  }

  else
  {
    v23 = 0;
  }

  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(this, v7[51]);
  v41 = [a2 maxVertexAmplificationCount];
  *(this + 70) = 1;
  v42 = *(this + 10);
  v43 = *(this + 8) - *(this + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v23);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 8, [a2 isRasterizationEnabled], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 10, [a2 inputPrimitiveTopology], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 12, [a2 maxTessellationFactor], 16);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 14, [a2 isTessellationFactorScaleEnabled], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 16, [a2 tessellationFactorFormat], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 18, [a2 tessellationControlPointIndexType], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 20, [a2 tessellationFactorStepFunction], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 22, [a2 tessellationOutputWindingOrder], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 24, [a2 tessellationPartitionMode], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 26, v41, 1);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 30, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 32, [a2 supportIndirectCommandBuffers], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 28, [a2 vertexAmplificationMode], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 36, [a2 textureWriteRoundingMode], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 38, [a2 clipDistanceEnableMask], 255);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 40, [a2 vertexDepthCompareClampMask], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 42, [a2 needsCustomBorderColorSamplers], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 44, *a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 34, v4, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(this, v43 + v42);
}

void sub_185BBD73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createPipelineBufferDescriptorVector(flatbuffers::FlatBufferBuilder *this, const MTLPipelineBufferDescriptorArrayInternal *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v4 = 31;
  do
  {
    v5 = v2->_descriptors[0];
    if (v5)
    {
      *(this + 70) = 1;
      v6 = *(this + 8);
      v7 = *(this + 12);
      v8 = *(this + 10);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [(MTLPipelineBufferDescriptorInternal *)v5 mutability], 0);
      v16 = flatbuffers::FlatBufferBuilder::EndTable(this, v6 - v7 + v8);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v16);
    }

    else
    {
      *(this + 70) = 1;
      v9 = *(this + 8);
      v10 = *(this + 12);
      v11 = *(this + 10);
      if (*(this + 80) == 1)
      {
        v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 0);
        flatbuffers::FlatBufferBuilder::TrackField(this, 4, v12);
      }

      v16 = flatbuffers::FlatBufferBuilder::EndTable(this, v9 - v10 + v11);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v16);
    }

    v2 = (v2 + 8);
    --v4;
  }

  while (v4);
  if (v18 == __p)
  {
    v13 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v13 = __p;
  }

  v14 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v13, (v18 - __p) >> 2);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_185BBD920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

dispatch_data_t _MTLCreateRenderPipelineScriptFromDescriptor(MTLRenderPipelineDescriptor *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = xmmword_185DB8250;
  v14 = 0u;
  *buffer = 0u;
  v16 = 0;
  v17 = 1;
  v18 = 256;
  v19 = 0;
  if (_MTLCreateRenderPipelineScriptFromDescriptor(&v11, a1))
  {
    v1 = buffer[0];
    v2 = (v14 + DWORD2(v14) - LODWORD(buffer[0]));
    v5 = v11;
    v6 = v12;
    v7 = *(&v14 + 1);
    v8 = v14;
    v9 = buffer[0];
    v10 = v2;
    if (v12 == 1)
    {
      v11 = 0;
      v12 = 0;
    }

    v14 = 0u;
    *buffer = 0u;
    v3 = dispatch_data_create(v1, v2, 0, 0);
    flatbuffers::DetachedBuffer::~DetachedBuffer(&v5);
  }

  else
  {
    v3 = 0;
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v11);
  return v3;
}

void sub_185BBDA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(uint64_t a1, __int16 a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _MTLCreateRenderPipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLRenderPipelineDescriptor *a2)
{
  if ([(MTLRenderPipelineDescriptor *)a2 objectFunction]|| [(MTLRenderPipelineDescriptor *)a2 meshFunction])
  {
    return 0;
  }

  if ([(MTLRenderPipelineDescriptor *)a2 vertexFunction])
  {
    v5 = [objc_msgSend(-[MTLRenderPipelineDescriptor vertexFunction](a2 "vertexFunction")];
    v6 = strlen(v5);
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, v5, v6);
  }

  else
  {
    String = 0;
  }

  if ([(MTLRenderPipelineDescriptor *)a2 fragmentFunction])
  {
    v8 = [objc_msgSend(-[MTLRenderPipelineDescriptor fragmentFunction](a2 "fragmentFunction")];
    v9 = strlen(v8);
    v10 = flatbuffers::FlatBufferBuilder::CreateString(a1, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  LODWORD(v25) = createLinkedFunctions(a1, [(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions]);
  v11 = [(MTLRenderPipelineDescriptor *)a2 supportAddingVertexBinaryFunctions]|| [(NSArray *)[(MTLLinkedFunctions *)[(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions] binaryFunctions] count]!= 0;
  VertexFunctionDescriptor = createVertexFunctionDescriptor(a1, a2, &v25, v11);
  v13 = [(MTLRenderPipelineDescriptor *)a2 _descriptorPrivate];
  v14 = v13;
  v15 = 1;
  if ((*(v13 + 569) & 1) == 0)
  {
    v15 = [objc_msgSend(*(v13 + 496) "binaryFunctions")] != 0;
  }

  LODWORD(v25) = createLinkedFunctions(a1, *(v14 + 496));
  FragmentFunctionDescriptor = createFragmentFunctionDescriptorImpl<MTLRenderPipelineDescriptorPrivate>(a1, v14, &v25, v15);
  *(a1 + 70) = 1;
  v17 = *(a1 + 10);
  v18 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, VertexFunctionDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, FragmentFunctionDescriptor);
  v19 = flatbuffers::FlatBufferBuilder::EndTable(a1, v18 + v17);
  v25 = 0x400000000;
  v26 = 0;
  *(a1 + 70) = 1;
  v20 = *(a1 + 10);
  v21 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v19);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v25);
  v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 1);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v22);
  v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v23);
  v24 = flatbuffers::FlatBufferBuilder::EndTable(a1, v21 + v20);
  flatbuffers::FlatBufferBuilder::Finish(a1, v24, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

NSUInteger createLinkedFunctions(flatbuffers::FlatBufferBuilder *a1, MTLLinkedFunctions *a2)
{
  if ([(NSArray *)[(MTLLinkedFunctions *)a2 functions] count])
  {
    FunctionArray = createFunctionArray(a1, [(MTLLinkedFunctions *)a2 functions]);
  }

  else
  {
    FunctionArray = 0;
  }

  if ([(NSArray *)[(MTLLinkedFunctions *)a2 privateFunctions] count])
  {
    v5 = createFunctionArray(a1, [(MTLLinkedFunctions *)a2 privateFunctions]);
  }

  else
  {
    v5 = 0;
  }

  if ([(NSDictionary *)[(MTLLinkedFunctions *)a2 groups] count])
  {
    v6 = [(MTLLinkedFunctions *)a2 groups];
    v14 = 0;
    v15 = &v14;
    v16 = 0x4812000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = &unk_185DF1D43;
    v21 = 0;
    v22 = 0;
    __p = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL12createGroupsRN11flatbuffers17FlatBufferBuilderEP12NSDictionaryIP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEE_block_invoke;
    v13[3] = &unk_1E6EEB308;
    v13[4] = &v14;
    v13[5] = a1;
    [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v13];
    v7 = v15[7] - v15[6];
    if (v7)
    {
      v8 = v15[6];
    }

    else
    {
      v8 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionGroup>,std::allocator<flatbuffers::Offset<Air::FunctionGroup>>>(std::vector<flatbuffers::Offset<Air::FunctionGroup>> const&)::t;
    }

    v9 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v8, v7 >> 2);
    _Block_object_dispose(&v14, 8);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v9 = 0;
  }

  if ([(NSArray *)[(MTLLinkedFunctions *)a2 functions] count]|| [(NSArray *)[(MTLLinkedFunctions *)a2 privateFunctions] count]|| (result = [(NSDictionary *)[(MTLLinkedFunctions *)a2 groups] count]) != 0)
  {
    *(a1 + 70) = 1;
    v11 = *(a1 + 10);
    v12 = *(a1 + 8) - *(a1 + 12);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, FunctionArray);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v5);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v9);
    return flatbuffers::FlatBufferBuilder::EndTable(a1, v12 + v11);
  }

  return result;
}

void sub_185BBE0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t createFragmentFunctionDescriptorImpl<MTLRenderPipelineDescriptorPrivate>(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  FragmentColorAttachmentDescriptorVector = createFragmentColorAttachmentDescriptorVector(a1, *a2);
  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(a1, *(a2 + 416));
  *(a1 + 70) = 1;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, FragmentColorAttachmentDescriptorVector);
  v12 = *(a2 + 72);
  if ((v12 - 1) >= 0x28C)
  {
    LOWORD(v12) = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 24, v12, 0);
  v13 = *(a2 + 80);
  if ((v13 - 1) >= 0x28C)
  {
    LOWORD(v13) = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 26, v13, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, *(a2 + 224) & 3, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, (*(a2 + 224) >> 2) & 3, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, (*(a2 + 224) >> 4) & 1, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, *(a2 + 184), 1);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 30, *(a2 + 152), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, *(a2 + 216), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, *(a2 + 192), -1);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 18, *(a2 + 200), 1.0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, (*(a2 + 224) >> 10) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, *(a2 + 176), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, (*(a2 + 224) >> 36) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, *(a2 + 228) & 0xF, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 40, (*(a2 + 224) >> 28) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, (*(a2 + 224) >> 25) & 7, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 44, HIWORD(*(a2 + 224)) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 46, (*(a2 + 224) >> 8) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 48, (*(a2 + 224) >> 9) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 52, *(a2 + 236), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, *(a2 + 472), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 54, *a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, a4, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 56, *(a2 + 680), 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v11 + v10);
}

void *flatbuffers::FlatBufferBuilder::AddElement<float>(void *result, uint64_t a2, float a3, float a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<float>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t MTLCompileTypeForFunction(_MTLFunction *a1)
{
  v1 = [(_MTLFunction *)a1 functionType];
  if (v1 - 1 > 7)
  {
    return -1;
  }

  else
  {
    return qword_185DE2898[v1 - 1];
  }
}

uint64_t MultiLevelBinaryCache::getElement(void *a1, void *a2, dispatch_data_t *a3)
{
  if (*(a1 + 48) == 1)
  {
    NSLog(&cfstr_LookingForFunc.isa, [a2 description]);
  }

  for (i = 0; i < [a1[5] count]; ++i)
  {
    if ([objc_msgSend(a1[5] objectAtIndexedSubscript:{i), "supportsAIRNT"}])
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_msgSend(a1[5] objectAtIndexedSubscript:{i), "getBinaryDataForKey:reflectionType:", a2, 0}];
    }

    if (v7)
    {
      v8 = [v7 data];
      *a3 = v8;
      dispatch_retain(v8);
      return 1;
    }
  }

  if ((*(*a1 + 88))(a1))
  {
    return 0;
  }

  v10 = [a2 value];

  return MultiLevelCacheBase::getElement(a1, v10, a3);
}

unsigned __int8 *_getPipelineFrameworkHash(Air::PipelineScript *a1, int a2, char a3)
{
  v3 = (a1 - *a1);
  if (*v3 < 9u)
  {
    return 0;
  }

  v4 = v3[4];
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + v4);
  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        Air::PipelineScript::pipeline_as_compute(a1);
LABEL_7:

        return malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      }

      return 0;
    }

    v13 = Air::PipelineScript::pipeline_as_render(a1);
    v14 = (v13 - *v13);
    v15 = *v14;
    if (a2 == 1)
    {
      if (v15 >= 9 && (v16 = v14[4]) != 0)
      {
        v17 = (v13 + v16 + *(v13 + v16));
      }

      else
      {
        v17 = 0;
      }

      return getVertexHash(v17);
    }

    if (v15 < 0xB)
    {
      goto LABEL_41;
    }

    v22 = v14[5];
    if (!v22)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 == 3)
  {
    v18 = Mtl4::FunctionConstantValue::value_as_ConstantFloat(a1);
    v19 = (v18 - *v18);
    if (*v19 >= 7u && (v20 = v19[3]) != 0)
    {
      v21 = (v18 + v20 + *(v18 + v20));
    }

    else
    {
      v21 = 0;
    }

    return getTileHash(v21);
  }

  else
  {
    if (v7 != 4)
    {
      return 0;
    }

    if (a2 == 2)
    {
      v13 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a1);
      v23 = (v13 - *v13);
      if (*v23 < 0xFu || (v22 = v23[7]) == 0)
      {
LABEL_41:
        v24 = 0;
        goto LABEL_42;
      }

LABEL_40:
      v24 = (v13 + v22 + *(v13 + v22));
LABEL_42:

      return getFragmentHash(v24, a3);
    }

    if (a2 == 8)
    {
      Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a1);
      goto LABEL_7;
    }

    if (a2 != 7)
    {
      return 0;
    }

    v9 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a1);
    v10 = (v9 - *v9);
    if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
    {
      v12 = (v9 + v11 + *(v9 + v11));
    }

    else
    {
      v12 = 0;
    }

    return getMeshHash(v12);
  }
}

uint64_t Air::PipelineScript::pipeline_as_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 1) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t MTLDataTypeGetSize(uint64_t a1)
{
  if ((a1 - 3) > 0x88)
  {
    return 0;
  }

  else
  {
    return qword_185DE3878[a1 - 3];
  }
}

uint64_t MTLDataTypeGetComponentCount(uint64_t a1)
{
  result = 1;
  if (a1 > 120)
  {
    if (a1 > 122)
    {
      if (a1 == 123)
      {
        return 3;
      }

      else if (a1 == 124)
      {
        return 4;
      }

      else
      {
        return 0;
      }
    }

    else if (a1 != 121)
    {
      return 2;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
      case 16:
      case 29:
      case 33:
      case 37:
      case 41:
      case 45:
      case 49:
      case 53:
      case 81:
      case 85:
        return result;
      case 4:
      case 17:
      case 30:
      case 34:
      case 38:
      case 42:
      case 46:
      case 50:
      case 54:
      case 82:
      case 86:
        return 2;
      case 5:
      case 18:
      case 31:
      case 35:
      case 39:
      case 43:
      case 47:
      case 51:
      case 55:
      case 83:
      case 87:
        return 3;
      case 6:
      case 19:
      case 32:
      case 36:
      case 40:
      case 44:
      case 48:
      case 52:
      case 56:
      case 84:
      case 88:
        return 4;
      default:
        return 0;
    }
  }

  return result;
}

void MTLInputStageReflectionDeserializer::~MTLInputStageReflectionDeserializer(MTLInputStageReflectionDeserializer *this)
{
  *this = &unk_1EF474FC8;
  if (*(this + 33))
  {
    v2 = 0;
    do
    {
    }

    while (v2 < *(this + 33));
  }

  free(*(this + 17));
  *(this + 17) = 0;
  v3 = *(this + 24);
  v4 = *(this + 25);
  if (v3 != v4)
  {
    do
    {
    }

    while (v3 != v4);
    v3 = *(this + 24);
  }

  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);
}

{
  MTLInputStageReflectionDeserializer::~MTLInputStageReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

unsigned __int8 *getVertexHash(int *a1)
{
  v2 = 1;
  v3 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
  data = 0;
  v4 = (a1 - *a1);
  v5 = *v4;
  if (v5 <= 8)
  {
    LOBYTE(data) = 1;
  }

  else
  {
    if (v4[4])
    {
      v6 = *(a1 + v4[4]) != 0;
    }

    else
    {
      v6 = 1;
    }

    LOBYTE(data) = v6;
    v2 = v5 < 0xB || (v7 = v4[5]) == 0 || *(a1 + v7) == 0;
  }

  HIBYTE(data) = v2;
  CC_SHA256(&data, 2u, v3);
  return v3;
}

uint64_t MTLPixelFormatComputeTotalSizeUsed(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    result = 0;
    v6 = (a1 + 48);
    while (1)
    {
      v8 = *a2++;
      v7 = v8;
      if ((v8 - 603) < 2)
      {
        v9 = 4;
      }

      else
      {
        v9 = 4;
        if (v7 != 622)
        {
          if (v7 != 605)
          {
            v10 = *(v6 - 15);
            v9 = *(v6 - 1);
            v11 = *v6;
            goto LABEL_9;
          }

          v9 = 8;
        }
      }

      v10 = 4;
      v11 = v9;
LABEL_9:
      v6 += 7;
      if (a4)
      {
        v9 = v11;
      }

      result = ((result + v10 - 1) & -v10) + v9;
      if (!--a3)
      {
        return result;
      }
    }
  }

  return 0;
}

void validateMTLCompareFunction(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 >= 8)
  {
    _MTLMessageContextPush_(a2, 4, @"function is not a valid MTLCompareFunction.", a4, a5, a6, a7, a8, a9);
  }
}

uint64_t MTLSerializePluginDataDictionary(void *a1, _BYTE *a2)
{
  if (![a1 count])
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a2)
  {
    *a2 = [a1 count];
    v4 = v10;
    v5 = v10[3] + 1;
  }

  else
  {
    v5 = 1;
    v4 = &v9;
  }

  v4[3] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MTLSerializePluginDataDictionary_block_invoke;
  v8[3] = &unk_1E6EECE38;
  v8[4] = &v9;
  v8[5] = a2;
  [a1 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_185BBEF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t LoaderContext::setInsertLibraries(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    *v8;
    *v8;
    v4 = **(&v7 + 1);
    [**(&v7 + 1) libraryPath];
    v5 = v4;
    LoaderContext::addImage();
  }

  a1[5] = (a1[7] - a1[6]) >> 3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LoaderContext::load(LoaderContext *this, _MTLFunction *a2, uint64_t a3, id *a4)
{
  v8 = [(_MTLFunction *)a2 libraryData];
  v9 = (*(*v8 + 352))(v8);
  if (!v9)
  {
    v9 = [(_MTLFunction *)a2 inheritedLibraryPath];
  }

  if (LoaderContext::getImage(this, &v9->isa))
  {
    return 1;
  }

  v11 = LoaderContext::addImage(this, v8, &v9->isa);
  if (!v11)
  {
    return 1;
  }

  *(this + 2) = [(__CFString *)v9 stringByDeletingLastPathComponent];

  return LoaderContext::loadRecursive(this, v11, 0, v9, a3, a4);
}

uint64_t LoaderContext::addImage(LoaderContext *this, MTLLibraryData *a2, NSString *a3)
{
  v4 = (*(*a2 + 72))(a2);
  v5 = (*(*a2 + 64))(a2);
  if ([v4 count] || objc_msgSend(v5, "count"))
  {
    operator new();
  }

  return 0;
}

uint64_t LoaderContext::getImage(LoaderContext *this, NSString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 == v3)
  {
    return 0;
  }

  while (([*(*v2 + 8) isEqualToString:a2] & 1) == 0)
  {
    v2 += 8;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return *v2;
}

void validateRenderRasterAndLater<MTLRenderPipelineDescriptorPrivate>(uint64_t a1, void *a2, uint64_t a3)
{
  v130[56] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 184);
  v7 = [a2 supportsSeparateVisibilityAndShadingRate];
  v13 = *(a3 + 216);
  if (!v7)
  {
    if (v13)
    {
      _MTLMessageContextPush_(a1, 4, @"colorSampleCount expected to be 0.", v8, v9, v10, v11, v12, v117);
    }

    goto LABEL_17;
  }

  v14 = *(a3 + 184);
  if (v13)
  {
    v15 = v13 > v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    _MTLMessageContextPush_(a1, 4, @"colorSampleCount expected to be smaller or equal to rasterSampleCount", v8, v9, v10, v11, v12, v117);
    v14 = *(a3 + 184);
    v13 = *(a3 + 216);
    if (v14)
    {
LABEL_7:
      if (v14 < v13)
      {
        _MTLMessageContextPush_(a1, 4, @"rasterSampleCount expected to be greater or equal to colorSampleCount", v8, v9, v10, v11, v12, v117);
        v13 = *(a3 + 216);
      }
    }
  }

  else if (v14)
  {
    goto LABEL_7;
  }

  if (v13)
  {
    v16 = [a2 supportsTextureSampleCount:?];
    v22 = *(a3 + 216);
    if ((v16 & 1) == 0)
    {
      _MTLMessageContextPush_(a1, 4, @"colorSampleCount (%lu) is not supported by device.", v17, v18, v19, v20, v21, *(a3 + 216));
      v22 = *(a3 + 216);
    }

    if (v22)
    {
      v6 = v22;
    }
  }

LABEL_17:
  v121 = v6;
  v123 = a2;
  v122 = [a2 maxColorAttachments];
  v23 = 0;
  v24 = 0;
  v124 = 0;
  for (i = 0; i != 8; ++i)
  {
    v26 = *(*a3 + 8 + 8 * i);
    if (!v26)
    {
      continue;
    }

    v27 = *(v26 + 8) >> 42;
    if (!v27)
    {
      continue;
    }

    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    MTLPixelFormatGetInfoForDevice(v123, v27, &v125);
    v33 = *(v26 + 8);
    if ((v33 & 3) == 1)
    {
      if ((BYTE8(v125) & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"Blending is enabled for render target %lu; however, the pixelformat %s for this render target is not blendable.", v28, v29, v30, v31, v32, i);
        v33 = *(v26 + 8);
      }

      if (((v33 >> 10) & 7) >= 5)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v117);
        v33 = *(v26 + 8);
      }

      if ((v33 & 0x38000) >= 0x28000)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v117);
        v33 = *(v26 + 8);
      }

      if ((v33 & 0x700000) >= 0x500000)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v117);
        v33 = *(v26 + 8);
      }

      if (((v33 >> 25) & 7) >= 5)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v117);
        v33 = *(v26 + 8);
      }

      if ((~v33 & 0x18) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"func is not a valid MTLBlendOperation.", v28, v29, v30, v31, v32, v117);
        v33 = *(v26 + 8);
      }

      if ((~v33 & 0xC0) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"func is not a valid MTLBlendOperation.", v28, v29, v30, v31, v32, v117);
        v33 = *(v26 + 8);
      }

      validateMTLPixelFormat(v33 >> 42, a1);
      v34 = *(v26 + 8);
      v35 = ((v34 >> 8) & 0x1F);
      if (i)
      {
        validateBlendFactorNotDualSourced(i, v35, a1, v28, v29, v30, v31, v32, v117);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 13) & 0x1F), a1, v36, v37, v38, v39, v40, v118);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 18) & 0x1F), a1, v41, v42, v43, v44, v45, v119);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 23) & 0x1F), a1, v46, v47, v48, v49, v50, v120);
        goto LABEL_52;
      }

      if (v35 >= MTLBlendFactorSource1Color)
      {
        if ((v35 - 15) < 4)
        {
          goto LABEL_50;
        }

        if (v35 != (MTLBlendFactorOneMinusSource1Alpha|MTLBlendFactorOne))
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v117);
          v34 = *(v26 + 8);
        }
      }

      v51 = (v34 >> 13) & 0x1F;
      if (v51 >= 0xF)
      {
        if (v51 - 15 < 4)
        {
          goto LABEL_50;
        }

        if (v51 != 19)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v117);
          v34 = *(v26 + 8);
        }
      }

      v52 = (v34 >> 18) & 0x1F;
      if (v52 < 0xF)
      {
LABEL_40:
        v53 = (v34 >> 23) & 0x1F;
        if (v53 >= 0x14)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v117);
          goto LABEL_52;
        }

        v54 = 0x78000u >> v53;
        goto LABEL_51;
      }

      if (v52 - 15 >= 4)
      {
        if (v52 != 19)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v117);
          v34 = *(v26 + 8);
        }

        goto LABEL_40;
      }

LABEL_50:
      LOBYTE(v54) = 1;
LABEL_51:
      v124 = v54;
    }

LABEL_52:
    v55 = *(*(*a3 + 8 + 8 * i) + 12) & 0x1F;
    v56 = v55 > 0x10 || ((1 << v55) & 0x18001) == 0;
    if (v56 && (BYTE9(v125) & 0x80) != 0)
    {
      _MTLMessageContextPush_(a1, 4, @"writeMask(0x%lx) is not MTLColorWriteMaskAll or MTLColorWriteMaskNone or MTLColorWriteMaskUnspecialized for render target %lu; however, the pixelformat %s for this render target requires MTLColorWriteMaskAll or MTLColorWriteMaskNone or MTLColorWriteMaskUnspecialized.", v28, v29, v30, v31, v32, v55);
    }

    if (i >= v122)
    {
      _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor color render target(%lu) exceeds platform max(%lu).", v28, v29, v30, v31, v32, i);
    }

    if (BYTE8(v125))
    {
      if ((BYTE8(v125) & 0x10) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"pixelFormat, for color render target(%lu), is not a valid MTLPixelFormat.", v28, v29, v30, v31, v32, i);
      if ((BYTE8(v125) & 0x10) == 0)
      {
LABEL_71:
        _MTLMessageContextPush_(a1, 4, @"pixelFormat, for color render target(%lu), %s is not color renderable.", v28, v29, v30, v31, v32, i);
      }
    }

    if (((i != 0) & v124) == 1)
    {
      _MTLMessageContextPush_(a1, 4, @"Dual source blending is used in combination with multiple render targets", v28, v29, v30, v31, v32, v117);
    }

    v129[v23] = v27;
    v57 = &v130[7 * v23++];
    v58 = v126;
    *v57 = v125;
    *(v57 + 1) = v58;
    *(v57 + 2) = v127;
    v57[6] = v128;
    v24 = 1;
  }

  v59 = *(*a3 + 8);
  if (v59)
  {
    v60 = *(v59 + 8) >> 42;
    if (v60)
    {
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      v125 = 0u;
      MTLPixelFormatGetInfoForDevice(v123, v60, &v125);
      v66 = *(a3 + 224);
      v67 = BYTE8(v125);
      if ((v66 & 3) != 0 && (BYTE8(v125) & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor with alphaToCoverageEnabled requires a float/unorm pixel format, but colorAttachments[0].pixelFormat(%s) is not blendable", v61, v62, v63, v64, v65, v125);
        v66 = *(a3 + 224);
        v67 = BYTE8(v125);
      }

      if ((v66 & 0xC) != 0 && (v67 & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor with alphaToOneEnabled requires a float/unorm pixel format, but colorAttachments[0].pixelFormat(%s) is not blendable", v61, v62, v63, v64, v65, v125);
      }
    }
  }

  v68 = [v123 maxFramebufferStorageBits];
  v69 = MTLPixelFormatComputeTotalSizeUsed(v130, v129, v23, v121 > 1);
  if (([v123 isLargeMRTSupported] & 1) == 0 && 8 * v69 > v68)
  {
    _MTLMessageContextPush_(a1, 4, @"This set of render targets requires %lu bytes of pixel storage. This device supports %lu bytes.", v70, v71, v72, v73, v74, v69 & 0x1FFFFFFFFFFFFFFFLL);
  }

  v75 = *(a3 + 72);
  if (v75)
  {
    MTLPixelFormatGetInfoForDevice(v123, v75, &v125);
    v81 = v125;
    LOBYTE(v26) = BYTE8(v125);
    if (BYTE8(v125))
    {
      if ((BYTE8(v125) & 0x20) != 0)
      {
        goto LABEL_86;
      }

LABEL_112:
      _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat %s is not depth renderable.", v76, v77, v78, v79, v80, v81);
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat is not a valid MTLPixelFormat.", v76, v77, v78, v79, v80, v117);
      if ((v26 & 0x20) == 0)
      {
        goto LABEL_112;
      }
    }

LABEL_86:
    v24 = 1;
  }

  v82 = *(a3 + 80);
  if (v82)
  {
    MTLPixelFormatGetInfoForDevice(v123, v82, &v125);
    v88 = v125;
    LOBYTE(i) = BYTE8(v125);
    if (BYTE8(v125))
    {
      if ((BYTE8(v125) & 0x40) != 0)
      {
        goto LABEL_90;
      }

LABEL_114:
      _MTLMessageContextPush_(a1, 4, @"stencilAttachmentPixelFormat %s is not stencil renderable.", v83, v84, v85, v86, v87, v88);
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"stencilAttachmentPixelFormat is not a valid MTLPixelFormat.", v83, v84, v85, v86, v87, v117);
      if ((i & 0x40) == 0)
      {
        goto LABEL_114;
      }
    }

LABEL_90:
    v24 = 1;
  }

  if (dyld_program_sdk_at_least() && (([v123 supportsRenderPassWithoutRenderTarget] | v24) & 1) == 0)
  {
    _MTLMessageContextPush_(a1, 4, @"No valid pixelFormats set.", v89, v90, v91, v92, v93, v117);
  }

  v94 = *(a3 + 72);
  v95 = *(a3 + 80);
  if (v94 && v95 && i & 0x20 | v26 & 0x40 && v94 != v95)
  {
    Name = MTLPixelFormatGetName(v94);
    MTLPixelFormatGetName(*(a3 + 80));
    _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat (%s) and stencilAttachmentPixelFormat (%s) must match.", v112, v113, v114, v115, v116, Name);
    v95 = *(a3 + 80);
    if (*(a3 + 72))
    {
      goto LABEL_99;
    }
  }

  else if (v94)
  {
LABEL_99:
    if (v95)
    {
      v96 = [v123 supportsSeparateDepthStencil];
      if (i & 0x20 | v26 & 0x40 || (v96 & 1) == 0)
      {
        v97 = *(a3 + 72);
        if (v97 != *(a3 + 80))
        {
          validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>(v97, (a3 + 80));
        }
      }
    }
  }

  v98 = *(a3 + 476);
  if (!v98)
  {
    _MTLMessageContextPush_(a1, 4, @"maxVertexAmplificationCount (%u) cannot be set to zero.", v89, v90, v91, v92, v93, 0);
    v98 = *(a3 + 476);
  }

  if (([v123 supportsVertexAmplificationCount:v98] & 1) == 0)
  {
    _MTLMessageContextPush_(a1, 4, @"maxVertexAmplificationCount (%u) is not supported on this device. See supportsVertexAmplificationCount:(NSUInteger).", v99, v100, v101, v102, v103, *(a3 + 476));
  }

  if (([v123 supportsTextureWriteRoundingMode:*(a3 + 176)] & 1) == 0)
  {
    validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>((a3 + 176));
  }

  validateMTLCompareFunction((*(a3 + 224) >> 25) & 7, a1, v104, v105, v106, v107, v108, v109, v117);
  validateMTLPixelFormat(*(a3 + 72), a1);
  validateMTLPixelFormat(*(a3 + 80), a1);
  v110 = *MEMORY[0x1E69E9840];
}

void validateMTLPixelFormat(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  MTLPixelFormatGetInfoForDevice(0, a1, v9);
  if (a1)
  {
    if ((BYTE8(v9[0]) & 1) == 0)
    {
      _MTLMessageContextPush_(a2, 4, @"pixelFormat is not a valid MTLPixelFormat.", v4, v5, v6, v7, v8, *&v9[0]);
    }
  }
}

dispatch_data_t createSerializedFragmentData<MTLRenderPipelineDescriptorPrivate>(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(*a3 + 8 + v4);
    if (v6 && *(v6 + 8) >> 42)
    {
      ++v5;
    }

    v4 += 8;
  }

  while (v4 != 64);
  v7 = *(a3 + 496);
  if (v7 && ([v7 functions] && objc_msgSend(objc_msgSend(*(a3 + 496), "functions"), "count") || objc_msgSend(*(a3 + 496), "privateFunctions") && objc_msgSend(objc_msgSend(*(a3 + 496), "privateFunctions"), "count")))
  {
    v8 = 1;
    v9 = 6;
  }

  else
  {
    v8 = 0;
    v9 = 4;
  }

  v31 = v9 * 4 + 2 * v5;
  v33 = MTLSerializePluginDataDictionary([objc_msgSend(*(a3 + 264) "device")], 0);
  v30 = v33 + v31;
  v34 = MTLSerializePluginDataDictionary(*(a3 + 464), 0);
  v10 = v34 + v33 + v31;
  if (v8)
  {
    _MTLPopulateLinkedFunctionExtraData(*(a3 + 496));
  }

  v11 = malloc_type_malloc(v10, 0x1000040504FFAC1uLL);
  bzero(v11, v10);
  v16 = 0;
  v17 = 0;
  v11[2] = (a2 << 6) & 0x40000000 | v5 | v11[2] & 0x9FFFFF00 | (((*(a3 + 224) >> 9) & 1) << 29);
  v18 = &v11[v9];
  do
  {
    v19 = *(*a3 + 8 + 8 * v16);
    if (v19)
    {
      v20 = *(v19 + 8);
      if (v20 >> 42)
      {
        *(v18 + v17++) = (v20 >> 38) & 0xFFF0 | v16;
        v21 = *(v19 + 8);
        if ((v21 & 3) != 0)
        {
          v22 = (v21 >> 8) & 0x1F;
          if (v22 >= 0xF)
          {
            if (v22 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v22 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v23 = (v21 >> 13) & 0x1F;
          if (v23 >= 0xF)
          {
            if (v23 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v23 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v24 = (v21 >> 18) & 0x1F;
          if (v24 >= 0xF)
          {
            if (v24 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v24 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v25 = (v21 >> 23) & 0x1F;
          if (v25 < 0xF)
          {
            goto LABEL_34;
          }

          if (v25 - 15 < 4)
          {
LABEL_33:
            v11[2] |= 65792 << v16;
            goto LABEL_34;
          }

          if (v25 != 19)
          {
            MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
          }
        }
      }
    }

LABEL_34:
    ++v16;
  }

  while (v16 != 8);
  v26 = *(a3 + 80);
  *(v11 + 6) = *(a3 + 72);
  *(v11 + 7) = v26;
  if (v33)
  {
    *v11 = v31;
    MTLSerializePluginDataDictionary([objc_msgSend(*(a3 + 264) "device")], v11 + v31);
  }

  if (v34)
  {
    v11[1] = v30;
    MTLSerializePluginDataDictionary(*(a3 + 464), v11 + v30);
  }

  v27 = *MEMORY[0x1E69E9648];

  return dispatch_data_create(v11, v10, 0, v27);
}

void std::vector<std::unique_ptr<LoaderContext::Image>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id LoaderContext::finish(LoaderContext *this, uint64_t a2, id *a3)
{
  if ((*(this + 72) & 1) == 0)
  {
    return MEMORY[0x1E695E0F0];
  }

  if (*(this + 5))
  {
    v6 = 0;
    v7 = *(this + 4);
    while (1)
    {
      v8 = *(*(this + 6) + 8 * v6);
      if ((LoaderContext::loadRecursive(this, v8, v7, *(v8 + 8), a2, a3) & 1) == 0)
      {
        return 0;
      }

      if (++v6 >= *(this + 5))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v9 = *(this + 6);
    v10 = *(this + 7);
    v11 = 126 - 2 * __clz(v10 - v9);
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,false>(v9, v10, &v17, v12, 1);
    v13 = objc_opt_new();
    v15 = *(this + 6);
    v14 = *(this + 7);
    while (v15 != v14)
    {
      if (*(*v15 + 32))
      {
        [v13 addObject:?];
      }

      v15 += 8;
    }
  }

  return v13;
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t MTLCompilerFSCache::getElement(uint64_t a1, unint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 136));
  v4 = *(a1 + 144);
  if (v4)
  {
    v5 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(v4, a2);
    os_unfair_lock_unlock((a1 + 136));
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    os_unfair_lock_unlock((a1 + 136));
  }

  os_unfair_lock_lock((a1 + 8));
  if (MTLCompilerFSCache::openSync(a1))
  {
    v6 = *(a1 + 48);
    if (fscache_find_and_retain() == 203)
    {
      ++*(a1 + 16);
    }

    else
    {
      v9 = *(a1 + 48);
      if (!fscache_element_get_data())
      {
        v10 = *(a1 + 48);
        if (fscache_remove_and_release() != 205)
        {
          MTLCompilerFSCache::invalidateCache(a1);
        }
      }
    }
  }

  os_unfair_lock_unlock((a1 + 8));
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _MTLCompilePerformanceStatisticsEnabled()
{
  if (_MTLCompilePerformanceStatisticsEnabled::onceToken != -1)
  {
    _MTLCompilePerformanceStatisticsEnabled_cold_1();
  }

  return _collectCompilePerformanceStats;
}

void flatbuffers::vector_downward::~vector_downward(flatbuffers::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      v4 = *(this + 4);
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x1865FF1F0](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

uint64_t MTLGetEnvDefault(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return strtol(v3, 0, 0);
}

void MTLDeviceArrayInitialize()
{
  dispatch_once(&initWrapperType(void)::pred, &__block_literal_global_1374);
}

{
  dispatch_once(&MTLDeviceArrayInitialize(void)::pred, &__block_literal_global_1294);
}

void ___ZL24MTLDeviceArrayInitializev_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  _deviceArrayQueue = dispatch_queue_create("com.Metal.DeviceArray", 0);
  _deviceArray = objc_alloc_init(MEMORY[0x1E695DF70]);

  objc_autoreleasePoolPop(v0);
}

void MTLLogAPIValidationType(int a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      if (MTLFailureTypeGetEnabled(3uLL))
      {
        NSLog(&cfstr_MetalApiExtend.isa);
      }

      else
      {
        v1 = MTLReportFailureTypeEnabled(1uLL);
        v2 = "Disabled";
        if (v1)
        {
          v2 = "Enabled";
        }

        NSLog(&cfstr_MetalApiValida.isa, v2);
      }
    }

    else if (a1 == 2)
    {
      NSLog(&cfstr_MetalApiTeleme.isa);
    }
  }

  else if (a1 == 3)
  {
    NSLog(&cfstr_MetalApiCounte.isa);
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return;
      }

      MTLLogAPIValidationType(1);
    }

    NSLog(&cfstr_MetalGpuValida.isa);
  }
}

void *getMetalPluginClassForService(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"MetalPluginName", 0, 0);
  if (CFProperty)
  {
    v3 = CFProperty;
    v4 = CFGetTypeID(CFProperty);
    if (v4 != CFStringGetTypeID() || (v5 = [MEMORY[0x1E696AAE8] bundleWithPath:{objc_msgSend(objc_msgSend(@"/System/Library/Extensions", "stringByAppendingPathComponent:", v3), "stringByAppendingString:", @".bundle"}]) == 0)
    {
      v10 = 0;
LABEL_14:
      CFRelease(v3);
      return v10;
    }

    v6 = v5;
    v7 = IORegistryEntryCreateCFProperty(a1, @"MetalPluginClassName", 0, 0);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID())
      {
        v10 = [v6 classNamed:v8];
        CFRelease(v8);
        if (v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        CFRelease(v8);
      }
    }

    v10 = [v6 principalClass];
LABEL_12:
    if (![v10 isSubclassOfClass:objc_opt_class()])
    {
      v10 = 0;
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t ___ZL15initWrapperTypev_block_invoke()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = @"METAL_DEVICE_WRAPPER_TYPE";
  v10[0] = &unk_1EF4CFD38;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  _CFXPreferencesRegisterDefaultValues();
  v1 = MTLGetEnvDefault("MTL_DEBUG_LAYER", 0);
  v2 = MTLGetEnvDefault("MTL_SHADER_VALIDATION", 0);
  v3 = getenv([@"METAL_DEVICE_WRAPPER_TYPE" UTF8String]);
  if (v3)
  {
    result = strtol(v3, 0, 0);
    wrapperType = result;
  }

  else
  {
    result = [v0 integerForKey:@"METAL_DEVICE_WRAPPER_TYPE"];
    wrapperType = result;
    if (!result)
    {
      if (!v1)
      {
        if (!v2)
        {
          goto LABEL_16;
        }

        v5 = 4;
        goto LABEL_15;
      }

      if (!v2)
      {
        v6 = 1;
        goto LABEL_19;
      }

LABEL_14:
      v5 = 5;
LABEL_15:
      wrapperType = v5;
      goto LABEL_16;
    }
  }

  if (result == 4)
  {
    if (!v1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (result == 1)
  {
    if (!v2)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if ((result - 1) < 2)
  {
    goto LABEL_20;
  }

LABEL_16:
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"UseMetalTelemetry", @"com.apple.Metal", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && result)
  {
    v6 = 2;
LABEL_19:
    wrapperType = v6;
  }

LABEL_20:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void validateVertexAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1 || !*(a1 + 8))
  {
    v11 = *(a3 + 24);
    _MTLMessageContextPush_(a4, 4, @"Attribute at index %d references a buffer at index %lu that has no stride.", a4, a5, a6, a7, a8, a2);
  }

  if (*(a3 + 8) >= 0x38uLL)
  {

    _MTLMessageContextPush_(a4, 4, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a4, a5, a6, a7, a8, a9);
  }
}

{
  if (!a1 || !*(a1 + 8))
  {
    v12 = *(a3 + 24);
    _MTLMessageContextPush_(a4, 4, @"Attribute at index %d references a buffer at index %lu that has no stride.", a4, a5, a6, a7, a8, a2);
  }

  v11 = *(a3 + 8);

  validateMTLAttributeFormat(v11, a4, a3, a4, a5, a6, a7, a8, a9);
}

void validateFunctionStepRate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 patchType];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (a1 && v8)
        {
          _MTLMessageContextPush_(a4, 4, @"MTLVertexStepFunctionPerVertex not allowed with postTessellationVertexFunction.", v9, v10, v11, v12, v13, v14);
        }

        if (a3 != 1)
        {
          _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) must be one if stepFunction is MTLVertexStepFunctionPerVertex.", v9, v10, v11, v12, v13, a3);
        }
      }
    }

    else if (a3)
    {
      _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) must be zero if stepFunction is MTLVertexStepFunctionConstant.", v9, v10, v11, v12, v13, a3);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        if (!a3)
        {
          _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) cannot be zero if stepFunction is MTLVertexStepFunctionPerInstance.", v9, v10, v11, v12, v13, 0);
        }

        break;
      case 3:
        if (a1 && !v8)
        {
          _MTLMessageContextPush_(a4, 4, @"MTLVertexStepFunctionPerPatch requires postTessellationVertexFunction.", v9, v10, v11, v12, v13, v14);
        }

        if (a3 != 1)
        {
          _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) must be one if stepFunction is MTLVertexStepFunctionPerPatch.", v9, v10, v11, v12, v13, a3);
        }

        break;
      case 4:
        if (a1 && !v8)
        {
          _MTLMessageContextPush_(a4, 4, @"MTLVertexStepFunctionPerPatchControlPoint requires postTessellationVertexFunction.", v9, v10, v11, v12, v13, v14);
        }

        if (a3 != 1)
        {
          _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) must be one if stepFunction is MTLVertexStepFunctionPerPatchAndPerInstance.", v9, v10, v11, v12, v13, a3);
        }

        break;
    }
  }
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x1865FF1F0);
  }
}

_MTLFunctionInternal *MTLLibraryDataWithArchive::newAirScriptedFunction(MTLLibraryDataWithArchive *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(a4, a2);
  if (v8 && (v9 = v8[6]) != 0)
  {
    v25.bitcodeType = 0;
    v25.pluginData = 0;
    *&v25.renderTargetArrayIndexType = 0;
    v25.functionInputs = 0;
    v25.airScript = 0;
    memset(&v25, 0, 56);
    v24 = 0;
    *__p = 0u;
    v22 = 0u;
    *v21 = 0u;
    *v20 = 0u;
    if (MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v9, &v25, &v19))
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (SHIBYTE(v21[0]) >= 0)
      {
        v11 = v20;
      }

      else
      {
        v11 = v20[0];
      }

      v12 = [v10 initWithUTF8String:v11];
      v13 = [_MTLFunctionInternal alloc];
      v14 = [(_MTLFunctionInternal *)v13 initWithName:v12 type:v19 libraryData:a1 functionData:&v25 inheritedLibraryPath:a5 device:a3];
      v15 = v14;
      if (*(a1 + 66))
      {
        if (v14)
        {
          v16 = [(_MTLFunctionInternal *)v14 sourceArchiveOffset];
          if (v16 != -1)
          {
            [(_MTLFunctionInternal *)v15 setSourceArchiveOffset:*(a1 + 65) + v16];
          }
        }
      }
    }

    else
    {
      v15 = 0;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[1]);
    }

    if (SHIBYTE(v21[0]) < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
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

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t LibraryWithData::extractFlatbuffer(LibraryWithData *this, char **a2, unsigned int *a3, NSError **a4)
{
  v35 = 0;
  if ((*(*this + 368))(this, &v35, 4) != 4)
  {
LABEL_34:
    if (!a4)
    {
      return 0;
    }

    v18 = MEMORY[0x1E695DF20];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Invalid library file/data (unexpected end of file)";
    goto LABEL_36;
  }

  v29 = a4;
  *a2 = 0;
  *a3 = 0;
  v8 = -1;
  v34 = 0;
  size = 0;
  v32 = -1;
  while (1)
  {
    if ((*(*this + 368))(this, &v34, 4) != 4)
    {
      goto LABEL_34;
    }

    v9 = bswap32(v34);
    v34 = v9;
    if (v9 <= 1396855641)
    {
      break;
    }

    if (v9 == 1396855642)
    {
      goto LABEL_21;
    }

    if (v9 == 1396856134)
    {
      goto LABEL_15;
    }

    v10 = 1396856154;
LABEL_11:
    if (v9 != v10)
    {
      goto LABEL_25;
    }

    if ((*(*this + 368))(this, &v32, 4) != 4)
    {
      goto LABEL_34;
    }

    v8 = (*(*this + 392))(this);
    v11 = (*(*this + 392))(this);
    if (((*(*this + 360))(this, v11 + v32) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_26:
    if (v34 == 1162757204)
    {
LABEL_27:
      result = 1;
      if (v32 == -1 || v8 == -1)
      {
        return result;
      }

      v17 = (*(*this + 392))(this);
      if ((*(*this + 360))(this, v8))
      {
        if (!malloc_type_posix_memalign(a2, 0x10uLL, size, 0xBF1769B2uLL))
        {
          if ((*(*this + 232))(this, *a2, size, *(this + 81) + *(this + 83), v32))
          {
            *a3 = 0;
            if ((*(*this + 360))(this, v17))
            {
              return 1;
            }

            v28 = a4;
            goto LABEL_49;
          }

          free(*a2);
        }

        result = 0;
        *a2 = 0;
        return result;
      }

LABEL_39:
      if (!a4)
      {
        return 0;
      }

      v18 = MEMORY[0x1E695DF20];
      v19 = *MEMORY[0x1E696A578];
      v20 = @"Invalid library file (unexpected end of file)";
LABEL_36:
      v21 = [v18 dictionaryWithObject:v20 forKey:{v19, v29}];
      v22 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v21];
      result = 0;
      *a4 = v22;
      return result;
    }
  }

  if (v9 <= 1380078917)
  {
    if (v9 != 1380078426)
    {
      if (v9 == 1162757204)
      {
        goto LABEL_27;
      }

LABEL_25:
      v15 = (*(*this + 392))(this);
      if (((*(*this + 360))(this, v15 + HIDWORD(size)) & 1) == 0)
      {
        v28 = a4;
LABEL_49:
        generateNSError(v28, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_InvalidLibrary_1.isa);
        return 0;
      }

      goto LABEL_26;
    }

LABEL_21:
    LOWORD(v31) = 0;
    if ((*(*this + 368))(this, &v31, 2) != 2 || (v14 = v31, (*(*this + 368))(this, &size, v31) != v14))
    {
      if (!a4)
      {
        return 0;
      }

      v23 = MEMORY[0x1E695DF20];
      v24 = *MEMORY[0x1E696A578];
      v25 = @"Invalid library file/data (unexpected end of file)";
LABEL_43:
      v26 = [v23 dictionaryWithObject:v25 forKey:{v24, a4}];
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v26];
      return 0;
    }

    goto LABEL_26;
  }

  if (v9 != 1380078918)
  {
    v10 = 1380078938;
    goto LABEL_11;
  }

LABEL_15:
  if ((*(*this + 368))(this, &size + 4, 4) != 4)
  {
    goto LABEL_34;
  }

  v12 = (*(*this + 392))(this);
  v31 = 0;
  v30 = 0;
  if (((*(*this + 224))(this, a2, v12, HIDWORD(size), 16, &v31, &v30) & 1) == 0)
  {
    goto LABEL_47;
  }

  if (((*(*this + 360))(this, v31) & 1) == 0)
  {
    if (!a4)
    {
      return 0;
    }

    v23 = MEMORY[0x1E695DF20];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"Invalid library file (unexpected end of file)";
    goto LABEL_43;
  }

  v13 = v30;
  if ((*(*this + 368))(this, *a2, v30) == v13)
  {
    *a3 = v30;
    goto LABEL_26;
  }

  if (a4)
  {
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file/data (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v27];
  }

  free(*a2);
LABEL_47:
  *a2 = 0;
  return 0;
}

BOOL MTLLibraryData::alignFlatbuffer(MTLLibraryData *this, char **memptr, uint64_t a3, unsigned int a4, size_t alignment, unint64_t *a6, unsigned int *a7)
{
  v7 = (alignment - 1);
  v8 = __CFADD__(a3, v7);
  v9 = a3 + v7;
  if (v8)
  {
    return 0;
  }

  v10 = v9 & -alignment;
  *a6 = v10;
  v11 = v10 - a3;
  if (v11 > a4)
  {
    return 0;
  }

  v13 = a4 - v11;
  *a7 = v13;
  return malloc_type_posix_memalign(memptr, alignment, v13, 0x71330C81uLL) == 0;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(uint64_t a1, _BYTE *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(uint64_t a1, _DWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 4;
  *(v4 - 4) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(uint64_t a1, _WORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 2;
  *(v4 - 2) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,MTLConstantStorage::ConstantData>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x1865FF1F0](v2, 0x1000C8077774924);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_185BC2598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1865FF1F0](v16, v15);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,MTLConstantStorage::ConstantData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MTLConstantStorage::ConstantData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,MTLConstantStorage::ConstantData>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLConstantStorage::ConstantData> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__construct_node<std::pair<std::string const,MTLConstantStorage::ConstantData> const&>();
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, a3, a5);
}

void std::pair<std::string const,MTLConstantStorage::ConstantData>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  _MTLConstantDataSize(*(a2 + 24));
  this[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
  operator new[]();
}

void sub_185BC2ABC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLHashKey::operator==(void *a1, void *a2)
{
  if (*a2 != *a1)
  {
    return 0;
  }

  return a2[3] == a1[3] && a2[4] == a1[4] && a2[5] == a1[5] && a2[6] == a1[6];
}

uint64_t MTLHashKey::description(MTLHashKey *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (this->var0.var0)
  {
    v2 = @"Key: \n";
  }

  else
  {
    v2 = @"Legacy key:\n";
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:v2];
  if (this->var0.var0)
  {
    v4 = this->var0.var0 >> this->var0.var2;
    v5 = (v4 + 1);
    var0 = this->var2.var0;
    v7 = *(var0 + 1);
    v25 = *var0;
    v26 = v7;
    v8 = [v3 stringByAppendingFormat:@" %@ Function hash\n ", _MTLRequestHashToString(&v25)];
    if (v5 >= 2)
    {
      v9 = 1;
      v10 = 32;
      do
      {
        v11 = (this->var2.var0 + v10);
        v12 = v11[1];
        v25 = *v11;
        v26 = v12;
        v8 = [v8 stringByAppendingFormat:@"%@ Linked bitcode(%i)\n ", _MTLRequestHashToString(&v25), v9++];
        v10 += 32;
      }

      while (v5 != v9);
    }

    if ((this->var0.var0 & 2) != 0)
    {
      v14 = v4 + 2;
      v17 = (this->var2.var0 + 32 * v5);
      v18 = v17[1];
      v25 = *v17;
      v26 = v18;
      v13 = [v8 stringByAppendingFormat:@"%@ air-nt \n ", _MTLRequestHashToString(&v25)];
    }

    else
    {
      v13 = [v8 stringByAppendingString:@"n/a \n"];
      v14 = v4 + 1;
    }

    if ((this->var0.var0 & 4) != 0)
    {
      v20 = (this->var2.var0 + 32 * v14);
      v21 = v20[1];
      ++v14;
      v25 = *v20;
      v26 = v21;
      v19 = [v13 stringByAppendingFormat:@"%@ air-nt plugin\n ", _MTLRequestHashToString(&v25)];
    }

    else
    {
      v19 = [v13 stringByAppendingString:@"n/a \n"];
    }

    if ((this->var0.var0 & 8) != 0)
    {
      v22 = (this->var2.var0 + 32 * v14);
      v23 = v22[1];
      v25 = *v22;
      v26 = v23;
      result = [v19 stringByAppendingFormat:@"%@ metal framework \n ", _MTLRequestHashToString(&v25)];
    }

    else
    {
      result = [v19 stringByAppendingString:@"n/a \n"];
    }
  }

  else
  {
    v15 = *&this->var1.var0[16];
    v25 = *this->var1.var0;
    v26 = v15;
    result = [v3 stringByAppendingFormat:@"%@ Single SHA256 \n ", _MTLRequestHashToString(&v25)];
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MTLRequestHashToString(uint64_t a1)
{
  v2 = 0;
  memset(&v7, 0, sizeof(v7));
  do
  {
    v3 = *(a1 + v2);
    std::string::push_back(&v7, _MTLRequestHashToString(MTLUINT256_t)::hexChars[v3 >> 4]);
    std::string::push_back(&v7, _MTLRequestHashToString(MTLUINT256_t)::hexChars[v3 & 0xF]);
    ++v2;
  }

  while (v2 != 32);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v7;
  }

  else
  {
    v4 = v7.__r_.__value_.__r.__words[0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_185BC2ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MTLRangeAllocatorGetMaxFreeSize(unsigned int *a1, unint64_t a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = (*a1 + 8);
  do
  {
    v6 = *(v5 - 1);
    if (a2)
    {
      if (v6 % a2)
      {
        v7 = a2 - v6 % a2;
      }

      else
      {
        v7 = 0;
      }

      v6 += v7;
    }

    v8 = *v5;
    v5 += 2;
    v9 = v8 + 1;
    v10 = v8 + 1 - v6;
    if (v10 <= result)
    {
      v10 = result;
    }

    if (v9 > v6)
    {
      result = v10;
    }

    --v2;
  }

  while (v2);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t getDefaultPostVertexBuiltins(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, void *a5)
{
  v7 = a3;
  if (!a4)
  {
    v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.vertex_id" dataType:33 pixelFormat:0 aluType:33 name:&stru_1EF478240 offset:a3];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
    v7 += 4;
  }

  v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.instance_id" dataType:33 pixelFormat:0 aluType:33 name:&stru_1EF478240 offset:v7];
  std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
  v10 = v7 + 4;
  if (a4)
  {
    v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.patch_id" dataType:33 pixelFormat:0 aluType:33 name:&stru_1EF478240 offset:v7 + 4];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
    v10 = v7 + 8;
    v11 = AirReflection::Node::node_as_PatchFnAttr((a1 + 4 * *a4 + 4 + *(a1 + 4 * *a4 + 4)));
    v12 = (v11 - *v11);
    if (*v12 < 5u || (v13 = v12[2]) == 0)
    {
LABEL_8:
      v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.position_in_patch" dataType:5 pixelFormat:0 aluType:3 name:&stru_1EF478240 offset:v7 + 8];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
      v10 = v7 + 20;
      goto LABEL_9;
    }

    v14 = *(v11 + v13);
    if (v14 != 1)
    {
      if (v14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.position_in_patch" dataType:4 pixelFormat:0 aluType:3 name:&stru_1EF478240 offset:v7 + 8];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
    v10 = v7 + 16;
  }

LABEL_9:
  if ([a5 supportsVertexAmplificationCount:2])
  {
    v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.amplification_id" dataType:33 pixelFormat:0 aluType:33 name:&stru_1EF478240 offset:v10];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
    return (v10 + 4);
  }

  return v10;
}

uint64_t getPostVertexDumpOutputForNode(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 + 4 * *a1 + 4 + *(a2 + 4 * *a1 + 4));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return a4;
  }

  v7 = v6[2];
  if (!v7)
  {
    return a4;
  }

  v9 = *(v5 + v7);
  v112 = 0;
  if (v9 > 135169)
  {
    if (v9 <= 139265)
    {
      if (v9 >= 139264)
      {
        if (v9 == 139264)
        {
          v10 = AirReflection::Node::node_as_AcceptIntersectionRet(v5);
          v48 = *v10;
          v49 = -v48;
          v50 = (v10 - v48);
          if (*v50 >= 9u && (v51 = v50[4]) != 0)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v51 + *(v10 + v51) + 4];
            v49 = -*v10;
          }

          else
          {
            v15 = &stru_1EF478240;
          }

          v87 = (v10 + v49 + 6);
          v88 = @"air.accept_intersection";
        }

        else
        {
          v10 = AirReflection::Node::node_as_ContinueSearchRet(v5);
          v28 = *v10;
          v29 = -v28;
          v30 = (v10 - v28);
          if (*v30 >= 9u && (v31 = v30[4]) != 0)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v31 + *(v10 + v31) + 4];
            v29 = -*v10;
          }

          else
          {
            v15 = &stru_1EF478240;
          }

          v87 = (v10 + v29 + 6);
          v88 = @"air.continue_search";
        }
      }

      else if (v9 == 135170)
      {
        v10 = AirReflection::Node::node_as_StencilRet(v5);
        v44 = *v10;
        v45 = -v44;
        v46 = (v10 - v44);
        if (*v46 >= 9u && (v47 = v46[4]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v47 + *(v10 + v47) + 4];
          v45 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v45 + 6);
        v88 = @"air.stencil";
      }

      else
      {
        if (v9 != 135171)
        {
          return a4;
        }

        v10 = AirReflection::Node::node_as_SampleMaskRet(v5);
        v20 = *v10;
        v21 = -v20;
        v22 = (v10 - v20);
        if (*v22 >= 9u && (v23 = v22[4]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v23 + *(v10 + v23) + 4];
          v21 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v21 + 6);
        v88 = @"air.sample_mask";
      }
    }

    else
    {
      if (v9 > 143360)
      {
        if (v9 != 143361)
        {
          if (v9 == 143362)
          {
            v10 = AirReflection::Node::node_as_PrimitiveCulledRet(v5);
            v52 = *v10;
            v53 = -v52;
            v54 = (v10 - v52);
            if (*v54 >= 0xBu && (v55 = v54[5]) != 0)
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v55 + *(v10 + v55) + 4];
              v53 = -*v10;
            }

            else
            {
              v15 = &stru_1EF478240;
            }

            v87 = (v10 + v53 + 8);
            v88 = @"air.primitive_culled";
          }

          else
          {
            if (v9 != 143363)
            {
              return a4;
            }

            v10 = AirReflection::Node::node_as_PrimitiveIDRet(v5);
            v11 = *v10;
            v12 = -v11;
            v13 = (v10 - v11);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v14 + *(v10 + v14) + 4];
              v12 = -*v10;
            }

            else
            {
              v15 = &stru_1EF478240;
            }

            v87 = (v10 + v12 + 8);
            v88 = @"air.primitive_id";
          }

          goto LABEL_108;
        }

        v10 = AirReflection::Node::node_as_MeshVertexDataRet(v5);
        v79 = *v10;
        v80 = -v79;
        v81 = (v10 - v79);
        if (*v81 >= 0xFu && (v82 = v81[7]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v82 + *(v10 + v82) + 4];
          v80 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v80 + 12);
        v88 = @"air.vertex_data";
LABEL_111:
        v89 = 12;
        goto LABEL_112;
      }

      if (v9 != 139266)
      {
        if (v9 != 143360)
        {
          return a4;
        }

        v10 = AirReflection::Node::node_as_MeshPrimitiveDataRet(v5);
        v40 = *v10;
        v41 = -v40;
        v42 = (v10 - v40);
        if (*v42 >= 0xFu && (v43 = v42[7]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v43 + *(v10 + v43) + 4];
          v41 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v41 + 12);
        v88 = @"air.mesh_primitive_data";
        goto LABEL_111;
      }

      v10 = AirReflection::Node::node_as_DistanceRet(v5);
      v83 = *v10;
      v84 = -v83;
      v85 = (v10 - v83);
      if (*v85 >= 9u && (v86 = v85[4]) != 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v86 + *(v10 + v86) + 4];
        v84 = -*v10;
      }

      else
      {
        v15 = &stru_1EF478240;
      }

      v87 = (v10 + v84 + 6);
      v88 = @"air.distance";
    }

    v89 = 6;
LABEL_112:
    v90 = v10 + *v87 + *(v10 + *v87);
    v91 = strlen(v90 + 4);
    v92 = dataTypeFromString(v90 + 4, v91, 0, &v112);
    v93 = (v10 + *(v10 + v89 - *v10));
    v94 = v93 + *v93;
    v95 = strlen(v94 + 4);
    v96 = pixelFormatAndALUTypeFromString(v94 + 4, v95);
    v97 = HIDWORD(v96);
    v98 = v96;
    ComponentType = MTLDataTypeGetComponentType(v92);
    ComponentCount = MTLDataTypeGetComponentCount(v92);
    v101 = MTLDataTypeGetSize(ComponentType) * ComponentCount;
    if (v101 <= 4)
    {
      v101 = 4;
    }

    v102 = (v101 + 3) & 0xFFFFFFFC;
    v111 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:v88 dataType:v92 pixelFormat:v98 aluType:v97 name:v15 offset:a4];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a3, &v111);
    return v102 + a4;
  }

  if (v9 > 131075)
  {
    if (v9 >= 135168)
    {
      if (v9 == 135168)
      {
        v10 = AirReflection::Node::node_as_RenderTargetRet(v5);
        v75 = *v10;
        v76 = -v75;
        v77 = (v10 - v75);
        if (*v77 >= 0x11u && (v78 = v77[8]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v78 + *(v10 + v78) + 4];
          v76 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v76 + 14);
        v88 = @"air.render_target";
        v89 = 14;
        goto LABEL_112;
      }

      v10 = AirReflection::Node::node_as_DepthRet(v5);
      v36 = *v10;
      v37 = -v36;
      v38 = (v10 - v36);
      if (*v38 >= 0xBu && (v39 = v38[5]) != 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v39 + *(v10 + v39) + 4];
        v37 = -*v10;
      }

      else
      {
        v15 = &stru_1EF478240;
      }

      v87 = (v10 + v37 + 8);
      v88 = @"air.depth";
      goto LABEL_108;
    }

    if (v9 == 131076)
    {
      v10 = AirReflection::Node::node_as_VertexOutputRet(v5);
      v67 = *v10;
      v68 = -v67;
      v69 = (v10 - v67);
      if (*v69 >= 0xFu && (v70 = v69[7]) != 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v70 + *(v10 + v70) + 4];
        v68 = -*v10;
      }

      else
      {
        v15 = &stru_1EF478240;
      }

      v87 = (v10 + v68 + 12);
      v88 = @"air.vertex_output";
      goto LABEL_111;
    }

    if (v9 != 131077)
    {
      return a4;
    }

    v10 = AirReflection::Node::node_as_ViewportArrayIndexRet(v5);
    v24 = *v10;
    v25 = -v24;
    v26 = (v10 - v24);
    if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v27 + *(v10 + v27) + 4];
      v25 = -*v10;
    }

    else
    {
      v15 = &stru_1EF478240;
    }

    v87 = (v10 + v25 + 8);
    v88 = @"air.viewport_array_index";
LABEL_108:
    v89 = 8;
    goto LABEL_112;
  }

  if (v9 > 131073)
  {
    if (v9 == 131074)
    {
      v10 = AirReflection::Node::node_as_PositionRet(v5);
      v71 = *v10;
      v72 = -v71;
      v73 = (v10 - v71);
      if (*v73 >= 0xDu && (v74 = v73[6]) != 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v74 + *(v10 + v74) + 4];
        v72 = -*v10;
      }

      else
      {
        v15 = &stru_1EF478240;
      }

      v87 = (v10 + v72 + 10);
      v88 = @"air.position";
      v89 = 10;
      goto LABEL_112;
    }

    v10 = AirReflection::Node::node_as_RenderTargetArrayIndexRet(v5);
    v32 = *v10;
    v33 = -v32;
    v34 = (v10 - v32);
    if (*v34 >= 0xBu && (v35 = v34[5]) != 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v35 + *(v10 + v35) + 4];
      v33 = -*v10;
    }

    else
    {
      v15 = &stru_1EF478240;
    }

    v87 = (v10 + v33 + 8);
    v88 = @"air.render_target_array_index";
    goto LABEL_108;
  }

  if (v9 != 0x20000)
  {
    if (v9 != 131073)
    {
      return a4;
    }

    v10 = AirReflection::Node::node_as_PointSizeRet(v5);
    v16 = *v10;
    v17 = -v16;
    v18 = (v10 - v16);
    if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v19 + *(v10 + v19) + 4];
      v17 = -*v10;
    }

    else
    {
      v15 = &stru_1EF478240;
    }

    v87 = (v10 + v17 + 8);
    v88 = @"air.point_size";
    goto LABEL_108;
  }

  v56 = AirReflection::Node::node_as_ClipDistanceRet(v5);
  v57 = (v56 + *(v56 - *v56 + 10));
  v58 = v57 + *v57;
  v59 = strlen(v58 + 4);
  v60 = dataTypeFromString(v58 + 4, v59, 0, &v112);
  v61 = *v56;
  v62 = v56 - v61;
  v63 = *(v56 - v61);
  if (v63 < 7)
  {
    goto LABEL_126;
  }

  if (*(v62 + 3))
  {
    v64 = -v61;
    if (v63 >= 0xD && (v65 = *(v62 + 6)) != 0)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v56 + v65 + *(v56 + v65) + 4];
      v64 = -*v56;
    }

    else
    {
      v66 = &stru_1EF478240;
    }

    if (*(v56 + *(v56 + v64 + 6)))
    {
      v104 = 0;
      do
      {
        v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", v66, v104];
        v106 = v112;
        if (v112 <= 4)
        {
          v106 = 4;
        }

        v107 = (v106 + 3) & 0xFFFFFFFC;
        v111 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.clip_distance" dataType:v60 pixelFormat:0 aluType:0 name:v105 offset:a4];
        std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a3, &v111);
        a4 = v107 + a4;
        v104 = (v104 + 1);
      }

      while (v104 < *(v56 + *(v56 - *v56 + 6)));
    }

    return a4;
  }

  if (v63 >= 0xD && *(v62 + 6))
  {
    v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v56 + *(v62 + 6) + *(v56 + *(v62 + 6)) + 4];
  }

  else
  {
LABEL_126:
    v108 = &stru_1EF478240;
  }

  v109 = v112;
  if (v112 <= 4)
  {
    v109 = 4;
  }

  v110 = (v109 + 3) & 0xFFFFFFFC;
  v111 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.clip_distance" dataType:v60 pixelFormat:0 aluType:0 name:v108 offset:a4];
  std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a3, &v111);
  return v110 + a4;
}

uint64_t dataTypeFromString(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4)
{
  dataTypeInfoFromString(a1, a2, v7);
  result = v7[0];
  if (a3)
  {
    *a3 = v7[1];
  }

  if (a4)
  {
    *a4 = v7[2];
  }

  return result;
}

uint64_t MTLDataTypeGetComponentType(uint64_t result)
{
  switch(result)
  {
    case 16:
    case 29:
    case 33:
    case 37:
    case 41:
    case 45:
    case 49:
    case 53:
    case 81:
    case 85:
    case 121:
      return result;
    case 17:
    case 18:
    case 19:
      result = 16;
      break;
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
      goto LABEL_15;
    case 30:
    case 31:
    case 32:
      result = 29;
      break;
    case 34:
    case 35:
    case 36:
      result = 33;
      break;
    case 38:
    case 39:
    case 40:
      result = 37;
      break;
    case 42:
    case 43:
    case 44:
      result = 41;
      break;
    case 46:
    case 47:
    case 48:
      result = 45;
      break;
    case 50:
    case 51:
    case 52:
      result = 49;
      break;
    case 54:
    case 55:
    case 56:
      result = 53;
      break;
    case 82:
    case 83:
    case 84:
      result = 81;
      break;
    case 86:
    case 87:
    case 88:
      result = 85;
      break;
    case 122:
    case 123:
    case 124:
      result = 121;
      break;
    default:
      if ((result - 3) >= 4)
      {
LABEL_15:
        result = 0;
      }

      else
      {
        result = 3;
      }

      break;
  }

  return result;
}

void MTLVertexReflectionDeserializerAIR::~MTLVertexReflectionDeserializerAIR(MTLVertexReflectionDeserializerAIR *this)
{
  MTLInputStageReflectionDeserializer::~MTLInputStageReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLVertexReflectionReader::~MTLVertexReflectionReader(MTLVertexReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

void validateBlendFactorNotDualSourced(uint64_t a1, MTLBlendFactor a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 >= MTLBlendFactorSource1Color)
  {
    if ((a2 - 15) >= 4)
    {
      if (a2 != (MTLBlendFactorOneMinusSource1Alpha|MTLBlendFactorOne))
      {

        MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", a5, a6, a7, a8, a9);
      }
    }

    else
    {
      MTLBlendFactorString(a2);
      _MTLMessageContextPush_(a3, 4, @"MTLRenderPipelineDescriptor color render target(%lu) is using a blend factor (%@)which is can only be used for render target 0", v12, v13, v14, v15, v16, a1);
    }
  }
}

uint64_t createFunctionArray(flatbuffers::FlatBufferBuilder *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  __p = 0;
  v22 = 0;
  v23 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(a2);
        }

        v7 = [objc_msgSend(*(*(&v17 + 1) + 8 * i) "name")];
        v8 = strlen(v7);
        String = flatbuffers::FlatBufferBuilder::CreateString(a1, v7, v8);
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &String);
      }

      v4 = [a2 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v4);
    v9 = __p;
    v10 = v22;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = v10 - v9;
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, v11 >> 2);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_185BC472C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Air::FunctionStitching::Node const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<MTLUINT256_t const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v365 = *MEMORY[0x1E69E9840];
LABEL_2:
  v7 = (a2 - 32);
  v8 = (a2 - 64);
  v9 = (a2 - 96);
  v10 = v6;
  while (1)
  {
    v6 = v10;
    v11 = (a2 - v10) >> 5;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      goto LABEL_588;
    }

    if (v11 == 2)
    {
      v178 = *(a2 - 32);
      v177 = a2 - 32;
      v179 = bswap64(v178);
      v180 = bswap64(*v10);
      if (v179 == v180 && (v179 = bswap64(*(v177 + 8)), v180 = bswap64(v10[1]), v179 == v180) && (v179 = bswap64(*(v177 + 16)), v180 = bswap64(v10[2]), v179 == v180) && (v179 = bswap64(*(v177 + 24)), v180 = bswap64(v10[3]), v179 == v180))
      {
        v181 = 0;
      }

      else if (v179 < v180)
      {
        v181 = -1;
      }

      else
      {
        v181 = 1;
      }

      if (v181 < 0)
      {
        v325 = *v10;
        v358 = *(v10 + 1);
        v254 = *(v177 + 16);
        *v10 = *v177;
        *(v10 + 1) = v254;
        *v177 = v325;
        *(v177 + 16) = v358;
      }

      goto LABEL_588;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v187 = v10 + 4;
      v189 = v10 == a2 || v187 == a2;
      if (a4)
      {
        if (!v189)
        {
          v190 = 0;
          v191 = v10;
          do
          {
            v192 = v187;
            v193 = bswap64(v191[4]);
            v194 = bswap64(*v191);
            if (v193 != v194 || (v193 = bswap64(v192[1]), v194 = bswap64(v191[1]), v193 != v194) || (v193 = bswap64(v192[2]), v194 = bswap64(v191[2]), v193 != v194) || (v193 = bswap64(v192[3]), v194 = bswap64(v191[3]), v193 != v194))
            {
              v195 = v193 < v194 ? -1 : 1;
              if (v195 < 0)
              {
                v322 = *v192;
                v354 = *(v192 + 1);
                v196 = v190;
                while (1)
                {
                  v197 = v10 + v196;
                  v198 = *(v10 + v196 + 16);
                  *(v197 + 2) = *(v10 + v196);
                  *(v197 + 3) = v198;
                  if (!v196)
                  {
                    break;
                  }

                  v199 = bswap64(v322);
                  v200 = bswap64(*(v197 - 4));
                  if (v199 == v200 && (v199 = bswap64(*(&v322 + 1)), v200 = bswap64(*(v197 - 3)), v199 == v200) && (v199 = bswap64(v354), v200 = bswap64(*(v197 - 2)), v199 == v200) && (v199 = bswap64(*(&v354 + 1)), v200 = bswap64(*(v197 - 1)), v199 == v200))
                  {
                    v201 = 0;
                  }

                  else if (v199 < v200)
                  {
                    v201 = -1;
                  }

                  else
                  {
                    v201 = 1;
                  }

                  v196 -= 32;
                  if ((v201 & 0x80000000) == 0)
                  {
                    v202 = (v10 + v196 + 32);
                    goto LABEL_401;
                  }
                }

                v202 = v10;
LABEL_401:
                *v202 = v322;
                *(v202 + 1) = v354;
              }
            }

            v187 = v192 + 4;
            v190 += 32;
            v191 = v192;
          }

          while (v192 + 4 != a2);
        }
      }

      else if (!v189)
      {
        v263 = v10 - 4;
        do
        {
          v264 = v187;
          v265 = bswap64(v6[4]);
          v266 = bswap64(*v6);
          if (v265 != v266 || (v265 = bswap64(v264[1]), v266 = bswap64(v6[1]), v265 != v266) || (v265 = bswap64(v264[2]), v266 = bswap64(v6[2]), v265 != v266) || (v265 = bswap64(v264[3]), v266 = bswap64(v6[3]), v265 != v266))
          {
            v267 = v265 < v266 ? -1 : 1;
            if (v267 < 0)
            {
              v326 = *v264;
              v360 = *(v264 + 1);
              v268 = v263;
              do
              {
                v269 = *(v268 + 3);
                *(v268 + 4) = *(v268 + 2);
                *(v268 + 5) = v269;
                v270 = bswap64(v326);
                v271 = bswap64(*v268);
                if (v270 == v271 && (v270 = bswap64(*(&v326 + 1)), v271 = bswap64(v268[1]), v270 == v271) && (v270 = bswap64(v360), v271 = bswap64(v268[2]), v270 == v271) && (v270 = bswap64(*(&v360 + 1)), v271 = bswap64(v268[3]), v270 == v271))
                {
                  v272 = 0;
                }

                else if (v270 < v271)
                {
                  v272 = -1;
                }

                else
                {
                  v272 = 1;
                }

                v268 -= 4;
              }

              while (v272 < 0);
              *(v268 + 4) = v326;
              *(v268 + 5) = v360;
            }
          }

          v187 = v264 + 4;
          v263 += 4;
          v6 = v264;
        }

        while (v264 + 4 != a2);
      }

      goto LABEL_588;
    }

    if (!a3)
    {
      if (v10 != a2)
      {
        v203 = (v11 - 2) >> 1;
        v204 = v203;
        do
        {
          v205 = v204;
          if (v203 >= v204)
          {
            v206 = (2 * v204) | 1;
            v207 = &v10[4 * v206];
            if (2 * v205 + 2 < v11)
            {
              v208 = bswap64(*v207);
              v209 = bswap64(v207[4]);
              if (v208 != v209)
              {
                goto LABEL_413;
              }

              v208 = bswap64(v207[1]);
              v209 = bswap64(v207[5]);
              if (v208 == v209 && (v208 = bswap64(v207[2]), v209 = bswap64(v207[6]), v208 == v209) && (v208 = bswap64(v207[3]), v209 = bswap64(v207[7]), v208 == v209))
              {
                v210 = 0;
              }

              else
              {
LABEL_413:
                v210 = v208 < v209 ? -1 : 1;
              }

              if (v210 < 0)
              {
                v207 += 4;
                v206 = 2 * v205 + 2;
              }
            }

            v211 = &v10[4 * v205];
            v212 = bswap64(*v207);
            v213 = bswap64(*v211);
            if (v212 == v213 && (v212 = bswap64(v207[1]), v213 = bswap64(v211[1]), v212 == v213) && (v212 = bswap64(v207[2]), v213 = bswap64(v211[2]), v212 == v213) && (v212 = bswap64(v207[3]), v213 = bswap64(v211[3]), v212 == v213) || (v212 < v213 ? (v214 = -1) : (v214 = 1), (v214 & 0x80000000) == 0))
            {
              v323 = *v211;
              v355 = *(v211 + 1);
              do
              {
                v215 = v207;
                v216 = *(v207 + 1);
                *v211 = *v207;
                *(v211 + 1) = v216;
                if (v203 < v206)
                {
                  break;
                }

                v217 = (2 * v206) | 1;
                v207 = &v10[4 * v217];
                v206 = 2 * v206 + 2;
                if (v206 >= v11)
                {
                  v206 = v217;
                }

                else
                {
                  v218 = bswap64(*v207);
                  result = bswap64(v207[4]);
                  if (v218 != result)
                  {
                    goto LABEL_435;
                  }

                  v218 = bswap64(v207[1]);
                  result = bswap64(v207[5]);
                  if (v218 == result && (v218 = bswap64(v207[2]), result = bswap64(v207[6]), v218 == result) && (v218 = bswap64(v207[3]), result = bswap64(v207[7]), v218 == result))
                  {
                    v219 = 0;
                  }

                  else
                  {
LABEL_435:
                    v219 = v218 < result ? -1 : 1;
                  }

                  if (v219 >= 0)
                  {
                    v206 = v217;
                  }

                  else
                  {
                    v207 += 4;
                  }
                }

                v220 = bswap64(*v207);
                v221 = bswap64(v323);
                if (v220 != v221)
                {
                  goto LABEL_446;
                }

                v220 = bswap64(v207[1]);
                v221 = bswap64(*(&v323 + 1));
                if (v220 == v221 && (v220 = bswap64(v207[2]), v221 = bswap64(v355), v220 == v221) && (v220 = bswap64(v207[3]), v221 = bswap64(*(&v355 + 1)), v220 == v221))
                {
                  v222 = 0;
                }

                else
                {
LABEL_446:
                  v222 = v220 < v221 ? -1 : 1;
                }

                v211 = v215;
              }

              while ((v222 & 0x80000000) == 0);
              *v215 = v323;
              *(v215 + 1) = v355;
            }
          }

          v204 = v205 - 1;
        }

        while (v205);
        do
        {
          v223 = 0;
          v299 = *v10;
          v302 = *(v10 + 1);
          v224 = v10;
          do
          {
            v225 = &v224[4 * v223];
            v226 = v225 + 4;
            v227 = (2 * v223) | 1;
            v228 = 2 * v223 + 2;
            if (v228 < v11)
            {
              v230 = v225[8];
              v229 = v225 + 8;
              v231 = bswap64(*(v229 - 4));
              v232 = bswap64(v230);
              if (v231 != v232)
              {
                goto LABEL_459;
              }

              v231 = bswap64(v226[1]);
              v232 = bswap64(v229[1]);
              if (v231 == v232 && (v231 = bswap64(v226[2]), v232 = bswap64(v229[2]), v231 == v232) && (v231 = bswap64(v226[3]), v232 = bswap64(v229[3]), v231 == v232))
              {
                v233 = 0;
              }

              else
              {
LABEL_459:
                v233 = v231 < v232 ? -1 : 1;
              }

              if (v233 < 0)
              {
                v226 = v229;
                v227 = v228;
              }
            }

            v234 = *(v226 + 1);
            *v224 = *v226;
            *(v224 + 1) = v234;
            v224 = v226;
            v223 = v227;
          }

          while (v227 <= ((v11 - 2) >> 1));
          a2 -= 32;
          if (v226 == a2)
          {
            *v226 = v299;
            *(v226 + 1) = v302;
          }

          else
          {
            v235 = *(a2 + 16);
            *v226 = *a2;
            *(v226 + 1) = v235;
            *a2 = v299;
            *(a2 + 16) = v302;
            v236 = (v226 - v10 + 32) >> 5;
            v237 = v236 < 2;
            v238 = v236 - 2;
            if (!v237)
            {
              v239 = v238 >> 1;
              v240 = &v10[4 * v239];
              v241 = bswap64(*v240);
              v242 = bswap64(*v226);
              if (v241 != v242 || (v241 = bswap64(v240[1]), v242 = bswap64(v226[1]), v241 != v242) || (v241 = bswap64(v240[2]), v242 = bswap64(v226[2]), v241 != v242) || (v241 = bswap64(v240[3]), v242 = bswap64(v226[3]), v241 != v242))
              {
                v243 = v241 < v242 ? -1 : 1;
                if (v243 < 0)
                {
                  v324 = *v226;
                  v356 = *(v226 + 1);
                  do
                  {
                    v244 = v240;
                    v245 = *(v240 + 1);
                    *v226 = *v240;
                    *(v226 + 1) = v245;
                    if (!v239)
                    {
                      break;
                    }

                    v239 = (v239 - 1) >> 1;
                    v240 = &v10[4 * v239];
                    v246 = bswap64(*v240);
                    v247 = bswap64(v324);
                    if (v246 != v247)
                    {
                      goto LABEL_484;
                    }

                    v246 = bswap64(v240[1]);
                    v247 = bswap64(*(&v324 + 1));
                    if (v246 == v247 && (v246 = bswap64(v240[2]), v247 = bswap64(v356), v246 == v247) && (v246 = bswap64(v240[3]), v247 = bswap64(*(&v356 + 1)), v246 == v247))
                    {
                      v248 = 0;
                    }

                    else
                    {
LABEL_484:
                      v248 = v246 < v247 ? -1 : 1;
                    }

                    v226 = v244;
                  }

                  while (v248 < 0);
                  *v244 = v324;
                  *(v244 + 1) = v356;
                }
              }
            }
          }

          v237 = v11-- <= 2;
        }

        while (!v237);
      }

      goto LABEL_588;
    }

    v12 = &v10[4 * (v11 >> 1)];
    v13 = v12;
    if (v11 >= 0x81)
    {
      v14 = bswap64(*v12);
      v15 = bswap64(*v10);
      if (v14 == v15 && (v14 = bswap64(v12[1]), v15 = bswap64(v10[1]), v14 == v15) && (v14 = bswap64(v12[2]), v15 = bswap64(v10[2]), v14 == v15) && (v14 = bswap64(v12[3]), v15 = bswap64(v10[3]), v14 == v15))
      {
        v16 = 0;
      }

      else if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

      v20 = bswap64(*v7);
      v21 = bswap64(*v12);
      if (v20 == v21 && (v20 = bswap64(*(a2 - 24)), v21 = bswap64(v12[1]), v20 == v21) && (v20 = bswap64(*(a2 - 16)), v21 = bswap64(v12[2]), v20 == v21) && (v20 = bswap64(*(a2 - 8)), v21 = bswap64(v12[3]), v20 == v21))
      {
        v22 = 0;
        if (v16 < 0)
        {
LABEL_31:
          if (v22 < 0)
          {
            v307 = *v10;
            v335 = *(v10 + 1);
            v46 = *(a2 - 16);
            *v10 = *v7;
            *(v10 + 1) = v46;
            goto LABEL_92;
          }

          v303 = *v10;
          v331 = *(v10 + 1);
          v23 = *(v12 + 1);
          *v10 = *v12;
          *(v10 + 1) = v23;
          *v12 = v303;
          *(v12 + 1) = v331;
          v24 = bswap64(*v7);
          v25 = bswap64(*v12);
          if (v24 == v25 && (v24 = bswap64(*(a2 - 24)), v25 = bswap64(v12[1]), v24 == v25) && (v24 = bswap64(*(a2 - 16)), v25 = bswap64(v12[2]), v24 == v25) && (v24 = bswap64(*(a2 - 8)), v25 = bswap64(v12[3]), v24 == v25))
          {
            v26 = 0;
          }

          else if (v24 < v25)
          {
            v26 = -1;
          }

          else
          {
            v26 = 1;
          }

          if (v26 < 0)
          {
            v307 = *v12;
            v335 = *(v12 + 1);
            v42 = *(a2 - 16);
            *v12 = *v7;
            *(v12 + 1) = v42;
LABEL_92:
            *v7 = v307;
            *(a2 - 16) = v335;
          }

LABEL_93:
          v47 = v10 + 4;
          v48 = v12 - 4;
          v49 = bswap64(*(v12 - 4));
          v50 = bswap64(v10[4]);
          if (v49 == v50 && (v49 = bswap64(*(v12 - 3)), v50 = bswap64(v10[5]), v49 == v50) && (v49 = bswap64(*(v12 - 2)), v50 = bswap64(v10[6]), v49 == v50) && (v49 = bswap64(*(v12 - 1)), v50 = bswap64(v10[7]), v49 == v50))
          {
            v51 = 0;
          }

          else if (v49 < v50)
          {
            v51 = -1;
          }

          else
          {
            v51 = 1;
          }

          v52 = bswap64(*v8);
          v53 = bswap64(*v48);
          if (v52 == v53 && (v52 = bswap64(*(a2 - 56)), v53 = bswap64(*(v12 - 3)), v52 == v53) && (v52 = bswap64(*(a2 - 48)), v53 = bswap64(*(v12 - 2)), v52 == v53) && (v52 = bswap64(*(a2 - 40)), v53 = bswap64(*(v12 - 1)), v52 == v53))
          {
            v54 = 0;
            if (v51 < 0)
            {
LABEL_106:
              if (v54 < 0)
              {
                v65 = *v47;
                v66 = *(v10 + 3);
                v70 = *(a2 - 48);
                *v47 = *v8;
                *(v10 + 3) = v70;
                goto LABEL_135;
              }

              v55 = *v47;
              v339 = *(v10 + 3);
              v56 = *(v12 - 1);
              *v47 = *v48;
              *(v10 + 3) = v56;
              *v48 = v55;
              *(v12 - 1) = v339;
              v57 = bswap64(*v8);
              v58 = bswap64(*v48);
              if (v57 == v58 && (v57 = bswap64(*(a2 - 56)), v58 = bswap64(*(v12 - 3)), v57 == v58) && (v57 = bswap64(*(a2 - 48)), v58 = bswap64(*(v12 - 2)), v57 == v58) && (v57 = bswap64(*(a2 - 40)), v58 = bswap64(*(v12 - 1)), v57 == v58))
              {
                v59 = 0;
              }

              else if (v57 < v58)
              {
                v59 = -1;
              }

              else
              {
                v59 = 1;
              }

              if (v59 < 0)
              {
                v312 = *v48;
                v341 = *(v12 - 1);
                v64 = *(a2 - 48);
                *v48 = *v8;
                *(v12 - 1) = v64;
                v65 = v312;
                v66 = v341;
LABEL_135:
                *v8 = v65;
                *(a2 - 48) = v66;
              }

LABEL_136:
              v71 = v10 + 8;
              v73 = v12[4];
              v72 = v12 + 4;
              v74 = bswap64(v73);
              v75 = bswap64(v10[8]);
              if (v74 == v75 && (v74 = bswap64(v72[1]), v75 = bswap64(v10[9]), v74 == v75) && (v74 = bswap64(v72[2]), v75 = bswap64(v10[10]), v74 == v75) && (v74 = bswap64(v72[3]), v75 = bswap64(v10[11]), v74 == v75))
              {
                v76 = 0;
              }

              else if (v74 < v75)
              {
                v76 = -1;
              }

              else
              {
                v76 = 1;
              }

              v77 = bswap64(*v9);
              v78 = bswap64(*v72);
              if (v77 == v78 && (v77 = bswap64(*(a2 - 88)), v78 = bswap64(v72[1]), v77 == v78) && (v77 = bswap64(*(a2 - 80)), v78 = bswap64(v72[2]), v77 == v78) && (v77 = bswap64(*(a2 - 72)), v78 = bswap64(v72[3]), v77 == v78))
              {
                v79 = 0;
                if (v76 < 0)
                {
LABEL_149:
                  if (v79 < 0)
                  {
                    v90 = *v71;
                    v91 = *(v10 + 5);
                    v94 = *(a2 - 80);
                    *v71 = *v9;
                    *(v10 + 5) = v94;
                    goto LABEL_176;
                  }

                  v80 = *v71;
                  v343 = *(v10 + 5);
                  v81 = *(v72 + 1);
                  *v71 = *v72;
                  *(v10 + 5) = v81;
                  *v72 = v80;
                  *(v72 + 1) = v343;
                  v82 = bswap64(*v9);
                  v83 = bswap64(*v72);
                  if (v82 == v83 && (v82 = bswap64(*(a2 - 88)), v83 = bswap64(v72[1]), v82 == v83) && (v82 = bswap64(*(a2 - 80)), v83 = bswap64(v72[2]), v82 == v83) && (v82 = bswap64(*(a2 - 72)), v83 = bswap64(v72[3]), v82 == v83))
                  {
                    v84 = 0;
                  }

                  else if (v82 < v83)
                  {
                    v84 = -1;
                  }

                  else
                  {
                    v84 = 1;
                  }

                  if (v84 < 0)
                  {
                    v314 = *v72;
                    v345 = *(v72 + 1);
                    v89 = *(a2 - 80);
                    *v72 = *v9;
                    *(v72 + 1) = v89;
                    v90 = v314;
                    v91 = v345;
LABEL_176:
                    *v9 = v90;
                    *(a2 - 80) = v91;
                  }

LABEL_177:
                  v95 = bswap64(*v13);
                  v96 = bswap64(*v48);
                  if (v95 == v96 && (v95 = bswap64(v13[1]), v96 = bswap64(v48[1]), v95 == v96) && (v95 = bswap64(v13[2]), v96 = bswap64(v48[2]), v95 == v96) && (v95 = bswap64(v13[3]), v96 = bswap64(v48[3]), v95 == v96))
                  {
                    v97 = 0;
                  }

                  else if (v95 < v96)
                  {
                    v97 = -1;
                  }

                  else
                  {
                    v97 = 1;
                  }

                  v98 = bswap64(*v72);
                  v99 = bswap64(*v13);
                  if (v98 == v99 && (v98 = bswap64(v72[1]), v99 = bswap64(v13[1]), v98 == v99) && (v98 = bswap64(v72[2]), v99 = bswap64(v13[2]), v98 == v99) && (v98 = bswap64(v72[3]), v99 = bswap64(v13[3]), v98 == v99))
                  {
                    v100 = 0;
                    if (v97 < 0)
                    {
                      goto LABEL_190;
                    }
                  }

                  else
                  {
                    if (v98 < v99)
                    {
                      v100 = -1;
                    }

                    else
                    {
                      v100 = 1;
                    }

                    if (v97 < 0)
                    {
LABEL_190:
                      if (v100 < 0)
                      {
                        v317 = *v48;
                        v349 = *(v48 + 1);
                        v111 = *(v72 + 1);
                        *v48 = *v72;
                        *(v48 + 1) = v111;
                      }

                      else
                      {
                        v315 = *v48;
                        v347 = *(v48 + 1);
                        v101 = *(v13 + 1);
                        *v48 = *v13;
                        *(v48 + 1) = v101;
                        *v13 = v315;
                        *(v13 + 1) = v347;
                        v102 = bswap64(*v72);
                        v103 = bswap64(*v13);
                        if (v102 == v103 && (v102 = bswap64(v72[1]), v103 = bswap64(v13[1]), v102 == v103) && (v102 = bswap64(v72[2]), v103 = bswap64(v13[2]), v102 == v103) && (v102 = bswap64(v72[3]), v103 = bswap64(v13[3]), v102 == v103))
                        {
                          v104 = 0;
                        }

                        else if (v102 < v103)
                        {
                          v104 = -1;
                        }

                        else
                        {
                          v104 = 1;
                        }

                        if ((v104 & 0x80000000) == 0)
                        {
                          goto LABEL_218;
                        }

                        v317 = *v13;
                        v349 = *(v13 + 1);
                        v109 = *(v72 + 1);
                        *v13 = *v72;
                        *(v13 + 1) = v109;
                      }

                      *v72 = v317;
                      *(v72 + 1) = v349;
LABEL_218:
                      v319 = *v10;
                      v351 = *(v10 + 1);
                      v112 = *(v13 + 1);
                      *v10 = *v13;
                      *(v10 + 1) = v112;
                      *v13 = v319;
                      *(v13 + 1) = v351;
                      goto LABEL_219;
                    }
                  }

                  if (v100 < 0)
                  {
                    v316 = *v13;
                    v348 = *(v13 + 1);
                    v105 = *(v72 + 1);
                    *v13 = *v72;
                    *(v13 + 1) = v105;
                    *v72 = v316;
                    *(v72 + 1) = v348;
                    v106 = bswap64(*v13);
                    v107 = bswap64(*v48);
                    if (v106 != v107)
                    {
                      goto LABEL_211;
                    }

                    v106 = bswap64(v13[1]);
                    v107 = bswap64(v48[1]);
                    if (v106 == v107 && (v106 = bswap64(v13[2]), v107 = bswap64(v48[2]), v106 == v107) && (v106 = bswap64(v13[3]), v107 = bswap64(v48[3]), v106 == v107))
                    {
                      v108 = 0;
                    }

                    else
                    {
LABEL_211:
                      v108 = v106 < v107 ? -1 : 1;
                    }

                    if (v108 < 0)
                    {
                      v318 = *v48;
                      v350 = *(v48 + 1);
                      v110 = *(v13 + 1);
                      *v48 = *v13;
                      *(v48 + 1) = v110;
                      *v13 = v318;
                      *(v13 + 1) = v350;
                    }
                  }

                  goto LABEL_218;
                }
              }

              else
              {
                if (v77 < v78)
                {
                  v79 = -1;
                }

                else
                {
                  v79 = 1;
                }

                if (v76 < 0)
                {
                  goto LABEL_149;
                }
              }

              if (v79 < 0)
              {
                v313 = *v72;
                v344 = *(v72 + 1);
                v85 = *(a2 - 80);
                *v72 = *v9;
                *(v72 + 1) = v85;
                *v9 = v313;
                *(a2 - 80) = v344;
                v86 = bswap64(*v72);
                v87 = bswap64(*v71);
                if (v86 != v87)
                {
                  goto LABEL_170;
                }

                v86 = bswap64(v72[1]);
                v87 = bswap64(v10[9]);
                if (v86 == v87 && (v86 = bswap64(v72[2]), v87 = bswap64(v10[10]), v86 == v87) && (v86 = bswap64(v72[3]), v87 = bswap64(v10[11]), v86 == v87))
                {
                  v88 = 0;
                }

                else
                {
LABEL_170:
                  v88 = v86 < v87 ? -1 : 1;
                }

                if (v88 < 0)
                {
                  v92 = *v71;
                  v346 = *(v10 + 5);
                  v93 = *(v72 + 1);
                  *v71 = *v72;
                  *(v10 + 5) = v93;
                  *v72 = v92;
                  *(v72 + 1) = v346;
                }
              }

              goto LABEL_177;
            }
          }

          else
          {
            if (v52 < v53)
            {
              v54 = -1;
            }

            else
            {
              v54 = 1;
            }

            if (v51 < 0)
            {
              goto LABEL_106;
            }
          }

          if (v54 < 0)
          {
            v311 = *v48;
            v340 = *(v12 - 1);
            v60 = *(a2 - 48);
            *v48 = *v8;
            *(v12 - 1) = v60;
            *v8 = v311;
            *(a2 - 48) = v340;
            v61 = bswap64(*v48);
            v62 = bswap64(*v47);
            if (v61 != v62)
            {
              goto LABEL_127;
            }

            v61 = bswap64(*(v12 - 3));
            v62 = bswap64(v10[5]);
            if (v61 == v62 && (v61 = bswap64(*(v12 - 2)), v62 = bswap64(v10[6]), v61 == v62) && (v61 = bswap64(*(v12 - 1)), v62 = bswap64(v10[7]), v61 == v62))
            {
              v63 = 0;
            }

            else
            {
LABEL_127:
              v63 = v61 < v62 ? -1 : 1;
            }

            if (v63 < 0)
            {
              v67 = *v47;
              v342 = *(v10 + 3);
              v68 = *(v12 - 1);
              *v47 = *v48;
              *(v10 + 3) = v68;
              *v48 = v67;
              *(v12 - 1) = v342;
            }
          }

          goto LABEL_136;
        }
      }

      else
      {
        if (v20 < v21)
        {
          v22 = -1;
        }

        else
        {
          v22 = 1;
        }

        if (v16 < 0)
        {
          goto LABEL_31;
        }
      }

      if (v22 < 0)
      {
        v305 = *v12;
        v333 = *(v12 + 1);
        v34 = *(a2 - 16);
        *v12 = *v7;
        *(v12 + 1) = v34;
        *v7 = v305;
        *(a2 - 16) = v333;
        v35 = bswap64(*v12);
        v36 = bswap64(*v10);
        if (v35 != v36)
        {
          goto LABEL_81;
        }

        v35 = bswap64(v12[1]);
        v36 = bswap64(v10[1]);
        if (v35 == v36 && (v35 = bswap64(v12[2]), v36 = bswap64(v10[2]), v35 == v36) && (v35 = bswap64(v12[3]), v36 = bswap64(v10[3]), v35 == v36))
        {
          v37 = 0;
        }

        else
        {
LABEL_81:
          v37 = v35 < v36 ? -1 : 1;
        }

        if (v37 < 0)
        {
          v309 = *v10;
          v337 = *(v10 + 1);
          v44 = *(v12 + 1);
          *v10 = *v12;
          *(v10 + 1) = v44;
          *v12 = v309;
          *(v12 + 1) = v337;
        }
      }

      goto LABEL_93;
    }

    v17 = bswap64(*v10);
    v18 = bswap64(*v13);
    if (v17 == v18 && (v17 = bswap64(v10[1]), v18 = bswap64(v13[1]), v17 == v18) && (v17 = bswap64(v10[2]), v18 = bswap64(v13[2]), v17 == v18) && (v17 = bswap64(v10[3]), v18 = bswap64(v13[3]), v17 == v18))
    {
      v19 = 0;
    }

    else if (v17 < v18)
    {
      v19 = -1;
    }

    else
    {
      v19 = 1;
    }

    v27 = bswap64(*v7);
    v28 = bswap64(*v10);
    if (v27 == v28 && (v27 = bswap64(*(a2 - 24)), v28 = bswap64(v10[1]), v27 == v28) && (v27 = bswap64(*(a2 - 16)), v28 = bswap64(v10[2]), v27 == v28) && (v27 = bswap64(*(a2 - 8)), v28 = bswap64(v10[3]), v27 == v28))
    {
      v29 = 0;
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v27 < v28)
      {
        v29 = -1;
      }

      else
      {
        v29 = 1;
      }

      if ((v19 & 0x80000000) == 0)
      {
LABEL_65:
        if (v29 < 0)
        {
          v306 = *v10;
          v334 = *(v10 + 1);
          v38 = *(a2 - 16);
          *v10 = *v7;
          *(v10 + 1) = v38;
          *v7 = v306;
          *(a2 - 16) = v334;
          v39 = bswap64(*v10);
          v40 = bswap64(*v13);
          if (v39 != v40)
          {
            goto LABEL_86;
          }

          v39 = bswap64(v10[1]);
          v40 = bswap64(v13[1]);
          if (v39 == v40 && (v39 = bswap64(v10[2]), v40 = bswap64(v13[2]), v39 == v40) && (v39 = bswap64(v10[3]), v40 = bswap64(v13[3]), v39 == v40))
          {
            v41 = 0;
          }

          else
          {
LABEL_86:
            v41 = v39 < v40 ? -1 : 1;
          }

          if (v41 < 0)
          {
            v310 = *v13;
            v338 = *(v13 + 1);
            v45 = *(v10 + 1);
            *v13 = *v10;
            *(v13 + 1) = v45;
            *v10 = v310;
            *(v10 + 1) = v338;
          }
        }

        goto LABEL_219;
      }
    }

    if (v29 < 0)
    {
      v308 = *v13;
      v336 = *(v13 + 1);
      v69 = *(a2 - 16);
      *v13 = *v7;
      *(v13 + 1) = v69;
    }

    else
    {
      v304 = *v13;
      v332 = *(v13 + 1);
      v30 = *(v10 + 1);
      *v13 = *v10;
      *(v13 + 1) = v30;
      *v10 = v304;
      *(v10 + 1) = v332;
      v31 = bswap64(*v7);
      v32 = bswap64(*v10);
      if (v31 == v32 && (v31 = bswap64(*(a2 - 24)), v32 = bswap64(v10[1]), v31 == v32) && (v31 = bswap64(*(a2 - 16)), v32 = bswap64(v10[2]), v31 == v32) && (v31 = bswap64(*(a2 - 8)), v32 = bswap64(v10[3]), v31 == v32))
      {
        v33 = 0;
      }

      else if (v31 < v32)
      {
        v33 = -1;
      }

      else
      {
        v33 = 1;
      }

      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_219;
      }

      v308 = *v10;
      v336 = *(v10 + 1);
      v43 = *(a2 - 16);
      *v10 = *v7;
      *(v10 + 1) = v43;
    }

    *v7 = v308;
    *(a2 - 16) = v336;
LABEL_219:
    --a3;
    if (a4)
    {
      goto LABEL_229;
    }

    v113 = bswap64(*(v10 - 4));
    v114 = bswap64(*v10);
    if (v113 != v114)
    {
      goto LABEL_225;
    }

    v113 = bswap64(*(v10 - 3));
    v114 = bswap64(v10[1]);
    if (v113 == v114 && (v113 = bswap64(*(v10 - 2)), v114 = bswap64(v10[2]), v113 == v114) && (v113 = bswap64(*(v10 - 1)), v114 = bswap64(v10[3]), v113 == v114))
    {
      v115 = 0;
    }

    else
    {
LABEL_225:
      v115 = v113 < v114 ? -1 : 1;
    }

    if (v115 < 0)
    {
LABEL_229:
      v116 = 0;
      v297 = *v10;
      v300 = *(v10 + 1);
      do
      {
        v117 = &v10[v116];
        v118 = bswap64(v10[v116 + 4]);
        v119 = bswap64(v297);
        if (v118 == v119 && (v118 = bswap64(v117[5]), v119 = bswap64(*(&v297 + 1)), v118 == v119) && (v118 = bswap64(v117[6]), v119 = bswap64(v300), v118 == v119) && (v118 = bswap64(v117[7]), v119 = bswap64(*(&v300 + 1)), v118 == v119))
        {
          v120 = 0;
        }

        else if (v118 < v119)
        {
          v120 = -1;
        }

        else
        {
          v120 = 1;
        }

        v116 += 4;
      }

      while (v120 < 0);
      v121 = &v10[v116];
      v122 = a2;
      if (v116 == 4)
      {
        v122 = a2;
        do
        {
          if (v121 >= v122)
          {
            break;
          }

          v127 = *(v122 - 4);
          v122 -= 4;
          v128 = bswap64(v127);
          v129 = bswap64(v297);
          if (v128 != v129)
          {
            goto LABEL_256;
          }

          v128 = bswap64(v122[1]);
          v129 = bswap64(*(&v297 + 1));
          if (v128 == v129 && (v128 = bswap64(v122[2]), v129 = bswap64(v300), v128 == v129) && (v128 = bswap64(v122[3]), v129 = bswap64(*(&v300 + 1)), v128 == v129))
          {
            v130 = 0;
          }

          else
          {
LABEL_256:
            v130 = v128 < v129 ? -1 : 1;
          }
        }

        while ((v130 & 0x80000000) == 0);
      }

      else
      {
        do
        {
          do
          {
            v123 = *(v122 - 4);
            v122 -= 4;
            v124 = bswap64(v123);
            v125 = bswap64(v297);
            if (v124 != v125)
            {
              break;
            }

            v124 = bswap64(v122[1]);
            v125 = bswap64(*(&v297 + 1));
            if (v124 != v125)
            {
              break;
            }

            v124 = bswap64(v122[2]);
            v125 = bswap64(v300);
            if (v124 != v125)
            {
              break;
            }

            v124 = bswap64(v122[3]);
            v125 = bswap64(*(&v300 + 1));
          }

          while (v124 == v125);
          if (v124 < v125)
          {
            v126 = -1;
          }

          else
          {
            v126 = 1;
          }
        }

        while ((v126 & 0x80000000) == 0);
      }

      if (v121 >= v122)
      {
        v142 = v121 - 4;
      }

      else
      {
        v131 = v121;
        v132 = v122;
        do
        {
          v320 = *v131;
          v352 = *(v131 + 1);
          v133 = *(v132 + 1);
          *v131 = *v132;
          *(v131 + 1) = v133;
          *v132 = v320;
          *(v132 + 1) = v352;
          do
          {
            v134 = v131[4];
            v131 += 4;
            v135 = bswap64(v134);
            v136 = bswap64(v297);
            if (v135 == v136)
            {
              v135 = bswap64(v131[1]);
              v136 = bswap64(*(&v297 + 1));
              if (v135 == v136)
              {
                v135 = bswap64(v131[2]);
                v136 = bswap64(v300);
                if (v135 == v136)
                {
                  v135 = bswap64(v131[3]);
                  v136 = bswap64(*(&v300 + 1));
                  if (v135 == v136)
                  {
                    break;
                  }
                }
              }
            }

            v137 = v135 < v136 ? -1 : 1;
          }

          while (v137 < 0);
          do
          {
            do
            {
              v138 = *(v132 - 4);
              v132 -= 4;
              v139 = bswap64(v138);
              v140 = bswap64(v297);
              if (v139 != v140)
              {
                break;
              }

              v139 = bswap64(v132[1]);
              v140 = bswap64(*(&v297 + 1));
              if (v139 != v140)
              {
                break;
              }

              v139 = bswap64(v132[2]);
              v140 = bswap64(v300);
              if (v139 != v140)
              {
                break;
              }

              v139 = bswap64(v132[3]);
              v140 = bswap64(*(&v300 + 1));
            }

            while (v139 == v140);
            if (v139 < v140)
            {
              v141 = -1;
            }

            else
            {
              v141 = 1;
            }
          }

          while ((v141 & 0x80000000) == 0);
        }

        while (v131 < v132);
        v142 = v131 - 4;
      }

      if (v142 != v10)
      {
        v143 = *(v142 + 1);
        *v10 = *v142;
        *(v10 + 1) = v143;
      }

      *v142 = v297;
      *(v142 + 1) = v300;
      if (v121 < v122)
      {
        goto LABEL_287;
      }

      v144 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*>(v10, v142);
      v10 = v142 + 4;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*>(v142 + 4, a2);
      if (result)
      {
        a2 = v142;
        if (!v144)
        {
          goto LABEL_2;
        }

        goto LABEL_588;
      }

      if (!v144)
      {
LABEL_287:
        result = std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v6, v142, a3, a4 & 1);
        a4 = 0;
        v10 = v142 + 4;
      }
    }

    else
    {
      v298 = *v10;
      v301 = *(v10 + 1);
      v145 = bswap64(*v10);
      v146 = bswap64(*v7);
      if (v145 == v146 && (v145 = bswap64(*(&v298 + 1)), v146 = bswap64(*(a2 - 24)), v145 == v146) && (v145 = bswap64(v301), v146 = bswap64(*(a2 - 16)), v145 == v146) && (v145 = bswap64(*(&v301 + 1)), v146 = bswap64(*(a2 - 8)), v145 == v146))
      {
        v147 = 0;
      }

      else if (v145 < v146)
      {
        v147 = -1;
      }

      else
      {
        v147 = 1;
      }

      if (v147 < 0)
      {
        do
        {
          v152 = v10[4];
          v10 += 4;
          v153 = bswap64(v298);
          v154 = bswap64(v152);
          if (v153 == v154 && (v153 = bswap64(*(&v298 + 1)), v154 = bswap64(v10[1]), v153 == v154) && (v153 = bswap64(v301), v154 = bswap64(v10[2]), v153 == v154) && (v153 = bswap64(*(&v301 + 1)), v154 = bswap64(v10[3]), v153 == v154))
          {
            v155 = 0;
          }

          else if (v153 < v154)
          {
            v155 = -1;
          }

          else
          {
            v155 = 1;
          }
        }

        while ((v155 & 0x80000000) == 0);
      }

      else
      {
        v148 = v10 + 4;
        do
        {
          v10 = v148;
          if (v148 >= a2)
          {
            break;
          }

          v149 = bswap64(v298);
          v150 = bswap64(*v10);
          if (v149 != v150)
          {
            goto LABEL_304;
          }

          v149 = bswap64(*(&v298 + 1));
          v150 = bswap64(v10[1]);
          if (v149 == v150 && (v149 = bswap64(v301), v150 = bswap64(v10[2]), v149 == v150) && (v149 = bswap64(*(&v301 + 1)), v150 = bswap64(v10[3]), v149 == v150))
          {
            v151 = 0;
          }

          else
          {
LABEL_304:
            v151 = v149 < v150 ? -1 : 1;
          }

          v148 = v10 + 4;
        }

        while ((v151 & 0x80000000) == 0);
      }

      v156 = a2;
      if (v10 < a2)
      {
        v156 = a2;
        do
        {
          v157 = *(v156 - 32);
          v156 -= 32;
          v158 = bswap64(v298);
          v159 = bswap64(v157);
          if (v158 == v159)
          {
            v158 = bswap64(*(&v298 + 1));
            v159 = bswap64(*(v156 + 8));
            if (v158 == v159)
            {
              v158 = bswap64(v301);
              v159 = bswap64(*(v156 + 16));
              if (v158 == v159)
              {
                v158 = bswap64(*(&v301 + 1));
                v159 = bswap64(*(v156 + 24));
                if (v158 == v159)
                {
                  break;
                }
              }
            }
          }

          v160 = v158 < v159 ? -1 : 1;
        }

        while (v160 < 0);
      }

      while (v10 < v156)
      {
        v321 = *v10;
        v353 = *(v10 + 1);
        v161 = *(v156 + 16);
        *v10 = *v156;
        *(v10 + 1) = v161;
        *v156 = v321;
        *(v156 + 16) = v353;
        do
        {
          do
          {
            v162 = v10[4];
            v10 += 4;
            v163 = bswap64(v298);
            v164 = bswap64(v162);
            if (v163 != v164)
            {
              break;
            }

            v163 = bswap64(*(&v298 + 1));
            v164 = bswap64(v10[1]);
            if (v163 != v164)
            {
              break;
            }

            v163 = bswap64(v301);
            v164 = bswap64(v10[2]);
            if (v163 != v164)
            {
              break;
            }

            v163 = bswap64(*(&v301 + 1));
            v164 = bswap64(v10[3]);
          }

          while (v163 == v164);
          if (v163 < v164)
          {
            v165 = -1;
          }

          else
          {
            v165 = 1;
          }
        }

        while ((v165 & 0x80000000) == 0);
        do
        {
          v166 = *(v156 - 32);
          v156 -= 32;
          v167 = bswap64(v298);
          v168 = bswap64(v166);
          if (v167 == v168 && (v167 = bswap64(*(&v298 + 1)), v168 = bswap64(*(v156 + 8)), v167 == v168) && (v167 = bswap64(v301), v168 = bswap64(*(v156 + 16)), v167 == v168) && (v167 = bswap64(*(&v301 + 1)), v168 = bswap64(*(v156 + 24)), v167 == v168))
          {
            v169 = 0;
          }

          else if (v167 < v168)
          {
            v169 = -1;
          }

          else
          {
            v169 = 1;
          }
        }

        while (v169 < 0);
      }

      v170 = v10 - 4;
      if (v10 - 4 != v6)
      {
        v171 = *(v10 - 1);
        *v6 = *v170;
        *(v6 + 1) = v171;
      }

      a4 = 0;
      *v170 = v298;
      *(v10 - 1) = v301;
    }
  }

  if (v11 == 3)
  {
    v182 = v10 + 4;
    v183 = bswap64(v10[4]);
    v184 = bswap64(*v10);
    if (v183 == v184 && (v183 = bswap64(v10[5]), v184 = bswap64(v10[1]), v183 == v184) && (v183 = bswap64(v10[6]), v184 = bswap64(v10[2]), v183 == v184) && (v183 = bswap64(v10[7]), v184 = bswap64(v10[3]), v183 == v184))
    {
      v185 = 0;
    }

    else if (v183 < v184)
    {
      v185 = -1;
    }

    else
    {
      v185 = 1;
    }

    v255 = bswap64(*v7);
    v256 = bswap64(*v182);
    if (v255 == v256 && (v255 = bswap64(*(a2 - 24)), v256 = bswap64(v10[5]), v255 == v256) && (v255 = bswap64(*(a2 - 16)), v256 = bswap64(v10[6]), v255 == v256) && (v255 = bswap64(*(a2 - 8)), v256 = bswap64(v10[7]), v255 == v256))
    {
      v257 = 0;
    }

    else if (v255 < v256)
    {
      v257 = -1;
    }

    else
    {
      v257 = 1;
    }

    if ((v185 & 0x80000000) == 0)
    {
      if (v257 < 0)
      {
        v258 = *v182;
        v359 = *(v10 + 3);
        v259 = *(a2 - 16);
        *v182 = *v7;
        *(v10 + 3) = v259;
        *v7 = v258;
        *(a2 - 16) = v359;
        v260 = bswap64(v10[4]);
        v261 = bswap64(*v10);
        if (v260 != v261)
        {
          goto LABEL_562;
        }

        v260 = bswap64(v10[5]);
        v261 = bswap64(v10[1]);
        if (v260 == v261 && (v260 = bswap64(v10[6]), v261 = bswap64(v10[2]), v260 == v261) && (v260 = bswap64(v10[7]), v261 = bswap64(v10[3]), v260 == v261))
        {
          v262 = 0;
        }

        else
        {
LABEL_562:
          v262 = v260 < v261 ? -1 : 1;
        }

        if (v262 < 0)
        {
          v328 = *v10;
          v362 = *(v10 + 1);
          v283 = *(v10 + 3);
          *v10 = *v182;
          *(v10 + 1) = v283;
          *v182 = v328;
          *(v10 + 3) = v362;
        }
      }

      goto LABEL_588;
    }

    if (v257 < 0)
    {
      v329 = *v10;
      v363 = *(v10 + 1);
      v287 = *(a2 - 16);
      *v10 = *v7;
      *(v10 + 1) = v287;
      v284 = v329;
      v285 = v363;
    }

    else
    {
      v327 = *v10;
      v361 = *(v10 + 1);
      v273 = *(v10 + 3);
      *v10 = *v182;
      *(v10 + 1) = v273;
      *v182 = v327;
      *(v10 + 3) = v361;
      v274 = bswap64(*v7);
      v275 = bswap64(v10[4]);
      if (v274 == v275 && (v274 = bswap64(*(a2 - 24)), v275 = bswap64(v10[5]), v274 == v275) && (v274 = bswap64(*(a2 - 16)), v275 = bswap64(v10[6]), v274 == v275) && (v274 = bswap64(*(a2 - 8)), v275 = bswap64(v10[7]), v274 == v275))
      {
        v276 = 0;
      }

      else if (v274 < v275)
      {
        v276 = -1;
      }

      else
      {
        v276 = 1;
      }

      if ((v276 & 0x80000000) == 0)
      {
        goto LABEL_588;
      }

      v284 = *v182;
      v285 = *(v10 + 3);
      v286 = *(a2 - 16);
      *v182 = *v7;
      *(v10 + 3) = v286;
    }

    *v7 = v284;
    *(a2 - 16) = v285;
LABEL_588:
    v295 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(v10, v10 + 4, v10 + 8, v10 + 12);
      v173 = *(a2 - 32);
      v172 = a2 - 32;
      v174 = bswap64(v173);
      v175 = bswap64(v10[12]);
      if (v174 == v175 && (v174 = bswap64(*(v172 + 8)), v175 = bswap64(v10[13]), v174 == v175) && (v174 = bswap64(*(v172 + 16)), v175 = bswap64(v10[14]), v174 == v175) && (v174 = bswap64(*(v172 + 24)), v175 = bswap64(v10[15]), v174 == v175))
      {
        v176 = 0;
      }

      else if (v174 < v175)
      {
        v176 = -1;
      }

      else
      {
        v176 = 1;
      }

      if (v176 < 0)
      {
        v249 = *(v10 + 6);
        v357 = *(v10 + 7);
        v250 = *(v172 + 16);
        *(v10 + 6) = *v172;
        *(v10 + 7) = v250;
        *v172 = v249;
        *(v172 + 16) = v357;
        v251 = bswap64(v10[12]);
        v252 = bswap64(v10[8]);
        if (v251 != v252)
        {
          goto LABEL_553;
        }

        v251 = bswap64(v10[13]);
        v252 = bswap64(v10[9]);
        if (v251 == v252 && (v251 = bswap64(v10[14]), v252 = bswap64(v10[10]), v251 == v252) && (v251 = bswap64(v10[15]), v252 = bswap64(v10[11]), v251 == v252))
        {
          v253 = 0;
        }

        else
        {
LABEL_553:
          v253 = v251 < v252 ? -1 : 1;
        }

        if (v253 < 0)
        {
          v278 = *(v10 + 4);
          v277 = *(v10 + 5);
          v279 = *(v10 + 7);
          *(v10 + 4) = *(v10 + 6);
          *(v10 + 5) = v279;
          *(v10 + 6) = v278;
          *(v10 + 7) = v277;
          v280 = bswap64(v10[8]);
          v281 = bswap64(v10[4]);
          if (v280 != v281)
          {
            goto LABEL_574;
          }

          v280 = bswap64(v10[9]);
          v281 = bswap64(v10[5]);
          if (v280 == v281 && (v280 = bswap64(v10[10]), v281 = bswap64(v10[6]), v280 == v281) && (v280 = bswap64(v10[11]), v281 = bswap64(v10[7]), v280 == v281))
          {
            v282 = 0;
          }

          else
          {
LABEL_574:
            v282 = v280 < v281 ? -1 : 1;
          }

          if (v282 < 0)
          {
            v289 = *(v10 + 2);
            v288 = *(v10 + 3);
            v290 = *(v10 + 5);
            *(v10 + 2) = *(v10 + 4);
            *(v10 + 3) = v290;
            *(v10 + 4) = v289;
            *(v10 + 5) = v288;
            v291 = bswap64(v10[4]);
            v292 = bswap64(*v10);
            if (v291 != v292)
            {
              goto LABEL_583;
            }

            v291 = bswap64(v10[5]);
            v292 = bswap64(v10[1]);
            if (v291 == v292 && (v291 = bswap64(v10[6]), v292 = bswap64(v10[2]), v291 == v292) && (v291 = bswap64(v10[7]), v292 = bswap64(v10[3]), v291 == v292))
            {
              v293 = 0;
            }

            else
            {
LABEL_583:
              v293 = v291 < v292 ? -1 : 1;
            }

            if (v293 < 0)
            {
              v330 = *v10;
              v364 = *(v10 + 1);
              v294 = *(v10 + 3);
              *v10 = *(v10 + 2);
              *(v10 + 1) = v294;
              *(v10 + 2) = v330;
              *(v10 + 3) = v364;
            }
          }
        }
      }

      goto LABEL_588;
    }

    goto LABEL_10;
  }

  v186 = *MEMORY[0x1E69E9840];

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(v10, v10 + 4, v10 + 8, (a2 - 32));
}

unint64_t *std::__introsort<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **,false>(unint64_t *result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
  v228 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2 - 4;
  v178 = a2 - 8;
  v9 = a2 - 12;
  v10 = v7;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v7 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 5;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v121 = v10 + 4;
          v122 = bswap64(v10[4]);
          v123 = bswap64(*v10);
          if (v122 == v123 && (v122 = bswap64(v10[5]), v123 = bswap64(v10[1]), v122 == v123) && (v122 = bswap64(v10[6]), v123 = bswap64(v10[2]), v122 == v123) && (v122 = bswap64(v10[7]), v123 = bswap64(v10[3]), v122 == v123))
          {
            v124 = 0;
          }

          else if (v122 < v123)
          {
            v124 = -1;
          }

          else
          {
            v124 = 1;
          }

          v138 = bswap64(*v8);
          v139 = bswap64(*v121);
          if (v138 == v139 && (v138 = bswap64(*(a2 - 3)), v139 = bswap64(v10[5]), v138 == v139) && (v138 = bswap64(*(a2 - 2)), v139 = bswap64(v10[6]), v138 == v139) && (v138 = bswap64(*(a2 - 1)), v139 = bswap64(v10[7]), v138 == v139))
          {
            v140 = 0;
          }

          else if (v138 < v139)
          {
            v140 = -1;
          }

          else
          {
            v140 = 1;
          }

          if (v124 < 0)
          {
            if (v140 < 0)
            {
              v200 = *v10;
              v226 = *(v10 + 1);
              v169 = *(a2 - 1);
              *v10 = *v8;
              *(v10 + 1) = v169;
              *v8 = v200;
              *(a2 - 1) = v226;
            }

            else
            {
              v198 = *v10;
              v224 = *(v10 + 1);
              v155 = *(v10 + 3);
              *v10 = *v121;
              *(v10 + 1) = v155;
              *v121 = v198;
              *(v10 + 3) = v224;
              v156 = bswap64(*v8);
              v157 = bswap64(v10[4]);
              if (v156 == v157 && (v156 = bswap64(*(a2 - 3)), v157 = bswap64(v10[5]), v156 == v157) && (v156 = bswap64(*(a2 - 2)), v157 = bswap64(v10[6]), v156 == v157) && (v156 = bswap64(*(a2 - 1)), v157 = bswap64(v10[7]), v156 == v157))
              {
                v158 = 0;
              }

              else if (v156 < v157)
              {
                v158 = -1;
              }

              else
              {
                v158 = 1;
              }

              if (v158 < 0)
              {
                v167 = *v121;
                v166 = *(v10 + 3);
                v168 = *(a2 - 1);
                *v121 = *v8;
                *(v10 + 3) = v168;
                *v8 = v167;
                *(a2 - 1) = v166;
              }
            }
          }

          else if (v140 < 0)
          {
            v142 = *v121;
            v141 = *(v10 + 3);
            v143 = *(a2 - 1);
            *v121 = *v8;
            *(v10 + 3) = v143;
            *v8 = v142;
            *(a2 - 1) = v141;
            v144 = bswap64(v10[4]);
            v145 = bswap64(*v10);
            if (v144 != v145)
            {
              goto LABEL_314;
            }

            v144 = bswap64(v10[5]);
            v145 = bswap64(v10[1]);
            if (v144 == v145 && (v144 = bswap64(v10[6]), v145 = bswap64(v10[2]), v144 == v145) && (v144 = bswap64(v10[7]), v145 = bswap64(v10[3]), v144 == v145))
            {
              v146 = 0;
            }

            else
            {
LABEL_314:
              v146 = v144 < v145 ? -1 : 1;
            }

            if (v146 < 0)
            {
              v199 = *v10;
              v225 = *(v10 + 1);
              v165 = *(v10 + 3);
              *v10 = *v121;
              *(v10 + 1) = v165;
              *v121 = v199;
              *(v10 + 3) = v225;
            }
          }

          goto LABEL_339;
        case 4:
          v135 = *MEMORY[0x1E69E9840];

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(v10, v10 + 4, v10 + 8, a2 - 4);
        case 5:
          result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(v10, v10 + 4, v10 + 8, v10 + 12);
          v126 = *(a2 - 4);
          v125 = a2 - 4;
          v127 = bswap64(v126);
          v128 = bswap64(v10[12]);
          if (v127 == v128 && (v127 = bswap64(v125[1]), v128 = bswap64(v10[13]), v127 == v128) && (v127 = bswap64(v125[2]), v128 = bswap64(v10[14]), v127 == v128) && (v127 = bswap64(v125[3]), v128 = bswap64(v10[15]), v127 == v128))
          {
            v129 = 0;
          }

          else if (v127 < v128)
          {
            v129 = -1;
          }

          else
          {
            v129 = 1;
          }

          if (v129 < 0)
          {
            v148 = *(v10 + 6);
            v147 = *(v10 + 7);
            v149 = *(v125 + 1);
            *(v10 + 6) = *v125;
            *(v10 + 7) = v149;
            *v125 = v148;
            *(v125 + 1) = v147;
            v150 = bswap64(v10[12]);
            v151 = bswap64(v10[8]);
            if (v150 != v151)
            {
              goto LABEL_305;
            }

            v150 = bswap64(v10[13]);
            v151 = bswap64(v10[9]);
            if (v150 == v151 && (v150 = bswap64(v10[14]), v151 = bswap64(v10[10]), v150 == v151) && (v150 = bswap64(v10[15]), v151 = bswap64(v10[11]), v150 == v151))
            {
              v152 = 0;
            }

            else
            {
LABEL_305:
              v152 = v150 < v151 ? -1 : 1;
            }

            if (v152 < 0)
            {
              v160 = *(v10 + 4);
              v159 = *(v10 + 5);
              v161 = *(v10 + 7);
              *(v10 + 4) = *(v10 + 6);
              *(v10 + 5) = v161;
              *(v10 + 6) = v160;
              *(v10 + 7) = v159;
              v162 = bswap64(v10[8]);
              v163 = bswap64(v10[4]);
              if (v162 != v163)
              {
                goto LABEL_325;
              }

              v162 = bswap64(v10[9]);
              v163 = bswap64(v10[5]);
              if (v162 == v163 && (v162 = bswap64(v10[10]), v163 = bswap64(v10[6]), v162 == v163) && (v162 = bswap64(v10[11]), v163 = bswap64(v10[7]), v162 == v163))
              {
                v164 = 0;
              }

              else
              {
LABEL_325:
                v164 = v162 < v163 ? -1 : 1;
              }

              if (v164 < 0)
              {
                v171 = *(v10 + 2);
                v170 = *(v10 + 3);
                v172 = *(v10 + 5);
                *(v10 + 2) = *(v10 + 4);
                *(v10 + 3) = v172;
                *(v10 + 4) = v171;
                *(v10 + 5) = v170;
                v173 = bswap64(v10[4]);
                v174 = bswap64(*v10);
                if (v173 != v174)
                {
                  goto LABEL_334;
                }

                v173 = bswap64(v10[5]);
                v174 = bswap64(v10[1]);
                if (v173 == v174 && (v173 = bswap64(v10[6]), v174 = bswap64(v10[2]), v173 == v174) && (v173 = bswap64(v10[7]), v174 = bswap64(v10[3]), v173 == v174))
                {
                  v175 = 0;
                }

                else
                {
LABEL_334:
                  v175 = v173 < v174 ? -1 : 1;
                }

                if (v175 < 0)
                {
                  v201 = *v10;
                  v227 = *(v10 + 1);
                  v176 = *(v10 + 3);
                  *v10 = *(v10 + 2);
                  *(v10 + 1) = v176;
                  *(v10 + 2) = v201;
                  *(v10 + 3) = v227;
                }
              }
            }
          }

LABEL_339:
          v177 = *MEMORY[0x1E69E9840];
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        goto LABEL_339;
      }

      if (v13 == 2)
      {
        v131 = *(a2 - 4);
        v130 = a2 - 4;
        v132 = bswap64(v131);
        v133 = bswap64(*v10);
        if (v132 == v133 && (v132 = bswap64(v130[1]), v133 = bswap64(v10[1]), v132 == v133) && (v132 = bswap64(v130[2]), v133 = bswap64(v10[2]), v132 == v133) && (v132 = bswap64(v130[3]), v133 = bswap64(v10[3]), v132 == v133))
        {
          v134 = 0;
        }

        else if (v132 < v133)
        {
          v134 = -1;
        }

        else
        {
          v134 = 1;
        }

        if (v134 < 0)
        {
          v197 = *v10;
          v223 = *(v10 + 1);
          v153 = *(v130 + 1);
          *v10 = *v130;
          *(v10 + 1) = v153;
          *v130 = v197;
          *(v130 + 1) = v223;
        }

        goto LABEL_339;
      }
    }

    if (v13 <= 23)
    {
      if (a5)
      {
        v136 = *MEMORY[0x1E69E9840];

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(v10, a2);
      }

      else
      {
        v154 = *MEMORY[0x1E69E9840];

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      break;
    }

    v14 = &v10[4 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = bswap64(*v14);
      v17 = bswap64(*v10);
      if (v16 == v17 && (v16 = bswap64(v14[1]), v17 = bswap64(v10[1]), v16 == v17) && (v16 = bswap64(v14[2]), v17 = bswap64(v10[2]), v16 == v17) && (v16 = bswap64(v14[3]), v17 = bswap64(v10[3]), v16 == v17))
      {
        v18 = 0;
      }

      else if (v16 < v17)
      {
        v18 = -1;
      }

      else
      {
        v18 = 1;
      }

      v22 = bswap64(*v8);
      v23 = bswap64(*v14);
      if (v22 != v23 || (v22 = bswap64(*(a2 - 3)), v23 = bswap64(v14[1]), v22 != v23) || (v22 = bswap64(*(a2 - 2)), v23 = bswap64(v14[2]), v22 != v23) || (v22 = bswap64(*(a2 - 1)), v23 = bswap64(v14[3]), v22 != v23))
      {
        if (v22 < v23)
        {
          v24 = -1;
        }

        else
        {
          v24 = 1;
        }

        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

LABEL_32:
        if (v24 < 0)
        {
          v184 = *v10;
          v206 = *(v10 + 1);
          v48 = *(a2 - 1);
          *v10 = *v8;
          *(v10 + 1) = v48;
        }

        else
        {
          v180 = *v10;
          v202 = *(v10 + 1);
          v25 = *(v14 + 1);
          *v10 = *v14;
          *(v10 + 1) = v25;
          *v14 = v180;
          *(v14 + 1) = v202;
          v26 = bswap64(*v8);
          v27 = bswap64(*v14);
          if (v26 == v27 && (v26 = bswap64(*(a2 - 3)), v27 = bswap64(v14[1]), v26 == v27) && (v26 = bswap64(*(a2 - 2)), v27 = bswap64(v14[2]), v26 == v27) && (v26 = bswap64(*(a2 - 1)), v27 = bswap64(v14[3]), v26 == v27))
          {
            v28 = 0;
          }

          else if (v26 < v27)
          {
            v28 = -1;
          }

          else
          {
            v28 = 1;
          }

          if ((v28 & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          v184 = *v14;
          v206 = *(v14 + 1);
          v44 = *(a2 - 1);
          *v14 = *v8;
          *(v14 + 1) = v44;
        }

        *v8 = v184;
        *(a2 - 1) = v206;
        goto LABEL_94;
      }

      v24 = 0;
      if (v18 < 0)
      {
        goto LABEL_32;
      }

LABEL_56:
      if (v24 < 0)
      {
        v182 = *v14;
        v204 = *(v14 + 1);
        v36 = *(a2 - 1);
        *v14 = *v8;
        *(v14 + 1) = v36;
        *v8 = v182;
        *(a2 - 1) = v204;
        v37 = bswap64(*v14);
        v38 = bswap64(*v10);
        if (v37 != v38)
        {
          goto LABEL_82;
        }

        v37 = bswap64(v14[1]);
        v38 = bswap64(v10[1]);
        if (v37 == v38 && (v37 = bswap64(v14[2]), v38 = bswap64(v10[2]), v37 == v38) && (v37 = bswap64(v14[3]), v38 = bswap64(v10[3]), v37 == v38))
        {
          v39 = 0;
        }

        else
        {
LABEL_82:
          v39 = v37 < v38 ? -1 : 1;
        }

        if (v39 < 0)
        {
          v186 = *v10;
          v208 = *(v10 + 1);
          v46 = *(v14 + 1);
          *v10 = *v14;
          *(v10 + 1) = v46;
          *v14 = v186;
          *(v14 + 1) = v208;
        }
      }

LABEL_94:
      v49 = v10 + 4;
      v50 = v14 - 4;
      v51 = bswap64(*(v14 - 4));
      v52 = bswap64(v10[4]);
      if (v51 == v52 && (v51 = bswap64(*(v14 - 3)), v52 = bswap64(v10[5]), v51 == v52) && (v51 = bswap64(*(v14 - 2)), v52 = bswap64(v10[6]), v51 == v52) && (v51 = bswap64(*(v14 - 1)), v52 = bswap64(v10[7]), v51 == v52))
      {
        v53 = 0;
      }

      else if (v51 < v52)
      {
        v53 = -1;
      }

      else
      {
        v53 = 1;
      }

      v54 = bswap64(*v178);
      v55 = bswap64(*v50);
      if (v54 != v55 || (v54 = bswap64(*(a2 - 7)), v55 = bswap64(*(v14 - 3)), v54 != v55) || (v54 = bswap64(*(a2 - 6)), v55 = bswap64(*(v14 - 2)), v54 != v55) || (v54 = bswap64(*(a2 - 5)), v55 = bswap64(*(v14 - 1)), v54 != v55))
      {
        if (v54 < v55)
        {
          v56 = -1;
        }

        else
        {
          v56 = 1;
        }

        if ((v53 & 0x80000000) == 0)
        {
          goto LABEL_117;
        }

LABEL_107:
        if (v56 < 0)
        {
          v71 = *v49;
          v67 = *(v10 + 3);
          v72 = *(a2 - 3);
          *v49 = *v178;
          *(v10 + 3) = v72;
          *v178 = v71;
        }

        else
        {
          v57 = *v49;
          v210 = *(v10 + 3);
          v58 = *(v14 - 1);
          *v49 = *v50;
          *(v10 + 3) = v58;
          *v50 = v57;
          *(v14 - 1) = v210;
          v59 = bswap64(*v178);
          v60 = bswap64(*v50);
          if (v59 == v60 && (v59 = bswap64(*(a2 - 7)), v60 = bswap64(*(v14 - 3)), v59 == v60) && (v59 = bswap64(*(a2 - 6)), v60 = bswap64(*(v14 - 2)), v59 == v60) && (v59 = bswap64(*(a2 - 5)), v60 = bswap64(*(v14 - 1)), v59 == v60))
          {
            v61 = 0;
          }

          else if (v59 < v60)
          {
            v61 = -1;
          }

          else
          {
            v61 = 1;
          }

          if ((v61 & 0x80000000) == 0)
          {
            goto LABEL_137;
          }

          v189 = *v50;
          v212 = *(v14 - 1);
          v66 = *(a2 - 3);
          *v50 = *v178;
          *(v14 - 1) = v66;
          *v178 = v189;
          v67 = v212;
        }

        *(a2 - 3) = v67;
        goto LABEL_137;
      }

      v56 = 0;
      if (v53 < 0)
      {
        goto LABEL_107;
      }

LABEL_117:
      if (v56 < 0)
      {
        v188 = *v50;
        v211 = *(v14 - 1);
        v62 = *(a2 - 3);
        *v50 = *v178;
        *(v14 - 1) = v62;
        *v178 = v188;
        *(a2 - 3) = v211;
        v63 = bswap64(*v50);
        v64 = bswap64(*v49);
        if (v63 != v64)
        {
          goto LABEL_128;
        }

        v63 = bswap64(*(v14 - 3));
        v64 = bswap64(v10[5]);
        if (v63 == v64 && (v63 = bswap64(*(v14 - 2)), v64 = bswap64(v10[6]), v63 == v64) && (v63 = bswap64(*(v14 - 1)), v64 = bswap64(v10[7]), v63 == v64))
        {
          v65 = 0;
        }

        else
        {
LABEL_128:
          v65 = v63 < v64 ? -1 : 1;
        }

        if (v65 < 0)
        {
          v68 = *v49;
          v213 = *(v10 + 3);
          v69 = *(v14 - 1);
          *v49 = *v50;
          *(v10 + 3) = v69;
          *v50 = v68;
          *(v14 - 1) = v213;
        }
      }

LABEL_137:
      v73 = v10 + 8;
      v75 = v14[4];
      v74 = v14 + 4;
      v76 = bswap64(v75);
      v77 = bswap64(v10[8]);
      if (v76 == v77 && (v76 = bswap64(v74[1]), v77 = bswap64(v10[9]), v76 == v77) && (v76 = bswap64(v74[2]), v77 = bswap64(v10[10]), v76 == v77) && (v76 = bswap64(v74[3]), v77 = bswap64(v10[11]), v76 == v77))
      {
        v78 = 0;
      }

      else if (v76 < v77)
      {
        v78 = -1;
      }

      else
      {
        v78 = 1;
      }

      v79 = bswap64(*v9);
      v80 = bswap64(*v74);
      if (v79 != v80 || (v79 = bswap64(*(a2 - 11)), v80 = bswap64(v74[1]), v79 != v80) || (v79 = bswap64(*(a2 - 10)), v80 = bswap64(v74[2]), v79 != v80) || (v79 = bswap64(*(a2 - 9)), v80 = bswap64(v74[3]), v79 != v80))
      {
        if (v79 < v80)
        {
          v81 = -1;
        }

        else
        {
          v81 = 1;
        }

        if ((v78 & 0x80000000) == 0)
        {
          goto LABEL_160;
        }

LABEL_150:
        if (v81 < 0)
        {
          v95 = *v73;
          v92 = *(v10 + 5);
          v96 = *(a2 - 5);
          *v73 = *v9;
          *(v10 + 5) = v96;
          *v9 = v95;
        }

        else
        {
          v82 = *v73;
          v214 = *(v10 + 5);
          v83 = *(v74 + 1);
          *v73 = *v74;
          *(v10 + 5) = v83;
          *v74 = v82;
          *(v74 + 1) = v214;
          v84 = bswap64(*v9);
          v85 = bswap64(*v74);
          if (v84 == v85 && (v84 = bswap64(*(a2 - 11)), v85 = bswap64(v74[1]), v84 == v85) && (v84 = bswap64(*(a2 - 10)), v85 = bswap64(v74[2]), v84 == v85) && (v84 = bswap64(*(a2 - 9)), v85 = bswap64(v74[3]), v84 == v85))
          {
            v86 = 0;
          }

          else if (v84 < v85)
          {
            v86 = -1;
          }

          else
          {
            v86 = 1;
          }

          if ((v86 & 0x80000000) == 0)
          {
            goto LABEL_178;
          }

          v191 = *v74;
          v216 = *(v74 + 1);
          v91 = *(a2 - 5);
          *v74 = *v9;
          *(v74 + 1) = v91;
          *v9 = v191;
          v92 = v216;
        }

        *(a2 - 5) = v92;
        goto LABEL_178;
      }

      v81 = 0;
      if (v78 < 0)
      {
        goto LABEL_150;
      }

LABEL_160:
      if (v81 < 0)
      {
        v190 = *v74;
        v215 = *(v74 + 1);
        v87 = *(a2 - 5);
        *v74 = *v9;
        *(v74 + 1) = v87;
        *v9 = v190;
        *(a2 - 5) = v215;
        v88 = bswap64(*v74);
        v89 = bswap64(*v73);
        if (v88 != v89)
        {
          goto LABEL_171;
        }

        v88 = bswap64(v74[1]);
        v89 = bswap64(v10[9]);
        if (v88 == v89 && (v88 = bswap64(v74[2]), v89 = bswap64(v10[10]), v88 == v89) && (v88 = bswap64(v74[3]), v89 = bswap64(v10[11]), v88 == v89))
        {
          v90 = 0;
        }

        else
        {
LABEL_171:
          v90 = v88 < v89 ? -1 : 1;
        }

        if (v90 < 0)
        {
          v93 = *v73;
          v217 = *(v10 + 5);
          v94 = *(v74 + 1);
          *v73 = *v74;
          *(v10 + 5) = v94;
          *v74 = v93;
          *(v74 + 1) = v217;
        }
      }

LABEL_178:
      v97 = bswap64(*v15);
      v98 = bswap64(*v50);
      if (v97 == v98 && (v97 = bswap64(v15[1]), v98 = bswap64(v50[1]), v97 == v98) && (v97 = bswap64(v15[2]), v98 = bswap64(v50[2]), v97 == v98) && (v97 = bswap64(v15[3]), v98 = bswap64(v50[3]), v97 == v98))
      {
        v99 = 0;
      }

      else if (v97 < v98)
      {
        v99 = -1;
      }

      else
      {
        v99 = 1;
      }

      v100 = bswap64(*v74);
      v101 = bswap64(*v15);
      if (v100 == v101 && (v100 = bswap64(v74[1]), v101 = bswap64(v15[1]), v100 == v101) && (v100 = bswap64(v74[2]), v101 = bswap64(v15[2]), v100 == v101) && (v100 = bswap64(v74[3]), v101 = bswap64(v15[3]), v100 == v101))
      {
        v102 = 0;
        if (v99 < 0)
        {
          goto LABEL_191;
        }

LABEL_201:
        if (v102 < 0)
        {
          v193 = *v15;
          v219 = *(v15 + 1);
          v107 = *(v74 + 1);
          *v15 = *v74;
          *(v15 + 1) = v107;
          *v74 = v193;
          *(v74 + 1) = v219;
          v108 = bswap64(*v15);
          v109 = bswap64(*v50);
          if (v108 != v109)
          {
            goto LABEL_212;
          }

          v108 = bswap64(v15[1]);
          v109 = bswap64(v50[1]);
          if (v108 == v109 && (v108 = bswap64(v15[2]), v109 = bswap64(v50[2]), v108 == v109) && (v108 = bswap64(v15[3]), v109 = bswap64(v50[3]), v108 == v109))
          {
            v110 = 0;
          }

          else
          {
LABEL_212:
            v110 = v108 < v109 ? -1 : 1;
          }

          if (v110 < 0)
          {
            v195 = *v50;
            v221 = *(v50 + 1);
            v112 = *(v15 + 1);
            *v50 = *v15;
            *(v50 + 1) = v112;
            *v15 = v195;
            *(v15 + 1) = v221;
          }
        }
      }

      else
      {
        if (v100 < v101)
        {
          v102 = -1;
        }

        else
        {
          v102 = 1;
        }

        if ((v99 & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_191:
        if (v102 < 0)
        {
          v194 = *v50;
          v220 = *(v50 + 1);
          v113 = *(v74 + 1);
          *v50 = *v74;
          *(v50 + 1) = v113;
        }

        else
        {
          v192 = *v50;
          v218 = *(v50 + 1);
          v103 = *(v15 + 1);
          *v50 = *v15;
          *(v50 + 1) = v103;
          *v15 = v192;
          *(v15 + 1) = v218;
          v104 = bswap64(*v74);
          v105 = bswap64(*v15);
          if (v104 == v105 && (v104 = bswap64(v74[1]), v105 = bswap64(v15[1]), v104 == v105) && (v104 = bswap64(v74[2]), v105 = bswap64(v15[2]), v104 == v105) && (v104 = bswap64(v74[3]), v105 = bswap64(v15[3]), v104 == v105))
          {
            v106 = 0;
          }

          else if (v104 < v105)
          {
            v106 = -1;
          }

          else
          {
            v106 = 1;
          }

          if ((v106 & 0x80000000) == 0)
          {
            goto LABEL_219;
          }

          v194 = *v15;
          v220 = *(v15 + 1);
          v111 = *(v74 + 1);
          *v15 = *v74;
          *(v15 + 1) = v111;
        }

        *v74 = v194;
        *(v74 + 1) = v220;
      }

LABEL_219:
      v196 = *v10;
      v222 = *(v10 + 1);
      v114 = *(v15 + 1);
      *v10 = *v15;
      *(v10 + 1) = v114;
      *v15 = v196;
      *(v15 + 1) = v222;
      goto LABEL_220;
    }

    v19 = bswap64(*v10);
    v20 = bswap64(*v15);
    if (v19 == v20 && (v19 = bswap64(v10[1]), v20 = bswap64(v15[1]), v19 == v20) && (v19 = bswap64(v10[2]), v20 = bswap64(v15[2]), v19 == v20) && (v19 = bswap64(v10[3]), v20 = bswap64(v15[3]), v19 == v20))
    {
      v21 = 0;
    }

    else if (v19 < v20)
    {
      v21 = -1;
    }

    else
    {
      v21 = 1;
    }

    v29 = bswap64(*v8);
    v30 = bswap64(*v10);
    if (v29 == v30 && (v29 = bswap64(*(a2 - 3)), v30 = bswap64(v10[1]), v29 == v30) && (v29 = bswap64(*(a2 - 2)), v30 = bswap64(v10[2]), v29 == v30) && (v29 = bswap64(*(a2 - 1)), v30 = bswap64(v10[3]), v29 == v30))
    {
      v31 = 0;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v29 < v30)
      {
        v31 = -1;
      }

      else
      {
        v31 = 1;
      }

      if ((v21 & 0x80000000) == 0)
      {
LABEL_66:
        if (v31 < 0)
        {
          v183 = *v10;
          v205 = *(v10 + 1);
          v40 = *(a2 - 1);
          *v10 = *v8;
          *(v10 + 1) = v40;
          *v8 = v183;
          *(a2 - 1) = v205;
          v41 = bswap64(*v10);
          v42 = bswap64(*v15);
          if (v41 != v42)
          {
            goto LABEL_87;
          }

          v41 = bswap64(v10[1]);
          v42 = bswap64(v15[1]);
          if (v41 == v42 && (v41 = bswap64(v10[2]), v42 = bswap64(v15[2]), v41 == v42) && (v41 = bswap64(v10[3]), v42 = bswap64(v15[3]), v41 == v42))
          {
            v43 = 0;
          }

          else
          {
LABEL_87:
            v43 = v41 < v42 ? -1 : 1;
          }

          if (v43 < 0)
          {
            v187 = *v15;
            v209 = *(v15 + 1);
            v47 = *(v10 + 1);
            *v15 = *v10;
            *(v15 + 1) = v47;
            *v10 = v187;
            *(v10 + 1) = v209;
          }
        }

        goto LABEL_220;
      }
    }

    if (v31 < 0)
    {
      v185 = *v15;
      v207 = *(v15 + 1);
      v70 = *(a2 - 1);
      *v15 = *v8;
      *(v15 + 1) = v70;
      goto LABEL_134;
    }

    v181 = *v15;
    v203 = *(v15 + 1);
    v32 = *(v10 + 1);
    *v15 = *v10;
    *(v15 + 1) = v32;
    *v10 = v181;
    *(v10 + 1) = v203;
    v33 = bswap64(*v8);
    v34 = bswap64(*v10);
    if (v33 == v34 && (v33 = bswap64(*(a2 - 3)), v34 = bswap64(v10[1]), v33 == v34) && (v33 = bswap64(*(a2 - 2)), v34 = bswap64(v10[2]), v33 == v34) && (v33 = bswap64(*(a2 - 1)), v34 = bswap64(v10[3]), v33 == v34))
    {
      v35 = 0;
    }

    else if (v33 < v34)
    {
      v35 = -1;
    }

    else
    {
      v35 = 1;
    }

    if (v35 < 0)
    {
      v185 = *v10;
      v207 = *(v10 + 1);
      v45 = *(a2 - 1);
      *v10 = *v8;
      *(v10 + 1) = v45;
LABEL_134:
      *v8 = v185;
      *(a2 - 1) = v207;
    }

LABEL_220:
    if ((a5 & 1) == 0)
    {
      v115 = bswap64(*(v10 - 4));
      v116 = bswap64(*v10);
      if (v115 != v116)
      {
        goto LABEL_226;
      }

      v115 = bswap64(*(v10 - 3));
      v116 = bswap64(v10[1]);
      if (v115 == v116 && (v115 = bswap64(*(v10 - 2)), v116 = bswap64(v10[2]), v115 == v116) && (v115 = bswap64(*(v10 - 1)), v116 = bswap64(v10[3]), v115 == v116))
      {
        v117 = 0;
      }

      else
      {
LABEL_226:
        v117 = v115 < v116 ? -1 : 1;
      }

      if ((v117 & 0x80000000) == 0)
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MTLUINT256_t *,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(v10, a2);
        v10 = result;
        goto LABEL_235;
      }
    }

    v118 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MTLUINT256_t *,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(v10, a2);
    if ((v119 & 1) == 0)
    {
      goto LABEL_233;
    }

    v120 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(v10, v118);
    v10 = v118 + 4;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(v118 + 4, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v118;
      if (v120)
      {
        goto LABEL_339;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v120)
    {
LABEL_233:
      result = std::__introsort<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **,false>(v7, v118, a3, -v12, a5 & 1);
      v10 = v118 + 4;
LABEL_235:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v10 == a2)
  {
    goto LABEL_339;
  }

  v137 = *MEMORY[0x1E69E9840];

  return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(v10, a2, a2, a3);
}

void *std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::find<MTLHashKey>(void *a1, MTLHashKey *this)
{
  v4 = MTLHashKey::hash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
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
        if (MTLHashKey::operator==(v11 + 2, this))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
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

NSObject *_MTLNewReflectionBlock(NSObject *a1, dispatch_data_t data, NSObject *a3)
{
  concat = data;
  v15 = xmmword_185DE1A40;
  v22 = 0;
  if (data)
  {
    size = dispatch_data_get_size(data);
  }

  else
  {
    size = 0;
  }

  v19 = size;
  if (a1)
  {
    v7 = dispatch_data_get_size(a1);
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  if (a3)
  {
    v8 = dispatch_data_get_size(a3);
  }

  else
  {
    v8 = 0;
  }

  v9 = size + 80;
  if (concat == a3)
  {
    v9 = 80;
  }

  v20 = v9;
  v21 = v8;
  v10 = v8 + v9;
  if (!a1)
  {
    v10 = 0;
  }

  v18 = 80;
  v16 = v10;
  v11 = dispatch_data_create(&v15, 0x50uLL, 0, 0);
  if (concat | a3)
  {
    if (concat != a3)
    {
      if (concat && a3)
      {
        concat = dispatch_data_create_concat(concat, a3);
        if (!concat)
        {
          goto LABEL_24;
        }

LABEL_23:
        v12 = dispatch_data_create_concat(v11, concat);
        dispatch_release(concat);
        dispatch_release(v11);
        v11 = v12;
        goto LABEL_24;
      }

      if (!concat)
      {
        concat = a3;
      }
    }

    dispatch_retain(concat);
    if (!concat)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_24:
  if (a1)
  {
    v13 = dispatch_data_create_concat(v11, a1);
    dispatch_release(v11);
    return v13;
  }

  return v11;
}

uint64_t MTLGetReflectionFlags(NSObject *a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  buffer_ptr = 0;
  v1 = dispatch_data_create_map(a1, &buffer_ptr, &v5);
  if (*buffer_ptr == 0x8EF13C710)
  {
    if (*(buffer_ptr + 7))
    {
      v2 = (2 * (*(buffer_ptr + 5) != 0)) | 4;
    }

    else
    {
      v2 = 2 * (*(buffer_ptr + 5) != 0);
    }

    if (*(buffer_ptr + 3))
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  dispatch_release(v1);
  return v3;
}
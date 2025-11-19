BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 47);
        v6 = *(a2 - 17);
        if (v6 >= 0)
        {
          v7 = *(a2 - 17);
        }

        else
        {
          v7 = *(a2 - 32);
        }

        if (v6 >= 0)
        {
          v8 = (a2 - 40);
        }

        else
        {
          v8 = *(a2 - 40);
        }

        if (v5 >= 0)
        {
          v9 = *(a1 + 47);
        }

        else
        {
          v9 = *(a1 + 32);
        }

        if (v5 >= 0)
        {
          v10 = (a1 + 24);
        }

        else
        {
          v10 = *(a1 + 24);
        }

        if (v9 >= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = memcmp(v8, v10, v11);
        v13 = v7 < v9;
        if (v12)
        {
          v13 = v12 < 0;
        }

        if (v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a1, (a2 - 64));
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + 64, a2 - 64);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + 64, a1 + 128, a2 - 64);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + 64, a1 + 128, a1 + 192, a2 - 64);
      return 1;
  }

LABEL_28:
  v14 = a1 + 128;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + 64, a1 + 128);
  v15 = a1 + 192;
  if (a1 + 192 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v19 = (v15 + 24);
    v18 = *(v15 + 24);
    v22 = *(v14 + 24);
    v21 = v14 + 24;
    v20 = v22;
    v23 = *(v21 + 23);
    v24 = *(v15 + 47);
    if (v24 >= 0)
    {
      v25 = *(v15 + 47);
    }

    else
    {
      v25 = *(v15 + 32);
    }

    if (v24 >= 0)
    {
      v26 = (v15 + 24);
    }

    else
    {
      v26 = *(v15 + 24);
    }

    if (v23 >= 0)
    {
      v27 = *(v21 + 23);
    }

    else
    {
      v27 = *(v21 + 8);
    }

    if (v23 >= 0)
    {
      v28 = v21;
    }

    else
    {
      v28 = v20;
    }

    if (v27 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v26, v28, v29);
    v31 = v25 < v27;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (v31)
    {
      v47 = *v15;
      v48 = *(v15 + 16);
      v49 = *v19;
      v50 = *(v15 + 40);
      *v19 = 0;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      v32 = v16;
      v51 = *(v15 + 48);
      while (1)
      {
        v33 = a1 + v32;
        *(v33 + 192) = *(a1 + v32 + 128);
        *(v33 + 208) = *(a1 + v32 + 144);
        if (*(a1 + v32 + 239) < 0)
        {
          operator delete(*(v33 + 216));
        }

        *(v33 + 216) = *(v33 + 152);
        *(v33 + 232) = *(v33 + 168);
        *(v33 + 175) = 0;
        *(v33 + 152) = 0;
        *(v33 + 240) = *(v33 + 176);
        if (v32 == -128)
        {
          break;
        }

        v34 = a1 + v32;
        v35 = *(a1 + v32 + 111);
        if (v50 >= 0)
        {
          v36 = HIBYTE(v50);
        }

        else
        {
          v36 = *(&v49 + 1);
        }

        if (v50 >= 0)
        {
          v37 = &v49;
        }

        else
        {
          v37 = v49;
        }

        if (v35 >= 0)
        {
          v38 = *(a1 + v32 + 111);
        }

        else
        {
          v38 = *(a1 + v32 + 96);
        }

        if (v35 >= 0)
        {
          v39 = (a1 + v32 + 88);
        }

        else
        {
          v39 = *(a1 + v32 + 88);
        }

        if (v38 >= v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = v38;
        }

        v41 = memcmp(v37, v39, v40);
        v42 = v36 < v38;
        if (v41)
        {
          v42 = v41 < 0;
        }

        v32 -= 64;
        if (!v42)
        {
          v43 = v34 + 152;
          v44 = a1 + v32 + 192;
          v45 = (v34 + 176);
          goto LABEL_72;
        }
      }

      v43 = a1 + 24;
      v45 = (a1 + 48);
      v44 = a1;
LABEL_72:
      *v44 = v47;
      *(v44 + 16) = v48;
      if (*(v44 + 47) < 0)
      {
        operator delete(*v43);
      }

      *v43 = v49;
      *(v43 + 16) = v50;
      *v45 = v51;
      if (++v17 == 8)
      {
        return v15 + 64 == a2;
      }
    }

    v14 = v15;
    v16 += 64;
    v15 += 64;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserShader::initializeMaps(void)::$_1 &&>>(llvm::StringMapImpl ****a1)
{
  v1 = **a1;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.center", 0xAuLL) + 8) = 0;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.centroid", 0xCuLL) + 8) = 2;
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.sample", 0xAuLL);
  *(*result + 8) = 1;
  return result;
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserShader::initializeMaps(void)::$_0 &&>>(llvm::StringMapImpl ****a1)
{
  v1 = **a1;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.perspective", 0xFuLL) + 8) = 0;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.flat", 8uLL) + 8) = 1;
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.no_perspective", 0x12uLL);
  *(*result + 8) = 2;
  return result;
}

uint64_t std::istringstream::basic_istringstream[abi:nn200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x277D82898] + 24;
  v5 = MEMORY[0x277D82898] + 64;
  *(a1 + 120) = MEMORY[0x277D82898] + 64;
  v6 = a1 + 16;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 16));
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v4;
  *(a1 + 120) = v5;
  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  MEMORY[0x20F331D00](a1 + 24);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 8;
  std::string::operator=((a1 + 80), a2);
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v6);
  return a1;
}

uint64_t AGCLLVMUserShader::setupLIBMetadata(uint32x2_t *a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5, llvm::StringMapImpl *a6, llvm::StringMapImpl *a7)
{
  v7 = a3;
  v9 = a3 >> 16;
  v53 = 1;
  v54 = a2;
  v52 = 0;
  v10 = *(a4 + 8);
  if (v10 > a2)
  {
    v12 = a2;
    v13 = 0;
    v43 = a1 + 271;
    v44 = a5;
    LOWORD(v14) = a3;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (isStringMDNode(*(a4 - 8 * v10 + 8 * v12), "implicit") || isStringMDNode(*(a4 - 8 * *(a4 + 8) + 8 * v12), "explicit"))
          {
            v54 = ++v12;
            goto LABEL_8;
          }

          if (parseMDInt("air.imageblock_data_size", a4, &v54, &v52))
          {
            v12 = v54;
            v10 = *(a4 + 8);
            v13 = 1;
            goto LABEL_9;
          }

          v15 = parseMDInt("air.arg_type_align_size", a4, &v54, &v53);
          v12 = v54;
          if ((v15 & 1) == 0)
          {
            break;
          }

LABEL_8:
          v10 = *(a4 + 8);
LABEL_9:
          if (v12 >= v10)
          {
            a5 = v44;
            if (v9)
            {
              goto LABEL_33;
            }

LABEL_37:
            LOBYTE(v21) = BYTE1(v14);
            goto LABEL_38;
          }
        }

        if (!isStringMDNode(*(a4 - 8 * *(a4 + 8) + 8 * v54), "air.alias_implicit_imageblock"))
        {
          break;
        }

        LOWORD(v14) = 0;
        if ((v9 & 1) == 0)
        {
          LOBYTE(v9) = 1;
        }

        v54 = ++v12;
        v10 = *(a4 + 8);
        a5 = v44;
        if (v12 >= v10)
        {
          goto LABEL_32;
        }
      }

      v51 = 0;
      if (parseMDInt("air.alias_implicit_imageblock_render_target", a4, &v54, &v51))
      {
        a5 = v44;
        if (((*(v44 + 32) >> v51) & 1) == 0)
        {
          std::to_string(&v50, v51);
          v33 = std::string::insert(&v50, 0, "Aliasing implicit image block at unset color attachment: ");
          v34 = v33->__r_.__value_.__r.__words[2];
          *__p = *&v33->__r_.__value_.__l.__data_;
          v47 = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (v47 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          if (v47 >= 0)
          {
            v36 = HIBYTE(v47);
          }

          else
          {
            v36 = __p[1];
          }

          std::string::append((&a1[207] + *(*a1 - 24)), v35, v36);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          goto LABEL_47;
        }

        v16 = *(v44 + 4 * v51);
        if ((~v16 & 0xFF000) == 0)
        {
          v37 = std::__throw_bad_optional_access[abi:nn200100]();
          return AGCLLVMUserShader::setupLIBStruct(v37, v38, v39, v40);
        }

        LODWORD(v14) = *(*(v43 + *(*a1 - 24)) + 964) * (v16 >> 12);
        if ((v9 & 1) == 0)
        {
          LOBYTE(v9) = 1;
        }
      }

      else
      {
        v50.__r_.__value_.__r.__words[0] = 0;
        if (parseMDType<llvm::MDNode>("air.struct_type_info", a4, &v54, &v50))
        {
          __p[0] = 0;
          __p[1] = 0;
          LODWORD(v47) = -1;
          v48 = 0;
          v49 = 0;
          v17 = v50.__r_.__value_.__r.__words[0];
          v18 = a1;
          v19 = a6;
          goto LABEL_26;
        }

        v45 = 0;
        if (parseMDType<llvm::MDNode>("air.imageblock_master", a4, &v54, &v45))
        {
          __p[0] = 0;
          __p[1] = 0;
          LODWORD(v47) = -1;
          v48 = 0;
          v49 = 0;
          v17 = v45;
          v18 = a1;
          v19 = a7;
LABEL_26:
          v20 = AGCLLVMUserShader::setupLIBStruct(v18, v17, __p, v19);
          a5 = v44;
          if ((v20 & 1) == 0)
          {
            goto LABEL_47;
          }

          goto LABEL_29;
        }

        ++v54;
        a5 = v44;
      }

LABEL_29:
      v12 = v54;
      v10 = *(a4 + 8);
      if (v54 >= v10)
      {
        goto LABEL_32;
      }
    }
  }

  v13 = 0;
  LOWORD(v14) = a3;
LABEL_32:
  if ((v9 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_33:
  v14 = v53 + v14 + ~(((v53 + v14) - 1) % v53);
  v21 = v14 >> 8;
  if (v13)
  {
    v52 += v14;
  }

  LOBYTE(v9) = 1;
LABEL_38:
  if (a1[470].i8[6] == 1)
  {
    v22 = &v52;
    v23 = vld1_dup_f32(v22);
    a1[566] = vmax_u32(a1[566], v23);
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_44;
  }

  v24 = *(a5 + 32);
  if ((v24 & 0x400000) == 0)
  {
    v25 = (a1 + *(*a1 - 24));
    v26 = "Large MRT / Late Bound Render Targets / Unspecialized Pipelines are not supported with explicit image blocks";
    goto LABEL_46;
  }

  if ((v24 & 0x200000) == 0)
  {
LABEL_44:
    v27 = v7 & 0xFF000000;
    v28 = v21 << 8;
    v29 = v9 << 16;
    v30 = v14;
    v31 = 1;
    return v31 | ((v29 | v27 | v28 | v30) << 16);
  }

  v25 = (a1 + *(*a1 - 24));
  v26 = "Large MRT not supported with explicit image blocks";
LABEL_46:
  std::string::append(v25 + 69, v26);
LABEL_47:
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  return v31 | ((v29 | v27 | v28 | v30) << 16);
}

uint64_t AGCLLVMUserShader::setupLIBStruct(void *a1, uint64_t a2, _DWORD *a3, llvm::StringMapImpl *a4)
{
  v73 = 0;
  if (!*(a2 + 8))
  {
    return 1;
  }

  v60 = *MEMORY[0x277D82820];
  v59 = *(MEMORY[0x277D82820] + 24);
  v57 = a1 + 237;
  v58 = a1 + 238;
  v61 = a1 + 236;
  v55 = a1 + 234;
  v56 = a1 + 232;
  LODWORD(v5) = 1;
  while (1)
  {
    v72 = 0;
    v6 = parseMDType<llvm::MDNode>("air.struct_type_info", a2, &v73, &v72);
    v64 = parseMDType<llvm::MDNode>("air.inline_type_info", a2, &v73, &v72);
    v69 = 0uLL;
    LODWORD(v70) = -1;
    *(&v70 + 1) = 0;
    v71 = 0;
    v7 = v73++;
    v8 = v73;
    LODWORD(v75.__r_.__value_.__l.__data_) = v7;
    v9 = parseMDInt(0, a2, &v75, &v69);
    LODWORD(v69) = v69 + *a3;
    LODWORD(v75.__r_.__value_.__l.__data_) = v8;
    v10 = parseMDInt(0, a2, &v75, &v69 + 1);
    LODWORD(v75.__r_.__value_.__l.__data_) = v7 + 2;
    v11 = parseMDInt(0, a2, &v75, &v69 + 2);
    v12 = *(a2 - 8 * *(a2 + 8) + 8 * (v7 + 3));
    if (v12 && *v12)
    {
      v12 = 0;
    }

    v13 = v7 + 4;
    if (v12)
    {
      v14 = v9 & v10 & v11;
    }

    else
    {
      v14 = 0;
    }

    v75.__r_.__value_.__r.__words[0] = llvm::MDString::getString(v12);
    v75.__r_.__value_.__l.__size_ = v15;
    llvm::StringRef::str(&__s, &v75);
    v16 = v7 + 5;
    v73 = v16;
    v17 = *(a2 - 8 * *(a2 + 8) + 8 * v13);
    if (v17)
    {
      if (*v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a2 - 8 * *(a2 + 8) + 8 * v13);
      }
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    v75.__r_.__value_.__r.__words[0] = llvm::MDString::getString(v18);
    v75.__r_.__value_.__l.__size_ = v20;
    llvm::StringRef::str(v66, &v75);
    if (v16 < *(a2 + 8))
    {
      if (parseMDInt("air.raster_order_group", a2, &v73, &v70))
      {
        v21 = v70;
        if (v70 >= 7)
        {
          v21 = 7;
        }

        LODWORD(v70) = v21;
      }

      if (a3[4] != -1)
      {
        LODWORD(v70) = a3[4];
      }

      if (v73 < *(a2 + 8) && parseMDInt("air.render_target", a2, &v73, &v69 + 3))
      {
        LOBYTE(size) = *(&__s.__r_.__value_.__s + 23);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__s.__r_.__value_.__l.__size_)
          {
            v80 = 1;
            std::string::__init_copy_ctor_external(&v79, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            LOBYTE(size) = *(&__s.__r_.__value_.__s + 23);
LABEL_31:
            size = size;
            p_s = &__s;
            if ((size & 0x80u) != 0)
            {
              size = __s.__r_.__value_.__l.__size_;
              p_s = __s.__r_.__value_.__r.__words[0];
            }

            v24 = p_s->__r_.__value_.__s.__data_[size - 1];
            if ((v24 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v24 + 60) & 0x400) != 0)
            {
              std::string::basic_string(&v75, &__s, 0, size - 1, &v74);
              if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v79.__r_.__value_.__l.__data_);
              }

              v79 = v75;
              v25 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
              if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v25 = __s.__r_.__value_.__l.__size_;
              }

              std::string::basic_string(&v74, &__s, v25 - 1, 0xFFFFFFFFFFFFFFFFLL, v81);
              std::istringstream::basic_istringstream[abi:nn200100](&v75, &v74);
              if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v74.__r_.__value_.__l.__data_);
              }

              MEMORY[0x20F331BA0](&v75, &v80);
              v75.__r_.__value_.__r.__words[0] = v60;
              *(v75.__r_.__value_.__r.__words + *(v60 - 24)) = v59;
              v75.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
              if (v77 < 0)
              {
                operator delete(v76[7].__locale_);
              }

              v75.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v76);
              std::istream::~istream();
              MEMORY[0x20F331D40](&v78);
            }

            v26 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v79.__r_.__value_.__l.__size_ <= 4)
              {
                if (v79.__r_.__value_.__l.__size_ == 3)
                {
                  if (*v79.__r_.__value_.__l.__data_ == 28265 && *(v79.__r_.__value_.__r.__words[0] + 2) == 116)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v79.__r_.__value_.__l.__size_ == 4)
                {
                  if (*v79.__r_.__value_.__l.__data_ != 1953393013)
                  {
                    v27 = v79.__r_.__value_.__r.__words[0];
LABEL_72:
                    data = v27->__r_.__value_.__l.__data_;
                    v32 = *(*a1 - 24);
                    if (data == 1718378856)
                    {
                      v33 = v56;
LABEL_110:
                      v40 = (v33 + v32);
                      v28 = *v40;
                      if (v80 >= 2)
                      {
                        v41 = *v40;
                        v28 = llvm::FixedVectorType::get();
                      }

                      if (v26 < 0)
                      {
                        operator delete(v79.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_114;
                    }

LABEL_95:
                    v33 = v61;
                    goto LABEL_110;
                  }

                  goto LABEL_96;
                }

LABEL_94:
                v32 = *(*a1 - 24);
                goto LABEL_95;
              }

              if (v79.__r_.__value_.__l.__size_ != 5)
              {
                if (v79.__r_.__value_.__l.__size_ != 6)
                {
                  goto LABEL_94;
                }

                if (*v79.__r_.__value_.__l.__data_ != 1869116277 || *(v79.__r_.__value_.__r.__words[0] + 4) != 29810)
                {
                  goto LABEL_94;
                }

                goto LABEL_108;
              }

              if (*v79.__r_.__value_.__l.__data_ == 1919903859 && *(v79.__r_.__value_.__r.__words[0] + 4) == 116)
              {
                goto LABEL_108;
              }

              if (*v79.__r_.__value_.__l.__data_ != 1634692198 || *(v79.__r_.__value_.__r.__words[0] + 4) != 116)
              {
                if ((*(&v79.__r_.__value_.__s + 23) & 0x80) == 0 && HIBYTE(v79.__r_.__value_.__r.__words[2]) == 4)
                {
                  goto LABEL_49;
                }

                goto LABEL_94;
              }
            }

            else
            {
              if (HIBYTE(v79.__r_.__value_.__r.__words[2]) <= 4u)
              {
                if (HIBYTE(v79.__r_.__value_.__r.__words[2]) == 3)
                {
                  if (LOWORD(v79.__r_.__value_.__l.__data_) == 28265 && v79.__r_.__value_.__s.__data_[2] == 116)
                  {
                    goto LABEL_96;
                  }
                }

                else if (HIBYTE(v79.__r_.__value_.__r.__words[2]) == 4)
                {
                  if (LODWORD(v79.__r_.__value_.__l.__data_) != 1953393013)
                  {
LABEL_49:
                    v27 = &v79;
                    goto LABEL_72;
                  }

LABEL_96:
                  v32 = *(*a1 - 24);
                  v33 = v58;
                  goto LABEL_110;
                }

                goto LABEL_94;
              }

              if (HIBYTE(v79.__r_.__value_.__r.__words[2]) != 5)
              {
                if (HIBYTE(v79.__r_.__value_.__r.__words[2]) != 6)
                {
                  goto LABEL_94;
                }

                if (LODWORD(v79.__r_.__value_.__l.__data_) != 1869116277 || WORD2(v79.__r_.__value_.__r.__words[0]) != 29810)
                {
                  goto LABEL_94;
                }

LABEL_108:
                v32 = *(*a1 - 24);
                v33 = v57;
                goto LABEL_110;
              }

              if (LODWORD(v79.__r_.__value_.__l.__data_) == 1919903859 && v79.__r_.__value_.__s.__data_[4] == 116)
              {
                goto LABEL_108;
              }

              if (LODWORD(v79.__r_.__value_.__l.__data_) != 1634692198 || v79.__r_.__value_.__s.__data_[4] != 116)
              {
                goto LABEL_94;
              }
            }

            v32 = *(*a1 - 24);
            v33 = v55;
            goto LABEL_110;
          }
        }

        else if (*(&__s.__r_.__value_.__s + 23))
        {
          v80 = 1;
          v79 = __s;
          goto LABEL_31;
        }

        v28 = 0;
LABEL_114:
        *(&v70 + 1) = v28;
        v71 = 1;
      }
    }

    if (v6)
    {
      if ((AGCLLVMUserShader::setupLIBStruct(a1, v72, &v69, a4) & 1) == 0)
      {
        break;
      }

      goto LABEL_150;
    }

    if (!v64)
    {
      if (a4)
      {
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v43 = __s.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:nn200100](&v79, v43 + 1);
        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &v79;
        }

        else
        {
          v44 = v79.__r_.__value_.__r.__words[0];
        }

        if (v43)
        {
          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &__s;
          }

          else
          {
            v45 = __s.__r_.__value_.__r.__words[0];
          }

          memmove(v44, v45, v43);
        }

        *(&v44->__r_.__value_.__l.__data_ + v43) = 64;
        if ((v67 & 0x80u) == 0)
        {
          v46 = v66;
        }

        else
        {
          v46 = v66[0];
        }

        if ((v67 & 0x80u) == 0)
        {
          v47 = v67;
        }

        else
        {
          v47 = v66[1];
        }

        v48 = std::string::append(&v79, v46, v47);
        v49 = v48->__r_.__value_.__r.__words[2];
        *&v75.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
        v75.__r_.__value_.__r.__words[2] = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = &v75;
        }

        else
        {
          v50 = v75.__r_.__value_.__r.__words[0];
        }

        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = v75.__r_.__value_.__l.__size_;
        }

        v52 = *llvm::StringMap<LIBStructFieldInfo,llvm::MallocAllocator>::try_emplace<>(a4, v50, v51);
        v53 = v70;
        *(v52 + 8) = v69;
        *(v52 + 40) = v71;
        *(v52 + 24) = v53;
        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_150;
    }

    v75.__r_.__value_.__r.__words[0] = 0;
    v42 = parseMDInlineTypeRecursively(v72, &v75);
    DWORD2(v69) *= v42;
    if (v75.__r_.__value_.__r.__words[0])
    {
      if (!AGCLLVMUserShader::setupLIBStruct(a1, v75.__r_.__value_.__r.__words[0], &v69, a4))
      {
        break;
      }
    }

LABEL_150:
    if (v67 < 0)
    {
      operator delete(v66[0]);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v5 = v5 & v19;
    if (v73 >= *(a2 + 8))
    {
      return v5;
    }
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t parseMDInlineTypeRecursively(uint64_t a1, void *a2)
{
  v20 = 0;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (isStringMDNode(*(a1 - 8 * *(a1 + 8)), "air.address_space"))
  {
    v24 = 1;
    parseMDInt(0, a1, &v24, &v23);
    v7 = 2;
    v4 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v7), "air.struct_type_info");
  v9 = *(a1 + 8);
  if (v8)
  {
    v10 = *(a1 - 8 * v9 + 8 * (v4 + 1));
    if (v10)
    {
      if (((*v10 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v10)) != 0)
      {
        v6 = *(a1 - 8 * v9 + 8 * (v4 + 1));
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v11 = -v9;
    v7 = (v4 + 2);
    v4 += 2;
  }

  else
  {
    v11 = -v9;
  }

  if (isStringMDNode(*(a1 + 8 * v11 + 8 * v7), "air.inline_type_info"))
  {
    v12 = *(a1 - 8 * *(a1 + 8) + 8 * (v4 + 1));
    if (v12)
    {
      if (((*v12 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v12)) != 0)
      {
        v5 = *(a1 - 8 * *(a1 + 8) + 8 * (v4 + 1));
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 += 2;
  }

  v24 = v4;
  parseMDInt(0, a1, &v24, &v22);
  v24 = v4 + 1;
  parseMDInt(0, a1, &v24, &v21);
  v24 = v4 + 2;
  parseMDInt(0, a1, &v24, &v20);
  for (i = v4 + 4; i < v2; i += v16)
  {
    v14 = *(a1 - 8 * *(a1 + 8) + 8 * i);
    if (v14)
    {
      if (((*v14 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v14)) != 0)
      {
        v15 = *(a1 - 8 * *(a1 + 8) + 8 * i);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    if (isStringMDNode(v15, "air.indirect_argument"))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }
  }

  v17 = v20;
  if (v6)
  {
    *a2 = v6;
  }

  else if (v5)
  {
    return parseMDInlineTypeRecursively(v5, a2) * v17;
  }

  return v17;
}

uint64_t AGCLLVMUserShader::markNoAliasForGL(uint64_t this)
{
  v1 = *(this + *(*this - 24) + 2136);
  v2 = v1 + 24;
  v3 = *(v1 + 32);
  if (v3 != v1 + 24)
  {
    while (1)
    {
      if (v3)
      {
        v4 = v3 - 56;
      }

      else
      {
        v4 = 0;
      }

      this = llvm::GlobalValue::isDeclaration(v4);
      if (this)
      {
        goto LABEL_6;
      }

      if ((*(v4 + 18) & 1) == 0)
      {
        break;
      }

      this = llvm::Function::BuildLazyArguments(v4);
      v5 = *(v4 + 88);
      if ((*(v4 + 18) & 1) == 0)
      {
        goto LABEL_11;
      }

      this = llvm::Function::BuildLazyArguments(v4);
      v6 = *(v4 + 88);
LABEL_13:
      v7 = &v6[10 * *(v4 + 96)];
      while (v5 != v7)
      {
        if (*(*v5 + 8) == 15)
        {
          v8 = v5[8];
          this = llvm::Function::addParamAttr();
        }

        v5 += 10;
      }

LABEL_6:
      v3 = *(v3 + 8);
      if (v3 == v2)
      {
        return this;
      }
    }

    v5 = *(v4 + 88);
LABEL_11:
    v6 = v5;
    goto LABEL_13;
  }

  return this;
}

uint64_t AGCLLVMUserShader::parseMaxTotalThreadsPerThreadgroup(AGCLLVMUserShader *this)
{
  v2 = *this;
  v3 = *(this + *(*this - 24) + 2136);
  v4 = v3 + 24;
  v5 = *(v3 + 32);
  if (v5 != v3 + 24)
  {
    v6 = 0;
    do
    {
      if (llvm::Function::hasFnAttribute())
      {
        FnAttribute = llvm::Function::getFnAttribute();
        v21[0] = llvm::Attribute::getValueAsString(&FnAttribute);
        v21[1] = v7;
        llvm::StringRef::str(&__p, v21);
        v8 = std::stoi(&__p, 0, 10);
        if (v6 <= v8)
        {
          v6 = v8;
        }

        else
        {
          v6 = v6;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    if (v6)
    {
      return v6;
    }

    v2 = *this;
  }

  v9 = *(this + *(v2 - 24) + 2136);
  __p.__r_.__value_.__r.__words[0] = "air.kernel";
  v19 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v9, &__p);
  if (!NamedMetadata)
  {
    return 0;
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v12 = *(Operand + 8);
  if (v12 < 4)
  {
    return 0;
  }

  v13 = Operand;
  v14 = 3;
  while (1)
  {
    v15 = *(v13 - 8 * v12 + 8 * v14);
    v16 = *v15;
    if (v16 <= 0x22 && ((0x7FFFFFFF0uLL >> v16) & 1) != 0)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      if (*(v15 + 2))
      {
        break;
      }
    }

LABEL_21:
    if (++v14 >= v12)
    {
      return 0;
    }
  }

  while (1)
  {
    LODWORD(v21[0]) = 0;
    if (parseMDInt("air.max_work_group_size", v15, &__p, v21))
    {
      return LODWORD(v21[0]);
    }

    if (++LODWORD(__p.__r_.__value_.__l.__data_) >= *(v15 + 2))
    {
      v12 = *(v13 + 8);
      goto LABEL_21;
    }
  }
}

uint64_t AGCLLVMUserShader::buildStageInOriginCommon(llvm::Type ***this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4)
{
  if (a3)
  {
    Load = a3;
  }

  else
  {
    if (!this[559])
    {
      v6 = *(*(*this - 3) + this + 1904);
      v7 = llvm::PointerType::get();
      v8 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 496))();
      v19[0] = "agc.stagein_buffer_pointer.";
      v19[2] = v8;
      v20 = 2051;
      v9 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 496))();
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v7, v19, v9, 24, 5, 0);
      llvm::ValueHandleBase::operator=((this + 557), GlobalBufferBinding);
    }

    v11 = *(*this - 3) + this;
    v12 = this[559];
    v20 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v11 + 1704), v12, v19);
  }

  v13 = *(*this - 3) + this;
  v14 = *(v13 + 238);
  v15 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v13 + 1712), v14, Load, v15, v19);
  v17 = *(*this - 3) + this;
  v20 = 257;
  return AGCLLVMBuilder::CreateLoad((v17 + 1704), GEP, v19);
}

uint64_t AGCLLVMUserShader::buildStageInSizeCommon(llvm::Type ***this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4)
{
  if (a3)
  {
    Load = a3;
  }

  else
  {
    if (!this[559])
    {
      v6 = *(*(*this - 3) + this + 1904);
      v7 = llvm::PointerType::get();
      v8 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 496))();
      v19[0] = "agc.stagein_buffer_pointer.";
      v19[2] = v8;
      v20 = 2051;
      v9 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 496))();
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v7, v19, v9, 24, 5, 0);
      llvm::ValueHandleBase::operator=((this + 557), GlobalBufferBinding);
    }

    v11 = *(*this - 3) + this;
    v12 = this[559];
    v20 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v11 + 1704), v12, v19);
  }

  v13 = *(*this - 3) + this;
  v14 = *(v13 + 238);
  v15 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v13 + 1712), v14, Load, v15, v19);
  v17 = *(*this - 3) + this;
  v20 = 257;
  return AGCLLVMBuilder::CreateLoad((v17 + 1704), GEP, v19);
}

uint64_t AGCLLVMUserShader::buildGlobalSizeCommon(AGCLLVMUserShader *this, llvm::Type *a2, unsigned int a3, llvm::Value *Load, llvm::Value *a5)
{
  v9 = *(this + *(*this - 24) + 1904);
  v10 = llvm::PointerType::get();
  if (!Load)
  {
    if (!*(this + 562))
    {
      v11 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      v12 = **(*(this + *(*this - 24) + 2168) + 920);
      if (v11 == 1)
      {
        v13 = (*(v12 + 1152))();
      }

      else
      {
        v13 = (*(v12 + 464))();
      }

      v43[0] = "agc.indirect_wg_size_buffer_pointer.";
      v44 = v13;
      v45 = 2051;
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v10, v43, v13, 12, 5, 0);
      llvm::ValueHandleBase::operator=((this + 4480), GlobalBufferBinding);
    }

    v15 = this + *(*this - 24);
    v16 = *(this + 562);
    v45 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v15 + 1704), v16, v43);
  }

  v17 = this + *(*this - 24);
  v18 = *(v17 + 238);
  v19 = llvm::ConstantInt::get();
  v45 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v17 + 1712), v18, Load, v19, v43);
  v21 = this + *(*this - 24);
  v22 = *(v21 + 238);
  v45 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v21 + 214, v22, GEP, 0, v43);
  v42 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v21 + 1712), 38, AlignedLoad, a2, v41);
  if (!a5)
  {
    if (!*(this + 565))
    {
      v25 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      v26 = **(*(this + *(*this - 24) + 2168) + 920);
      if (v25 == 1)
      {
        v27 = (*(v26 + 1144))();
      }

      else
      {
        v27 = (*(v26 + 456))();
      }

      v43[0] = "agc.indirect_wg_count_buffer_pointer.";
      v44 = v27;
      v45 = 2051;
      v28 = AGCLLVMUserObject::createGlobalBufferBinding(this, v10, v43, v27, 12, 5, 0);
      llvm::ValueHandleBase::operator=((this + 4504), v28);
    }

    v29 = this + *(*this - 24);
    v30 = *(this + 565);
    v45 = 257;
    a5 = AGCLLVMBuilder::CreateLoad((v29 + 1704), v30, v43);
  }

  v31 = this + *(*this - 24);
  v32 = *(v31 + 238);
  v33 = llvm::ConstantInt::get();
  v45 = 257;
  v34 = llvm::IRBuilderBase::CreateGEP((v31 + 1712), v32, a5, v33, v43);
  v35 = this + *(*this - 24);
  v36 = *(v35 + 238);
  v45 = 257;
  llvm::Type::isOpaquePointerTy(*v34);
  v37 = llvm::IRBuilderBase::CreateAlignedLoad(v35 + 214, v36, v34, 0, v43);
  v42 = 257;
  v38 = llvm::IRBuilderBase::CreateCast((v35 + 1712), 38, v37, a2, v41);
  v39 = this + *(*this - 24);
  v45 = 257;
  return llvm::IRBuilderBase::CreateMul((v39 + 1712), Cast, v38, v43);
}

uint64_t AGCLLVMUserShader::buildTileThreadIndexInThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v16 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (v6 + 1712));
  v18 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v16, a2);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = this + *(*this - 24);
  v9 = (*(*this + 472))(this, a2);
  v10 = llvm::ConstantInt::get();
  v15 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((v8 + 1712), v9, v10, v14);
  v13[16] = 257;
  return llvm::IRBuilderBase::CreateAdd((v8 + 1712), Shl, v7, v13);
}

llvm::Value *AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2)
{
  v4 = this + *(*this - 24);
  v5 = (*(*this + 480))(this, 0);
  v6 = *(this + *(*this - 24) + 1904);
  v7 = llvm::ConstantInt::get();
  v43 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v4 + 1712), v5, v7, v42);
  v9 = this + *(*this - 24);
  v10 = *(v9 + 238);
  v11 = llvm::ConstantInt::get();
  v41 = 257;
  Not = llvm::IRBuilderBase::CreateNot((v9 + 1712), v11, v40);
  v39 = 257;
  v13 = llvm::IRBuilderBase::CreateAnd((v4 + 1712), Add, Not, v38);
  v14 = this + *(*this - 24);
  v15 = (*(*this + 480))(this, 1);
  v16 = *(this + *(*this - 24) + 1904);
  v17 = llvm::ConstantInt::get();
  v37 = 257;
  v18 = llvm::IRBuilderBase::CreateAdd((v14 + 1712), v15, v17, v36);
  v19 = this + *(*this - 24);
  v20 = *(v19 + 238);
  v21 = llvm::ConstantInt::get();
  v35 = 257;
  v22 = llvm::IRBuilderBase::CreateNot((v19 + 1712), v21, v34);
  v33 = 257;
  v23 = llvm::IRBuilderBase::CreateAnd((v14 + 1712), v18, v22, v32);
  v31 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v4 + 1712), v13, v23, v30);
  v25 = *(this + *(*this - 24) + 1904);
  v26 = llvm::ConstantInt::get();
  v29[16] = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((v4 + 1712), Mul, v26, v29);
  return AGCLLVMBuilder::truncateToSmall((this + *(*this - 24) + 1704), LShr, a2);
}

llvm::Value *AGCLLVMUserShader::buildTileThreadsPerGrid(AGCLLVMUserShader *this, llvm::Type *a2, int a3)
{
  if (!a3)
  {
    v7 = this + *(*this - 24);
    v8 = (*(*this + 480))(this, 0);
    v9 = (*(*this + 480))(this, 2);
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v7 = this + *(*this - 24);
    v8 = (*(*this + 480))(this, 1);
    v9 = (*(*this + 480))(this, 3);
LABEL_7:
    v13 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v7 + 1712), v8, v9, v12);
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    v10 = 0;
    return AGCLLVMBuilder::truncateToSmall((this + *(*this - 24) + 1704), v10, a2);
  }

  v5 = *(this + *(*this - 24) + 1904);
  Mul = llvm::ConstantInt::get();
LABEL_8:
  v10 = Mul;
  return AGCLLVMBuilder::truncateToSmall((this + *(*this - 24) + 1704), v10, a2);
}

llvm::Value *AGCLLVMUserShader::buildTileThreadgroupsPerGrid(AGCLLVMUserShader *this, llvm::Type *a2, int a3)
{
  switch(a3)
  {
    case 0:
      v7 = *(*this + 480);
      goto LABEL_7;
    case 1:
      v7 = *(*this + 480);
LABEL_7:
      v6 = v7();
      goto LABEL_8;
    case 2:
      v5 = *(this + *(*this - 24) + 1904);
      v6 = llvm::ConstantInt::get();
LABEL_8:
      v8 = v6;
      goto LABEL_10;
  }

  v8 = 0;
LABEL_10:
  v9 = (this + *(*this - 24) + 1704);

  return AGCLLVMBuilder::truncateToSmall(v9, v8, a2);
}

uint64_t virtual thunk toAGCLLVMUserTileShader::needsThreadgroupMemoryOOBChecks(AGCLLVMUserTileShader *this)
{
  v1 = (this + *(*this - 240));
  if (*(*(v1 + *(*v1 - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserTileShader::getTempRegistersLimit(AGCLLVMUserTileShader *this, unsigned int *a2)
{
  v4 = (this + *(*this - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  if (*(this + 1183))
  {
    v6 = *(this + *(*this - 24) + 2168);
    if (v6[976] == 1)
    {
      v7 = (*(*v6 + 688))(*(this + *(*this - 24) + 2168));
      *a2 = AGCLLVMGen3TargetLowerer::getTempRegistersLimitAcrossTileSizesForTileShader(v7, *(this + *(*this - 24) + 1688), *(this + 1183));
      return 1;
    }
  }

  return result;
}

BOOL AGCLLVMUserTileShader::constructReply(AGCLLVMUserTileShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = this + *(*this - 24);
    v4[4358] = 1;
    v5 = *(v4 + 1082);
    v6 = *(v4 + 1080) - *(v4 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v4 + 4288), v3);
    v7 = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v6 + v5);
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4288), v7, v8);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v9 = this + *(*this - 24);
    v10 = *(this + 4720);
    v11 = *(this + 16);
    if (*(this + 3766) == 1)
    {
      v12 = *(this + 1133);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(this + 1183);
    v14 = *(this + 12);
    v9[4454] = 1;
    v15 = *(v9 + 1106);
    v16 = *(v9 + 1104) - *(v9 + 1108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 548, 10, v13);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 548, 8, v12);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 548, 12, v14, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 548, 6, v11, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 548, 4, v10, 0);
    v17 = flatbuffers::FlatBufferBuilder::EndTable((v9 + 4384), v16 + v15);
    v18 = this + *(*this - 24);
    v18[4454] = 1;
    v19 = *(v18 + 1106);
    v20 = *(v18 + 1104) - *(v18 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v18 + 4384), v17);
    v21 = *(*this - 24);
    v22 = flatbuffers::FlatBufferBuilder::EndTable((v18 + 4384), v20 + v19);
    flatbuffers::FlatBufferBuilder::Finish((this + v21 + 4384), v22, v23);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
    v24 = this + *(*this - 24);
    if (*(v24 + 314))
    {
      v25 = v24 + 2512;
      v26 = *(v24 + 315);
      v27 = v24 + 3072;
      if (v26)
      {
        v27 = v25;
      }
    }

    else
    {
      v27 = v24 + 3072;
    }

    v28 = (*v27 + **v27);
    v29 = (v28 + *(v28 - *v28 + 4));
    v30 = (v29 + *v29 + *(v29 + *v29 - *(v29 + *v29) + 8));
    return *(v30 + *v30) < 0x21;
  }

  return result;
}

void AGCLLVMUserTileShader::getCompilationKeyDescription(AGCLLVMUserTileShader *this@<X0>, std::string *a2@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = *(this + 586);
  std::string::basic_string[abi:nn200100]<0>(&v72, "AGCTileState");
  std::string::basic_string[abi:nn200100]<0>(&v69, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v80, &v69.__r_.__value_.__l.__data_, *v4);
  std::string::basic_string[abi:nn200100]<0>(__p, "dispatchSizeMatchesTileSize");
  _agcFieldString<unsigned int>(&v81, __p, v4[1] & 1);
  _agcGroupWithHeader(&v28, &v72, &v80, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v81.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v80 + i * 8 + 24));
    }
  }

  if (v68 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v6 = *(this + 585);
  std::string::basic_string[abi:nn200100]<0>(v46, "AGCDrawBufferState");
  std::string::basic_string[abi:nn200100]<0>(__p, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(&v66, "enabledBits");
  v7 = *(v6 + 32);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v80);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v80.__r_.__value_.__r + *(v80.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v80.__r_.__value_.__r + *(v80.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v8, v7);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v72, &v66.__r_.__value_.__l.__data_, &v69);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v80.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v80.__r_.__value_.__r.__words + *(v80.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v80.__r_.__value_.__r.__words[2] = v9;
  v81.__r_.__value_.__r.__words[0] = MEMORY[0x277D82878] + 16;
  if (v84.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v83.__r_.__value_.__r.__words[2]);
  }

  v81.__r_.__value_.__r.__words[0] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v81.__r_.__value_.__r.__words[1]);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v85.__r_.__value_.__r.__words[1]);
  std::string::basic_string[abi:nn200100]<0>(v64, "sampleCount");
  _agcFieldString<unsigned char>(&v73, v64, 1 << (BYTE1(*(v6 + 32)) & 3));
  std::string::basic_string[abi:nn200100]<0>(&v63, "colorSampleCount");
  _agcFieldString<unsigned char>(&v74, &v63.__r_.__value_.__l.__data_, 1 << ((*(v6 + 32) >> 10) & 3));
  v10 = *(v6 + 32) & 0x1FF000;
  if (v10 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(v59, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v57, "unknown");
    _agcFieldString<std::string>(&v75, v59, v57);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v61, "outputPartitionSize");
    v11 = *(v6 + 32);
    if ((~v11 & 0x1FF000) == 0)
    {
      goto LABEL_127;
    }

    std::to_string(&v80, (v11 >> 12) & 0x1FF);
    _agcFieldString<std::string>(&v75, v61, &v80);
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  v12 = *(v6 + 32);
  if ((v12 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v55, "LIBSpilling");
    v13 = *(v6 + 32);
    if ((v13 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v76, v55, (v13 & 0x200000) != 0);
      goto LABEL_24;
    }

LABEL_127:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(v53, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(v51, "unknown");
  _agcFieldString<std::string>(&v76, v53, v51);
LABEL_24:
  std::string::basic_string[abi:nn200100]<0>(&v80, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v77, &v80.__r_.__value_.__l.__data_, (*(v6 + 32) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v49, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v78, v49, *(v6 + 35) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&v48, "useSlabs");
  _agcFieldString<unsigned char>(&v79, &v48.__r_.__value_.__l.__data_, (*(v6 + 32) & 0x10000000) != 0);
  _agcGroupWithHeader(&v69, __p, &v72, 8);
  for (j = 0; j != -24; j -= 3)
  {
    if (SHIBYTE(v79.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v79.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

LABEL_39:
    if ((v56 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v15 = v55[0];
    goto LABEL_41;
  }

  operator delete(v80.__r_.__value_.__l.__data_);
  if ((v12 & 0x400000) != 0)
  {
    goto LABEL_39;
  }

LABEL_34:
  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    v15 = v53[0];
LABEL_41:
    operator delete(v15);
  }

LABEL_42:
  if (v10 != 2093056)
  {
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v16 = v61[0];
    goto LABEL_49;
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    v16 = v59[0];
LABEL_49:
    operator delete(v16);
  }

LABEL_50:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (v68 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v72, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(__p, "encoded[0]");
  _agcStringRepresentation(&v66, v6);
  _agcFieldString<std::string>(&v80, __p, &v66);
  std::string::basic_string[abi:nn200100]<0>(v64, "encoded[1]");
  _agcStringRepresentation(&v63, (v6 + 4));
  _agcFieldString<std::string>(&v81, v64, &v63);
  std::string::basic_string[abi:nn200100]<0>(v49, "encoded[2]");
  _agcStringRepresentation(&v48, (v6 + 8));
  _agcFieldString<std::string>(&v82, v49, &v48);
  std::string::basic_string[abi:nn200100]<0>(v44, "encoded[3]");
  _agcStringRepresentation(&v43, (v6 + 12));
  _agcFieldString<std::string>(&v83, v44, &v43);
  std::string::basic_string[abi:nn200100]<0>(v41, "encoded[4]");
  _agcStringRepresentation(&v40, (v6 + 16));
  _agcFieldString<std::string>(&v84, v41, &v40);
  std::string::basic_string[abi:nn200100]<0>(v38, "encoded[5]");
  _agcStringRepresentation(&v37, (v6 + 20));
  _agcFieldString<std::string>(&v85, v38, &v37);
  std::string::basic_string[abi:nn200100]<0>(v35, "encoded[6]");
  _agcStringRepresentation(&v34, (v6 + 24));
  _agcFieldString<std::string>(&v86, v35, &v34);
  std::string::basic_string[abi:nn200100]<0>(v32, "encoded[7]");
  _agcStringRepresentation(&v31, (v6 + 28));
  _agcFieldString<std::string>(v87, v32, &v31);
  _agcGroupWithHeader(&v70, &v72, &v80, 8);
  std::string::basic_string[abi:nn200100]<0>(v29, "_unused");
  _agcFieldString<unsigned int>(&v71, v29, *(v6 + 36));
  _agcGroupWithHeader(&v27, v46, &v69, 3);
  for (k = 0; k != -9; k -= 3)
  {
    if (SHIBYTE(v71.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v71.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  for (m = 0; m != 0x1FFFFFFFFFFFFFE8; m -= 3)
  {
    if (SHIBYTE(v87[0].__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(v87[m / 3].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (v68 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  v19 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v21 = &v80;
  std::string::basic_string[abi:nn200100](&v80, size + 1);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v80.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if (v19 >= 0)
    {
      v22 = &v28;
    }

    else
    {
      v22 = v28.__r_.__value_.__r.__words[0];
    }

    memmove(v21, v22, size);
  }

  *(&v21->__r_.__value_.__l.__data_ + size) = 10;
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v27;
  }

  else
  {
    v23 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v27.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v80, v23, v24);
  *a2 = *v25;
  v25->__r_.__value_.__r.__words[0] = 0;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

LABEL_126:
    operator delete(v28.__r_.__value_.__l.__data_);
    goto LABEL_124;
  }

  if (v19 < 0)
  {
    goto LABEL_126;
  }

LABEL_124:
  v26 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMUserTileShader::~AGCLLVMUserTileShader(AGCLLVMUserTileShader *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2825A64B8;
  *(v1 + 594) = &unk_2825A6820;
  *(v1 + 807) = &unk_2825A6930;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 588));
  v2 = (v1 + 4656);
  v3 = -144;
  while (1)
  {
    v4 = *(v2 + 2);
    if (v4 != -8192 && v4 != -4096 && v4 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v2);
    }

    v2 = (v2 - 24);
    v3 += 24;
    if (!v3)
    {
      AGCLLVMUserShader::~AGCLLVMUserShader(v1, off_2825A6940);
      AGCLLVMObject::~AGCLLVMObject((v1 + 4752));

      JUMPOUT(0x20F331DC0);
    }
  }
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2825A64B8;
  *(v1 + 594) = &unk_2825A6820;
  *(v1 + 807) = &unk_2825A6930;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 588));
  v2 = (v1 + 4656);
  v3 = -144;
  do
  {
    v4 = *(v2 + 2);
    if (v4 != -8192 && v4 != -4096 && v4 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v2);
    }

    v2 = (v2 - 24);
    v3 += 24;
  }

  while (v3);
  AGCLLVMUserShader::~AGCLLVMUserShader(v1, off_2825A6940);

  AGCLLVMObject::~AGCLLVMObject((v1 + 4752));
}

uint64_t AGCLLVMUserTileShader::needsThreadgroupMemoryOOBChecks(AGCLLVMUserTileShader *this)
{
  if (*(*(this + *(*this - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(this);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserTileShader::getTileConstant(void *a1, unsigned int a2)
{
  if (a2 <= 1 && (*(a1[586] + 4) & 1) != 0)
  {
    v4 = *(a1 + *(*a1 - 24) + 2168);
    v5 = (*(*v4 + 688))(v4);
    v6 = a1 + *(*a1 - 24);
    v28 = *(v6 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (v6 + 1712));
    v30 = *(v6 + 452);
    v7 = AGCLLVMGen3TargetLowerer::buildLocalSize(v5, &v28, *(a1 + *(*a1 - 24) + 1904), a2);
    if (v29)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v8 = &a1[3 * a2];
    v9 = (v8 + 567);
    if (!v8[569])
    {
      v10 = a2;
      v11 = 1;
      v12 = llvm::User::operator new(0x58);
      v13 = (a1 + *(*a1 - 24));
      v14 = v13[267];
      v15 = v13[238];
      v16 = &(&AGCLLVMUserTileShader::getTileConstant(AGCLLVMUserShader::TileConstant)::tile_constant_info)[2 * v10];
      v17 = *v16;
      HIBYTE(v27) = 1;
      if (*v17)
      {
        v26 = v17;
        v11 = 3;
      }

      LOBYTE(v27) = v11;
      v25 = *(v13[271] + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v12 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v18 = a1 + *(*a1 - 24);
      v19 = *(v16 + 2);
      v20 = *(v18 + 268);
      v21 = AGCLLVMBuilder::buildGlobalMetadata((v18 + 1704), v12);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v20, v21);
      llvm::ValueHandleBase::operator=(v9, v12);
    }

    v22 = a1 + *(*a1 - 24);
    v23 = *(v9 + 2);
    v27 = 257;
    return AGCLLVMBuilder::CreateLoad((v22 + 1704), v23, &v26);
  }

  return v7;
}

uint64_t AGCLLVMUserTileShader::buildTileQuadgroupIndexInThreadgroup(AGCLLVMUserTileShader *this, llvm::Type *a2)
{
  if (*(*(this + 586) + 4))
  {
    v5 = *(this + *(*this - 24) + 2168);
    v6 = (*(*v5 + 688))(v5);
    v7 = this + *(*this - 24);
    v9 = *(v7 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v7 + 1712));
    v11 = *(v7 + 452);
    v8 = AGCLLVMGen3TargetLowerer::buildQuadGroup(v6, &v9, a2);
    if (v10)
    {
      llvm::MetadataTracking::untrack();
    }

    return v8;
  }

  else
  {

    return AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup(this, a2);
  }
}

uint64_t AGCLLVMUserTileShader::buildTileThreadPositionInGrid(AGCLLVMUserTileShader *this, llvm::Type *a2, uint64_t a3)
{
  v3 = a3;
  if (*(*(this + 586) + 4))
  {
    v7 = *(this + *(*this - 24) + 2168);
    v8 = (*(*v7 + 688))(v7);
    v9 = this + *(*this - 24);
    v11 = *(v9 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v9 + 1712));
    v13 = *(v9 + 452);
    v10 = AGCLLVMGen3TargetLowerer::buildGlobalID(v8, &v11, a2, v3);
    if (v12)
    {
      llvm::MetadataTracking::untrack();
    }

    return v10;
  }

  else
  {

    return AGCLLVMUserShader::buildTileThreadPositionInGrid(this, a2, a3);
  }
}

uint64_t AGCLLVMUserTileShader::replaceBuiltins(AGCLLVMUserTileShader *this)
{
  v113 = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObject::replaceBuiltins(this);
  if (!result)
  {
    goto LABEL_129;
  }

  v82 = result;
  v3 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v103, *v3);
  v110 = this;
  v103 = &unk_2825A7338;
  v109[37] = v3;
  {
    AGCLLVMUserTileShader::replaceWorkitemFunctions(void)::workitem_functions[0] = "air.get_global_size.i32";
    dword_27C8D7BC8 = 1;
    qword_27C8D7BD0 = AGCLLVMUserShader::buildTileThreadsPerGrid;
    unk_27C8D7BD8 = 0;
    dword_27C8D7BE0 = 4;
    word_27C8D7BE4 = 0;
    qword_27C8D7BE8 = "air.get_global_size.i16";
    dword_27C8D7BF0 = 1;
    qword_27C8D7BF8 = AGCLLVMUserShader::buildTileThreadsPerGrid;
    unk_27C8D7C00 = 0;
    dword_27C8D7C08 = 4;
    word_27C8D7C0C = 0;
    qword_27C8D7C10 = "air.get_global_id.i32";
    dword_27C8D7C18 = 1;
    qword_27C8D7C20 = AGCLLVMUserShader::buildTileThreadPositionInGrid;
    unk_27C8D7C28 = 0;
    dword_27C8D7C30 = 4;
    word_27C8D7C34 = 0;
    qword_27C8D7C38 = "air.get_global_id.i16";
    dword_27C8D7C40 = 1;
    qword_27C8D7C48 = AGCLLVMUserShader::buildTileThreadPositionInGrid;
    unk_27C8D7C50 = 0;
    dword_27C8D7C58 = 4;
    word_27C8D7C5C = 0;
    qword_27C8D7C60 = "air.get_local_size.i32";
    dword_27C8D7C68 = 1;
    qword_27C8D7C70 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    unk_27C8D7C78 = 0;
    dword_27C8D7C80 = 4;
    word_27C8D7C84 = 0;
    qword_27C8D7C88 = "air.get_local_size.i16";
    dword_27C8D7C90 = 1;
    qword_27C8D7C98 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    unk_27C8D7CA0 = 0;
    dword_27C8D7CA8 = 4;
    word_27C8D7CAC = 0;
    qword_27C8D7CB0 = "air.get_local_id.i32";
    dword_27C8D7CB8 = 1;
    qword_27C8D7CC0 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup;
    unk_27C8D7CC8 = 0;
    dword_27C8D7CD0 = 4;
    word_27C8D7CD4 = 0;
    qword_27C8D7CD8 = "air.get_local_id.i16";
    dword_27C8D7CE0 = 1;
    qword_27C8D7CE8 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup;
    unk_27C8D7CF0 = 0;
    dword_27C8D7CF8 = 4;
    word_27C8D7CFC = 0;
    qword_27C8D7D00 = "air.get_local_linear_id.i32";
    dword_27C8D7D08 = 1;
    qword_27C8D7D10 = AGCLLVMUserShader::buildTileThreadIndexInThreadgroup;
    unk_27C8D7D18 = 0;
    dword_27C8D7D20 = 2;
    word_27C8D7D24 = 0;
    qword_27C8D7D28 = "air.get_local_linear_id.i16";
    dword_27C8D7D30 = 1;
    qword_27C8D7D38 = AGCLLVMUserShader::buildTileThreadIndexInThreadgroup;
    unk_27C8D7D40 = 0;
    dword_27C8D7D48 = 2;
    word_27C8D7D4C = 0;
    qword_27C8D7D50 = "air.get_num_groups.i32";
    dword_27C8D7D58 = 1;
    qword_27C8D7D60 = AGCLLVMUserShader::buildTileThreadgroupsPerGrid;
    unk_27C8D7D68 = 0;
    dword_27C8D7D70 = 4;
    word_27C8D7D74 = 0;
    qword_27C8D7D78 = "air.get_num_groups.i16";
    dword_27C8D7D80 = 1;
    qword_27C8D7D88 = AGCLLVMUserShader::buildTileThreadgroupsPerGrid;
    unk_27C8D7D90 = 0;
    dword_27C8D7D98 = 4;
    word_27C8D7D9C = 0;
    qword_27C8D7DA0 = "air.get_group_id.i32";
    dword_27C8D7DA8 = 1;
    qword_27C8D7DB0 = AGCLLVMUserShader::buildTileThreadgroupPositionInGrid;
    unk_27C8D7DB8 = 0;
    dword_27C8D7DC0 = 4;
    word_27C8D7DC4 = 0;
    qword_27C8D7DC8 = "air.get_group_id.i16";
    dword_27C8D7DD0 = 1;
    qword_27C8D7DD8 = AGCLLVMUserShader::buildTileThreadgroupPositionInGrid;
    qword_27C8D7DE0 = 0;
    dword_27C8D7DE8 = 4;
    word_27C8D7DEC = 0;
    qword_27C8D7DF0 = "air.get_dispatch_local_size.i32";
    dword_27C8D7DF8 = 1;
    qword_27C8D7E00 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    qword_27C8D7E08 = 0;
    dword_27C8D7E10 = 4;
    word_27C8D7E14 = 0;
    qword_27C8D7E18 = "air.get_dispatch_local_size.i16";
    dword_27C8D7E20 = 1;
    qword_27C8D7E28 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    qword_27C8D7E30 = 0;
    dword_27C8D7E38 = 4;
    word_27C8D7E3C = 0;
    qword_27C8D7E40 = "air.get_quadgroups_per_threadgroup.i32";
    dword_27C8D7E48 = 1;
    qword_27C8D7E50 = AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup;
    qword_27C8D7E58 = 0;
    dword_27C8D7E60 = 2;
    word_27C8D7E64 = 0;
    qword_27C8D7E68 = "air.get_quadgroups_per_threadgroup.i16";
    dword_27C8D7E70 = 1;
    qword_27C8D7E78 = AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup;
    qword_27C8D7E80 = 0;
    dword_27C8D7E88 = 2;
    word_27C8D7E8C = 0;
    qword_27C8D7E90 = "air.get_dispatch_quadgroups_per_threadgroup.i32";
    dword_27C8D7E98 = 1;
    qword_27C8D7EA0 = AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup;
    qword_27C8D7EA8 = 0;
    dword_27C8D7EB0 = 2;
    word_27C8D7EB4 = 0;
    qword_27C8D7EB8 = "air.get_dispatch_quadgroups_per_threadgroup.i16";
    dword_27C8D7EC0 = 1;
    qword_27C8D7EC8 = AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup;
    qword_27C8D7ED0 = 0;
    dword_27C8D7ED8 = 2;
    word_27C8D7EDC = 0;
    qword_27C8D7EE0 = "air.get_quad_group.i32";
    dword_27C8D7EE8 = 1;
    qword_27C8D7EF0 = AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup;
    qword_27C8D7EF8 = 0;
    dword_27C8D7F00 = 2;
    word_27C8D7F04 = 0;
    qword_27C8D7F08 = "air.get_quad_group.i16";
    dword_27C8D7F10 = 1;
    qword_27C8D7F18 = AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup;
    qword_27C8D7F20 = 0;
    dword_27C8D7F28 = 2;
    word_27C8D7F2C = 0;
    qword_27C8D7F30 = "air.get_simdgroups_per_threadgroup.i32";
    dword_27C8D7F38 = 1;
    qword_27C8D7F40 = AGCLLVMUserTileShader::buildSimdgroupsPerThreadgroup;
    qword_27C8D7F48 = 0;
    dword_27C8D7F50 = 2;
    word_27C8D7F54 = 0;
    qword_27C8D7F58 = "air.get_simdgroups_per_threadgroup.i16";
    dword_27C8D7F60 = 1;
    qword_27C8D7F68 = AGCLLVMUserTileShader::buildSimdgroupsPerThreadgroup;
    qword_27C8D7F70 = 0;
    dword_27C8D7F78 = 2;
    word_27C8D7F7C = 0;
    qword_27C8D7F80 = "air.get_dispatch_simdgroups_per_threadgroup.i32";
    dword_27C8D7F88 = 1;
    qword_27C8D7F90 = AGCLLVMUserTileShader::buildDispatchSimdgroupsPerThreadgroup;
    qword_27C8D7F98 = 0;
    dword_27C8D7FA0 = 2;
    word_27C8D7FA4 = 0;
    qword_27C8D7FA8 = "air.get_dispatch_simdgroups_per_threadgroup.i16";
    dword_27C8D7FB0 = 1;
    qword_27C8D7FB8 = AGCLLVMUserTileShader::buildDispatchSimdgroupsPerThreadgroup;
    qword_27C8D7FC0 = 0;
    dword_27C8D7FC8 = 2;
    word_27C8D7FCC = 0;
    qword_27C8D7FD0 = "air.get_stage_in_grid_origin.i32";
    dword_27C8D7FD8 = 1;
    qword_27C8D7FE0 = AGCLLVMUserTileShader::buildStageInOrigin;
    qword_27C8D7FE8 = 0;
    dword_27C8D7FF0 = 4;
    word_27C8D7FF4 = 0;
    qword_27C8D7FF8 = "air.get_stage_in_grid_origin.i16";
    dword_27C8D8000 = 1;
    qword_27C8D8008 = AGCLLVMUserTileShader::buildStageInOrigin;
    qword_27C8D8010 = 0;
    dword_27C8D8018 = 4;
    word_27C8D801C = 0;
    qword_27C8D8020 = "air.get_stage_in_grid_size.i32";
    dword_27C8D8028 = 1;
    qword_27C8D8030 = AGCLLVMUserTileShader::buildStageInSize;
    qword_27C8D8038 = 0;
    dword_27C8D8040 = 4;
    word_27C8D8044 = 0;
    qword_27C8D8048 = "air.get_stage_in_grid_size.i16";
    dword_27C8D8050 = 1;
    qword_27C8D8058 = AGCLLVMUserTileShader::buildStageInSize;
    qword_27C8D8060 = 0;
    dword_27C8D8068 = 4;
    word_27C8D806C = 0;
    qword_27C8D8070 = "air.get_quadgroup_index_in_threadgroup.i32";
    dword_27C8D8078 = 1;
    qword_27C8D8080 = AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup;
    qword_27C8D8088 = 0;
    dword_27C8D8090 = 2;
    word_27C8D8094 = 0;
    qword_27C8D8098 = "air.get_quadgroup_index_in_threadgroup.i16";
    dword_27C8D80A0 = 1;
    qword_27C8D80A8 = AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup;
    qword_27C8D80B0 = 0;
    dword_27C8D80B8 = 2;
    word_27C8D80BC = 0;
    qword_27C8D80C0 = "air.get_thread_index_in_quadgroup.i32";
    dword_27C8D80C8 = 1;
    qword_27C8D80D0 = AGCLLVMUserTileShader::buildQuadElement;
    qword_27C8D80D8 = 0;
    dword_27C8D80E0 = 2;
    word_27C8D80E4 = 0;
    qword_27C8D80E8 = "air.get_thread_index_in_quadgroup.i16";
    dword_27C8D80F0 = 1;
    qword_27C8D80F8 = AGCLLVMUserTileShader::buildQuadElement;
    qword_27C8D8100 = 0;
    dword_27C8D8108 = 2;
    word_27C8D810C = 0;
    qword_27C8D8110 = "air.get_dispatch_threads_per_threadgroup.i32";
    dword_27C8D8118 = 1;
    qword_27C8D8120 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    qword_27C8D8128 = 0;
    dword_27C8D8130 = 4;
    word_27C8D8134 = 0;
    qword_27C8D8138 = "air.get_dispatch_threads_per_threadgroup.i16";
    dword_27C8D8140 = 1;
    qword_27C8D8148 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    qword_27C8D8150 = 0;
    dword_27C8D8158 = 4;
    word_27C8D815C = 0;
  }

  for (i = 0; i != 36; ++i)
  {
    v5 = &AGCLLVMUserTileShader::replaceWorkitemFunctions(void)::workitem_functions[5 * i];
    v90 = v5;
    if (*v5)
    {
      v6 = strlen(*v5);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v8 = *(v90 + 8);
      v85 = Function;
      if (v8 == 12)
      {
        for (j = *(Function + 8); j; v106 = 0uLL)
        {
          v12 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(v104, v12);
          v13 = v110 + *(*v110 - 24);
          v100 = v106;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v101, v104);
          v102 = v107;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v100, (v13 + 1712));
          if (v101)
          {
            llvm::MetadataTracking::untrack();
          }

          v14 = v90[2];
          v15 = v90[3];
          v16 = (v110 + (v15 >> 1));
          if (v15)
          {
            v14 = *(*v16 + v14);
          }

          (v14)(v16, v12);
        }

        goto LABEL_124;
      }

      if (v8 == 11)
      {
        v9 = v90[2];
        if (v9)
        {
          v10 = strlen(v90[2]);
          *&v111[0] = &v111[1] + 8;
          *(v111 + 8) = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v111, v9, &v9[v10]);
        }

        else
        {
          *&v111[1] = 64;
          v111[0] = &v111[1] + 8;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v111, ".", "");
        if (*&v111[1] < *(&v111[0] + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v80 = *(v85 + 3);
        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (*&v111[0] != (&v111[1] + 8))
        {
          free(*&v111[0]);
        }

        goto LABEL_124;
      }

      v84 = i;
      v17 = **(*(Function + 24) + 16);
      v18 = ((*(v17 + 8) & 0xFE) == 18) & *(v90 + 37);
      if (v18 == 1)
      {
        v19 = *(v17 + 32);
      }

      else
      {
        v19 = 1;
      }

      v88 = v19;
      v83 = v107;
      v20 = *(Function + 8);
      if (!v20)
      {
LABEL_118:
        v107 = v83;
        i = v84;
LABEL_124:
        llvm::Function::eraseFromParent(v85);
        continue;
      }

      v86 = **(*(Function + 24) + 16);
      while (1)
      {
        v21 = *(v20 + 24);
        v87 = *(v20 + 8);
        v22 = *(v90 + 2);
        if (v22 == 1)
        {
          v23 = 0;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_28;
          }

          v23 = 121;
        }

        v107 = v23;
LABEL_28:
        llvm::IRBuilderBase::SetInsertPoint(v104, v21);
        v24 = llvm::UndefValue::get();
        if (v88)
        {
          for (k = 0; k != v88; ++k)
          {
            v89 = v24;
            v112 = 0;
            memset(v111, 0, sizeof(v111));
            v26 = llvm::CallBase::arg_end(v21) - v21 + 32 * (*(v21 + 5) & 0x7FFFFFF);
            if ((v26 & 0x1FFFFFFFE0) != 0)
            {
              v27 = (v26 >> 5);
              v28 = v111;
              v29 = v21;
              do
              {
                v30 = (v29 - 32 * (*(v21 + 5) & 0x7FFFFFF));
                v31 = *v30;
                *v28 = *v30;
                if (v18 && (*(*v31 + 8) & 0xFE) == 0x12)
                {
                  v99 = 257;
                  v32 = llvm::ConstantInt::get();
                  *v28 = llvm::IRBuilderBase::CreateExtractElement(v104, v31, v32, &PrimitiveSizeInBits);
                }

                ++v28;
                v29 = (v29 + 32);
                --v27;
              }

              while (v27);
            }

            if (*(v90 + 36))
            {
              v33 = **&v111[0];
              if ((*(**&v111[0] + 8) & 0xFE) == 0x12)
              {
                v33 = **(v33 + 2);
              }

              PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v33);
              v98 = v34;
              if (llvm::TypeSize::operator unsigned long long() == 32)
              {
                v35 = 0;
              }

              else
              {
                v49 = v109[4];
                if ((*(**&v111[0] + 8) & 0xFE) == 0x12)
                {
                  v50 = *(**&v111[0] + 32);
                  v49 = llvm::FixedVectorType::get();
                }

                if ((v26 & 0x1FFFFFFFE0) != 0)
                {
                  v51 = (v26 >> 5);
                  v52 = v111;
                  do
                  {
                    v53 = *v52;
                    v99 = 257;
                    *v52++ = llvm::IRBuilderBase::CreateFPExt(v104, v53, v49, &PrimitiveSizeInBits);
                    --v51;
                  }

                  while (v51);
                  v35 = 1;
                }

                else
                {
                  v35 = 1;
                }
              }
            }

            else
            {
              v35 = 0;
            }

            if (llvm::FPMathOperator::classof(v21))
            {
              FastMathFlags = llvm::Instruction::getFastMathFlags(v21);
            }

            else
            {
              FastMathFlags = 0;
            }

            v37 = v110 + *(*v110 - 24);
            v94 = v106;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v95, v104);
            v96 = v107;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v94, (v37 + 1712));
            if (v95)
            {
              llvm::MetadataTracking::untrack();
            }

            FPTrunc = 0;
            v39 = *(v90 + 8);
            if (v39 > 5)
            {
              if (v39 <= 7)
              {
                if (v39 == 6)
                {
                  v58 = v90[2];
                  v67 = v90[3];
                  v61 = *(&v111[0] + 1);
                  v60 = *&v111[0];
                  v63 = (v110 + (v67 >> 1));
                  if (v67)
                  {
                    v58 = *(*v63 + v58);
                  }

                  v62 = FastMathFlags;
                }

                else
                {
                  v58 = v90[2];
                  v59 = v90[3];
                  v61 = *(&v111[0] + 1);
                  v60 = *&v111[0];
                  v62 = *&v111[1];
                  v63 = (v110 + (v59 >> 1));
                  if (v59)
                  {
                    v69 = (*(*v63 + v58))(v63, *&v111[0], *(&v111[0] + 1), *&v111[1]);
                    goto LABEL_104;
                  }
                }

LABEL_103:
                v69 = (v58)(v63, v60, v61, v62);
                goto LABEL_104;
              }

              switch(v39)
              {
                case 8:
                  v45 = v90[2];
                  v70 = v90[3];
                  v71 = *(&v111[0] + 1);
                  v47 = *&v111[0];
                  v72 = *&v111[1];
                  v48 = (v110 + (v70 >> 1));
                  if (v70)
                  {
                    v45 = *(*v48 + v45);
                  }

                  v76 = FastMathFlags;
                  goto LABEL_99;
                case 9:
                  v58 = v90[2];
                  v75 = v90[3];
                  v63 = (v110 + (v75 >> 1));
                  if (v75)
                  {
                    v58 = *(*v63 + v58);
                  }

                  v60 = v111;
                  v61 = &unk_20E75F419;
                  v62 = 0;
                  goto LABEL_103;
                case 10:
                  v45 = v90[2];
                  v46 = v90[3];
                  v47 = *v21;
                  v48 = (v110 + (v46 >> 1));
                  if (v46)
                  {
                    v45 = *(*v48 + v45);
                  }

                  v71 = v111;
                  v72 = &unk_20E75F419;
                  v76 = 0;
LABEL_99:
                  v69 = (v45)(v48, v47, v71, v72, v76);
                  goto LABEL_104;
              }
            }

            else
            {
              if (v39 > 2)
              {
                if (v39 != 3)
                {
                  if (v39 == 4)
                  {
                    v73 = (*&v111[0] + 24);
                    if (*(*&v111[0] + 32) >= 0x41u)
                    {
                      v73 = *v73;
                    }

                    v43 = *v73;
                    v40 = v90[2];
                    v74 = v90[3];
                    v42 = *v21;
                    v44 = (v110 + (v74 >> 1));
                    if (v74)
                    {
                      v40 = *(*v44 + v40);
                    }
                  }

                  else
                  {
                    v40 = v90[2];
                    v41 = v90[3];
                    v43 = *(&v111[0] + 1);
                    v42 = *&v111[0];
                    v44 = (v110 + (v41 >> 1));
                    if (v41)
                    {
                      v40 = *(*v44 + v40);
                    }
                  }

                  v69 = (v40)(v44, v42, v43);
                  goto LABEL_104;
                }

                v54 = v90[2];
                v68 = v90[3];
                v56 = *&v111[0];
                v57 = (v110 + (v68 >> 1));
                if ((v68 & 1) == 0)
                {
                  goto LABEL_79;
                }

                goto LABEL_78;
              }

              if (v39 == 1)
              {
                v64 = v90[2];
                v65 = v90[3];
                v66 = (v110 + (v65 >> 1));
                if (v65)
                {
                  v64 = *(*v66 + v64);
                }

                v69 = (v64)(v66);
                goto LABEL_104;
              }

              if (v39 == 2)
              {
                v54 = v90[2];
                v55 = v90[3];
                v56 = *v21;
                v57 = (v110 + (v55 >> 1));
                if ((v55 & 1) == 0)
                {
LABEL_79:
                  v69 = (v54)(v57, v56);
LABEL_104:
                  FPTrunc = v69;
                  goto LABEL_105;
                }

LABEL_78:
                v54 = *(*v57 + v54);
                goto LABEL_79;
              }
            }

LABEL_105:
            v77 = v110 + *(*v110 - 24);
            v91 = *(v77 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (v77 + 1712));
            v93 = *(v77 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v91, v104);
            if (v92)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v35)
            {
              v78 = *v21;
              if (v18 && (*(v78 + 8) & 0xFE) == 0x12)
              {
                v78 = **(v78 + 16);
              }

              v99 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v104, FPTrunc, v78, &PrimitiveSizeInBits);
            }

            if (v18)
            {
              v99 = 257;
              v79 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v104, v89, FPTrunc, v79, &PrimitiveSizeInBits);
            }

            v24 = FPTrunc;
          }
        }

        if (*v21 != v109[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v21);
        v20 = v87;
        if (!v87)
        {
          goto LABEL_118;
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v109);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v108);
  if (v104[0] != &v105)
  {
    free(v104[0]);
  }

  result = v82;
LABEL_129:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserTileShader::buildQuadElement(AGCLLVMUserTileShader *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserTileShader::buildQuadgroupsPerThreadgroupCommon<5u>(AGCLLVMUserShader *a1, llvm::Type *a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = (*(*a1 + 480))(a1, 0);
  v6 = AGCLLVMBuilder::truncateToSmall((a1 + *(*a1 - 24) + 1704), v5, a2);
  v7 = (*(*a1 + 480))(a1, 1);
  v8 = AGCLLVMBuilder::truncateToSmall((a1 + *(*a1 - 24) + 1704), v7, a2);
  v20 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v4 + 1712), v6, v8, v19);
  v10 = a1 + *(*a1 - 24);
  v11 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup(a1, a2, 2);
  v20 = 257;
  v12 = llvm::IRBuilderBase::CreateMul((v10 + 1712), Mul, v11, v19);
  v13 = a1 + *(*a1 - 24);
  v14 = llvm::ConstantInt::get();
  v20 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), v12, v14, v19);
  v16 = llvm::ConstantInt::get();
  v18[16] = 257;
  return llvm::IRBuilderBase::CreateLShr((v13 + 1712), Add, v16, v18);
}

uint64_t AGCLLVMUserTileShader::setupImageBlocks(AGCLLVMUserTileShader *this)
{
  v11 = *MEMORY[0x277D85DE8];
  AGCLLVMAirImageBlockGen3::AGCLLVMAirImageBlockGen3(v10, this, *(this + *(*this - 24) + 2136), *(this + *(*this - 24) + 2168), (this + 224));
  AGCLLVMAirImageBlockGen3::replaceBulkMemWrites(v10);
  if (*(this + 3766) == 1)
  {
    v2 = *(this + 1882) & 0xFF00;
    v3 = *(this + 1132) & 0xFF00;
    v4 = *(this + 1132);
    v5 = *(this + 1882);
    v6 = 0x10000;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v6 = 0;
    v2 = 0;
    v5 = 0;
  }

  v7 = AGCLLVMAirImageBlockGen3::setupImageBlocks(v10, (this + *(*this - 24) + 1656), v4 | v3 | v6, v2 | v5 | v6, *(this + 585));
  *(this + 4720) = v10[1040];
  *(this + *(*this - 24) + 1760) = 0u;
  AGCLLVMObject::replaceLIBSpillingFunctions((this + *(*this - 24)));
  AGCLLVMAirImageBlockGen3::~AGCLLVMAirImageBlockGen3(v10);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AGCLLVMUserTileShader::setupShaderOutputs(AGCLLVMUserTileShader *this)
{
  v1 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  return 1;
}

uint64_t AGCLLVMUserTileShader::setupShaderInputs(AGCLLVMUserTileShader *this)
{
  v2 = *(this + 21);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v6 = *(this + 21);
    v5 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v6;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v7 = *(v2 + 88) + 40 * *(v2 + 96);
  v8 = 1;
  if (v5 != v7)
  {
    v9 = this + 1704;
    v82 = this + 1904;
    v77 = this + 2168;
    v10 = "air.thread_index_in_quadgroup";
    v11 = "air.imageblock";
    while (1)
    {
      v12 = *(*(this + 10) + 8 * *(v5 + 32));
      if (v12)
      {
        v13 = *(v4 + 40);
        if (v13)
        {
          v14 = (v13 - 24);
        }

        else
        {
          v14 = 0;
        }

        AGCLLVMBuilder::SetInsertPoint(&v9[*(*this - 24)], v14, *(this + 5));
        AGCLLVMUserShader::replaceInputArgument(this, v5, *(v5 + 32), v12);
        if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), v10) || isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.quadgroup_index_in_threadgroup"))
        {
          *(this + 16) = 1;
        }

        else
        {
          if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), v11))
          {
            if (*(this + 3766) == 1)
            {
              v15 = *(this + 1882) | 0x10000;
            }

            else
            {
              v15 = 0;
            }

            v85 = v15 | v85 & 0xFFFFFFFF00000000;
            v23 = AGCLLVMUserShader::setupLIBMetadata(this, 2u, v85, v12, *(this + 585), 0, 0);
            if ((v23 & 1) == 0)
            {
              return 0;
            }

            if ((v23 & 0x100000000) != 0)
            {
              *(this + 1882) = WORD1(v23);
            }

            v24 = *v5;
            llvm::UndefValue::get();
LABEL_64:
            llvm::Value::replaceAllUsesWith();
            goto LABEL_18;
          }

          if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.render_target_array_index"))
          {
            v16 = v11;
            v17 = this + *(*this - 24);
            v18 = *(v17 + 271);
            if (v18[1861])
            {
              v19 = v10;
              v20 = *v5;
              v21 = (*(*v18 + 688))(v18);
              v22 = this + *(*this - 24);
              v86 = *(v22 + 110);
              llvm::IRBuilderBase::getCurrentDebugLocation(&v87, (v22 + 1712));
              v88 = *(v22 + 452);
              AGCLLVMGen3TargetLowerer::buildLayerId(v21, &v86, v20);
              if (v87)
              {
                llvm::MetadataTracking::untrack();
              }

              v10 = v19;
            }

            else
            {
              v39 = *(v17 + 238);
              v40 = llvm::ConstantInt::get();
              v41 = *v5;
              v89 = 257;
              llvm::IRBuilderBase::CreateCast((v17 + 1712), 38, v40, v41, &v86);
            }

            llvm::Value::replaceAllUsesWith();
            v11 = v16;
            goto LABEL_18;
          }

          if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.stage_in_grid_origin") || isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.stage_in_grid_size"))
          {
            String = llvm::MDString::getString(*(v12 - 8 * *(v12 + 8) + 8));
            v27 = v26;
            v28 = *v5;
            if (!*(this + 559))
            {
              v29 = *&v82[*(*this - 24)];
              v83 = llvm::PointerType::get();
              v30 = (*(**(*&v77[*(*this - 24)] + 920) + 496))();
              *&v86 = "agc.stagein_buffer_pointer.";
              v87 = v30;
              v89 = 2051;
              v31 = (*(**(*&v77[*(*this - 24)] + 920) + 496))();
              GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v83, &v86, v31, 24, 5, 0);
              llvm::ValueHandleBase::operator=((this + 4456), GlobalBufferBinding);
            }

            v33 = *&v82[*(*this - 24)];
            llvm::FixedVectorType::get();
            v78 = llvm::UndefValue::get();
            v34 = *(*this - 24);
            v35 = *(this + 559);
            v89 = 257;
            Load = AGCLLVMBuilder::CreateLoad(&v9[v34], v35, &v86);
            v81 = v28;
            v84 = Load;
            if (v27 == 22)
            {
              if (*String != 0x676174732E726961 || String[1] != 0x6972675F6E695F65 || *(String + 14) != 0x657A69735F646972)
              {
                return 0;
              }
            }

            else
            {
              if (v27 != 24)
              {
                return 0;
              }

              v37 = *String == 0x676174732E726961 && String[1] == 0x6972675F6E695F65;
              if (!v37 || String[2] != 0x6E696769726F5F64)
              {
                return 0;
              }
            }

            v44 = this + *(*this - 24);
            v45 = *(v44 + 238);
            v46 = Load;
            v47 = llvm::ConstantInt::get();
            v89 = 257;
            GEP = llvm::IRBuilderBase::CreateGEP((v44 + 1712), v45, v46, v47, &v86);
            v49 = *(*this - 24);
            v89 = 257;
            v50 = AGCLLVMBuilder::CreateLoad(&v9[v49], GEP, &v86);
            v51 = this + *(*this - 24);
            v89 = 257;
            v52 = *(v51 + 238);
            v53 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v51 + 1712), v78, v50, v53, &v86);
            v54 = this + *(*this - 24);
            v55 = *(v54 + 238);
            v56 = llvm::ConstantInt::get();
            v89 = 257;
            v57 = llvm::IRBuilderBase::CreateGEP((v54 + 1712), v55, v84, v56, &v86);
            v58 = *(*this - 24);
            v89 = 257;
            v59 = AGCLLVMBuilder::CreateLoad(&v9[v58], v57, &v86);
            v60 = this + *(*this - 24);
            v89 = 257;
            v61 = *(v60 + 238);
            v62 = llvm::ConstantInt::get();
            v80 = llvm::IRBuilderBase::CreateInsertElement((v60 + 1712), InsertElement, v59, v62, &v86);
            v63 = this + *(*this - 24);
            v64 = *(v63 + 238);
            v65 = llvm::ConstantInt::get();
            v89 = 257;
            v66 = llvm::IRBuilderBase::CreateGEP((v63 + 1712), v64, v84, v65, &v86);
            v67 = *(*this - 24);
            v89 = 257;
            v68 = AGCLLVMBuilder::CreateLoad(&v9[v67], v66, &v86);
            v69 = this + *(*this - 24);
            v89 = 257;
            v70 = *(v69 + 238);
            v71 = llvm::ConstantInt::get();
            v72 = llvm::IRBuilderBase::CreateInsertElement((v69 + 1712), v80, v68, v71, &v86);
            v73 = v81;
            v10 = "air.thread_index_in_quadgroup";
            v11 = "air.imageblock";
            if ((*(v81 + 8) & 0xFE) == 0x12)
            {
              v74 = *(v81 + 32);
            }

            else
            {
              v74 = 1;
            }

            v75 = AGCLLVMBuilder::subrangeVector(&v9[*(*this - 24)], v72, 0, v74, 1);
            if ((*(v81 + 8) & 0xFE) == 0x12)
            {
              v73 = **(v81 + 16);
            }

            if (!AGCLLVMBuilder::truncateToSmall(&v9[*(*this - 24)], v75, v73))
            {
              return 0;
            }

            goto LABEL_64;
          }
        }
      }

LABEL_18:
      v5 += 40;
      if (v5 == v7)
      {
        return 1;
      }
    }
  }

  return v8;
}

llvm::Value *AGCLLVMUserTileShader::addWrapperPostfix(AGCLLVMUserTileShader *this)
{
  v13[2] = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObject::detectTextureWrites(this);
  if (result)
  {
    v3 = (this + *(*this - 24));
    v4 = v3[271];
    v5 = *(v4 + 1048);
    if (v5)
    {
      v6 = strlen(*(v4 + 1048));
    }

    else
    {
      v6 = 0;
    }

    v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v3 + 213), v5, v6, v3[231], v3[237], v3[237]);
    v8 = *(this + *(*this - 24) + 1896);
    v13[0] = llvm::ConstantInt::get();
    v9 = *(this + *(*this - 24) + 1896);
    v13[1] = llvm::ConstantInt::get();
    v10 = this + *(*this - 24);
    v12[16] = 257;
    result = llvm::IRBuilderBase::CreateCall((v10 + 1712), *(v7 + 24), v7, v13, 2, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

char *llvm::PassInfoMixin<InitCompileTileShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4B)
  {
    v1 = v0;
  }

  else
  {
    v1 = 75;
  }

  v2 = &aStringrefLlvmG_70[v1];
  v3 = 75 - v1;
  if ((75 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 75 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileTileShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileTileShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGTileShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x50)
  {
    v1 = v0;
  }

  else
  {
    v1 = 80;
  }

  v2 = &aStringrefLlvmG_69[v1];
  v3 = 80 - v1;
  if ((80 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 80 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGTileShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGTileShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserTileShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x65)
  {
    v1 = v0;
  }

  else
  {
    v1 = 101;
  }

  v2 = &aStringrefLlvmG_68[v1];
  v3 = 101 - v1;
  if ((101 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 101 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void AGCLLVMUserTileShader::~AGCLLVMUserTileShader(AGCLLVMUserTileShader *this)
{
  *this = &unk_2825A64B8;
  v2 = (this + 4752);
  *(this + 594) = &unk_2825A6820;
  *(this + 807) = &unk_2825A6930;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 588));
  v3 = (this + 4656);
  v4 = -144;
  while (1)
  {
    v5 = *(v3 + 2);
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v3);
    }

    v3 = (v3 - 24);
    v4 += 24;
    if (!v4)
    {
      AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A6940);
      AGCLLVMObject::~AGCLLVMObject(v2);

      JUMPOUT(0x20F331DC0);
    }
  }
}

{
  *this = &unk_2825A64B8;
  v2 = (this + 4752);
  *(this + 594) = &unk_2825A6820;
  *(this + 807) = &unk_2825A6930;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 588));
  v3 = (this + 4656);
  v4 = -144;
  do
  {
    v5 = *(v3 + 2);
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v3);
    }

    v3 = (v3 - 24);
    v4 += 24;
  }

  while (v4);
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A6940);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

AGCLLVMUserObject *AGCLLVMUserObject::createDylibResource(AGCLLVMUserObject *this, int a2)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v2 = this;
  switch(a2)
  {
    case 0:
      v13 = *MEMORY[0x277D85DE8];

      return AGCLLVMUserObject::createDylibBaseGlobal(this);
    case 1:
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(this, 0, 0);
      this = *(v2 + 303);
      goto LABEL_46;
    case 2:
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(this, 0, 1);
      this = *(v2 + 306);
      goto LABEL_46;
    case 3:
      AGCLLVMUserObject::buildImageTextureBufferLength(this, 0);
      this = *(v2 + 309);
      goto LABEL_46;
    case 4:
      this = *(this + 315);
      if (!this)
      {
        AGCLLVMUserObject::createSamplerHeapGlobal(v2);
        this = *(v2 + 315);
      }

      goto LABEL_46;
    case 5:
      AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(this);
      goto LABEL_35;
    case 6:
      AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(this);
      goto LABEL_35;
    case 7:
      AGCLLVMUserObject::createVisibleFunctionTableHeapGlobal(this);
LABEL_35:
      this = v12;
      goto LABEL_46;
    case 8:
      v14 = *MEMORY[0x277D85DE8];

      return AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
    case 9:
      v10 = *MEMORY[0x277D85DE8];

      return AGCLLVMUserObject::createGlobalBindingTableGlobal(this);
    case 10:
      AGCLLVMUserObject::createSCSIFTHeapGlobal(this);
      this = *(v2 + 324);
      goto LABEL_46;
    case 11:
      AGCLLVMUserObject::createSCSUserDataBoundGlobal(this);
      this = *(v2 + 327);
      goto LABEL_46;
    case 12:
      v9 = *MEMORY[0x277D85DE8];

      return AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
    case 13:
      AGCLLVMUserObject::createSCSDriverDataStartGlobal(this);
      this = *(v2 + 330);
      goto LABEL_46;
    case 14:
      v8 = *MEMORY[0x277D85DE8];

      return AGCLLVMUserObject::createIFBEmulationIFTableGlobal(this);
    case 15:
      v11 = *MEMORY[0x277D85DE8];

      return AGCLLVMUserObject::createIntersectionFunctionHeapGlobal(this);
    case 16:
      v7 = *MEMORY[0x277D85DE8];

      return AGCLLVMUserObject::createTensorHeapGlobal(this);
    case 17:
    case 18:
      v3 = (a2 - 17);
      if ((*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 8)
      {
        v4 = (v2 + 24 * v3);
        if (!v4[379])
        {
          if ((*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 7 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 22)
          {
            v5 = *(*(v2 + *(*v2 - 24) + 2168) + 920);
            v6 = (*(*v5 + 672))(v5, v3);
          }

          else
          {
            v15 = *(*(v2 + *(*v2 - 24) + 2168) + 920);
            v6 = (*(*v15 + 384))(v15, v3);
          }

          v16 = v6;
          v17 = *(v2 + *(*v2 - 24) + 1904);
          v18 = llvm::PointerType::get();
          __src = "agc.stage_specific_dylib_global.";
          v29 = 259;
          v26 = 264;
          LODWORD(v25[0]) = v3;
          llvm::Twine::concat(v30, &__src, v25);
          GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v2, v18, v30, v16, 0, 5, 0);
          llvm::ValueHandleBase::operator=((v4 + 377), GlobalBufferBinding);
        }
      }

      v20 = (v2 + 24 * v3);
      this = v20[379];
      if (this)
      {
        v21 = (v20 + 379);
        __src = llvm::ValueAsMetadata::get();
        v30[0] = v31;
        v30[1] = 0x100000000;
        llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v30, &__src, v28);
        v22 = *(v2 + *(*v2 - 24) + 2160);
        Impl = llvm::MDTuple::getImpl();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v2 + 3064, Impl);
        if (v30[0] != v31)
        {
          free(v30[0]);
        }

        this = *v21;
      }

      goto LABEL_46;
    default:
LABEL_46:
      v24 = *MEMORY[0x277D85DE8];
      return this;
  }
}

uint64_t AGCLLVMUserObject::createDylibBaseGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 312);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    v4 = **(*(this + *(*this - 24) + 2168) + 920);
    if (v3 == 27)
    {
      v5 = v4[106]();
    }

    else if (v3 == 7)
    {
      v5 = v4[82]();
    }

    else
    {
      v5 = v4[46]();
    }

    v6 = v5;
    v7 = *(this + *(*this - 24) + 1912);
    v8 = llvm::PointerType::get();
    v11 = "agc.dylib_base";
    v12 = 259;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v8, &v11, v6, 0, 5, 0);
    AGCLLVMObject::setDylibLinkage(GlobalBufferBinding, v10);
    llvm::ValueHandleBase::operator=((this + 2480), GlobalBufferBinding);
    return *(this + 312);
  }

  return result;
}

uint64_t AGCLLVMUserObject::buildImageTextureBufferLength(AGCLLVMUserObject *this, llvm::Value *a2)
{
  v4 = (this + *(*this - 24));
  if (*(v4[271] + 1869) == 1)
  {
    v5 = *(this + 175);
    v6 = AGCLLVMUserObject::buildImageArgumentPointer(this, a2, 2u);
    v41 = 257;
    llvm::Type::isOpaquePointerTy(*v6);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v4 + 214, v5, v6, 0, v40);
    v8 = this + *(*this - 24);
    v41 = 257;
    v9 = *(v8 + 238);
    v10 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((v8 + 1712), AlignedLoad, v10, v40);
  }

  if (!*(this + 309))
  {
    v30 = (*(*v4 + 10))(this + *(*this - 24));
    if (v30 > 0x1B)
    {
      goto LABEL_17;
    }

    if (((1 << v30) & 0x400198) != 0)
    {
      v31 = *(*(this + *(*this - 24) + 2168) + 920);
      v32 = (*(*v31 + 544))(v31);
      goto LABEL_12;
    }

    if (v30 == 27)
    {
      v37 = *(*(this + *(*this - 24) + 2168) + 920);
      v32 = (*(*v37 + 856))(v37);
    }

    else
    {
LABEL_17:
      v38 = *(*(this + *(*this - 24) + 2168) + 920);
      v32 = (*(*v38 + 272))(v38);
    }

LABEL_12:
    v33 = v32;
    v34 = *(this + *(*this - 24) + 1912);
    v35 = llvm::PointerType::get();
    v40[0] = "agc.texture_heap.texture_buffer_length";
    v41 = 259;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v35, v40, v33, 0, 5, 0);
    llvm::ValueHandleBase::operator=((this + 2456), GlobalBufferBinding);
    if (a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_5:
  v12 = *(this + 309);
  v13 = AGCLLVMUserObject::buildImageHeapIndex(this, a2);
  UDiv = v13;
  v15 = *this;
  if (!*(*(this + *(*this - 24) + 2168) + 1900))
  {
    v16 = AGCLLVMObject::useTextureIDLegacyMode(v13);
    v15 = *this;
    if (v16)
    {
      v17 = *this;
      v18 = (this + *(v15 - 24));
      v19 = *(v18[271] + 1816);
      v20 = v18[238];
      v21 = llvm::ConstantInt::get();
      v41 = 257;
      UDiv = llvm::IRBuilderBase::CreateUDiv((v18 + 214), UDiv, v21, v40);
      v15 = *this;
    }
  }

  v22 = (this + *(v15 - 24));
  v23 = v22[239];
  v41 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v22 + 213), v12, v40);
  v39[16] = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v22 + 214), v23, Load, UDiv, v39);
  v26 = this + *(*this - 24);
  v41 = 257;
  v27 = AGCLLVMBuilder::CreateLoad((v26 + 1704), GEP, v40);
  v28 = this + *(*this - 24);
  v29 = *(v28 + 238);
  v41 = 257;
  return llvm::IRBuilderBase::CreateCast((v28 + 1712), 38, v27, v29, v40);
}

uint64_t AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(AGCLLVMUserObject *this)
{
  v2 = this + *(*this - 24);
  v3 = *(v2 + 239);
  v4 = (*(**(*(v2 + 271) + 920) + 1216))(*(*(v2 + 271) + 920));
  v5 = llvm::ArrayType::get(v3, v4);
  if (!*(this + 333))
  {
    v6 = v5;
    v7 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (v7 <= 0x1B)
    {
      if (((1 << v7) & 0x400198) != 0)
      {
        v8 = *(*(this + *(*this - 24) + 2168) + 920);
        v9 = (*(*v8 + 568))(v8);
LABEL_6:
        v10 = v9;
        v11 = llvm::PointerType::get();
        v22[0] = "agc.per_encoder_indirection_table.";
        v22[2] = v10;
        v23 = 2051;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v11, v22, v10, 0, 5, 0);
        llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
        *(GlobalBufferBinding + 80) &= ~1u;
        llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v13);
        llvm::GlobalVariable::setInitializer();
        v14 = *(this + *(*this - 24) + 2136);
        llvm::Module::getOrInsertNamedMetadata();
        v15 = this + *(*this - 24);
        v16 = *(v15 + 270);
        v17 = *(v15 + 238);
        llvm::ConstantInt::get();
        v22[0] = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        llvm::ValueHandleBase::operator=((this + 2648), GlobalBufferBinding);
        *(this + 334) = v6;
        v18 = *(this + 333);
        return v6;
      }

      if (v7 == 27)
      {
        v20 = *(*(this + *(*this - 24) + 2168) + 920);
        v9 = (*(*v20 + 872))(v20);
        goto LABEL_6;
      }
    }

    v21 = *(*(this + *(*this - 24) + 2168) + 920);
    v9 = (*(*v21 + 296))(v21);
    goto LABEL_6;
  }

  return *(this + 334);
}

llvm::Type *AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(AGCLLVMUserObject *this)
{
  if (*(this + 337))
  {
    return *(this + 338);
  }

  {
    v14 = *(*(this + *(*this - 24) + 2168) + 920);
    AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(void)::bind_indices[0] = (*(*v14 + 576))(v14);
    dword_27C8D9F34 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 304))();
  }

  v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 7 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 22 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 8;
  v4 = AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(void)::bind_indices[v3];
  v5 = *(this + *(*this - 24) + 1872);
  v2 = llvm::PointerType::get();
  v15[0] = "agc.intersection_function_table_heap.";
  v15[2] = v4;
  v16 = 2051;
  GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v2, v15, v4, 0, 5, 0);
  llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
  *(GlobalBufferBinding + 80) &= ~1u;
  llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v7);
  llvm::GlobalVariable::setInitializer();
  v8 = *(this + *(*this - 24) + 2136);
  llvm::Module::getOrInsertNamedMetadata();
  v9 = this + *(*this - 24);
  v10 = *(v9 + 270);
  v11 = *(v9 + 238);
  llvm::ConstantInt::get();
  v15[0] = llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  llvm::ValueHandleBase::operator=((this + 2680), GlobalBufferBinding);
  *(this + 338) = v2;
  v12 = *(this + 337);
  return v2;
}

llvm::Type *AGCLLVMUserObject::createVisibleFunctionTableHeapGlobal(AGCLLVMUserObject *this)
{
  if (!*(this + 341))
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if ((v3 - 7) >= 2)
    {
      if (v3 == 27)
      {
        v6 = *(*(this + *(*this - 24) + 2168) + 920);
        v5 = (*(*v6 + 864))(v6);
        goto LABEL_9;
      }

      if (v3 != 22)
      {
        v7 = *(*(this + *(*this - 24) + 2168) + 920);
        v5 = (*(*v7 + 312))(v7);
        goto LABEL_9;
      }
    }

    v4 = *(*(this + *(*this - 24) + 2168) + 920);
    v5 = (*(*v4 + 584))(v4);
LABEL_9:
    v8 = v5;
    v9 = *(this + *(*this - 24) + 1872);
    v2 = llvm::PointerType::get();
    v18[0] = "agc.visible_function_table_heap.";
    v18[2] = v8;
    v19 = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v2, v18, v8, 0, 5, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v11);
    llvm::GlobalVariable::setInitializer();
    v12 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
    v13 = this + *(*this - 24);
    v14 = *(v13 + 270);
    v15 = *(v13 + 238);
    llvm::ConstantInt::get();
    v18[0] = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    llvm::ValueHandleBase::operator=((this + 2712), GlobalBufferBinding);
    *(this + 342) = v2;
    v16 = *(this + 341);
    return v2;
  }

  return *(this + 342);
}

uint64_t AGCLLVMUserObject::createGlobalBindingTableGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 357);
  if (!result)
  {
    if ((*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 7 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 22 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 8 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 3 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 4)
    {
      v3 = *(*(this + *(*this - 24) + 2168) + 920);
      v4 = (*(*v3 + 784))(v3);
    }

    else
    {
      v9 = *(*(this + *(*this - 24) + 2168) + 920);
      v4 = (*(*v9 + 400))(v9);
    }

    v5 = v4;
    v6 = *(this + *(*this - 24) + 1888);
    v7 = llvm::PointerType::get();
    v10 = "agc.global_binding_base";
    v11 = 259;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v7, &v10, v5, 0, 5, 0);
    llvm::ValueHandleBase::operator=((this + 2840), GlobalBufferBinding);
    return *(this + 357);
  }

  return result;
}

void *AGCLLVMUserObject::createSCSUserDataBoundGlobal(void *this)
{
  if (!this[327])
  {
    v17 = v1;
    v18 = v2;
    v3 = this;
    v4 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if ((v4 - 7) < 2 || v4 == 22)
    {
      v6 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v6 + 1024))(v6);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 760))();
    }

    else
    {
      if (v4 == 27)
      {
        v9 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
        v10 = (*(*v9 + 976))(v9) & 0xFFFFF | 0x900000;
LABEL_12:
        v12 = llvm::ArrayType::get(*(v3 + *(*v3 - 24) + 1904), 2);
        v15[0] = "agc.ria.ray_data_user_bound";
        v16 = 259;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v3, v12, v15, v10, 0, 0, 0);
        AGCLLVMObject::setDylibLinkage(GlobalBufferBinding, v14);
        return llvm::ValueHandleBase::operator=((v3 + 2600), GlobalBufferBinding);
      }

      v11 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v11 + 1024))(v11);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 408))();
    }

    _AGCBindingInfo::_AGCBindingInfo(v15, v7, v8);
    v10 = v15[0];
    goto LABEL_12;
  }

  return this;
}

void *AGCLLVMUserObject::createSCSDriverDataStartGlobal(void *this)
{
  if (!this[330])
  {
    v17 = v1;
    v18 = v2;
    v3 = this;
    v4 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if ((v4 - 7) < 2 || v4 == 22)
    {
      v6 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v6 + 1040))(v6);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 760))();
    }

    else
    {
      if (v4 == 27)
      {
        v9 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
        v10 = (*(*v9 + 984))(v9) & 0xFFFFF | 0x900000;
LABEL_12:
        v12 = llvm::ArrayType::get(*(v3 + *(*v3 - 24) + 1904), 2);
        v15[0] = "agc.ria.ray_data_driver_start";
        v16 = 259;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v3, v12, v15, v10, 0, 0, 0);
        AGCLLVMObject::setDylibLinkage(GlobalBufferBinding, v14);
        return llvm::ValueHandleBase::operator=((v3 + 2624), GlobalBufferBinding);
      }

      v11 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v11 + 1040))(v11);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 408))();
    }

    _AGCBindingInfo::_AGCBindingInfo(v15, v7, v8);
    v10 = v15[0];
    goto LABEL_12;
  }

  return this;
}

uint64_t AGCLLVMUserObject::createIFBEmulationIFTableGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 351);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    v4 = v3 > 0x16 || ((1 << v3) & 0x400180) == 0;
    v5 = *(*(this + *(*this - 24) + 2168) + 920);
    if (v4)
    {
      v6 = (*(*v5 + 352))(v5);
    }

    else
    {
      v6 = (*(*v5 + 704))(v5);
    }

    v7 = v6;
    v8 = *(this + *(*this - 24) + 1888);
    v9 = llvm::PointerType::get();
    v12[0] = "agc.ifb_emulation_table.";
    v12[2] = v7;
    v13 = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v9, v12, v7, 0, 5, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v11);
    llvm::GlobalVariable::setInitializer();
    llvm::ValueHandleBase::operator=((this + 2792), GlobalBufferBinding);
    return *(this + 351);
  }

  return result;
}

uint64_t AGCLLVMUserObject::createIntersectionFunctionHeapGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 354);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    v4 = v3 > 0x16 || ((1 << v3) & 0x400180) == 0;
    v5 = *(*(this + *(*this - 24) + 2168) + 920);
    if (v4)
    {
      v6 = (*(*v5 + 360))(v5);
    }

    else
    {
      v6 = (*(*v5 + 712))(v5);
    }

    v7 = v6;
    v8 = *(this + *(*this - 24) + 1888);
    v9 = llvm::PointerType::get();
    v12[0] = "agc.intersection_function_heap.";
    v12[2] = v7;
    v13 = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v9, v12, v7, 0, 5, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v11);
    llvm::GlobalVariable::setInitializer();
    llvm::ValueHandleBase::operator=((this + 2816), GlobalBufferBinding);
    return *(this + 354);
  }

  return result;
}

uint64_t AGCLLVMUserObject::createTensorHeapGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 369);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    v4 = v3 > 0x16 || ((1 << v3) & 0x400180) == 0;
    v5 = *(*(this + *(*this - 24) + 2168) + 920);
    if (v4)
    {
      v6 = (*(*v5 + 344))(v5);
    }

    else
    {
      v6 = (*(*v5 + 696))(v5);
    }

    v7 = v6;
    v8 = *(this + *(*this - 24) + 1872);
    v9 = llvm::PointerType::get();
    v16[0] = "agc.tensor_heap.";
    v16[2] = v7;
    v17 = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v9, v16, v7, 0, 5, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v11);
    llvm::GlobalVariable::setInitializer();
    v12 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
    v13 = this + *(*this - 24);
    v14 = *(v13 + 270);
    v15 = *(v13 + 238);
    llvm::ConstantInt::get();
    v16[0] = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    llvm::ValueHandleBase::operator=((this + 2936), GlobalBufferBinding);
    return *(this + 369);
  }

  return result;
}

uint64_t AGCLLVMUserObject::buildImageHeapIndex(AGCLLVMUserObject *this, llvm::Value *a2)
{
  v4 = *(this + 223);
  if (*(this + 3767))
  {
    goto LABEL_2;
  }

  result = AGCLLVMUserObject::buildBindlessIndex(this, a2);
  if (!result)
  {
    if (*(this + 3767))
    {
      goto LABEL_2;
    }

    imp = llvm::SmallPtrSetImplBase::find_imp(this + 143, a2);
    v9 = *(this + 144);
    v10 = 16;
    if (v9 == *(this + 143))
    {
      v10 = 20;
    }

    if (imp == (v9 + 8 * *(this + v10 + 1144)))
    {
      goto LABEL_2;
    }

    v11 = this + *(*this - 24);
    v12 = *(v11 + 239);
    v23 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v11 + 1712), 47, a2, v12, v22);
    v14 = *(this + *(*this - 24) + 1912);
    v15 = llvm::ConstantInt::get();
    v21 = 257;
    LShr = llvm::IRBuilderBase::CreateLShr((v11 + 1712), Cast, v15, v20);
    v17 = *(this + *(*this - 24) + 1904);
    v19 = 257;
    result = llvm::IRBuilderBase::CreateCast((v11 + 1712), 38, LShr, v17, v18);
    if (!result)
    {
LABEL_2:
      v5 = (this + *(*this - 24));
      v6 = AGCLLVMUserObject::buildImageArgumentPointer(this, a2);
      v23 = 257;
      llvm::Type::isOpaquePointerTy(*v6);
      return llvm::IRBuilderBase::CreateAlignedLoad(v5 + 214, v4, v6, 0, v22);
    }
  }

  return result;
}

uint64_t AGCLLVMObject::useTextureIDLegacyMode(AGCLLVMObject *this)
{
  v1 = &unk_27C8DB000;
  {
    v1 = &unk_27C8DB000;
    if (v3)
    {
      isEnabled = AGCEnv::isEnabled(v3);
      if (isEnabled)
      {
        LOBYTE(isEnabled) = AGCEnv::getBool("AGX2_USE_TEXTURE_HEAP_OFFSET_LEGACY_MODE", v5);
      }

      AGCLLVMObject::useTextureIDLegacyMode(void)::legacy_mode = isEnabled;
      v1 = &unk_27C8DB000;
    }
  }

  return v1[2008];
}

const char *AGCEnv::getBool(AGCEnv *this, const char *a2)
{
  result = AGCEnv::getValue(this, a2);
  if (result)
  {
    if (*result == 48)
    {
      return 0;
    }

    else
    {
      return (atoi(result) != 0);
    }
  }

  return result;
}

void std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        v2[3] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        v2[3] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        v2[3] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

char *llvm::PassInfoMixin<RuntimeFunctionCleanupPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4C)
  {
    v1 = v0;
  }

  else
  {
    v1 = 76;
  }

  v2 = &aStringrefLlvmG_88[v1];
  v3 = 76 - v1;
  if ((76 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 76 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,RuntimeFunctionCleanupPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<RuntimeFunctionCleanupPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void *llvm::detail::PassModel<llvm::Module,RuntimeFunctionCleanupPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::run@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = a1 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    v9 = v3 == 0;
    v3 = *(v3 + 8);
    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    Name = llvm::Value::getName(v6);
    if (v8 >= 0x14)
    {
      v9 = *Name == 0x646D69732E636761 && *(Name + 8) == 0x616D5F70756F7267;
      v10 = v9 && *(Name + 16) == 2020176500;
      if (v10 && !llvm::Value::getNumUses(v5))
      {
        llvm::Function::dropAllReferences(v5);
        llvm::Function::eraseFromParent(v5);
      }
    }
  }

  *a2 = a2 + 32;
  *(a2 + 8) = a2 + 32;
  *(a2 + 16) = 2;
  *(a2 + 24) = 0;
  *(a2 + 48) = a2 + 80;
  *(a2 + 56) = a2 + 80;
  *(a2 + 64) = 2;
  *(a2 + 72) = 0;
  return llvm::SmallPtrSetImpl<void *>::insert(v12, a2, MEMORY[0x277D82070]);
}

char *llvm::PassInfoMixin<llvm::air::FoldDeferredStaticAllocaSizePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x5D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 93;
  }

  v2 = &aStringrefLlvmG_87[v1];
  v3 = 93 - v1;
  if ((93 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 93 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,llvm::air::FoldDeferredStaticAllocaSizePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::air::FoldDeferredStaticAllocaSizePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ReplaceTextureStatePointerPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ReplaceTextureStatePointerPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ReplaceAddressSpaceCastsAndChecksPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ReplaceAddressSpaceCastsAndChecksPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,OverrideFunctionsAndGlobalsLinkagePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<OverrideFunctionsAndGlobalsLinkagePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,TranslatorLegacyPostRuntimeLinkingPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<TranslatorLegacyPostRuntimeLinkingPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,TranslatorLegacyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<TranslatorLegacyPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ReplaceTensorIntrinsicsPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ReplaceTensorIntrinsicsPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t llvm::detail::PassModel<llvm::Module,ReplaceTensorIntrinsicsPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825A7740;
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 40));
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 16));
  return a1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,LoadStoreCacheControlPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<LoadStoreCacheControlPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,NumericPackUnpackPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<NumericPackUnpackPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,SimdMatrixPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<SimdMatrixPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,MarkFunctionsInlinePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<MarkFunctionsInlinePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<RemoveAndForwardAllocaStoresPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_76[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,RemoveAndForwardAllocaStoresPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<RemoveAndForwardAllocaStoresPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void llvm::detail::PassModel<llvm::Function,RemoveAndForwardAllocaStoresPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::run(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0x1000000000;
  v2 = *(a2 + 80);
  if (v2)
  {
    v3 = v2 - 24;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 + 40;
  v5 = *(v3 + 48);
  if (v5 == v3 + 40)
  {
    v8 = 0;
    v7 = v12;
  }

  else
  {
    do
    {
      if (v5)
      {
        v6 = v5 - 24;
      }

      else
      {
        v6 = 0;
      }

      if (v5 && *(v6 + 16) == 59)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v10, v5 - 24);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    v7 = v10;
    v8 = v11;
  }

  if (v8)
  {
    v9 = *v7;
    v12[16] = v13;
    v12[17] = 0x400000001;
    v13[0] = v9;
    operator new();
  }

  llvm::AnalysisManager<llvm::Function>::getResultImpl();
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,AGCUserObjectWrapperInitPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCUserObjectWrapperInitPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,MetadataAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x42)
  {
    v1 = v0;
  }

  else
  {
    v1 = 66;
  }

  v2 = &aStringrefLlvmG_74[v1];
  v3 = 66 - v1;
  if ((66 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 66 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void *llvm::detail::AnalysisResultModel<llvm::Module,MetadataAnalysis,MetadataAnalysis::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825A7598;
  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((a1 + 21));
  v2 = a1[11];
  if (v2 != a1 + 13)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3 != a1 + 3)
  {
    free(v3);
  }

  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectWrapper,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x46)
  {
    v1 = v0;
  }

  else
  {
    v1 = 70;
  }

  v2 = &aStringrefLlvmG_73[v1];
  v3 = 70 - v1;
  if ((70 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 70 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

BOOL AGCLLVMUserObject::isAllocaStoreForDebugger(char a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a3)
  {
    if (a1)
    {
      result = 0;
      if (a2)
      {
        if (*(a2 + 16) == 61)
        {
          v5 = **(a2 - 32);
          v6 = *(v5 + 8);
          if ((v6 & 0xFE) == 0x12)
          {
            v6 = *(**(v5 + 16) + 8);
          }

          return v6 <= 0xFF && *(a2 - 64) == a3;
        }
      }
    }
  }

  return result;
}

BOOL AGCLLVMUserObject::isVoidPointerUseInIntrinsic(AGCLLVMUserObject *this, llvm::Type **a2)
{
  v2 = a2;
  v4 = *a2;
  if (!llvm::Type::isOpaquePointerTy(*a2) && **(v4 + 2) == *(this + *(*this - 24) + 1888))
  {
    while (1)
    {
      v2 = v2[1];
      result = v2 == 0;
      if (!v2)
      {
        break;
      }

      if (*(v2[3] + 16) != 84)
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v2 = v2[1];
      result = v2 == 0;
      if (!v2)
      {
        break;
      }

      v6 = v2[3];
      if (*(v6 + 16) != 77 || (AGCLLVMUserObject::isVoidPointerUseInIntrinsic(this, v6) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::IsPhiInputsEquivalent(AGCLLVMUserObject *this, llvm::PHINode *a2)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x800000000;
  v19 = v23;
  v20 = v23;
  v21 = 8;
  v22 = 0;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v24, this);
  v2 = v25;
  if (v25)
  {
    v3 = 0;
    do
    {
      v4 = *(v24 + v2 - 1);
      LODWORD(v25) = v2 - 1;
      llvm::SmallPtrSetImplBase::insert_imp(&v19, v4);
      v5 = v4[5];
      if ((v5 & 0x40000000) != 0)
      {
        v7 = *(v4 - 1);
        v6 = v5 & 0x7FFFFFF;
        if (v6)
        {
LABEL_7:
          v8 = &v7[4 * v6];
          do
          {
            v9 = *v7;
            v10 = *(*v7 + 16);
            if (*v7 && v10 == 83)
            {
              imp = llvm::SmallPtrSetImplBase::find_imp(&v19, *v7);
              if (v20 == v19)
              {
                v12 = (&v21 + 4);
              }

              else
              {
                v12 = &v21;
              }

              v13 = &v20[*v12];
              if (v13 != imp)
              {
                while (*imp >= 0xFFFFFFFFFFFFFFFELL)
                {
                  if (++imp == v13)
                  {
                    imp = v13;
                    break;
                  }
                }
              }

              if (v20 == v19)
              {
                v14 = (&v21 + 4);
              }

              else
              {
                v14 = &v21;
              }

              if (&v20[*v14] == imp)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v24, v9);
              }
            }

            else
            {
              if (v9)
              {
                v15 = v10 >= 0x1C;
              }

              else
              {
                v15 = 0;
              }

              if (v15)
              {
                if (v3)
                {
                  if (!llvm::Instruction::isIdenticalTo(*v7, v3))
                  {
                    v16 = 0;
                    goto LABEL_34;
                  }
                }

                else
                {
                  v3 = *v7;
                }
              }
            }

            v7 += 4;
          }

          while (v7 != v8);
        }
      }

      else
      {
        v6 = v5 & 0x7FFFFFF;
        v7 = &v4[-8 * v6];
        if (v6)
        {
          goto LABEL_7;
        }
      }

      v2 = v25;
    }

    while (v25);
  }

  v16 = 1;
LABEL_34:
  if (v20 != v19)
  {
    free(v20);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

const void **llvm::SmallPtrSetImpl<llvm::Instruction *>::find(uint64_t a1, const void *a2)
{
  result = llvm::SmallPtrSetImplBase::find_imp(a1, a2);
  v4 = *(a1 + 8);
  v5 = 16;
  if (v4 == *a1)
  {
    v5 = 20;
  }

  v6 = (v4 + 8 * *(a1 + v5));
  if (v6 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v6)
      {
        return v6;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::replaceArgumentBufferAccesses(AGCLLVMUserObject::IndirectArgumentBufferInfo const*)::$_0::operator()(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = a2;
  v8 = v6[1];
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = a2;
      if (v8 <= a2)
      {
        v10 = a2 % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & a2;
    }

    v11 = *(*v6 + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == a2)
        {
          if (*(i + 4) == a2)
          {
            return i[3];
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  v14 = *a1;
  v15 = *a1 + *(**a1 - 24);
  v32 = *(v15 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (v15 + 1712));
  v34 = *(v15 + 1808);
  v16 = *(*(v14 + 21) + 80);
  if (v16)
  {
    v17 = v16 - 24;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v17 + 40);
  if (v18)
  {
    v19 = (v18 - 24);
  }

  else
  {
    v19 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((v14 + *(*v14 - 24) + 1712), v19);
  v20 = (a3 + 272);
  if (!*(a3 + 276))
  {
    v20 = &RASTER_ORDER_GROUP_NONE;
  }

  AGCLLVMUserObject::setupBufferArgumentData(v14, *(a3 + 264), a2, **(a1 + 16), *(a3 + 260), *(a3 + 256), *v20);
  v21 = *(a1 + 8);
  v22 = v21[1];
  if (!*&v22)
  {
    goto LABEL_42;
  }

  v23 = vcnt_s8(v22);
  v23.i16[0] = vaddlv_u8(v23);
  if (v23.u32[0] > 1uLL)
  {
    v24 = v7;
    if (*&v22 <= v7)
    {
      v24 = a2 % v22.i32[0];
    }
  }

  else
  {
    v24 = (v22.i32[0] - 1) & v7;
  }

  v25 = *(*v21 + 8 * v24);
  if (!v25 || (i = *v25) == 0)
  {
LABEL_42:
    operator new();
  }

  while (1)
  {
    v26 = i[1];
    if (v26 == v7)
    {
      break;
    }

    if (v23.u32[0] > 1uLL)
    {
      if (v26 >= *&v22)
      {
        v26 %= *&v22;
      }
    }

    else
    {
      v26 &= *&v22 - 1;
    }

    if (v26 != v24)
    {
      goto LABEL_42;
    }

LABEL_41:
    i = *i;
    if (!i)
    {
      goto LABEL_42;
    }
  }

  if (*(i + 4) != a2)
  {
    goto LABEL_41;
  }

  v27 = v14 + *(*v14 - 24);
  v29 = v32;
  v30 = v33;
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v31 = v34;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v29, (v27 + 1712));
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  return i[3];
}

llvm::Value *AGCLLVMUserObject::buildABResourceIntrinsic(AGCLLVMUserObject *this, unsigned __int8 ***a2, llvm::Type *a3, llvm::Value *a4, AGCArgumentBuffer::Resource::Bounds *a5, unsigned int a6, llvm::Value *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = (this + *(*this - 24));
  v13 = v12[244];
  v23 = v12[238];
  v24 = v13;
  v14 = *a7;
  v25 = v23;
  v26 = v14;
  v15 = v12[267];
  Function = AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::getFunction(a2);
  v17 = (this + *(*this - 24));
  v22[0] = a4;
  v22[1] = AGCArgumentBuffer::Resource::Bounds::toConstantVector(a5, v17 + 214);
  v18 = *(this + *(*this - 24) + 1904);
  v22[2] = llvm::ConstantInt::get();
  v22[3] = a7;
  v21[16] = 257;
  result = llvm::IRBuilderBase::CreateCall((v17 + 214), *(Function + 24), Function, v22, 4, v21);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::erase(int32x2_t *a1, uint64_t a2)
{
  v7[0] = 2;
  v7[1] = 0;
  v8 = -8192;
  v9 = 0;
  llvm::ValueHandleBase::operator=((a2 + 8), v7);
  v4 = v8;
  *(a2 + 32) = v9;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t AGCLLVMUserObject::replaceArgumentBufferStoreTextureOrSampler(AGCLLVMUserObject *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + *(*a1 - 24) + 2160);
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = llvm::StructType::get();
  v10 = *(a2 - 64);
  v11 = llvm::PointerType::get();
  v12 = AGCLLVMUserObject::addrSpaceReconciliation(a1, v10, v11);
  v13 = (a1 + *(*a1 - 24));
  v46 = 257;
  llvm::Type::isOpaquePointerTy(*v12);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v13 + 214, v9, v12, 0, v45);
  v15 = **(a2 - 32);
  if ((*(v15 + 8) & 0xFE) == 0x12)
  {
    v16 = *(**(v15 + 16) + 8);
  }

  v17 = *(a3 + 8);
  if (v17)
  {
    v18 = *a3;
    v19 = 8 * v17;
    do
    {
      v20 = *v18;
      *v18++ = llvm::PointerType::get();
      v19 -= 8;
    }

    while (v19);
  }

  v21 = *(a1 + *(*a1 - 24) + 1904);
  v22 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a3, v22);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a3, *(a1 + *(*a1 - 24) + 1904));
  v23 = *(a1 + *(*a1 - 24) + 2160);
  v24 = *a3;
  v25 = *(a3 + 8);
  v26 = llvm::StructType::get();
  v27 = *(a2 - 32);
  v28 = llvm::PointerType::get();
  v29 = AGCLLVMUserObject::addrSpaceReconciliation(a1, v27, v28);
  v30 = *(*a1 - 24);
  v46 = 257;
  llvm::Type::isOpaquePointerTy(*v29);
  v31 = a1 + 1712;
  v32 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + v30 + 1712), v26, v29, 0, v45);
  v44 = 0;
  if (*(a3 + 8) == 2)
  {
    v33 = 0;
  }

  else
  {
    do
    {
      v34 = *(*a1 - 24);
      v46 = 257;
      Value = llvm::IRBuilderBase::CreateExtractValue(&v31[v34], AlignedLoad, &v44, 1, v45);
      v36 = *(*a1 - 24);
      v46 = 257;
      v37 = llvm::IRBuilderBase::CreateExtractValue(&v31[v36], v32, &v44, 1, v45);
      llvm::IRBuilderBase::CreateAlignedStore(&v31[*(*a1 - 24)], Value, v37, 0);
      v33 = ++v44;
    }

    while (*(a3 + 8) - 2 > v44);
  }

  v38 = a1 + *(*a1 - 24);
  v43 = v33;
  v44 = v33 + 1;
  v46 = 257;
  v39 = llvm::IRBuilderBase::CreateExtractValue((v38 + 1712), v32, &v43, 1, v45);
  v40 = a1 + *(*a1 - 24);
  v46 = 257;
  v41 = llvm::IRBuilderBase::CreateExtractValue((v40 + 1712), v32, &v44, 1, v45);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + *(*a1 - 24) + 1712), v41, v39, 0);
}

uint64_t AGCLLVMUserObject::addrSpaceReconciliation(AGCLLVMUserObject *this, llvm::Value *a2, llvm::Type *a3)
{
  v5 = this + *(*this - 24);
  v6 = *(v5 + 239);
  v11 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v5 + 1712), 47, a2, v6, v10);
  v8 = this + *(*this - 24);
  v11 = 257;
  return llvm::IRBuilderBase::CreateCast((v8 + 1712), 48, Cast, a3, v10);
}

uint64_t AGCLLVMUserObject::replaceArgumentBufferLoadTextureOrSampler(AGCLLVMUserObject *a1, llvm::Type **a2, uint64_t a3)
{
  v6 = *(a1 + *(*a1 - 24) + 2160);
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = llvm::StructType::get();
  InsertValue = llvm::UndefValue::get();
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((a1 + *(*a1 - 24) + 1704), v9);
  v11 = **(a2 - 4);
  if ((*(v11 + 8) & 0xFE) == 0x12)
  {
    v12 = *(**(v11 + 16) + 8);
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  if (v14)
  {
    v15 = 8 * v14;
    do
    {
      v16 = *v13;
      *v13++ = llvm::PointerType::get();
      v15 -= 8;
    }

    while (v15);
    v17 = *a3;
    v18 = *(a3 + 8);
  }

  v19 = *(a1 + *(*a1 - 24) + 2160);
  v20 = llvm::StructType::get();
  v35 = a2;
  v21 = *(a2 - 4);
  v22 = llvm::PointerType::get();
  v23 = AGCLLVMUserObject::addrSpaceReconciliation(a1, v21, v22);
  v24 = *(*a1 - 24);
  v40 = 257;
  llvm::Type::isOpaquePointerTy(*v23);
  v25 = a1 + 1712;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + v24 + 1712), v20, v23, 0, v39);
  v38 = 0;
  if (*(a3 + 8))
  {
    v27 = AlignedLoad;
    do
    {
      v28 = *(*a1 - 24);
      v40 = 257;
      Value = llvm::IRBuilderBase::CreateExtractValue(&v25[v28], v27, &v38, 1, v39);
      v30 = *(*a1 - 24);
      v31 = *(*(v9 + 2) + 8 * v38);
      v40 = 257;
      llvm::Type::isOpaquePointerTy(*Value);
      v32 = llvm::IRBuilderBase::CreateAlignedLoad(&v25[v30], v31, Value, 0, v39);
      v37 = 257;
      InsertValue = llvm::IRBuilderBase::CreateInsertValue(&v25[v30], InsertValue, v32, &v38, 1, v36);
      ++v38;
    }

    while (*(a3 + 8) > v38);
  }

  llvm::IRBuilderBase::CreateAlignedStore((a1 + *(*a1 - 24) + 1712), InsertValue, AllocaInEntryBlock, 0);
  return AGCLLVMUserObject::addrSpaceReconciliation(a1, AllocaInEntryBlock, *v35);
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v13, &v19);
  v6 = *v4;
  if (v5)
  {
    v7 = v19;
  }

  else
  {
    v7 = *v4 + 48 * v4[2].u32[0];
  }

  result = v14;
  if (*v14 + 48 * v14[2].u32[0] != v7)
  {
    v9 = *(v7 + 40);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::erase(v14, v7);
    v10 = v14;
    llvm::CallbackVH::CallbackVH(&v15, a2);
    v15 = &unk_2825A7350;
    v18 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_2825A7350;
    v22 = v18;
    v23 = v9;
    v24 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, v10[2].i32[0], v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v10, &v19, v24);
      result = llvm::ValueHandleBase::operator=((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::initEmpty(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_2825A7350;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          llvm::ValueHandleBase::operator=((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825A7350;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

llvm::Value *AGCLLVMUserObject::replaceBuiltinFunction(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *(v3 + 238);
  v7 = llvm::ConstantInt::get();
  v6[16] = 257;
  return llvm::IRBuilderBase::CreateCall((v3 + 1712), *(a2 + 24), a2, &v7, 1, v6);
}

_BYTE *AGCLLVMUserObject::setupGlobalBufferPointer(AGCLLVMUserObject *this, AGCLLVMObject *a2, llvm::Type *a3, unsigned int a4, unsigned int a5, int a6, char a7, uint64_t a8)
{
  v79 = *MEMORY[0x277D85DE8];
  if (*(a3 + 2) == 783)
  {
    v13 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (v13 != 27 && v13 != 8)
    {
      v35 = llvm::User::operator new(0x58);
      v36 = (this + *(*this - 24));
      v37 = v36[267];
      v38 = v36[238];
      v75 = "agc.local_buffer_pointers.";
      v77[0] = a4;
      v78 = 2051;
      v66 = *(v36[271] + 972) | 0x100000000;
      v39 = llvm::GlobalVariable::GlobalVariable();
      *(v39 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      llvm::GlobalObject::setAlignment();
      v40 = this + *(*this - 24);
      v41 = *(v40 + 268);
      v42 = AGCLLVMBuilder::buildGlobalMetadata((v40 + 1704), v35);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v41, v42);
      v43 = *(*(this + *(*this - 24) + 2168) + 972);
      llvm::PointerType::get();
      PointerCast = llvm::ConstantExpr::getPointerCast();
      goto LABEL_44;
    }

    v15 = llvm::User::operator new(0x58);
    v16 = (this + *(*this - 24));
    v17 = v16[267];
    v18 = v16[238];
    v75 = "agc.local_buffer_pointers.";
    v77[0] = a4;
    v78 = 2051;
    v65 = *(v16[271] + 972) | 0x100000000;
    v19 = llvm::GlobalVariable::GlobalVariable();
    *(v19 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    v20 = this + *(*this - 24);
    v21 = AGCLLVMBuilder::buildGlobalMetadata((v20 + 1704), v15);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v20 + 4896), v21);
    llvm::SmallPtrSetImpl<void *>::insert(&v75, (this + 848), v15);
    v22 = *(*(this + *(*this - 24) + 2168) + 972);
    llvm::PointerType::get();
    PointerCast = llvm::ConstantExpr::getPointerCast();
    if (a8 != -1)
    {
      v23 = this + *(*this - 24);
      if ((v23[2284] & 1) == 0)
      {
        goto LABEL_51;
      }

      (*(**(v23 + 271) + 176))(*(v23 + 271), v15, a8, *(v23 + 570), 0, 0);
    }

    if ((a7 & 3) != 1)
    {
      goto LABEL_50;
    }

    v24 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
    v25 = *(this + *(*this - 24) + 2160);
    goto LABEL_49;
  }

  v75 = v77;
  v76 = 0x800000000;
  v29 = *(a2 + 1);
  if (!v29)
  {
    goto LABEL_29;
  }

  do
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v75, *(v29 + 24));
    v29 = *(v29 + 8);
  }

  while (v29);
  v30 = v76;
  if (!v76)
  {
LABEL_27:
    LOBYTE(v29) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v31 = *(v75 + --v30);
    LODWORD(v76) = v30;
    v32 = *(v31 + 16);
    if (v32 <= 0x1B)
    {
      break;
    }

    if (v32 != 60)
    {
      if (v32 != 77 && v32 != 62)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

LABEL_26:
    if (!v30)
    {
      goto LABEL_27;
    }
  }

  if (v32 == 5)
  {
    v33 = *(v31 + 18);
    if (v33 == 34 || v33 == 49)
    {
LABEL_23:
      v34 = *(v31 + 8);
      if (v34)
      {
        do
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v75, *(v34 + 24));
          v34 = *(v34 + 8);
        }

        while (v34);
        v30 = v76;
      }

      goto LABEL_26;
    }
  }

LABEL_28:
  LOBYTE(v29) = 1;
LABEL_29:
  if (v75 != v77)
  {
    free(v75);
  }

  if ((v29 & 1) != 0 || AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(this))
  {
    if (a5 == -1)
    {
      LODWORD(__src[0]) = a4;
      v47 = __src[0];
      v45 = 8;
      v46 = 1;
    }

    else
    {
      v68[0] = a5;
      v69 = ".";
      v70 = 776;
      __src[0] = v68;
      v72 = a4;
      v45 = 2;
      v46 = 8;
      v47 = __src;
    }

    LOBYTE(v74) = v45;
    BYTE1(v74) = v46;
    v75 = "agc.buffer_pointers.";
    v77[0] = v47;
    LOBYTE(v78) = 3;
    HIBYTE(v78) = v45;
    _AGCBindingInfo::_AGCBindingInfo(&v67, a4, a5);
    PointerCast = AGCLLVMUserObject::createGlobalBufferBinding(this, a3, &v75, v67, a6, 139, 0);
    PointerCast[80] |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    llvm::SmallPtrSetImpl<void *>::insert(&v75, (this + 848), PointerCast);
    (*(**(*(this + *(*this - 24) + 2168) + 920) + 440))();
    __src[0] = llvm::ValueAsMetadata::get();
    v48 = *(this + *(*this - 24) + 1904);
    llvm::ConstantInt::get();
    __src[1] = llvm::ValueAsMetadata::get();
    v49 = *(this + *(*this - 24) + 1904);
    llvm::ConstantInt::get();
    v72 = llvm::ValueAsMetadata::get();
    v50 = *(this + *(*this - 24) + 1904);
    llvm::ConstantInt::get();
    v73 = llvm::ValueAsMetadata::get();
    v51 = *(this + *(*this - 24) + 1904);
    llvm::ConstantInt::get();
    v74 = llvm::ValueAsMetadata::get();
    v75 = v77;
    v76 = 0x500000000;
    llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v75, __src, &v75);
    v52 = this + *(*this - 24);
    v53 = *(v52 + 270);
    Impl = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v52 + 4896), Impl);
    if (v75 != v77)
    {
      free(v75);
    }
  }

  else
  {
    if (a5 == -1)
    {
      LODWORD(__src[0]) = a4;
      v55 = 8;
      v56 = 1;
      v57 = __src[0];
    }

    else
    {
      v68[0] = a5;
      v69 = ".";
      v70 = 776;
      __src[0] = v68;
      v72 = a4;
      v55 = 2;
      v56 = 8;
      v57 = __src;
    }

    LOBYTE(v74) = v55;
    BYTE1(v74) = v56;
    v75 = "agc.buffer_pointers.";
    v77[0] = v57;
    LOBYTE(v78) = 3;
    HIBYTE(v78) = v55;
    _AGCBindingInfo::_AGCBindingInfo(&v67, a4, a5);
    PointerCast = AGCLLVMUserObject::createGlobalBufferBinding(this, a3, &v75, v67, a6, 5, 0);
    PointerCast[80] |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    AGCLLVMObject::mutatePtrValueAddressSpace(a2, v58);
  }

  if (a5 == -1)
  {
    ++*(this + 878);
  }

LABEL_44:
  if (a8 == -1)
  {
LABEL_47:
    if ((a7 & 3) != 1)
    {
LABEL_50:
      v62 = *MEMORY[0x277D85DE8];
      return PointerCast;
    }

    v60 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
    v61 = *(this + *(*this - 24) + 2160);
LABEL_49:
    v75 = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    goto LABEL_50;
  }

  v59 = this + *(*this - 24);
  if (v59[2284])
  {
    (*(**(v59 + 271) + 176))(*(v59 + 271), PointerCast, a8, *(v59 + 570), 0, 0);
    goto LABEL_47;
  }

LABEL_51:
  v64 = std::__throw_bad_optional_access[abi:nn200100]();
  return std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v64);
}

uint64_t std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t llvm::GlobalValue::setVisibility(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  v3 = v2 & 0xFFFFFFCF | 0x10;
  *(this + 32) = v3;
  if ((v2 & 0xFu) - 7 >= 2)
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if (this)
    {
      return this;
    }

    v3 = *(v1 + 32);
  }

  *(v1 + 32) = v3 | 0x4000;
  return this;
}

uint64_t AGCLLVMUserObject::createDylibBaseGetterFunc(AGCLLVMUserObject *this)
{
  result = *(this + 370);
  if (!result)
  {
    v3 = *(AGCLLVMUserObject::createDylibBaseGlobal(this) + 24);
    v4 = this + *(*this - 24);
    llvm::FunctionType::get();
    v5 = *(v4 + 267);
    llvm::Module::getOrInsertFunction();
    *(this + 370) = v6;
    *(v6 + 32) = *(v6 + 32) & 0xFFFFBFC0 | 0x4008;
    v7 = *(this + *(*this - 24) + 2160);
    v9 = "entry";
    v10 = 259;
    v8 = *(this + 370);
    operator new();
  }

  return result;
}

void AGCLLVMUserObject::getCallOfCastedFunction(AGCLLVMUserObject *this, llvm::Value *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  *this = this + 16;
  *(this + 1) = 0x400000000;
  if (!a2)
  {
    v3 = MEMORY[0x10];
LABEL_7:
    if (v3 <= 0x1B)
    {
      if (v3 != 5 || *(a2 + 9) != 49)
      {
        goto LABEL_20;
      }
    }

    else if (v3 != 77)
    {
LABEL_20:
      v8 = *MEMORY[0x277D85DE8];
      return;
    }

    for (i = *(a2 + 1); i; i = *(i + 8))
    {
      AGCLLVMUserObject::getCallOfCastedFunction(&__src, *(i + 24));
      v6 = v10;
      v7 = *(this + 2);
      if (v10 + v7 > *(this + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v10)
      {
        memcpy((*this + 8 * v7), __src, 8 * v10);
        LODWORD(v7) = *(this + 2);
      }

      *(this + 2) = v7 + v6;
      if (__src != v11)
      {
        free(__src);
      }
    }

    goto LABEL_20;
  }

  v3 = *(a2 + 16);
  if (v3 != 84)
  {
    goto LABEL_7;
  }

  v4 = *MEMORY[0x277D85DE8];

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, a2);
}

void *AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(void *a1, llvm::Instruction *a2, unsigned int a3, llvm::Type *a4, llvm::Type **a5)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + *(*a1 - 24) + 1712), a2);
  v10 = *(a2 + 4 * a3 + -4 * (*(a2 + 5) & 0x7FFFFFF));
  v38 = *v10;
  v39 = a3;
  v11 = *(a1 + *(*a1 - 24) + 1912);
  v12 = llvm::ConstantInt::get();
  v13 = a1 + *(*a1 - 24);
  v14 = *(v13 + 239);
  v44[0] = "resource_index";
  v45 = 259;
  Cast = llvm::IRBuilderBase::CreateCast((v13 + 1712), 47, v10, v14, v44);
  v16 = a1 + *(*a1 - 24);
  v44[0] = "heap_offset";
  v45 = 259;
  Mul = llvm::IRBuilderBase::CreateMul((v16 + 1712), Cast, v12, v44);
  v18 = *(a1 + *(*a1 - 24) + 1888);
  v19 = llvm::PointerType::get();
  v20 = *(a1 + *(*a1 - 24) + 1912);
  v21 = llvm::PointerType::get();
  v22 = a1 + *(*a1 - 24);
  v23 = *(v22 + 236);
  v45 = 257;
  llvm::Type::isOpaquePointerTy(*a5);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v22 + 214, a4, a5, 0, v44);
  v43 = 257;
  v25 = llvm::IRBuilderBase::CreateCast((v22 + 1712), 49, AlignedLoad, v19, v42);
  v41 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v22 + 1712), v23, v25, Mul, v40);
  v27 = a1 + *(*a1 - 24);
  v45 = 257;
  v28 = llvm::IRBuilderBase::CreateCast((v27 + 1712), 49, GEP, v21, v44);
  v29 = a1 + *(*a1 - 24);
  v30 = *(v29 + 239);
  v45 = 257;
  llvm::Type::isOpaquePointerTy(*v28);
  v31 = llvm::IRBuilderBase::CreateAlignedLoad(v29 + 214, v30, v28, 0, v44);
  v32 = a1 + *(*a1 - 24);
  v45 = 257;
  result = llvm::IRBuilderBase::CreateCast((v32 + 1712), 48, v31, v38, v44);
  v34 = a2 + 32 * v39 + -32 * (*(a2 + 5) & 0x7FFFFFF);
  if (*v34)
  {
    v35 = *(v34 + 8);
    **(v34 + 16) = v35;
    if (v35)
    {
      *(v35 + 16) = *(v34 + 16);
    }
  }

  *v34 = result;
  if (result)
  {
    v37 = result[1];
    ++result;
    v36 = v37;
    *(v34 + 8) = v37;
    if (v37)
    {
      *(v36 + 16) = v34 + 8;
    }

    *(v34 + 16) = result;
    *result = v34;
  }

  return result;
}

uint64_t AGCLLVMUserObject::createIndirectCommandBufferHeapGlobal(AGCLLVMUserObject *this)
{
  v21[2] = *MEMORY[0x277D85DE8];
  PerEncoderIndirectionTableGlobal = AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(this);
  v4 = v3;
  v5 = *(this + *(*this - 24) + 1872);
  v6 = llvm::PointerType::get();
  v7 = this + *(*this - 24);
  v20 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v7 + 1704), v4, v19);
  v9 = *(this + *(*this - 24) + 1904);
  v21[0] = llvm::ConstantInt::get();
  v10 = this + *(*this - 24);
  (*(**(*(v10 + 271) + 920) + 1184))();
  v11 = *(v10 + 238);
  v21[1] = llvm::ConstantInt::get();
  v18 = 257;
  llvm::Type::isOpaquePointerTy(*Load);
  GEP = llvm::IRBuilderBase::CreateGEP((v7 + 1712), PerEncoderIndirectionTableGlobal, Load, v21, 2, v17);
  v13 = (this + *(*this - 24));
  v14 = llvm::PointerType::get();
  v20 = 257;
  llvm::IRBuilderBase::CreatePointerCast(v13 + 214, GEP, v14, v19);
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AGCLLVMUserObject::createPipelineStateHeapGlobal(AGCLLVMUserObject *this)
{
  v21[2] = *MEMORY[0x277D85DE8];
  PerEncoderIndirectionTableGlobal = AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(this);
  v4 = v3;
  v5 = *(this + *(*this - 24) + 1872);
  v6 = llvm::PointerType::get();
  v7 = this + *(*this - 24);
  v20 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v7 + 1704), v4, v19);
  v9 = *(this + *(*this - 24) + 1904);
  v21[0] = llvm::ConstantInt::get();
  v10 = this + *(*this - 24);
  (*(**(*(v10 + 271) + 920) + 1192))();
  v11 = *(v10 + 238);
  v21[1] = llvm::ConstantInt::get();
  v18 = 257;
  llvm::Type::isOpaquePointerTy(*Load);
  GEP = llvm::IRBuilderBase::CreateGEP((v7 + 1712), PerEncoderIndirectionTableGlobal, Load, v21, 2, v17);
  v13 = (this + *(*this - 24));
  v14 = llvm::PointerType::get();
  v20 = 257;
  llvm::IRBuilderBase::CreatePointerCast(v13 + 214, GEP, v14, v19);
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AGCLLVMUserObject::replaceF16Builtins(AGCLLVMUserObject *this)
{
  v1 = (*(**(this + *(*this - 24) + 2168) + 784))(*(this + *(*this - 24) + 2168), this, *(this + *(*this - 24) + 2136));
  v2 = *(v1 + 432);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    if (v3)
    {
      v6 = (v3 - 56);
    }

    else
    {
      v6 = 0;
    }

    v3 = *(v3 + 8);
    Name = llvm::Value::getName(v6);
    v17[0] = 0;
    v17[1] = 0;
    v15 = 0;
    v16 = 0;
    if (AGCLLVMBuilder::findPrefix(Name, v8, v17, &v15, "air.", 4uLL) && llvm::GlobalValue::isDeclaration(v5))
    {
      v9 = *(v1 + 952);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1)
      {
        v11 = *(v9 + 8);
      }

      else
      {
        v11 = Key;
      }

      v12 = (*v9 + 8 * v11);
      if (v12 != (**(v1 + 952) + 8 * *(*(v1 + 952) + 8)) && llvm::StringRef::find() != -1)
      {
        AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::doReplacement(v1 + 472, v5, *v12 + 8, v15, v16);
      }
    }
  }

  v13 = *(v1 + 960);
  (*(*v1 + 16))(v1);
  return v13;
}

uint64_t AGCLLVMUserObject::replaceGlobalBufferBinding(void *a1, AGCLLVMObject *a2, uint64_t a3)
{
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = -1;
  v18 = 0;
  parseMDBuffer(a3, *(*a2 + 8) >> 8, &v24, &v23, &v22 + 1, &v22, &v21, &v18, &v20, &v19, &v18 + 1);
  AGCLLVMObject::replaceConstantChainWithInstrs(a2, v5);
  if (HIBYTE(v18) == 1)
  {
    if (v22)
    {
      v6 = HIDWORD(v22) / v22;
    }

    else
    {
      v6 = 0;
    }

    v9 = (a1 + *(*a1 - 24));
    if (*(v9[90].__r_.__value_.__l.__size_ + 1869) != 1)
    {
      v10 = v19;
      v11 = v18;
      v12 = v24;
      v13 = *(a2 + 3);
      v14 = **(v13 + 2);
      v15 = ((a1[438] >> v24) & 1) == 0;
      TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), v13);
      v26 = v16;
      v17 = v6 * llvm::TypeSize::operator unsigned long long();
      (*(*a1 + 312))(a1, a2, v13, v12, 0xFFFFFFFFLL, v17, v11, v10);
      operator new();
    }

    std::string::append(v9 + 69, "Tier 1 argument buffer global binding is not supported");
    return 0;
  }

  else
  {
    if (v20)
    {
      v7 = v19;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }

    result = (*(*a1 + 312))(a1, a2, *(a2 + 3), v24, 0xFFFFFFFFLL, HIDWORD(v22), v18, v7);
    if (result)
    {
      llvm::Value::replaceAllUsesWith();
      return 1;
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::replaceSamplerInput<llvm::GlobalVariable>(unsigned __int8 ***a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 8))
  {
    return 1;
  }

  v17 = 0;
  v16 = 0;
  v5 = parseMDSampler(a3, &v17 + 1, &v17, &v16);
  if (v5)
  {
    v6 = *a2;
    if (llvm::Type::isOpaquePointerTy(*a2))
    {
      v7 = *&(*(*a1 - 3))[a1 + 1776];
      llvm::StructType::create();
      v8 = v16;
    }

    else
    {
      v8 = v16;
      if (v16)
      {
        v9 = **(v6 + 2);
        if (*(v9 + 8) == 16)
        {
          v9 = **(v9 + 16);
        }

        v6 = **(v9 + 16);
      }

      v10 = *(v6 + 2);
      if ((v10 & 0x1FF) == 0x110)
      {
        v6 = **(v6 + 2);
        LOBYTE(v10) = *(v6 + 8);
      }

      if (v10 == 15)
      {
        v11 = **(v6 + 2);
        if ((*(v11 + 8) & 0x1FF) == 0x110)
        {
          v6 = **(v11 + 16);
        }
      }

      v12 = **(v6 + 2);
    }

    v14 = v17;
    v13 = HIDWORD(v17);
    std::__tree<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::__emplace_unique_key_args<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::Sampler const&>((a1 + 128), HIDWORD(v17) & 0xFFFFF);
    AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(a1, a2, v13, v14, v8, a1 + 393, a1 + 417);
  }

  return v5;
}

uint64_t AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(AGCLLVMUserObject *this, llvm::GlobalValue *a2, unsigned int a3, int a4, char a5, unsigned __int8 ***a6, unsigned __int8 ***a7)
{
  AGCLLVMObject::replaceConstantChainWithInstrs(a2, a2);
  if (a5)
  {
    v14 = **(*a2 + 16);
    result = AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(llvm::GlobalValue *,unsigned int,unsigned int,BOOL,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &)::$_2::operator()(this, *(a2 + 1), a3, a4, 1, **(**(v14 + 2) + 16), a6);
    if (result)
    {
      v16 = *(a2 + 1);
      if (v16)
      {
        do
        {
          v17 = *(v16 + 8);
          llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), *(v16 + 24));
          v26 = a3;
          v27 = a3 + a4 - 1;
          v18 = *(this + *(*this - 24) + 1904);
          v19 = llvm::ConstantInt::get();
          AGCLLVMUserObject::buildAPIResourceConstantPointerIntrinsic(this, a7, v14, v19, &v26);
          result = llvm::User::replaceUsesOfWith();
          v16 = v17;
        }

        while (v17);
      }
    }
  }

  else
  {
    v20 = *(a2 + 3);
    if (*(v20 + 8) == 16)
    {
      v21 = *(a2 + 3);
    }

    else
    {
      v21 = 0;
    }

    result = AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(llvm::GlobalValue *,unsigned int,unsigned int,BOOL,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &)::$_2::operator()(this, *(a2 + 1), a3, a4, 0, v21, a6);
    if (result)
    {
      v22 = *(a2 + 1);
      if (v22)
      {
        do
        {
          v23 = *(v22 + 8);
          llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), *(v22 + 24));
          v26 = a3;
          v27 = a3;
          v24 = *(this + *(*this - 24) + 1904);
          v25 = llvm::ConstantInt::get();
          AGCLLVMUserObject::buildAPIResourceConstantPointerIntrinsic(this, a7, v20, v25, &v26);
          result = llvm::User::replaceUsesOfWith();
          v22 = v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(llvm::GlobalValue *,unsigned int,unsigned int,BOOL,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &)::$_2::operator()(AGCLLVMUserObject *a1, uint64_t a2, unsigned int a3, int a4, char a5, uint64_t a6, unsigned __int8 ***a7)
{
  v69[16] = *MEMORY[0x277D85DE8];
  v64 = v66;
  v65 = 0x1000000000;
  v67 = v69;
  v68 = 0x1000000000;
  v57 = v61;
  v58 = v61;
  v59 = 16;
  v60 = 0;
  if (!a2)
  {
    goto LABEL_21;
  }

  v11 = a2;
  do
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v67, *(v11 + 24));
    v11 = *(v11 + 8);
  }

  while (v11);
  v12 = v68;
  if (v68)
  {
    v13 = 0;
    do
    {
      v14 = v67[v12 - 1];
      LODWORD(v68) = v12 - 1;
      imp = llvm::SmallPtrSetImplBase::find_imp(&v57, v14);
      if (v58 == v57)
      {
        v16 = (&v59 + 4);
      }

      else
      {
        v16 = &v59;
      }

      if (imp == &v58[*v16])
      {
        v17 = *(v14 + 16);
        if (v17 == 60)
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v64, v14);
        }

        else if (v17 == 77 || v17 == 62)
        {
          for (i = *(v14 + 8); i; i = *(i + 8))
          {
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v67, *(i + 24));
          }
        }

        else
        {
          v13 = 1;
        }

        llvm::SmallPtrSetImpl<void *>::insert(v56, &v57, v14);
      }

      v12 = v68;
    }

    while (v68);
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

  if (v58 != v57)
  {
    free(v58);
  }

  if (v67 != v69)
  {
    free(v67);
  }

  v19 = v64;
  if (v65)
  {
    v52 = v13;
    v20 = (v64 + 8 * v65);
    v53 = a3 + a4 - 1;
    v21 = a1 + 1904;
    while (1)
    {
      llvm::IRBuilderBase::SetInsertPoint((a1 + *(*a1 - 24) + 1712), *v19);
      v22 = *(*v19 - 4);
      v67 = 0;
      if ((a5 & 1) == 0)
      {
        break;
      }

      v23 = *(v22 + 16);
      if (v23 == 62 && v22 != 0)
      {
        v36 = *(v22 + 20) & 0x7FFFFFF;
        v37 = (v22 - 32 * v36);
        v26 = *v37;
        v38 = **v37;
        v39 = v36 - 1;
        if (v39)
        {
          v40 = v38 == a6;
        }

        else
        {
          v40 = 1;
        }

        if (!v40)
        {
          v41 = 0;
          while (1)
          {
            v42 = *(v38 + 8);
            if (v42 != 15)
            {
              if (v42 == 17)
              {
                v43 = (v38 + 24);
                goto LABEL_56;
              }

              if (v42 != 16)
              {
                goto LABEL_57;
              }
            }

            v43 = *(v38 + 16);
LABEL_56:
            v38 = *v43;
LABEL_57:
            if (++v41 >= v39 || v38 == a6)
            {
              v26 = v37[4 * v41];
              break;
            }
          }
        }

        if (v26)
        {
          v44 = *(v26 + 16) == 16;
        }

        else
        {
          v44 = 0;
        }

        if (v44)
        {
          v45 = v26 + 3;
          if (*(v26 + 8) >= 0x41u)
          {
            v45 = *v45;
          }

          v46 = *v45 + a3;
          v47 = *&v21[*(*a1 - 24)];
          v26 = llvm::ConstantInt::get();
          v67 = (v46 | (v46 << 32));
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (v23 == 77 && v22 != 0)
      {
        break;
      }

      v26 = 0;
LABEL_42:
      v28 = **(a6 + 16);
      v29 = a1 + *(*a1 - 24);
      v30 = *(v29 + 238);
      v61[0] = 257;
      IntCast = llvm::IRBuilderBase::CreateIntCast(v29 + 214, v26, v30, 0, &v57);
      v32 = AGCLLVMUserObject::buildAPIResourceIntrinsic(a1, a7, v28, IntCast, &v67);
      if (*(**v19 + 8) == 13)
      {
        v33 = a1 + *(*a1 - 24);
        v34 = *(v33 + 239);
        v61[0] = 257;
        llvm::IRBuilderBase::CreateCast((v33 + 1712), 47, v32, v34, &v57);
        v35 = *v19;
      }

      llvm::Value::replaceAllUsesWith();
      if (++v19 == v20)
      {
        v19 = v64;
        v13 = v52;
        if (v65)
        {
          v48 = 8 * v65;
          do
          {
            v49 = *v19++;
            v63 = 0;
            llvm::RecursivelyDeleteTriviallyDeadInstructions();
            std::__function::__value_func<void ()(llvm::Value *)>::~__value_func[abi:nn200100](v62);
            v48 -= 8;
          }

          while (v48);
          v19 = v64;
        }

        goto LABEL_72;
      }
    }

    v27 = *&v21[*(*a1 - 24)];
    v26 = llvm::ConstantInt::get();
LABEL_41:
    v67 = __PAIR64__(v53, a3);
    goto LABEL_42;
  }

LABEL_72:
  if (v19 != v66)
  {
    free(v19);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

llvm::Value *AGCLLVMUserObject::buildAPIResourceConstantPointerIntrinsic(AGCLLVMUserObject *this, unsigned __int8 ***a2, llvm::Type *a3, llvm::Value *a4, AGCArgumentBuffer::Resource::Bounds *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = (this + *(*this - 24));
  v10 = v9[244];
  v21 = v9[238];
  v22 = v10;
  v11 = v9[235];
  v23 = v21;
  v24 = v11;
  llvm::PointerType::get();
  v12 = *(this + *(*this - 24) + 2136);
  Function = AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::getFunction(a2);
  v14 = (this + *(*this - 24));
  v20[0] = a4;
  v20[1] = AGCArgumentBuffer::Resource::Bounds::toConstantVector(a5, v14 + 214);
  v15 = *(this + *(*this - 24) + 1904);
  v20[2] = llvm::ConstantInt::get();
  v16 = *(this + *(*this - 24) + 1880);
  v20[3] = llvm::ConstantInt::get();
  v19[16] = 257;
  result = llvm::IRBuilderBase::CreateCall((v14 + 214), *(Function + 24), Function, v20, 4, v19);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>,false>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 8 * v2 <= a2)
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>,false>::grow();
    }

    v5 = a2 - *a1;
    llvm::SmallVectorTemplateBase<std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>,false>::grow();
  }

  return a2;
}

uint64_t *std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      do
      {
        v4 = *v3;
        *(v3 + 3) = &unk_2825A7940;
        llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(v3 + 5);
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x20F331DC0](v2, 0x10A0C409CD0B977);
  }

  return a1;
}

void AGCLLVMUserObject::setupIndirectArgumentRogMetadata(uint64_t a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v5[16] = v6;
  v5[17] = 0x800000000;
  v3 = v5;
  v4 = 0x800000000;
  v2 = *(a2 + 56);
  operator new();
}

uint64_t std::function<void ()(AGCArgumentBuffer::Field const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0,std::allocator<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0>,void ()(AGCArgumentBuffer::Field const*)>::operator()(v3);
}

void std::__function::__func<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0,std::allocator<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0>,void ()(AGCArgumentBuffer::Field const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v58[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *(*a2 + 8);
  if (*a2)
  {
    v6 = (v5 - 3) >= 0xFFFFFFFE;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(*(a1 + 8), 0);
    v27 = *(v3 + 24);
    if (v27)
    {
      for (i = 0; i < v27; ++i)
      {
        if (*(*(v3 + 16) + 8 * i))
        {
          v29 = *(v4 + *(*v4 - 24) + 1904);
          *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = llvm::ConstantInt::get();
          std::function<void ()(AGCArgumentBuffer::Field const*)>::operator()(*(*(a1 + 24) + 24), *(*(v3 + 16) + 8 * i));
          v27 = *(v3 + 24);
        }
      }
    }

    goto LABEL_72;
  }

  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v30 = *(a1 + 8);
    v31 = *(v4 + *(*v4 - 24) + 1904);
    v32 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v30, v32);
    std::function<void ()(AGCArgumentBuffer::Field const*)>::operator()(*(*(a1 + 24) + 24), *(v3 + 16));
LABEL_72:
    --*(*(a1 + 8) + 8);
    goto LABEL_73;
  }

  if (v3)
  {
    v8 = v5 == 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(*(a1 + 8), 0);
    if (*(v3 + 24))
    {
      v33 = 0;
      do
      {
        v34 = *(v4 + *(*v4 - 24) + 1904);
        *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = llvm::ConstantInt::get();
        std::function<void ()(AGCArgumentBuffer::Field const*)>::operator()(*(*(a1 + 24) + 24), *(v3 + 16));
        ++v33;
      }

      while (v33 < *(v3 + 24));
    }

    goto LABEL_72;
  }

  if (v3 && v5 == 4)
  {
    v9 = *(**(a1 + 32) + 80);
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(v10 + 2);
    v13 = llvm::DataLayout::getIndexedOffsetInType() << 32;
    if (*(v3 + 276) == 1)
    {
      v13 |= *(v3 + 272);
      llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(*(a1 + 40), v13, 8);
    }

    v14 = *(v3 + 248);
    if (!v14)
    {
      v47 = 0;
      v48 = 0u;
      *__p = 0u;
      v50 = 1065353216;
      goto LABEL_90;
    }

    v56 = v58;
    v57 = 0x800000000;
    v51 = v55;
    v52 = v55;
    v53 = 8;
    v54 = 0;
    v48 = 0u;
    *__p = 0u;
    v50 = 1065353216;
LABEL_19:
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, v14);
    while (1)
    {
      while (1)
      {
        if (!v57)
        {
          if (v52 != v51)
          {
            free(v52);
          }

          if (v56 != v58)
          {
            free(v56);
          }

          v44 = __p[0];
          if (__p[0])
          {
            do
            {
              v13 = v13 & 0xFFFFFFFF00000000 | *(v44 + 4);
              llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(*(a1 + 40), v13, 0x100000008);
              v44 = *v44;
            }

            while (v44);
            v45 = __p[0];
            if (__p[0])
            {
              do
              {
                v46 = *v45;
                operator delete(v45);
                v45 = v46;
              }

              while (v46);
            }
          }

          v47 = v48;
LABEL_90:
          *&v48 = 0;
          if (v47)
          {
            operator delete(v47);
          }

LABEL_73:
          v35 = *MEMORY[0x277D85DE8];
          return;
        }

        v15 = *(v56 + v57 - 1);
        LODWORD(v57) = v57 - 1;
        v16 = *(v15 + 8);
        if (v15 && v16 == 2)
        {
          break;
        }

LABEL_28:
        if (v15)
        {
          v19 = (v16 - 3) >= 0xFFFFFFFE;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v24 = *(v15 + 24);
          if (v24)
          {
            v25 = *(v15 + 16);
            v26 = 8 * v24;
            do
            {
              if (*v25)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, *v25);
              }

              ++v25;
              v26 -= 8;
            }

            while (v26);
          }
        }

        else
        {
          if (v15)
          {
            v20 = v16 == 0;
          }

          else
          {
            v20 = 0;
          }

          if (v20 || (v15 ? (v21 = v16 == 3) : (v21 = 0), v21))
          {
            v14 = *(v15 + 16);
            goto LABEL_19;
          }

          if (v15)
          {
            v22 = v16 == 4;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
            if (*(v15 + 276) == 1)
            {
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v48, *(v15 + 272));
            }

            v14 = *(v15 + 248);
            if (v14)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v15)
            {
              v23 = v16 == 5;
            }

            else
            {
              v23 = 0;
            }

            if (v23 && *(v15 + 252) == 1)
            {
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v48, *(v15 + 248));
            }
          }
        }
      }

      llvm::SmallPtrSetImplBase::insert_imp(&v51, v15);
      if (v18)
      {
        v16 = *(v15 + 8);
        goto LABEL_28;
      }
    }
  }

  if (!v3 || v5 != 5 || *(v3 + 252) != 1)
  {
    goto LABEL_73;
  }

  v36 = *(v3 + 248);
  v37 = *(**(a1 + 32) + 80);
  v38 = *(a1 + 8);
  v39 = *v38;
  v40 = *(v38 + 2);
  IndexedOffsetInType = llvm::DataLayout::getIndexedOffsetInType();
  v42 = *(a1 + 40);
  v43 = *MEMORY[0x277D85DE8];

  llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(v42, v36 | (IndexedOffsetInType << 32), 8);
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0,std::allocator<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0>,void ()(AGCArgumentBuffer::Field const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7960;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMUserObject::hoistAllocas(void *a1, uint64_t a2, uint64_t a3)
{
  v43[8] = *MEMORY[0x277D85DE8];
  v41 = v43;
  v42 = 0x800000000;
  v4 = a2 + 40;
  v5 = *(a2 + 48);
  if (v5 != a2 + 40)
  {
    v8 = 0;
    v9 = a1 + 267;
    while (1)
    {
      v10 = v5 - 24;
      if (v5)
      {
        v11 = v5 - 24;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v11 + 16);
      if (v12 == 59)
      {
        if (*a3)
        {
          v13 = *a3 - 24;
        }

        else
        {
          v13 = 0;
        }

        if (v10 == v13)
        {
          *a3 = *(*a3 + 8);
        }

        else
        {
          llvm::Instruction::moveBefore();
        }

        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v41, v5 - 24);
      }

      else
      {
        v14 = *(v9 + *(*a1 - 24));
        Function = llvm::Module::getFunction();
        if (v12 != 84 || Function == 0)
        {
          goto LABEL_29;
        }

        v17 = *(v5 - 56);
        if (!v17 || *(v17 + 16) || *(v17 + 24) != *(v5 + 48))
        {
          v17 = 0;
        }

        if (v17 != Function)
        {
          goto LABEL_29;
        }

        if (*a3)
        {
          v18 = *a3 - 24;
        }

        else
        {
          v18 = 0;
        }

        if (v10 == v18)
        {
          *a3 = *(*a3 + 8);
        }

        else
        {
          llvm::Instruction::moveBefore();
        }
      }

      v8 = 1;
LABEL_29:
      v5 = *(v5 + 8);
      if (v5 == v4)
      {
        v19 = v41;
        v20 = v42;
        goto LABEL_33;
      }
    }
  }

  v20 = 0;
  v8 = 0;
  v19 = v43;
LABEL_33:
  v33 = 1;
  *v34 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v35 = *v34;
  v36 = *v34;
  v37 = *v34;
  v38 = v40;
  v39 = 0x800000000;
  if (!v20)
  {
    goto LABEL_55;
  }

  v21 = 8 * v20;
  do
  {
    v22 = llvm::AllocaInst::getDeferredStaticSizeCall(*v19);
    if (!v22)
    {
      goto LABEL_45;
    }

    v23 = v22;
    v32 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(&v33, v22, &v32))
    {
      goto LABEL_45;
    }

    v24 = v33 >> 1;
    if (v33)
    {
      v25 = 8;
    }

    else
    {
      v25 = v34[1];
    }

    if (4 * v24 + 4 >= 3 * v25)
    {
      v25 *= 2;
LABEL_48:
      llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::grow(&v33, v25);
      v32 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(&v33, v23, &v32);
      goto LABEL_42;
    }

    if (v25 + ~v24 - HIDWORD(v33) <= v25 >> 3)
    {
      goto LABEL_48;
    }

LABEL_42:
    LODWORD(v33) = v33 + 2;
    if (*v32 != -4096)
    {
      --HIDWORD(v33);
    }

    *v32 = v23;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v38, v23);
LABEL_45:
    ++v19;
    v21 -= 8;
  }

  while (v21);
  v26 = v38;
  if (v39)
  {
    v27 = *(a2 + 48);
    v28 = 8 * v39;
    do
    {
      v29 = *v26++;
      llvm::Instruction::moveBefore();
      v28 -= 8;
    }

    while (v28);
    v26 = v38;
  }

  if (v26 != v40)
  {
    free(v26);
  }

LABEL_55:
  if ((v33 & 1) == 0)
  {
    llvm::deallocate_buffer(v34[0], (8 * LODWORD(v34[1])));
  }

  if (v41 != v43)
  {
    free(v41);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((a2 >> 4) ^ (a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 8 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 8 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::grow(uint64_t a1, unsigned int a2)
{
  v16[8] = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if (*a1)
  {
    v8 = v16;
    for (i = 8; i != 72; i += 8)
    {
      v10 = *(a1 + i);
      if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *v8++ = v10;
      }
    }

    if (a2 > 8)
    {
      *a1 &= ~1u;
      v11 = a2;
      *(a1 + 8) = MEMORY[0x20F330650](8 * a2, 8);
      *(a1 + 16) = v11;
    }

    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::moveFromOldBuckets(a1, v16, v8);
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 8)
    {
      v14 = a2;
      *(a1 + 8) = MEMORY[0x20F330650](8 * a2, 8);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::moveFromOldBuckets(a1, v6, &v6[v7]);
    v15 = *MEMORY[0x277D85DE8];

    return llvm::deallocate_buffer(v6, (8 * v7));
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 72;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 8 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
    if (v13.i8[0])
    {
      *(v8 + 8 * v10) = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 8 * v10 + 8) = -4096;
    }

    v10 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v14 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(v5, v14, &v15);
      *v15 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 33));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileCommonPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileCommonPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,SimplifyGenericIRCommonPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<SimplifyGenericIRCommonPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 25));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::initializeBuiltinArgMaps(void)::$_0 &&>>(llvm::StringMapImpl ****a1)
{
  v1 = **a1;
  v2 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.vertex_id", 0xDuLL);
  *(v2 + 8) = "air.get_vertex_id";
  *(v2 + 16) = 17;
  *(v2 + 24) = 1;
  v3 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.instance_id", 0xFuLL);
  *(v3 + 8) = "air.get_instance_id";
  *(v3 + 16) = 19;
  *(v3 + 24) = 1;
  v4 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.base_vertex", 0xFuLL);
  *(v4 + 8) = "air.get_base_vertex";
  *(v4 + 16) = 19;
  *(v4 + 24) = 1;
  v5 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.base_instance", 0x11uLL);
  *(v5 + 8) = "air.get_base_instance";
  *(v5 + 16) = 21;
  *(v5 + 24) = 1;
  v6 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_position_in_grid", 0x1BuLL);
  *(v6 + 8) = "air.get_global_id";
  *(v6 + 16) = 17;
  *(v6 + 24) = 0;
  v7 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_position_in_threadgroup", 0x22uLL);
  *(v7 + 8) = "air.get_local_id";
  *(v7 + 16) = 16;
  *(v7 + 24) = 0;
  v8 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_index_in_threadgroup", 0x1FuLL);
  *(v8 + 8) = "air.get_local_linear_id";
  *(v8 + 16) = 23;
  *(v8 + 24) = 1;
  v9 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threadgroup_position_in_grid", 0x20uLL);
  *(v9 + 8) = "air.get_group_id";
  *(v9 + 16) = 16;
  *(v9 + 24) = 0;
  v10 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threads_per_grid", 0x14uLL);
  *(v10 + 8) = "air.get_global_size";
  *(v10 + 16) = 19;
  *(v10 + 24) = 0;
  v11 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threads_per_threadgroup", 0x1BuLL);
  *(v11 + 8) = "air.get_local_size";
  *(v11 + 16) = 18;
  *(v11 + 24) = 0;
  v12 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threadgroups_per_grid", 0x19uLL);
  *(v12 + 8) = "air.get_num_groups";
  *(v12 + 16) = 18;
  *(v12 + 24) = 0;
  v13 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_execution_width", 0x1AuLL);
  *(v13 + 8) = "air.get_thread_execution_width";
  *(v13 + 16) = 30;
  *(v13 + 24) = 1;
  v14 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.dispatch_threads_per_threadgroup", 0x24uLL);
  *(v14 + 8) = "air.get_dispatch_local_size";
  *(v14 + 16) = 27;
  *(v14 + 24) = 0;
  v15 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_index_in_quadgroup", 0x1DuLL);
  *(v15 + 8) = "air.get_quad_element";
  *(v15 + 16) = 20;
  *(v15 + 24) = 1;
  v16 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.quadgroup_index_in_threadgroup", 0x22uLL);
  *(v16 + 8) = "air.get_quad_group";
  *(v16 + 16) = 18;
  *(v16 + 24) = 1;
  v17 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.quadgroups_per_threadgroup", 0x1EuLL);
  *(v17 + 8) = "air.get_quadgroups_per_threadgroup";
  *(v17 + 16) = 34;
  *(v17 + 24) = 1;
  v18 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.dispatch_quadgroups_per_threadgroup", 0x27uLL);
  *(v18 + 8) = "air.get_dispatch_quadgroups_per_threadgroup";
  *(v18 + 16) = 43;
  *(v18 + 24) = 1;
  v19 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threads_per_simdgroup", 0x19uLL);
  *(v19 + 8) = "air.get_threads_per_simdgroup";
  *(v19 + 16) = 29;
  *(v19 + 24) = 1;
  v20 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_index_in_simdgroup", 0x1DuLL);
  *(v20 + 8) = "air.get_thread_index_in_simdgroup";
  *(v20 + 16) = 33;
  *(v20 + 24) = 1;
  v21 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.simdgroup_index_in_threadgroup", 0x22uLL);
  *(v21 + 8) = "air.get_simdgroup_index_in_threadgroup";
  *(v21 + 16) = 38;
  *(v21 + 24) = 1;
  v22 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.simdgroups_per_threadgroup", 0x1EuLL);
  *(v22 + 8) = "air.get_simdgroups_per_threadgroup";
  *(v22 + 16) = 34;
  *(v22 + 24) = 1;
  v23 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.dispatch_simdgroups_per_threadgroup", 0x27uLL);
  *(v23 + 8) = "air.get_dispatch_simdgroups_per_threadgroup";
  *(v23 + 16) = 43;
  *(v23 + 24) = 1;
  v24 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.pixel_position_in_tile", 0x1AuLL);
  *(v24 + 8) = "air.get_local_id";
  *(v24 + 16) = 16;
  *(v24 + 24) = 0;
  v25 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.pixels_per_tile", 0x13uLL);
  *(v25 + 8) = "air.get_local_size";
  *(v25 + 16) = 18;
  *(v25 + 24) = 0;
  result = llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.tile_index", 0xEuLL);
  v27 = *result;
  *(v27 + 8) = "air.get_local_linear_id";
  *(v27 + 16) = 23;
  *(v27 + 24) = 1;
  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v14, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v16 = v4;
  v21 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v15, &v21);
  if (result)
  {
    v6 = v21;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v16;
  if ((*v16 + 48 * v16[2].u32[0]) == v6)
  {
    goto LABEL_23;
  }

  v8 = v6[5];
  v22[0] = 2;
  v22[1] = 0;
  v23 = -8192;
  v24 = 0;
  v21 = &unk_2825A7378;
  llvm::ValueHandleBase::operator=((v6 + 1), v22);
  v9 = v23;
  v6[4] = v24;
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v22);
  }

  v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
  v10 = v16;
  llvm::CallbackVH::CallbackVH(&v17, a2);
  v17 = &unk_2825A7378;
  v20 = v10;
  llvm::ValueHandleBase::ValueHandleBase(v22, (LODWORD(v18[0]) >> 1) & 3, v18);
  v21 = &unk_2825A7378;
  v24 = v20;
  v25 = v8;
  v26 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v23, &v26);
  if ((result & 1) == 0)
  {
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(v10 + 12) > v12 >> 3)
    {
LABEL_12:
      v13 = v26;
      ++*(v10 + 8);
      if (v13[3] != -4096)
      {
        --*(v10 + 12);
      }

      result = llvm::ValueHandleBase::operator=((v13 + 1), v22);
      v13[4] = v24;
      v13[5] = v25;
      goto LABEL_15;
    }

    llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::grow(v10, v12);
    v26 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v23, &v26);
    goto LABEL_12;
  }

LABEL_15:
  if (v23 != -8192 && v23 != -4096 && v23)
  {
    result = llvm::ValueHandleBase::RemoveFromUseList(v22);
  }

  if (v19 != -8192 && v19 != -4096 && v19)
  {
    result = llvm::ValueHandleBase::RemoveFromUseList(v18);
  }

LABEL_23:
  if (v15 != -8192 && v15 != -4096)
  {
    if (v15)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v14);
    }
  }

  return result;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_2825A7378;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          llvm::ValueHandleBase::operator=((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825A7378;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = *v4 + 48 * v4[2].u32[0];
  }

  v7 = v14;
  if (*v14 + 48 * v14[2].u32[0] != v6)
  {
    v8 = *(v6 + 40);
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_2825BDF98;
    llvm::ValueHandleBase::operator=((v6 + 8), v20);
    v9 = v21;
    *(v6 + 32) = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    llvm::CallbackVH::CallbackVH(&v15, a2);
    v15 = &unk_2825BDF98;
    v18 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_2825BDF98;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v10, &v19, v24);
      result = llvm::ValueHandleBase::operator=((v11 + 8), v20);
      *(v11 + 32) = v22;
      *(v11 + 40) = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_2825BDF98;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = v4 + 24;
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          llvm::ValueHandleBase::operator=((v24 + 8), v10 - 2);
          v12 = *v10;
          *(v14 + 32) = *(v10 + 1);
          *(v14 + 40) = *(v10 + 4);
          ++*(a1 + 8);
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 16));
        }

        v10 += 48;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825BDF98;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

void AGCLLVMUserObject::createTLSIntrinsic(AGCLLVMUserObject *this, const char *a2, const char *a3)
{
  v6 = *(this + *(*this - 24) + 1904);
  v7 = 1;
  v8 = llvm::User::operator new(0x58);
  v9 = *(this + *(*this - 24) + 2136);
  llvm::Constant::getNullValue(v6, v10);
  HIBYTE(v36) = 1;
  if (*a2)
  {
    v35.__r_.__value_.__r.__words[0] = a2;
    v7 = 3;
  }

  LOBYTE(v36) = v7;
  v11 = llvm::GlobalVariable::GlobalVariable();
  *(v8 + 32) = *(v8 + 32) & 0xFFFFE3FF | 0x400;
  {
    if (v11)
    {
      AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map = 0;
      *&dword_27C8D9EF0 = 0;
      qword_27C8D9EF8 = 0x2000000000;
      __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, &dword_20E4E1000);
    }
  }

  if (dword_27C8D9EF4)
  {
    if (!a3)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  AGCLLVMUserObject::getBuiltinArgMap(v11);
  if (dword_28117E618)
  {
      ;
    }
  }

  else
  {
    i = AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map;
  }

  v14 = AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map + 8 * dword_28117E618;
  if (i != v14)
  {
    v15 = *i;
    do
    {
      v16 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, (v15 + 32), *v15);
      v17 = *(v15 + 24);
      *(v16 + 8) = *(v15 + 8);
      *(v16 + 24) = v17;
      do
      {
        v18 = i[1];
        ++i;
        v15 = v18;
        if (v18)
        {
          v19 = v15 == -8;
        }

        else
        {
          v19 = 1;
        }
      }

      while (v19);
    }

    while (i != v14);
  }

  v20 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, "air.patch_id", 0xCuLL);
  *(v20 + 8) = "air.get_patch_id";
  *(v20 + 16) = 16;
  *(v20 + 24) = 1;
  v21 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, "air.amplification_id", 0x14uLL);
  *(v21 + 8) = "air.get_amplification_id";
  *(v21 + 16) = 24;
  *(v21 + 24) = 1;
  v22 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, "air.render_target_array_index", 0x1DuLL);
  *(v22 + 8) = "air.get_render_target_array_index";
  *(v22 + 16) = 33;
  *(v22 + 24) = 1;
  if (a3)
  {
LABEL_6:
    strlen(a3);
  }

LABEL_25:
  Key = llvm::StringMapImpl::FindKey();
  v24 = Key;
  if (Key == -1)
  {
    v24 = dword_27C8D9EF0;
  }

  llvm::StringRef::str(&v35, *(AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map + 8 * v24) + 8);
  if (v6 == *(this + *(*this - 24) + 1904))
  {
    v25 = ".i32";
  }

  else
  {
    v25 = ".i16";
  }

  v26 = std::string::append(&v35, v25);
  __p = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704);
  v28 = *(this + 497);
  if (!v28)
  {
    v29 = *(*(this + 21) + 80);
    if (v29)
    {
      v28 = v29 - 24;
    }

    else
    {
      v28 = 0;
    }
  }

  v30 = *(v28 + 40);
  if (v30)
  {
    v31 = (v30 - 24);
  }

  else
  {
    v31 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v31);
  v32 = this + *(*this - 24);
  v36 = 257;
  v33 = llvm::IRBuilderBase::CreateCall((v32 + 1712), *(inserted + 24), inserted, 0, 0, &v35);
  llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v33, v8, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,unsigned int>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v4 = a2[1].n128_u32[3];
  v5 = &a1[1].n128_u32[3];
  v6 = &a3[1].n128_u32[3];
  v7 = a3[1].n128_u32[3];
  if (v4 <= a1[1].n128_u32[3])
  {
    if (v7 > v4)
    {
      v14 = a2[1].n128_u64[0];
      result = *a2;
      v15 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v15;
      *a3 = result;
      a3[1].n128_u64[0] = v14;
      v12 = &a2[1].n128_u32[2];
      LODWORD(v14) = a2[1].n128_u32[2];
      a2[1].n128_u32[2] = a3[1].n128_u32[2];
      a3[1].n128_u32[2] = v14;
      v7 = a2[1].n128_u32[3];
      a2[1].n128_u32[3] = a3[1].n128_u32[3];
      a3[1].n128_u32[3] = v7;
      if (a2[1].n128_u32[3] > *v5)
      {
        v16 = a1[1].n128_u64[0];
        result = *a1;
        v17 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v17;
        *a2 = result;
        a2[1].n128_u64[0] = v16;
        v8 = &a1[1].n128_u32[2];
        v13 = &a1[1].n128_u32[3];
        v18 = &a2[1].n128_u32[3];
LABEL_10:
        v24 = *v8;
        *v8 = *v12;
        *v12 = v24;
        v25 = *v13;
        *v13 = *v18;
        *v18 = v25;
        v7 = *v6;
      }
    }
  }

  else
  {
    if (v7 > v4)
    {
      v8 = &a1[1].n128_u32[2];
      v9 = a1[1].n128_u64[0];
      result = *a1;
      v11 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v9;
      v12 = &a3[1].n128_u32[2];
      v13 = &a1[1].n128_u32[3];
LABEL_9:
      v18 = &a3[1].n128_u32[3];
      goto LABEL_10;
    }

    v19 = a1[1].n128_u64[0];
    result = *a1;
    v20 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v20;
    *a2 = result;
    a2[1].n128_u64[0] = v19;
    v8 = &a2[1].n128_u32[2];
    v21 = a1[1].n128_u32[2];
    a1[1].n128_u32[2] = a2[1].n128_u32[2];
    a2[1].n128_u32[2] = v21;
    LODWORD(v20) = a1[1].n128_u32[3];
    a1[1].n128_u32[3] = a2[1].n128_u32[3];
    a2[1].n128_u32[3] = v20;
    v7 = *v6;
    if (*v6 > v20)
    {
      v22 = a2[1].n128_u64[0];
      result = *a2;
      v23 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v23;
      *a3 = result;
      a3[1].n128_u64[0] = v22;
      v12 = &a3[1].n128_u32[2];
      v13 = &a2[1].n128_u32[3];
      goto LABEL_9;
    }
  }

  if (a4[1].n128_u32[3] > v7)
  {
    v26 = a3[1].n128_u64[0];
    result = *a3;
    v27 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v27;
    *a4 = result;
    a4[1].n128_u64[0] = v26;
    LODWORD(v26) = a3[1].n128_u32[2];
    a3[1].n128_u32[2] = a4[1].n128_u32[2];
    a4[1].n128_u32[2] = v26;
    LODWORD(v26) = a3[1].n128_u32[3];
    a3[1].n128_u32[3] = a4[1].n128_u32[3];
    a4[1].n128_u32[3] = v26;
    if (a3[1].n128_u32[3] > a2[1].n128_u32[3])
    {
      v28 = a2[1].n128_u64[0];
      result = *a2;
      v29 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v29;
      *a3 = result;
      a3[1].n128_u64[0] = v28;
      LODWORD(v28) = a2[1].n128_u32[2];
      a2[1].n128_u32[2] = a3[1].n128_u32[2];
      a3[1].n128_u32[2] = v28;
      LODWORD(v28) = a2[1].n128_u32[3];
      a2[1].n128_u32[3] = a3[1].n128_u32[3];
      a3[1].n128_u32[3] = v28;
      if (a2[1].n128_u32[3] > *v5)
      {
        v30 = a1[1].n128_u64[0];
        result = *a1;
        v31 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v31;
        *a2 = result;
        a2[1].n128_u64[0] = v30;
        LODWORD(v30) = a1[1].n128_u32[2];
        a1[1].n128_u32[2] = a2[1].n128_u32[2];
        a2[1].n128_u32[2] = v30;
        LODWORD(v30) = a1[1].n128_u32[3];
        a1[1].n128_u32[3] = a2[1].n128_u32[3];
        a2[1].n128_u32[3] = v30;
      }
    }
  }

  return result;
}

__n128 std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(uint64_t a1, __n128 *a2)
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *>(__n128 *a1, __n128 *a2)
{
  v2 = a2;
  v83 = *MEMORY[0x277D85DE8];
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (a2[-1].n128_u32[3] > a1[1].n128_u32[3])
        {
          v5 = a1[1].n128_u64[0];
          v6 = *a1;
          v7 = a2[-1].n128_u64[0];
          *a1 = a2[-2];
          a1[1].n128_u64[0] = v7;
          a2[-2] = v6;
          a2[-1].n128_u64[0] = v5;
          LODWORD(v5) = a1[1].n128_u32[2];
          a1[1].n128_u32[2] = a2[-1].n128_u32[2];
          a2[-1].n128_u32[2] = v5;
          LODWORD(v5) = a1[1].n128_u32[3];
          a1[1].n128_u32[3] = a2[-1].n128_u32[3];
          a2[-1].n128_u32[3] = v5;
        }

        goto LABEL_48;
      }

LABEL_17:
      v36 = &a1[3].n128_u32[3];
      v37 = a1[3].n128_u32[3];
      v38 = a1 + 4;
      v39 = a1 + 2;
      v41 = &a1[1].n128_u32[3];
      v40 = a1[1].n128_u32[3];
      v42 = a1[5].n128_u32[3];
      if (v37 <= v40)
      {
        if (v42 <= v37)
        {
          goto LABEL_35;
        }

        v52 = a1[3].n128_u64[0];
        v53 = *v39;
        *v39 = *v38;
        a1[3].n128_u64[0] = a1[5].n128_u64[0];
        *v38 = v53;
        a1[5].n128_u64[0] = v52;
        v46 = &a1[3].n128_u32[2];
        LODWORD(v52) = a1[3].n128_u32[2];
        a1[3].n128_u32[2] = a1[5].n128_u32[2];
        a1[3].n128_u32[3] = v42;
        a1[5].n128_u32[2] = v52;
        a1[5].n128_u32[3] = v37;
        if (v42 <= v40)
        {
LABEL_35:
          v70 = a1 + 6;
          if (&a1[6] != a2)
          {
            v71 = 0;
            v72 = 0;
            while (1)
            {
              v73 = v70[1].n128_u32[3];
              if (v73 > v38[1].n128_u32[3])
              {
                v74 = v70->n128_u64[0];
                *v82 = v70->n128_u64[1];
                *&v82[7] = *(&v70->n128_u64[1] + 7);
                v75 = v70[1].n128_u8[7];
                v70->n128_u64[1] = 0;
                v70[1].n128_u64[0] = 0;
                v70->n128_u64[0] = 0;
                v76 = v70[1].n128_u32[2];
                v77 = v71;
                while (1)
                {
                  std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(&a1[6] + v77, (a1 + v77 + 64));
                  if (v77 == -64)
                  {
                    break;
                  }

                  v78 = *(&a1[3].n128_u32[3] + v77);
                  v77 -= 32;
                  if (v73 <= v78)
                  {
                    v79 = &a1[6] + v77;
                    goto LABEL_43;
                  }
                }

                v79 = a1;
LABEL_43:
                if (*(v79 + 23) < 0)
                {
                  operator delete(*v79);
                }

                *v79 = v74;
                *(v79 + 8) = *v82;
                *(v79 + 15) = *&v82[7];
                *(v79 + 23) = v75;
                *(v79 + 24) = v76;
                *(v79 + 28) = v73;
                if (++v72 == 8)
                {
                  result = &v70[2] == a2;
                  goto LABEL_49;
                }

                v2 = a2;
              }

              v38 = v70;
              v71 += 32;
              v70 += 2;
              if (v70 == v2)
              {
                goto LABEL_48;
              }
            }
          }

          goto LABEL_48;
        }

        v54 = a1[1].n128_u64[0];
        v55 = *a1;
        *a1 = *v39;
        a1[1].n128_u64[0] = a1[3].n128_u64[0];
        *v39 = v55;
        a1[3].n128_u64[0] = v54;
        v43 = &a1[1].n128_u32[2];
      }

      else
      {
        if (v42 <= v37)
        {
          v64 = a1[1].n128_u64[0];
          v65 = *a1;
          *a1 = *v39;
          a1[1].n128_u64[0] = a1[3].n128_u64[0];
          *v39 = v65;
          a1[3].n128_u64[0] = v64;
          v43 = &a1[3].n128_u32[2];
          v66 = a1[1].n128_u32[2];
          a1[1].n128_u32[2] = a1[3].n128_u32[2];
          a1[1].n128_u32[3] = v37;
          a1[3].n128_u32[2] = v66;
          a1[3].n128_u32[3] = v40;
          if (v42 <= v40)
          {
            goto LABEL_35;
          }

          v67 = a1[3].n128_u64[0];
          v68 = *v39;
          *v39 = *v38;
          a1[3].n128_u64[0] = a1[5].n128_u64[0];
          *v38 = v68;
          a1[5].n128_u64[0] = v67;
          v46 = &a1[5].n128_u32[2];
          v41 = &a1[3].n128_u32[3];
        }

        else
        {
          v43 = &a1[1].n128_u32[2];
          v44 = a1[1].n128_u64[0];
          v45 = *a1;
          *a1 = *v38;
          a1[1].n128_u64[0] = a1[5].n128_u64[0];
          *v38 = v45;
          a1[5].n128_u64[0] = v44;
          v46 = &a1[5].n128_u32[2];
        }

        v36 = &a1[5].n128_u32[3];
      }

      v69 = *v43;
      *v43 = *v46;
      *v46 = v69;
      *v41 = v42;
      *v36 = v40;
      goto LABEL_35;
    }

    goto LABEL_48;
  }

  if (v4 == 3)
  {
    v24 = &a1[3].n128_u32[3];
    v25 = a1[3].n128_u32[3];
    v26 = a2[-1].n128_u32[3];
    v27 = a1 + 2;
    v28 = a2 - 2;
    v29 = &a1[1].n128_u32[3];
    v30 = a1[1].n128_u32[3];
    if (v25 <= v30)
    {
      if (v26 <= v25)
      {
        goto LABEL_48;
      }

      v47 = a1[3].n128_u64[0];
      v48 = *v27;
      v49 = a2[-1].n128_u64[0];
      *v27 = *v28;
      a1[3].n128_u64[0] = v49;
      *v28 = v48;
      a2[-1].n128_u64[0] = v47;
      v35 = &a1[3].n128_u32[2];
      LODWORD(v47) = a1[3].n128_u32[2];
      a1[3].n128_u32[2] = a2[-1].n128_u32[2];
      a2[-1].n128_u32[2] = v47;
      LODWORD(v47) = a1[3].n128_u32[3];
      a1[3].n128_u32[3] = a2[-1].n128_u32[3];
      a2[-1].n128_u32[3] = v47;
      if (a1[3].n128_u32[3] <= a1[1].n128_u32[3])
      {
        goto LABEL_48;
      }

      v50 = a1[1].n128_u64[0];
      v51 = *a1;
      *a1 = *v27;
      a1[1].n128_u64[0] = a1[3].n128_u64[0];
      *v27 = v51;
      a1[3].n128_u64[0] = v50;
      v31 = &a1[1].n128_u32[2];
    }

    else
    {
      if (v26 <= v25)
      {
        v56 = a1[1].n128_u64[0];
        v57 = *a1;
        *a1 = *v27;
        a1[1].n128_u64[0] = a1[3].n128_u64[0];
        *v27 = v57;
        a1[3].n128_u64[0] = v56;
        v58 = a1[1].n128_u32[2];
        a1[1].n128_u32[2] = a1[3].n128_u32[2];
        a1[1].n128_u32[3] = v25;
        a1[3].n128_u32[2] = v58;
        a1[3].n128_u32[3] = v30;
        if (a2[-1].n128_u32[3] <= v30)
        {
          goto LABEL_48;
        }

        v59 = a1[3].n128_u64[0];
        v60 = *v27;
        v61 = a2[-1].n128_u64[0];
        *v27 = *v28;
        a1[3].n128_u64[0] = v61;
        *v28 = v60;
        a2[-1].n128_u64[0] = v59;
        v35 = &a2[-1].n128_u32[2];
        v31 = &a1[3].n128_u32[2];
        v29 = &a1[3].n128_u32[3];
      }

      else
      {
        v31 = &a1[1].n128_u32[2];
        v32 = a1[1].n128_u64[0];
        v33 = *a1;
        v34 = a2[-1].n128_u64[0];
        *a1 = *v28;
        a1[1].n128_u64[0] = v34;
        *v28 = v33;
        a2[-1].n128_u64[0] = v32;
        v35 = &a2[-1].n128_u32[2];
      }

      v24 = &a2[-1].n128_u32[3];
    }

    v62 = *v31;
    *v31 = *v35;
    *v35 = v62;
    v63 = *v29;
    *v29 = *v24;
    *v24 = v63;
    goto LABEL_48;
  }

  if (v4 == 4)
  {
    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    goto LABEL_48;
  }

  if (v4 != 5)
  {
    goto LABEL_17;
  }

  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
  if (v2[-1].n128_u32[3] <= a1[7].n128_u32[3])
  {
    goto LABEL_48;
  }

  v8 = a1[7].n128_u64[0];
  v9 = a1[6];
  v10 = v2[-1].n128_u64[0];
  a1[6] = v2[-2];
  a1[7].n128_u64[0] = v10;
  v2[-2] = v9;
  v2[-1].n128_u64[0] = v8;
  LODWORD(v8) = a1[7].n128_u32[2];
  a1[7].n128_u32[2] = v2[-1].n128_u32[2];
  v2[-1].n128_u32[2] = v8;
  LODWORD(v8) = a1[7].n128_u32[3];
  a1[7].n128_u32[3] = v2[-1].n128_u32[3];
  v2[-1].n128_u32[3] = v8;
  v11 = a1[7].n128_u32[3];
  v12 = a1[5].n128_u32[3];
  if (v11 <= v12)
  {
    goto LABEL_48;
  }

  v13 = a1[5].n128_u64[0];
  v14 = a1[4];
  a1[4] = a1[6];
  a1[5].n128_u64[0] = a1[7].n128_u64[0];
  a1[6] = v14;
  a1[7].n128_u64[0] = v13;
  v15 = a1[5].n128_u32[2];
  v16 = a1[7].n128_u32[2];
  a1[5].n128_u32[2] = v16;
  a1[5].n128_u32[3] = v11;
  a1[7].n128_u32[2] = v15;
  a1[7].n128_u32[3] = v12;
  v17 = a1[3].n128_u32[3];
  if (v11 <= v17)
  {
    goto LABEL_48;
  }

  v18 = a1[3].n128_u64[0];
  v19 = a1[2];
  a1[2] = a1[4];
  a1[3].n128_u64[0] = a1[5].n128_u64[0];
  a1[4] = v19;
  a1[5].n128_u64[0] = v18;
  LODWORD(v18) = a1[3].n128_u32[2];
  a1[3].n128_u32[2] = v16;
  a1[3].n128_u32[3] = v11;
  a1[5].n128_u32[2] = v18;
  a1[5].n128_u32[3] = v17;
  v20 = a1[1].n128_u32[3];
  if (v11 <= v20)
  {
LABEL_48:
    result = 1;
    goto LABEL_49;
  }

  v21 = a1[1].n128_u64[0];
  v22 = *a1;
  *a1 = a1[2];
  a1[1].n128_u64[0] = a1[3].n128_u64[0];
  a1[2] = v22;
  a1[3].n128_u64[0] = v21;
  LODWORD(v21) = a1[1].n128_u32[2];
  a1[1].n128_u32[2] = v16;
  a1[1].n128_u32[3] = v11;
  result = 1;
  a1[3].n128_u32[2] = v21;
  a1[3].n128_u32[3] = v20;
LABEL_49:
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t areTypesIsomorphic(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v3 != v2)
    {
      return 0;
    }

    v4 = *(a1 + 8);
    if (v4 != 17)
    {
      break;
    }

    if (*(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }

    a1 = **(a1 + 16);
    a2 = **(a2 + 16);
    if (a1 == a2)
    {
      return 1;
    }
  }

  switch(v4)
  {
    case 14:
      if (v2 > 0xFF != v3 > 0xFF)
      {
        return 0;
      }

      v6 = *(a1 + 12);
      if (v6 != *(a2 + 12))
      {
        return 0;
      }

      v7 = *(a1 + 16);
      v8 = *(a2 + 16);
      result = areTypesIsomorphic(*v7, *v8);
      if (result)
      {
        v9 = -(v6 - 1);
        v10 = 1;
        do
        {
          result = v9 + v10 == 1;
          if (v9 + v10 == 1)
          {
            break;
          }

          v11 = areTypesIsomorphic(v7[v10], v8[v10]);
          result = 0;
          ++v10;
        }

        while ((v11 & 1) != 0);
      }

      break;
    case 16:
      if (((*(a1 + 8) & 0x100) == 0) != ((*(a2 + 8) & 0x100) == 0))
      {
        return 0;
      }

      if (((v2 ^ v3) & 0x200) != 0)
      {
        return 0;
      }

      v12 = *(a1 + 12);
      if (v12 != *(a2 + 12))
      {
        return 0;
      }

      if (!v12)
      {
        return 1;
      }

      v13 = *(a1 + 16);
      v14 = *(a2 + 16);
      v15 = v12 - 1;
      do
      {
        v17 = *v13++;
        v16 = v17;
        v18 = *v14++;
        result = areTypesIsomorphic(v16, v18);
        v20 = v15-- != 0;
      }

      while (result && v20);
      break;
    case 15:
      if ((*(a1 + 8) & 0xFE) == 0x12)
      {
        v2 = *(**(a1 + 16) + 8);
      }

      if ((*(a2 + 8) & 0xFE) == 0x12)
      {
        v3 = *(**(a2 + 16) + 8);
      }

      return (v3 ^ v2) < 0x100;
    default:
      return 0;
  }

  return result;
}

uint64_t std::__function::__func<void (AGCLLVMTargetLowerer::*)(llvm::CallInst *,BOOL),std::allocator<void (AGCLLVMTargetLowerer::*)(llvm::CallInst *,BOOL)>,void ()(AGCLLVMTargetLowerer&,llvm::CallInst *,BOOL)>::operator()(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, *a3, *a4);
}

__n128 std::__function::__func<void (AGCLLVMTargetLowerer::*)(llvm::CallInst *,BOOL),std::allocator<void (AGCLLVMTargetLowerer::*)(llvm::CallInst *,BOOL)>,void ()(AGCLLVMTargetLowerer&,llvm::CallInst *,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A74C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AGCLLVMUserObject::dumpScsLayoutToStatusFile(uint64_t *a1, uint64_t a2)
{
  v728 = *MEMORY[0x277D85DE8];
  if (!AGCLLVMObjectBase::dumpShaderToFile((a1 + *(*a1 - 24))))
  {
    goto LABEL_447;
  }

  {
    AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_human_readable_section = 1;
  }

  {
    AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_machine_readable_section = 0;
  }

  if ((AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_human_readable_section & 1) == 0 && AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_machine_readable_section != 1)
  {
    goto LABEL_447;
  }

  *v709 = 0u;
  *v710 = 0u;
  v711 = 0u;
  *v712 = 0u;
  *__p = 0u;
  v714 = 1065353216;
  v3 = *(*(a1 + *(*a1 - 24) + 2168) + 1908);
  if (v3 <= 3)
  {
    if ((v3 - 1) < 2)
    {
      llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(&v726, a2);
      v4 = a1[506];
      v5 = a1[505];
      v6 = *(a1 + 2016) | (v4 << 32) | (*(a1 + 1016) << 16) | (v5 << 48);
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v6 | 0x60000000, 4);
      v8 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v6 | 0x1000000, 12);
      v9 = 96;
      if (v8 != SectionEnd)
      {
        v10 = (16773120 - SectionEnd) / (v8 - SectionEnd);
        v9 = v10 >= 0x60 ? 96 : (16773120 - SectionEnd) / (v8 - SectionEnd);
        if (v10 < 0x20)
        {
          v9 = 0;
        }
      }

      v707 = v9;
      v11 = v6 | (v9 << 24);
      v708 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v11, 12) + 0x1FFF) & 0xFFFFF000;
      v719 = v709;
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s", v12, v13, v14, v15, v16, v17, "RaytracingConstantsGen1::ScsLayoutGen1");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v18, v19, v20, v21, v22, v23, v672);
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v24, v25, v26, v27, v28, v29, "  ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v30, v31, v32, v33, v34, v35, v673);
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v36, v37, v38, v39, v40, v41, "    ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v42, v43, v44, v45, v46, v47, v674);
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v48, v49, v50, v51, v52, v53, "      ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v54, v55, v56, v57, v58, v59, "      ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v60, v61, v62, v63, v64, v65, "      ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v66, v67, v68, v69, v70, v71, "      ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v72, v73, v74, v75, v76, v77, "      ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v78, v79, v80, v81, v82, v83, "    ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v84, v85, v86, v87, v88, v89, "  ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "}\n", v90, v91, v92, v93, v94, v95, v675);
      v96 = (v11 >> 19) & 0x1FE0;
      v97 = 8 * v11 * v96;
      v98 = v96 * v5;
      v99 = v96 * v4;
      for (i = 1; i > 4; ++i)
      {
        if (i > 10)
        {
          if (i == 11)
          {
            v101 = v99;
            if (!v99)
            {
              continue;
            }

LABEL_29:
            if (i > 9)
            {
              if (i == 10)
              {
                v102 = 5;
              }

              else
              {
                v102 = 6;
              }
            }

            else
            {
              v102 = 4;
            }

LABEL_36:
            *&v716 = __PAIR64__(RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v11, v102), i);
            DWORD2(v716) = v101;
            continue;
          }

          if (i == 12)
          {
            v103 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v711 - v710[1]) >> 2));
            if (v711 == v710[1])
            {
              v104 = 0;
            }

            else
            {
              v104 = v103;
            }

            if (v727)
            {
                ;
              }
            }

            else
            {
              j = v726;
            }

            v701 = &v726[v727];
            if (j != v701)
            {
              v526 = *j;
              do
              {
                v718 = *(v526 + 16);
                v527 = v718;
                v528 = *(a1 + *(*a1 - 24) + 2168);
                v529 = (*(*v528 + 1456))(v528, v718);
                v530 = (v527 >> 5) & 1;
                v531 = (*(**(a1 + *(*a1 - 24) + 2168) + 1016))();
                v532 = 0;
                v533 = 0;
                v716 = 0uLL;
                v534 = 6;
                v535 = -104;
                v717 = 0;
                do
                {
                  v536 = *(a1 + *(*a1 - 24) + 2168);
                  if (RaytracingConstantsGen1::payloadHasSegment(v534, v529, v530, v536[1940]))
                  {
                    v537 = (*(*v536 + 1024))(v536);
                    v538 = RaytracingConstantsGen1::payloadSegmentSize(v534, v537);
                    if (v538)
                    {
                      v539 = v538;
                      if (v538 <= v531)
                      {
                        LODWORD(v715) = v534;
                        BYTE4(v715) = 1;
                        *(&v715 + 1) = __PAIR64__(v538, v533);
                        v542 = (v539 + 3) & 0x3FFC;
                        v533 += v542;
                        v543 = v531 >= v542;
                        v544 = v531 - v542;
                        if (v543)
                        {
                          v531 = v544;
                        }

                        else
                        {
                          v531 = 0;
                        }
                      }

                      else
                      {
                        if ((v534 - 19) <= 4)
                        {
                          v540 = *(a1 + 1016);
                          if (v540 >= ((0x201010101uLL >> v535) & 3))
                          {
                            v541 = (v540 - ((0x201010101uLL >> v535) & 3)) / ((65792 * ((0x201010101uLL >> v535) & 3)) >> 16) + 1;
                          }

                          else
                          {
                            v541 = 0;
                          }

                          v539 = v541 * v538;
                        }

                        LODWORD(v715) = v534;
                        BYTE4(v715) = 0;
                        *(&v715 + 1) = __PAIR64__(v539, v532);
                        v532 += 32 * v539;
                      }
                    }
                  }

                  ++v534;
                  v535 += 8;
                }

                while (v534 != 26);
                v546 = *v545;
                if (*v545)
                {
                  v545[1] = v546;
                  operator delete(v546);
                }

                *v545 = v716;
                v545[2] = v717;
                do
                {
                  v547 = j[1];
                  ++j;
                  v526 = v547;
                  if (v547)
                  {
                    v548 = v526 == -8;
                  }

                  else
                  {
                    v548 = 1;
                  }
                }

                while (v548);
              }

              while (j != v701);
            }

            v549 = &v726;
            goto LABEL_317;
          }
        }

        else
        {
          v101 = v97;
          if (i == 5 || (v101 = v98, i == 10))
          {
            if (v101)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_37:
        ;
      }

      if (i > 2)
      {
        if (i == 3)
        {
          v101 = 0x40000;
          v102 = 2;
        }

        else
        {
          v101 = 0x10000;
          v102 = 3;
        }
      }

      else if (i == 1)
      {
        v101 = 24576;
        v102 = 7;
      }

      else
      {
        if (i != 2)
        {
          goto LABEL_37;
        }

        v101 = 0x2000;
        v102 = 1;
      }

      goto LABEL_36;
    }

    if (v3 != 3)
    {
      goto LABEL_437;
    }

    llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(&v724, a2);
    v264 = a1[506];
    v700 = a1[505];
    v265 = *(a1 + 2016) | (v264 << 32) | (*(a1 + 1016) << 16) | (v700 << 48);
    v266 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v265 | 0x60000000, 4);
    v267 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v265 | 0x1000000, 12);
    v268 = 96;
    if (v267 != v266)
    {
      v269 = (16773120 - v266) / (v267 - v266);
      v268 = v269 >= 0x60 ? 96 : (16773120 - v266) / (v267 - v266);
      if (v269 < 0x20)
      {
        v268 = 0;
      }
    }

    v707 = v268;
    v270 = v265 | (v268 << 24);
    v708 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v270, 12) + 0x1FFF) & 0xFFFFF000;
    v719 = v709;
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s", v271, v272, v273, v274, v275, v276, "RaytracingConstantsGen2::ScsLayoutGen2");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v277, v278, v279, v280, v281, v282, v683);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v283, v284, v285, v286, v287, v288, "  ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v289, v290, v291, v292, v293, v294, v684);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v295, v296, v297, v298, v299, v300, "    ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v301, v302, v303, v304, v305, v306, v685);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v307, v308, v309, v310, v311, v312, "      ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v313, v314, v315, v316, v317, v318, v686);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v319, v320, v321, v322, v323, v324, "        ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v325, v326, v327, v328, v329, v330, "        ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v331, v332, v333, v334, v335, v336, "        ");
    v337 = v264;
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v338, v339, v340, v341, v342, v343, "        ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v344, v345, v346, v347, v348, v349, "        ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v350, v351, v352, v353, v354, v355, "      ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v356, v357, v358, v359, v360, v361, "    ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v362, v363, v364, v365, v366, v367, "  ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "}\n", v368, v369, v370, v371, v372, v373, v687);
    v374 = (v270 >> 19) & 0x1FE0;
    v375 = 8 * v270 * v374;
    v376 = v374 * v700;
    if (BYTE2(v270) <= 1u)
    {
      v377 = BYTE2(v270);
    }

    else
    {
      v377 = BYTE2(v270) + 1;
    }

    v378 = (WORD1(v270) & 0xFF00) * v377;
    v379 = 1;
    v380 = v374 * v337;
    while (v379 > 4)
    {
      if (v379 <= 9)
      {
        v381 = v375;
        if (v379 == 5)
        {
          goto LABEL_126;
        }

        v381 = v378;
        if (v379 == 6)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v381 = v376;
        switch(v379)
        {
          case 10:
            goto LABEL_126;
          case 11:
            v381 = v380;
LABEL_126:
            if (!v381)
            {
              break;
            }

            if (v379 > 9)
            {
              if (v379 == 10)
              {
                v382 = 5;
              }

              else
              {
                v382 = 6;
              }
            }

            else if (v379 == 5)
            {
              v382 = 4;
            }

            else
            {
              v382 = 10;
            }

LABEL_138:
            *&v716 = __PAIR64__(RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v270, v382), v379);
            DWORD2(v716) = v381;
            break;
          case 12:
            v383 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v711 - v710[1]) >> 2));
            if (v711 == v710[1])
            {
              v384 = 0;
            }

            else
            {
              v384 = v383;
            }

            if (v725)
            {
                ;
              }
            }

            else
            {
              k = v724;
            }

            v703 = &v724[v725];
            if (k != v703)
            {
              v572 = *k;
              do
              {
                v718 = *(v572 + 16);
                v573 = v718;
                v574 = *(a1 + *(*a1 - 24) + 2168);
                v575 = (*(*v574 + 1456))(v574, v718);
                v576 = (v573 >> 5) & 1;
                v577 = (*(**(a1 + *(*a1 - 24) + 2168) + 1016))();
                v578 = 0;
                v579 = 0;
                v716 = 0uLL;
                v580 = 6;
                v581 = -104;
                v717 = 0;
                do
                {
                  v582 = *(a1 + *(*a1 - 24) + 2168);
                  if (RaytracingConstantsGen1::payloadHasSegment(v580, v575, v576, v582[1940]))
                  {
                    v583 = (*(*v582 + 1024))(v582);
                    v584 = RaytracingConstantsGen2::payloadSegmentSize(v580, v583);
                    if (v584)
                    {
                      v585 = v584;
                      if (v584 <= v577)
                      {
                        LODWORD(v715) = v580;
                        BYTE4(v715) = 1;
                        *(&v715 + 1) = __PAIR64__(v584, v579);
                        v588 = (v585 + 3) & 0x3FFC;
                        v579 += v588;
                        v543 = v577 >= v588;
                        v589 = v577 - v588;
                        if (v543)
                        {
                          v577 = v589;
                        }

                        else
                        {
                          v577 = 0;
                        }
                      }

                      else
                      {
                        if ((v580 - 19) <= 4)
                        {
                          v586 = *(a1 + 1016);
                          if (v586 >= ((0x201010101uLL >> v581) & 3))
                          {
                            v587 = (v586 - ((0x201010101uLL >> v581) & 3)) / ((65792 * ((0x201010101uLL >> v581) & 3)) >> 16) + 1;
                          }

                          else
                          {
                            v587 = 0;
                          }

                          v585 = v587 * v584;
                        }

                        LODWORD(v715) = v580;
                        BYTE4(v715) = 0;
                        *(&v715 + 1) = __PAIR64__(v585, v578);
                        v578 += 32 * v585;
                      }
                    }
                  }

                  ++v580;
                  v581 += 8;
                }

                while (v580 != 26);
                v591 = *v590;
                if (*v590)
                {
                  v590[1] = v591;
                  operator delete(v591);
                }

                *v590 = v716;
                v590[2] = v717;
                do
                {
                  v592 = k[1];
                  ++k;
                  v572 = v592;
                  if (v592)
                  {
                    v593 = v572 == -8;
                  }

                  else
                  {
                    v593 = 1;
                  }
                }

                while (v593);
              }

              while (k != v703);
            }

            v549 = &v724;
            goto LABEL_317;
        }
      }

LABEL_139:
      ++v379;
    }

    if (v379 > 2)
    {
      if (v379 == 3)
      {
        v381 = 0x40000;
        v382 = 2;
      }

      else
      {
        v381 = 0x20000;
        v382 = 3;
      }
    }

    else if (v379 == 1)
    {
      v381 = 24576;
      v382 = 7;
    }

    else
    {
      if (v379 != 2)
      {
        goto LABEL_139;
      }

      v381 = 0x2000;
      v382 = 1;
    }

    goto LABEL_138;
  }

  if (v3 != 4)
  {
    if (v3 != 5)
    {
      goto LABEL_437;
    }

    llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(&v720, a2);
    v107 = a1[506];
    v699 = a1[505];
    v108 = *(a1 + 2016) | (v107 << 32) | (*(a1 + 1016) << 16) | (v699 << 48);
    v109 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(v108 | 0x60000000, 9);
    v110 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(v108 | 0x1000000, 12);
    v111 = 96;
    if (v110 != v109)
    {
      v112 = (67104768 - v109) / (v110 - v109);
      v111 = v112 >= 0x60 ? 96 : (67104768 - v109) / (v110 - v109);
      if (v112 < 0x20)
      {
        v111 = 0;
      }
    }

    v707 = v111;
    v113 = v108 | (v111 << 24);
    v708 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(v113, 12) + 0x1FFF) & 0xFFFFF000;
    v719 = v709;
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s", v114, v115, v116, v117, v118, v119, "RaytracingConstantsGen4::ScsLayoutGen4");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v120, v121, v122, v123, v124, v125, v676);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v126, v127, v128, v129, v130, v131, "  ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v132, v133, v134, v135, v136, v137, v677);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v138, v139, v140, v141, v142, v143, "    ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v144, v145, v146, v147, v148, v149, v678);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v150, v151, v152, v153, v154, v155, "      ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v156, v157, v158, v159, v160, v161, v679);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v162, v163, v164, v165, v166, v167, "        ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v168, v169, v170, v171, v172, v173, v680);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v174, v175, v176, v177, v178, v179, "          ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v180, v181, v182, v183, v184, v185, v681);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v186, v187, v188, v189, v190, v191, "            ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v192, v193, v194, v195, v196, v197, "            ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v198, v199, v200, v201, v202, v203, "            ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v204, v205, v206, v207, v208, v209, "            ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v210, v211, v212, v213, v214, v215, "            ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v216, v217, v218, v219, v220, v221, "          ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v222, v223, v224, v225, v226, v227, "        ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v228, v229, v230, v231, v232, v233, "      ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v234, v235, v236, v237, v238, v239, "    ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v240, v241, v242, v243, v244, v245, "  ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "}\n", v246, v247, v248, v249, v250, v251, v682);
    v252 = (v113 >> 19) & 0x1FE0;
    v253 = 8 * v113 * v252;
    v254 = v252 * v699;
    v255 = v252 * v107;
    v256 = 1;
    while (v256 <= 6)
    {
      if (v256 > 3)
      {
        if (v256 == 4)
        {
          v257 = 98304;
          v259 = 2;
          goto LABEL_90;
        }

        v257 = v253;
        if (v256 != 5)
        {
          v257 = 49152 * BYTE2(v113);
        }

LABEL_74:
        if (v257)
        {
          goto LABEL_75;
        }

        goto LABEL_92;
      }

      if ((v256 - 1) < 2)
      {
        v257 = 0x4000;
LABEL_75:
        v258 = 0;
        if (v256 > 6)
        {
          if (v256 == 10)
          {
            v259 = 5;
          }

          else
          {
            v259 = 10;
          }

          goto LABEL_90;
        }

        if (v256 > 3)
        {
          if (v256 == 5)
          {
            v259 = 3;
          }

          else
          {
            v259 = 8;
          }

          goto LABEL_90;
        }

        if (v256 == 2)
        {
          v259 = 1;
          goto LABEL_90;
        }

        if (v256 == 3)
        {
          v259 = 9;
          goto LABEL_90;
        }

LABEL_91:
        *&v716 = __PAIR64__(v258, v256);
        DWORD2(v716) = v257;
        goto LABEL_92;
      }

      v257 = ((BYTE2(v113) + 2) >> 1) * ((v113 >> 13) & 0x7F800);
      if (v256 == 3)
      {
        goto LABEL_74;
      }

LABEL_92:
      if (++v256 == 12)
      {
        v260 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v711 - v710[1]) >> 2));
        if (v711 == v710[1])
        {
          v261 = 0;
        }

        else
        {
          v261 = v260;
        }

        if (v721)
        {
            ;
          }
        }

        else
        {
          m = v720;
        }

        v694 = &v720[v721];
        if (m == v694)
        {
LABEL_316:
          v549 = &v720;
          goto LABEL_317;
        }

        v594 = *m;
        while (2)
        {
          v718 = *(v594 + 16);
          v595 = *(a1 + *(*a1 - 24) + 2168);
          v696 = (v718 >> 5) & 1;
          v698 = (*(*v595 + 1456))(v595, v718);
          v596 = (*(**(a1 + *(*a1 - 24) + 2168) + 1016))();
          v704 = 0;
          v597 = 0;
          v716 = 0uLL;
          v598 = -104;
          v599 = 2;
          v717 = 0;
LABEL_286:
          v600 = *a1;
          v601 = v599 + 4;
          if ((v599 + 4) <= 0xF)
          {
            if (((1 << v601) & 0x8580) != 0)
            {
              goto LABEL_288;
            }

            if (((1 << v601) & 0x30) != 0)
            {
              goto LABEL_291;
            }
          }

          if (RaytracingConstantsGen3::payloadHasSegment(v599 + 4, v698, v696, *(*(a1 + *(*a1 - 24) + 2168) + 1940)))
          {
LABEL_291:
            v602 = *(a1 + *(v600 - 24) + 2168);
            v603 = (*(*v602 + 1024))(v602);
            if (v599 < 0xC && ((0x85Bu >> v599) & 1) != 0)
            {
              v604 = dword_20E70D3D0[2 * v599];
              if (!v604)
              {
                goto LABEL_288;
              }
            }

            else
            {
              v604 = RaytracingConstantsGen3::payloadSegmentSize(v599 + 4, v603);
              if (!v604)
              {
                goto LABEL_288;
              }
            }

            if (v596 >= v604)
            {
              LODWORD(v715) = v599 + 4;
              BYTE4(v715) = 1;
              *(&v715 + 1) = __PAIR64__(v604, v597);
              v607 = (v604 + 3) & 0xFFFFFFFC;
              v597 += v607;
              v543 = v596 >= v607;
              v608 = v596 - v607;
              if (v543)
              {
                v596 = v608;
              }

              else
              {
                v596 = 0;
              }
            }

            else
            {
              if (v599 - 15 <= 4)
              {
                v605 = *(a1 + 1016);
                if (v605 >= ((0x201010101uLL >> v598) & 3))
                {
                  v606 = (v605 - ((0x201010101uLL >> v598) & 3)) / ((65792 * ((0x201010101uLL >> v598) & 3)) >> 16) + 1;
                }

                else
                {
                  v606 = 0;
                }

                v604 *= v606;
              }

              LODWORD(v715) = v599 + 4;
              BYTE4(v715) = 0;
              *(&v715 + 1) = __PAIR64__(v604, v704);
              v704 += 32 * v604;
            }
          }

LABEL_288:
          ++v599;
          v598 += 8;
          if (v599 == 22)
          {
            v610 = v609;
            v611 = *v609;
            if (v611)
            {
              v610[1] = v611;
              operator delete(v611);
            }

            *v610 = v716;
            v610[2] = v717;
            do
            {
              v612 = m[1];
              ++m;
              v594 = v612;
              if (v612)
              {
                v613 = v594 == -8;
              }

              else
              {
                v613 = 1;
              }
            }

            while (v613);
            if (m == v694)
            {
              goto LABEL_316;
            }

            continue;
          }

          goto LABEL_286;
        }
      }
    }

    if (v256 <= 8)
    {
      if (v256 == 7)
      {
        v257 = 49152;
        v259 = 4;
      }

      else
      {
        v257 = 61440;
        v259 = 7;
      }

LABEL_90:
      v258 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(v113, v259);
      goto LABEL_91;
    }

    if (v256 == 9)
    {
      v257 = 589824;
      v259 = 6;
      goto LABEL_90;
    }

    v257 = v254;
    if (v256 != 10)
    {
      if (v256 != 11)
      {
        goto LABEL_92;
      }

      v257 = v255;
    }

    goto LABEL_74;
  }

  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(&v722, a2);
  v387 = a1[506];
  v388 = a1[505];
  v389 = *(a1 + 2016) | (v387 << 32) | (*(a1 + 1016) << 16) | (v388 << 48);
  v390 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(v389 | 0x60000000, 2);
  v391 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(v389 | 0x1000000, 12);
  v392 = 96;
  if (v391 != v390)
  {
    v393 = (67104768 - v390) / (v391 - v390);
    v392 = v393 >= 0x60 ? 96 : (67104768 - v390) / (v391 - v390);
    if (v393 < 0x20)
    {
      v392 = 0;
    }
  }

  v707 = v392;
  v394 = v389 | (v392 << 24);
  v708 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(v394, 12) + 0x1FFF) & 0xFFFFF000;
  v719 = v709;
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s", v395, v396, v397, v398, v399, v400, "RaytracingConstantsGen3::ScsLayoutGen3");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v401, v402, v403, v404, v405, v406, v688);
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v407, v408, v409, v410, v411, v412, "  ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v413, v414, v415, v416, v417, v418, v689);
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v419, v420, v421, v422, v423, v424, "    ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v425, v426, v427, v428, v429, v430, v690);
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v431, v432, v433, v434, v435, v436, "      ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v437, v438, v439, v440, v441, v442, v691);
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s", v443, v444, v445, v446, v447, v448, "        ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, " {\n", v449, v450, v451, v452, v453, v454, v692);
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v455, v456, v457, v458, v459, v460, "          ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v461, v462, v463, v464, v465, v466, "          ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v467, v468, v469, v470, v471, v472, "          ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v473, v474, v475, v476, v477, v478, "          ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s%s %s : %zu = %u\n", v479, v480, v481, v482, v483, v484, "          ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v485, v486, v487, v488, v489, v490, "        ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v491, v492, v493, v494, v495, v496, "      ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v497, v498, v499, v500, v501, v502, "    ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "%s}\n", v503, v504, v505, v506, v507, v508, "  ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v719, "}\n", v509, v510, v511, v512, v513, v514, v693);
  v515 = (v394 >> 19) & 0x1FE0;
  v516 = 8 * v394 * v515;
  v517 = v515 * v388;
  v697 = v515 * v387;
  for (n = 1; n != 12; ++n)
  {
    if (n <= 4)
    {
      if (n <= 2)
      {
        if (n == 1)
        {
          v521 = 0;
          v519 = 24576;
LABEL_191:
          *&v716 = __PAIR64__(v521, n);
          DWORD2(v716) = v519;
          continue;
        }

        if (n != 2)
        {
          continue;
        }

        v519 = 0x2000;
        v520 = 1;
LABEL_190:
        v521 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(v394, v520);
        goto LABEL_191;
      }

      v519 = ((BYTE2(v394) + 2) >> 1) * ((v394 >> 13) & 0x7F800);
      if (n != 3)
      {
        v519 = (v394 >> 14) & 0x3FC00;
      }

LABEL_173:
      if (!v519)
      {
        continue;
      }

LABEL_174:
      if (n <= 5)
      {
        if (n == 3)
        {
          v520 = 7;
        }

        else if (n == 4)
        {
          v520 = 2;
        }

        else
        {
          v520 = 6;
        }
      }

      else if (n > 9)
      {
        if (n == 10)
        {
          v520 = 5;
        }

        else
        {
          v520 = 10;
        }
      }

      else if (n == 6)
      {
        v520 = 3;
      }

      else
      {
        v520 = 4;
      }

      goto LABEL_190;
    }

    if (n <= 6)
    {
      v519 = v516;
      if (n != 5)
      {
        v519 = ((v394 >> 15) & 0x1FE00) * BYTE2(v394);
      }

      goto LABEL_173;
    }

    if (n == 11)
    {
      v519 = v697;
      if (v697)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v519 = v517;
      if (n == 10)
      {
        goto LABEL_173;
      }

      v519 = (v394 >> 15) & 0x1FE00;
      if (n == 7)
      {
        goto LABEL_173;
      }
    }
  }

  v522 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v711 - v710[1]) >> 2));
  if (v711 == v710[1])
  {
    v523 = 0;
  }

  else
  {
    v523 = v522;
  }

  if (v723)
  {
      ;
    }
  }

  else
  {
    ii = v722;
  }

  v702 = &v722[v723];
  if (ii != v702)
  {
    v550 = *ii;
    do
    {
      v718 = *(v550 + 16);
      v551 = v718;
      v552 = *(a1 + *(*a1 - 24) + 2168);
      v553 = (*(*v552 + 1456))(v552, v718);
      v554 = (v551 >> 5) & 1;
      v555 = (*(**(a1 + *(*a1 - 24) + 2168) + 1016))();
      v556 = 0;
      v557 = 0;
      v716 = 0uLL;
      v558 = 6;
      v559 = -104;
      v717 = 0;
      do
      {
        v560 = *(a1 + *(*a1 - 24) + 2168);
        if (RaytracingConstantsGen3::payloadHasSegment(v558, v553, v554, v560[1940]))
        {
          v561 = (*(*v560 + 1024))(v560);
          v562 = RaytracingConstantsGen3::payloadSegmentSize(v558, v561);
          if (v562)
          {
            v563 = v562;
            if (v562 <= v555)
            {
              LODWORD(v715) = v558;
              BYTE4(v715) = 1;
              *(&v715 + 1) = __PAIR64__(v562, v557);
              v566 = (v563 + 3) & 0x3FFC;
              v557 += v566;
              v543 = v555 >= v566;
              v567 = v555 - v566;
              if (v543)
              {
                v555 = v567;
              }

              else
              {
                v555 = 0;
              }
            }

            else
            {
              if ((v558 - 19) <= 4)
              {
                v564 = *(a1 + 1016);
                if (v564 >= ((0x201010101uLL >> v559) & 3))
                {
                  v565 = (v564 - ((0x201010101uLL >> v559) & 3)) / ((65792 * ((0x201010101uLL >> v559) & 3)) >> 16) + 1;
                }

                else
                {
                  v565 = 0;
                }

                v563 = v565 * v562;
              }

              LODWORD(v715) = v558;
              BYTE4(v715) = 0;
              *(&v715 + 1) = __PAIR64__(v563, v556);
              v556 += 32 * v563;
            }
          }
        }

        ++v558;
        v559 += 8;
      }

      while (v558 != 26);
      v569 = *v568;
      if (*v568)
      {
        v568[1] = v569;
        operator delete(v569);
      }

      *v568 = v716;
      v568[2] = v717;
      do
      {
        v570 = ii[1];
        ++ii;
        v550 = v570;
        if (v570)
        {
          v571 = v550 == -8;
        }

        else
        {
          v571 = 1;
        }
      }

      while (v571);
    }

    while (ii != v702);
  }

  v549 = &v722;
LABEL_317:
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(v549);
  if (AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_human_readable_section == 1)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v614 = (a1 + *(*a1 - 24));
      v615 = v614[212];
      v616 = (*(*v614 + 48))(v614);
      AGCTargetPrinter::printMessage(v615, "------ Start SCS layout for %s shader %u ------\n", v616, *(a1 + *(*a1 - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "RIA%u SCS layout:", *(*(a1 + *(*a1 - 24) + 2168) + 1908));
    }

    v617 = v710[1];
    v618 = v711;
    v619 = a1 + 212;
    if (v710[1] == v711)
    {
      v620 = 0;
    }

    else
    {
      v620 = 0;
      do
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(v619 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v619 + *(*a1 - 24)), "+--------------------------------+ <-- 0x%08x", v617[1]);
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v619 + *(*a1 - 24))))
        {
        }

        v620 += v617[2];
        v617 += 3;
      }

      while (v617 != v618);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "+--------------------------------+ <-- 0x%08x, aligned up to 0x%08x", v620, v708);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v621 = v709;
      if (SHIBYTE(v710[0]) < 0)
      {
        v621 = v709[0];
      }

      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "\n%s", v621);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "NOTE: The layout above only applies to this shader in isolation. The actual layout might differ, depending on what other shaders are in the kick.");
    }

    v622 = *(a2 + 8);
    if (v622)
    {
        ;
      }
    }

    else
    {
      jj = *a2;
    }

    v705 = *a2 + 8 * v622;
    if (jj != v705)
    {
      v625 = *jj;
      do
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(v619 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v619 + *(*a1 - 24)), "\nDriver extended payload segment layout for @%*s (ray_flags=0x%04x)", *v625, (v625 + 24), *(v625 + 16));
        }

        v627 = *v626;
        v628 = v626[1];
        while (v627 != v628)
        {
          v629 = *v627;
          v630 = *(v627 + 4);
          v631 = v627[2];
          v632 = v627[3];
          if (AGCTargetPrinter::isValidToPrintMessage(*(v619 + *(*a1 - 24))))
          {
            v633 = "in driver payload";
            if (v630)
            {
              v633 = "in ray core";
            }
          }

          v627 += 4;
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v619 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v619 + *(*a1 - 24)), &unk_20E75F419);
        }

        do
        {
          v634 = jj[1];
          ++jj;
          v625 = v634;
          if (v634)
          {
            v635 = v625 == -8;
          }

          else
          {
            v635 = 1;
          }
        }

        while (v635);
      }

      while (jj != v705);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v636 = (a1 + *(*a1 - 24));
      v637 = v636[212];
      v638 = (*(*v636 + 48))(v636);
      AGCTargetPrinter::printMessage(v637, "\n------ End SCS layout for %s shader %u ------\n", v638, *(a1 + *(*a1 - 24) + 5088));
    }
  }

  if (AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_machine_readable_section == 1)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v639 = (a1 + *(*a1 - 24));
      v640 = v639[212];
      v641 = (*(*v639 + 48))(v639);
      AGCTargetPrinter::printMessage(v640, "\n------ Start SCS layout (JSON) for %s shader %u ------\n", v641, *(a1 + *(*a1 - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "{");
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  ria_gen: %u,", *(*(a1 + *(*a1 - 24) + 2168) + 1908));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  traversal_depth: %u,", a1[504]);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  max_instance_levels: %u,", *(a1 + 1016));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  num_cliques: %u,", v707);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  user_payload_size: %u,", a1[506]);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  driver_payload_size: %u,", a1[505]);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  aligned_total_scs_size: %u,", v708);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  sections: [");
    }

    v642 = a1 + 212;
    v643 = v710[1];
    if (v711 != v710[1])
    {
      v644 = 0;
      v645 = 0;
      v646 = 0xAAAAAAAAAAAAAAABLL * ((v711 - v710[1]) >> 2);
      do
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(v642 + *(*a1 - 24))))
        {
          v647 = ",";
          if (v645 == v646 - 1)
          {
            v647 = "\n  ],";
          }
        }

        ++v645;
        v643 = v710[1];
        v646 = 0xAAAAAAAAAAAAAAABLL * ((v711 - v710[1]) >> 2);
        v644 += 12;
      }

      while (v645 < v646);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  driver_extended_payload_segments: [");
    }

    v648 = *a2;
    if (*(a2 + 8))
    {
      while (!*v648 || *v648 == -8)
      {
        v648 += 8;
      }
    }

    LODWORD(v650) = *(a2 + 12);
    if (v650)
    {
      v651 = 0;
      v652 = *v648;
      do
      {
        v706 = v650;
        if (AGCTargetPrinter::isValidToPrintMessage(*(v642 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v642 + *(*a1 - 24)), "    {");
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v642 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v642 + *(*a1 - 24)), "      function: @%*s,", **v648, (*v648 + 24));
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v642 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v642 + *(*a1 - 24)), "      ray_flags: %u,", *(*v648 + 16));
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v642 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v642 + *(*a1 - 24)), "      segments: [");
        }

        v654 = *v653;
        v655 = v653[1] - *v653;
        if (v655)
        {
          v656 = 0;
          v657 = 0;
          v658 = v655 >> 4;
          do
          {
            if (AGCTargetPrinter::isValidToPrintMessage(*(v642 + *(*a1 - 24))))
            {
              v659 = "false";
              if (*(v654 + v656 + 4))
              {
                v659 = "true";
              }

              v660 = ",";
              if (v657 == v658 - 1)
              {
                v660 = "\n      ]";
              }
            }

            ++v657;
            v654 = *v653;
            v658 = (v653[1] - *v653) >> 4;
            v656 += 16;
          }

          while (v657 < v658);
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v642 + *(*a1 - 24))))
        {
          v661 = ",";
          if (v651 == v706 - 1)
          {
            v661 = "\n  ]";
          }

          AGCTargetPrinter::printMessage(*(v642 + *(*a1 - 24)), "    }%s", v661);
        }

        do
        {
          v662 = *(v648 + 8);
          v648 += 8;
          v652 = v662;
          if (v662)
          {
            v663 = v652 + 4 == 0;
          }

          else
          {
            v663 = 1;
          }
        }

        while (v663);
        ++v651;
        v650 = *(a2 + 12);
      }

      while (v651 < v650);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "}");
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v664 = (a1 + *(*a1 - 24));
      v665 = v664[212];
      v666 = (*(*v664 + 48))(v664);
      AGCTargetPrinter::printMessage(v665, "\n------ End SCS layout (JSON) for %s shader %u ------\n", v666, *(a1 + *(*a1 - 24) + 5088));
    }
  }

LABEL_437:
  v667 = __p[0];
  if (__p[0])
  {
    do
    {
      v668 = *v667;
      v669 = v667[3];
      if (v669)
      {
        v667[4] = v669;
        operator delete(v669);
      }

      operator delete(v667);
      v667 = v668;
    }

    while (v668);
  }

  v670 = v712[0];
  v712[0] = 0;
  if (v670)
  {
    operator delete(v670);
  }

  if (v710[1])
  {
    *&v711 = v710[1];
    operator delete(v710[1]);
  }

  if (SHIBYTE(v710[0]) < 0)
  {
    operator delete(v709[0]);
  }

LABEL_447:
  v671 = *MEMORY[0x277D85DE8];
}
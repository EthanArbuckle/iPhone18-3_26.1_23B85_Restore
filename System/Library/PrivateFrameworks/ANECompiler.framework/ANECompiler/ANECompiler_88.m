void sub_23CD84918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, unint64_t a32)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t *absl::lts_20240722::flat_hash_map<std::string,google::protobuf::anonymous namespace::JsonNameDetails,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::anonymous namespace::JsonNameDetails>>>::~flat_hash_map(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 <= 6)
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 64;
        v7 = v5 ^ 0x8080808080808080;
        while (1)
        {
          v8 = v6 + ((8 * __clz(__rbit64(v7))) & 0x3C0);
          if (*(v8 + 55) < 0)
          {
            operator delete(*(v8 + 32));
            if (*(v8 + 23) < 0)
            {
LABEL_10:
              operator delete(*v8);
            }
          }

          else if (*(v8 + 23) < 0)
          {
            goto LABEL_10;
          }

          v7 &= v7 - 1;
          if (!v7)
          {
            goto LABEL_12;
          }
        }
      }

      goto LABEL_12;
    }

    v9 = a1[1];
    if (v9 < 2)
    {
LABEL_12:
      operator delete((a1[2] - (a1[1] & 1) - 8));
      return a1;
    }

    v11 = v9 >> 1;
    while (1)
    {
      v12 = *v4 & 0x8080808080808080;
      if (v12 != 0x8080808080808080)
      {
        break;
      }

LABEL_15:
      ++v4;
      v3 += 512;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v13 = v12 ^ 0x8080808080808080;
    while (1)
    {
      v14 = v3 + ((8 * __clz(__rbit64(v13))) & 0x3C0);
      if (*(v14 + 55) < 0)
      {
        operator delete(*(v14 + 32));
        if (*(v14 + 23) < 0)
        {
LABEL_23:
          operator delete(*v14);
        }
      }

      else if (*(v14 + 23) < 0)
      {
        goto LABEL_23;
      }

      --v11;
      v13 &= v13 - 1;
      if (!v13)
      {
        goto LABEL_15;
      }
    }
  }

  return a1;
}

uint64_t google::protobuf::DescriptorBuilder::BuildFieldOrExtension(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6)
{
  v9 = a1;
  v192 = *MEMORY[0x277D85DE8];
  v183 = a4;
  v184 = a3;
  if (a3)
  {
    v10 = *(a3 + 8) + 24;
  }

  else
  {
    v10 = *(a1[20] + 16);
  }

  if ((*(a2 + 16) & 0x10) != 0)
  {
    v11 = *(a2 + 56) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v11 = 0;
  }

  if (!*a6)
  {
    google::protobuf::DescriptorBuilder::BuildFieldOrExtension(&v191);
  }

  v12 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = *(v10 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v10 + 8);
  }

  if (v13)
  {
    if (v14 < 0)
    {
      v10 = *v10;
    }

    v191.__r_.__value_.__r.__words[0] = v10;
    v191.__r_.__value_.__l.__size_ = v13;
    v190.__r_.__value_.__r.__words[0] = ".";
    v190.__r_.__value_.__l.__size_ = 1;
    v15 = v12[23];
    if ((v15 & 0x80u) == 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = *v12;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v12 + 1);
    }

    __p[0].__r_.__value_.__r.__words[0] = v16;
    __p[0].__r_.__value_.__l.__size_ = v15;
    absl::lts_20240722::StrCat(&v191.__r_.__value_.__l.__data_, &v190, __p, &v187);
LABEL_19:
    if (v11)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (v12[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v187, *v12, *(v12 + 1));
    goto LABEL_19;
  }

  v25 = *v12;
  v187.__r_.__value_.__r.__words[2] = *(v12 + 2);
  *&v187.__r_.__value_.__l.__data_ = v25;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_33:
  v26 = v12[23];
  if ((v26 & 0x8000000000000000) == 0)
  {
    if (*v12 - 97 < 0x1A)
    {
      v27 = v12;
      if (!v12[23])
      {
        goto LABEL_180;
      }

      goto LABEL_150;
    }

LABEL_20:
    memset(&v191, 0, sizeof(v191));
    v17 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v191, v12);
    v191.__r_.__value_.__l.__size_ = v17;
    if (v17 >= v191.__r_.__value_.__r.__words[2])
    {
      v20 = v191.__r_.__value_.__r.__words[0];
      v21 = v17 - v191.__r_.__value_.__r.__words[0];
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v191.__r_.__value_.__r.__words[0]) >> 3);
      v23 = v22 + 1;
      if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v191.__r_.__value_.__r.__words[2] - v191.__r_.__value_.__r.__words[0]) >> 3) > v23)
      {
        v23 = 0x5555555555555556 * ((v191.__r_.__value_.__r.__words[2] - v191.__r_.__value_.__r.__words[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v191.__r_.__value_.__r.__words[2] - v191.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v24 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        if (v24 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = (8 * ((v17 - v191.__r_.__value_.__r.__words[0]) >> 3));
      *v28 = v187;
      memset(&v187, 0, sizeof(v187));
      v19 = 24 * v22 + 24;
      v29 = 24 * v22 - v21;
      memcpy(v28 - v21, v20, v21);
      v191.__r_.__value_.__r.__words[0] = v29;
      *&v191.__r_.__value_.__r.__words[1] = v19;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      v18 = *&v187.__r_.__value_.__l.__data_;
      *(v17 + 16) = *(&v187.__r_.__value_.__l + 2);
      *v17 = v18;
      memset(&v187, 0, sizeof(v187));
      v19 = v17 + 24;
    }

    v182 = v9;
    v191.__r_.__value_.__l.__size_ = v19;
    v186 = &v191;
    v30 = a5;
    if (v12[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v190, *v12, *(v12 + 1));
    }

    else
    {
      v31 = *v12;
      v190.__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&v190.__r_.__value_.__l.__data_ = v31;
    }

    absl::lts_20240722::AsciiStrToLower(&v190);
    __p[0] = v190;
    memset(&v190, 0, sizeof(v190));
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
      if (v11)
      {
LABEL_46:
        if (*(v11 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v185, *v11, *(v11 + 8));
        }

        else
        {
          v34 = *v11;
          v185.__r_.__value_.__r.__words[2] = *(v11 + 16);
          *&v185.__r_.__value_.__l.__data_ = v34;
        }

LABEL_63:
        if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v185.__r_.__value_.__l.__data_);
        }

        v43 = v42;
        size = v191.__r_.__value_.__l.__size_;
        v44 = v191.__r_.__value_.__r.__words[0];
        if (v191.__r_.__value_.__r.__words[0] != v191.__r_.__value_.__l.__size_)
        {
          v46 = v42;
          do
          {
            if (*(v46 + 23) < 0)
            {
              operator delete(*v46);
            }

            v47 = *v44;
            *(v46 + 16) = *(v44 + 16);
            *v46 = v47;
            v46 += 24;
            *(v44 + 23) = 0;
            *v44 = 0;
            v44 += 24;
          }

          while (v44 != size);
        }

        if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v190.__r_.__value_.__l.__data_);
        }

        v48 = v191.__r_.__value_.__r.__words[0];
        a5 = v30;
        v9 = v182;
        if (v191.__r_.__value_.__r.__words[0])
        {
          v49 = v191.__r_.__value_.__l.__size_;
          v50 = v191.__r_.__value_.__r.__words[0];
          if (v191.__r_.__value_.__l.__size_ != v191.__r_.__value_.__r.__words[0])
          {
            do
            {
              v51 = *(v49 - 1);
              v49 -= 3;
              if (v51 < 0)
              {
                operator delete(*v49);
              }
            }

            while (v49 != v48);
            v50 = v191.__r_.__value_.__r.__words[0];
          }

          v191.__r_.__value_.__l.__size_ = v48;
          operator delete(v50);
        }

        v52 = v32 & 3;
        v53 = 4 * (v33 & 3);
        v54 = 16 * (v41 & 7);
        goto LABEL_81;
      }
    }

    else if (v11)
    {
      goto LABEL_46;
    }

    memset(&v185, 0, sizeof(v185));
    if (v12[23] >= 0)
    {
      v35 = v12[23];
    }

    else
    {
      v35 = *(v12 + 1);
    }

    std::string::reserve(&v185, v35);
    v36 = *(v12 + 1);
    if (v12[23] >= 0)
    {
      v37 = v12[23];
    }

    else
    {
      v12 = *v12;
      v37 = v36;
    }

    if (v37)
    {
      v38 = 0;
      do
      {
        v39 = *v12;
        v40 = v39 == 95;
        if (v39 != 95)
        {
          if (v38)
          {
            LOBYTE(v39) = absl::lts_20240722::ascii_internal::kToUpper[v39];
          }

          std::string::push_back(&v185, v39);
        }

        ++v12;
        v38 = v40;
        --v37;
      }

      while (v37);
    }

    goto LABEL_63;
  }

  v27 = *v12;
  if (**v12 - 97 >= 0x1A)
  {
    goto LABEL_20;
  }

  v26 = *(v12 + 1);
  if (!v26)
  {
LABEL_180:
    v54 = 0;
    v53 = 0;
    v52 = 0;
    goto LABEL_81;
  }

LABEL_150:
  v119 = &v27[v26];
  v120 = 1;
  do
  {
    while (1)
    {
      v121 = *v27;
      if ((v121 - 97) < 0x1A || (v121 - 48) < 0xA)
      {
        break;
      }

      if (v121 != 95)
      {
        goto LABEL_20;
      }

      v120 = 0;
      if (++v27 == v119)
      {
        goto LABEL_204;
      }
    }

    ++v27;
  }

  while (v27 != v119);
  if (v120)
  {
    goto LABEL_180;
  }

LABEL_204:
  if (v12[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v191, *v12, *(v12 + 1));
  }

  else
  {
    v138 = *v12;
    v191.__r_.__value_.__r.__words[2] = *(v12 + 2);
    *&v191.__r_.__value_.__l.__data_ = v138;
  }

  if (*(v43 + 23) < 0)
  {
    operator delete(*v43);
  }

  v159 = *&v191.__r_.__value_.__l.__data_;
  *(v43 + 16) = *(&v191.__r_.__value_.__l + 2);
  *v43 = v159;
  *(&v191.__r_.__value_.__s + 23) = 0;
  v191.__r_.__value_.__s.__data_[0] = 0;
  __p[0].__r_.__value_.__r.__words[0] = v187.__r_.__value_.__l.__size_;
  v160 = v187.__r_.__value_.__r.__words[0];
  *(__p[0].__r_.__value_.__r.__words + 7) = *(&v187.__r_.__value_.__r.__words[1] + 7);
  v161 = HIBYTE(v187.__r_.__value_.__r.__words[2]);
  memset(&v187, 0, sizeof(v187));
  if (*(v43 + 47) < 0)
  {
    operator delete(*(v43 + 24));
  }

  v162 = __p[0].__r_.__value_.__r.__words[0];
  *(v43 + 24) = v160;
  *(v43 + 32) = v162;
  *(v43 + 39) = *(__p[0].__r_.__value_.__r.__words + 7);
  *(v43 + 47) = v161;
  v188.__r_.__value_.__r.__words[0] = v190.__r_.__value_.__l.__size_;
  v163 = v190.__r_.__value_.__r.__words[0];
  *(v188.__r_.__value_.__r.__words + 7) = *(&v190.__r_.__value_.__r.__words[1] + 7);
  v164 = HIBYTE(v190.__r_.__value_.__r.__words[2]);
  memset(&v190, 0, sizeof(v190));
  if (*(v43 + 71) < 0)
  {
    operator delete(*(v43 + 48));
  }

  v165 = v188.__r_.__value_.__r.__words[0];
  *(v43 + 48) = v163;
  *(v43 + 56) = v165;
  *(v43 + 63) = *(v188.__r_.__value_.__r.__words + 7);
  *(v43 + 71) = v164;
  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v191.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v52 = 0;
  v53 = 8;
  v54 = 32;
LABEL_81:
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  v55 = v183;
  v183[1] = v43;
  *(v55 + 3) = *(v55 + 3) & 0xFC | v52;
  *(v183 + 3) = *(v183 + 3) & 0xF3 | v53;
  *(v183 + 3) = *(v183 + 3) & 0x8F | v54;
  v56 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v57 = v183[1];
  v58 = *(v56 + 23);
  if (v58 < 0)
  {
    v58 = *(v56 + 8);
    if (v58)
    {
      v59 = *v56;
      goto LABEL_89;
    }

    goto LABEL_95;
  }

  if (!*(v56 + 23))
  {
LABEL_95:
    google::protobuf::DescriptorBuilder::AddError(v9, (v57 + 24), a2, 0, "Missing name.");
    goto LABEL_96;
  }

  v59 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_89:
  while (1)
  {
    v60 = *v59;
    if ((v60 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v60 != 95 && (v60 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    ++v59;
    if (!--v58)
    {
      goto LABEL_96;
    }
  }

  v191.__r_.__value_.__r.__words[0] = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  google::protobuf::DescriptorBuilder::AddError(v9, (v57 + 24), a2, 0, &v191, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_96:
  v62 = v183;
  v183[2] = v9[20];
  *(v62 + 1) = *(a2 + 72);
  if (a5)
  {
    v63 = 8;
  }

  else
  {
    v63 = 0;
  }

  *(v62 + 1) = *(v62 + 1) & 0xF7 | v63;
  *(v183 + 1) &= ~0x10u;
  if (*(a2 + 80))
  {
    v64 = 2;
  }

  else
  {
    v64 = 0;
  }

  *(v183 + 1) = *(v183 + 1) & 0xFD | v64;
  if (*(a2 + 80) == 1 && *(v9[20] + 32) != 999)
  {
    v65 = v183[1];
    v191.__r_.__value_.__r.__words[0] = &v183;
    google::protobuf::DescriptorBuilder::AddError(v9, (v65 + 24), a2, 2, &v191, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_0,std::string>);
  }

  *(v183 + 1) = *(v183 + 1) & 0xFB | (*(a2 + 16) >> 2) & 4;
  v66 = v183;
  *(v183 + 2) = *(a2 + 88);
  *(v66 + 1) = (32 * (*(a2 + 84) & 3)) | *(v66 + 1) & 0x9F;
  v67 = v183;
  v68 = *(v183 + 1);
  if ((v68 & 0x68) == 0x48)
  {
    v69 = v183[1];
    v191.__r_.__value_.__r.__words[0] = &v183;
    google::protobuf::DescriptorBuilder::AddError(v9, (v69 + 24), a2, 2, &v191, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_1,std::string>);
    v67 = v183;
    v68 = *(v183 + 1);
  }

  v67[10] = 0;
  v67[3] = 0;
  v67[4] = 0;
  *(v67 + 1) = v68 & 0xFE | ((*(a2 + 16) & 8) != 0);
  v70 = *(a2 + 16);
  if ((v70 & 8) != 0 && (~*(v183 + 1) & 0x60) == 0)
  {
    google::protobuf::DescriptorBuilder::AddError(v9, (v183[1] + 24), a2, 4, "Repeated fields can't have default values.");
    v70 = *(a2 + 16);
  }

  if ((v70 & 0x400) != 0)
  {
    if ((v70 & 8) == 0)
    {
      v91 = v183;
      v92 = v183[3];
      if (v92)
      {
        v191.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v190.__r_.__value_.__r.__words[0] = v183;
        if (atomic_load_explicit(v92, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v92, 1, &v191, &v190);
        }
      }

      v93 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v91 + 2)];
      if (v93 > 5)
      {
        if (v93 > 7)
        {
          if (v93 != 8)
          {
            if (v93 == 9)
            {
              if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
              {
                google::protobuf::internal::InitProtobufDefaultsSlow(v92);
              }

              v183[10] = &google::protobuf::internal::fixed_address_empty_string;
            }

            else if (v93 == 10)
            {
              atomic_store(0, v183 + 10);
            }

            goto LABEL_111;
          }

LABEL_208:
          v183[10] = 0;
          goto LABEL_111;
        }

        if (v93 != 6)
        {
          *(v183 + 80) = 0;
          goto LABEL_111;
        }
      }

      else if (v93 <= 2)
      {
        if (v93 != 1)
        {
          if (v93 != 2)
          {
            goto LABEL_111;
          }

          goto LABEL_208;
        }
      }

      else if (v93 != 3)
      {
        goto LABEL_208;
      }

      *(v183 + 20) = 0;
      goto LABEL_111;
    }

    __p[0].__r_.__value_.__r.__words[0] = 0;
    v110 = v183;
    v111 = v183[3];
    if (v111)
    {
      v191.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v190.__r_.__value_.__r.__words[0] = v183;
      if (atomic_load_explicit(v111, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v111, 1, &v191, &v190);
      }
    }

    v112 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v110 + 2)];
    if (v112 <= 5)
    {
      if (v112 <= 2)
      {
        if (v112 != 1)
        {
          if (v112 != 2)
          {
            goto LABEL_260;
          }

          v139 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
          if (*(v139 + 23) < 0)
          {
            v139 = *v139;
          }

          v140 = strtoll(v139, &__p[0].__r_.__value_.__l.__data_, 0);
          goto LABEL_259;
        }

        v145 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v145 + 23) < 0)
        {
          v145 = *v145;
        }

        v146 = strtol(v145, &__p[0].__r_.__value_.__l.__data_, 0);
      }

      else
      {
        if (v112 != 3)
        {
          if (v112 != 4)
          {
            v113 = *(a2 + 48);
            v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
            v115 = *((v113 & 0xFFFFFFFFFFFFFFFCLL) + 23);
            if (v115 < 0)
            {
              if (v114[1] != 3)
              {
                goto LABEL_289;
              }

              v116 = *v114;
            }

            else
            {
              v116 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
              if (v115 != 3)
              {
LABEL_289:
                if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v114, "-inf"))
                {
                  v183[10] = 0xFFF0000000000000;
                }

                else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((*(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL), "nan"))
                {
                  v183[10] = 0x7FF8000000000000;
                }

                else
                {
                  v180 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL);
                  if (v180[23] < 0)
                  {
                    v180 = *v180;
                  }

                  v181 = google::protobuf::io::NoLocaleStrtod(v180, __p, v175);
                  *(v183 + 10) = v181;
                }

                goto LABEL_260;
              }
            }

            v172 = *v116;
            v173 = *(v116 + 2);
            if (v172 == 28265 && v173 == 102)
            {
              v183[10] = 0x7FF0000000000000;
              goto LABEL_260;
            }

            goto LABEL_289;
          }

          v152 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
          if (*(v152 + 23) < 0)
          {
            v152 = *v152;
          }

          v140 = strtoull(v152, &__p[0].__r_.__value_.__l.__data_, 0);
LABEL_259:
          v183[10] = v140;
          goto LABEL_260;
        }

        v151 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v151 + 23) < 0)
        {
          v151 = *v151;
        }

        v146 = strtoul(v151, &__p[0].__r_.__value_.__l.__data_, 0);
      }

      *(v183 + 20) = v146;
      goto LABEL_260;
    }

    if (v112 > 7)
    {
      switch(v112)
      {
        case 8:
          v183[10] = 0;
          break;
        case 9:
          v153 = v183;
          v154 = v183[3];
          if (v154)
          {
            v191.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            v190.__r_.__value_.__r.__words[0] = v183;
            if (atomic_load_explicit(v154, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v154, 1, &v191, &v190);
            }
          }

          if (*(v153 + 2) != 12)
          {
            goto LABEL_259;
          }

          memset(&v191, 0, sizeof(v191));
          v155 = *(a2 + 48);
          v156 = (v155 & 0xFFFFFFFFFFFFFFFCLL);
          v157 = *((v155 & 0xFFFFFFFFFFFFFFFCLL) + 23);
          if ((v157 & 0x8000000000000000) != 0)
          {
            v156 = v156->__r_.__value_.__r.__words[0];
            v157 = *((v155 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          if (absl::lts_20240722::CUnescape(v156, v157, &v191, 0))
          {
            v183[10] = v158;
          }

          else
          {
            google::protobuf::DescriptorBuilder::AddError(v9, (v183[1] + 24), a2, 4, "Invalid escaping in default value.");
          }

          if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v191.__r_.__value_.__l.__data_);
          }

          break;
        case 10:
          google::protobuf::DescriptorBuilder::AddError(v9, (v183[1] + 24), a2, 4, "Messages can't have default values.");
          *(v183 + 1) &= ~1u;
          atomic_store(0, v183 + 10);
          break;
      }

LABEL_260:
      if (!__p[0].__r_.__value_.__r.__words[0])
      {
        goto LABEL_111;
      }

      v166 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
      if ((*(v166 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v166 + 8))
        {
LABEL_266:
          v167 = v183[1];
          v191.__r_.__value_.__r.__words[0] = a2;
          google::protobuf::DescriptorBuilder::AddError(v9, (v167 + 24), a2, 4, &v191, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_2,std::string>);
          goto LABEL_111;
        }
      }

      else if (!*(v166 + 23))
      {
        goto LABEL_266;
      }

      if (!*__p[0].__r_.__value_.__l.__data_)
      {
        goto LABEL_111;
      }

      goto LABEL_266;
    }

    if (v112 != 6)
    {
      v141 = *(a2 + 48);
      v142 = (v141 & 0xFFFFFFFFFFFFFFFCLL);
      v143 = *((v141 & 0xFFFFFFFFFFFFFFFCLL) + 23);
      if (v143 < 0)
      {
        if (v142[1] != 4)
        {
          goto LABEL_270;
        }

        v144 = *v142;
      }

      else
      {
        v144 = (v141 & 0xFFFFFFFFFFFFFFFCLL);
        if (v143 != 4)
        {
LABEL_270:
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v142, "false"))
          {
            *(v183 + 80) = 0;
          }

          else
          {
            google::protobuf::DescriptorBuilder::AddError(v9, (v183[1] + 24), a2, 4, "Boolean default must be true or false.");
          }

          goto LABEL_260;
        }
      }

      if (*v144 == 1702195828)
      {
        *(v183 + 80) = 1;
        goto LABEL_260;
      }

      goto LABEL_270;
    }

    v147 = *(a2 + 48);
    v148 = (v147 & 0xFFFFFFFFFFFFFFFCLL);
    v149 = *((v147 & 0xFFFFFFFFFFFFFFFCLL) + 23);
    if (v149 < 0)
    {
      if (v148[1] != 3)
      {
        goto LABEL_279;
      }

      v150 = *v148;
    }

    else
    {
      v150 = (v147 & 0xFFFFFFFFFFFFFFFCLL);
      if (v149 != 3)
      {
LABEL_279:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v148, "-inf"))
        {
          *(v183 + 20) = -8388608;
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((*(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL), "nan"))
        {
          *(v183 + 20) = 2143289344;
        }

        else
        {
          v176 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL);
          if (v176[23] < 0)
          {
            v176 = *v176;
          }

          v177 = google::protobuf::io::NoLocaleStrtod(v176, __p, v171);
          v179 = google::protobuf::io::SafeDoubleToFloat(v178, v177);
          *(v183 + 20) = v179;
        }

        goto LABEL_260;
      }
    }

    v168 = *v150;
    v169 = *(v150 + 2);
    if (v168 == 28265 && v169 == 102)
    {
      *(v183 + 20) = 2139095040;
      goto LABEL_260;
    }

    goto LABEL_279;
  }

LABEL_111:
  v71 = v183;
  v72 = *(v183 + 1);
  if (v72 <= 0)
  {
    v94 = 0;
    _X8 = v9[28];
    __asm { PRFM            #4, [X8] }

    v97 = v184;
    v98 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v184) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v184))) + v184;
    v99 = 0x9DDFEA08EB382D69 * v98;
    v100 = (v98 * 0x9DDFEA08EB382D69) >> 64;
    v101 = v9[26];
    v102 = v100 ^ v99;
    v103 = vdup_n_s8((v100 ^ v99) & 0x7F);
    v104 = (((v100 ^ v99) >> 7) ^ (_X8 >> 12)) & v101;
    v105 = *(_X8 + v104);
    v106 = vceq_s8(v105, v103);
    if (!v106)
    {
      goto LABEL_133;
    }

LABEL_130:
    v107 = v9[29];
    do
    {
      v108 = (v104 + (__clz(__rbit64(v106)) >> 3)) & v101;
      if (*(v107 + 32 * v108) == v184)
      {
        v117 = v107 + 32 * v108;
        v118 = *(v117 + 8);
        goto LABEL_161;
      }

      v106 &= ((v106 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v106);
LABEL_133:
    while (1)
    {
      v109 = vceq_s8(v105, 0x8080808080808080);
      if (v109)
      {
        break;
      }

      v94 += 8;
      v104 = (v94 + v104) & v101;
      v105 = *(_X8 + v104);
      v106 = vceq_s8(v105, v103);
      if (v106)
      {
        goto LABEL_130;
      }
    }

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v9 + 26, v102, (v104 + (__clz(__rbit64(v109)) >> 3)) & v101, v94, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
    v118 = 0;
    v117 = v9[29] + 32 * inserted;
    *v117 = v97;
    *(v117 + 8) = 0;
    *(v117 + 16) = 0;
    *(v117 + 24) = 0;
    *(v117 + 24) = 11;
LABEL_161:
    if (v118 < 0)
    {
      v118 = -1;
    }

    if ((v118 + 1) < 0x1FFFFFFF)
    {
      v124 = v118 + 1;
    }

    else
    {
      v124 = 0x1FFFFFFF;
    }

    *(v117 + 8) = v124;
    if (!*(v117 + 16))
    {
      *(v117 + 16) = a2;
      *(v117 + 24) = 1;
    }

    google::protobuf::DescriptorBuilder::AddError(v9, (v183[1] + 24), a2, 1, "Field numbers must be positive integers.");
LABEL_191:
    v71 = v183;
    if (a5)
    {
      goto LABEL_192;
    }

    goto LABEL_196;
  }

  if (a5)
  {
LABEL_192:
    if ((*(a2 + 16) & 2) == 0)
    {
      google::protobuf::DescriptorBuilder::AddError(v9, (v71[1] + 24), a2, 3, "FieldDescriptorProto.extendee not set for extension field.");
      v71 = v183;
    }

    v71[5] = v184;
    if ((*(a2 + 16) & 0x80) != 0)
    {
      google::protobuf::DescriptorBuilder::AddError(v9, (v71[1] + 24), a2, 2, "FieldDescriptorProto.oneof_index should not be set for extensions.");
    }

    goto LABEL_203;
  }

  if (v72 >> 29)
  {
    v73 = 0;
    _X8 = v9[28];
    __asm { PRFM            #4, [X8] }

    v78 = v184;
    v79 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v184) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v184))) + v184;
    v80 = 0x9DDFEA08EB382D69 * v79;
    v81 = (v79 * 0x9DDFEA08EB382D69) >> 64;
    v82 = v9[26];
    v83 = v81 ^ v80;
    v84 = vdup_n_s8((v81 ^ v80) & 0x7F);
    v85 = (((v81 ^ v80) >> 7) ^ (_X8 >> 12)) & v82;
    v86 = *(_X8 + v85);
    v87 = vceq_s8(v86, v84);
    if (!v87)
    {
      goto LABEL_118;
    }

LABEL_115:
    v88 = v9[29];
    do
    {
      v89 = (v85 + (__clz(__rbit64(v87)) >> 3)) & v82;
      if (*(v88 + 32 * v89) == v184)
      {
        v125 = v88 + 32 * v89;
        v126 = *(v125 + 8);
        goto LABEL_183;
      }

      v87 &= ((v87 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v87);
LABEL_118:
    while (1)
    {
      v90 = vceq_s8(v86, 0x8080808080808080);
      if (v90)
      {
        break;
      }

      v73 += 8;
      v85 = (v73 + v85) & v82;
      v86 = *(_X8 + v85);
      v87 = vceq_s8(v86, v84);
      if (v87)
      {
        goto LABEL_115;
      }
    }

    v127 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v9 + 26, v83, (v85 + (__clz(__rbit64(v90)) >> 3)) & v82, v73, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
    v126 = 0;
    v125 = v9[29] + 32 * v127;
    *v125 = v78;
    *(v125 + 8) = 0;
    *(v125 + 16) = 0;
    *(v125 + 24) = 0;
    *(v125 + 24) = 11;
LABEL_183:
    if (v126 < 0)
    {
      v126 = -1;
    }

    if ((v126 + 1) < 0x1FFFFFFF)
    {
      v128 = v126 + 1;
    }

    else
    {
      v128 = 0x1FFFFFFF;
    }

    *(v125 + 8) = v128;
    if (!*(v125 + 16))
    {
      *(v125 + 16) = a2;
      *(v125 + 24) = 1;
    }

    google::protobuf::DescriptorBuilder::AddError(v9, (v183[1] + 24), a2, 1, &v191, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_3,std::string>);
    goto LABEL_191;
  }

LABEL_196:
  v129 = *(a2 + 16);
  if ((v129 & 2) != 0)
  {
    google::protobuf::DescriptorBuilder::AddError(v9, (v71[1] + 24), a2, 3, "FieldDescriptorProto.extendee set for non-extension field.");
    v71 = v183;
    v129 = *(a2 + 16);
  }

  v130 = v184;
  v71[4] = v184;
  if ((v129 & 0x80) != 0)
  {
    v131 = *(a2 + 76);
    if (v131 < 0 || v131 >= *(v130 + 120))
    {
      v132 = v71[1];
      v191.__r_.__value_.__r.__words[0] = a2;
      v191.__r_.__value_.__l.__size_ = &v184;
      google::protobuf::DescriptorBuilder::AddError(v9, (v132 + 24), a2, 2, &v191, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_4,std::string>);
    }

    else
    {
      *(v71 + 1) |= 0x10u;
      v183[5] = *(v130 + 64) + 56 * *(a2 + 76);
    }
  }

LABEL_203:
  google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::FieldDescriptor>(v9, a2, v183, 8, "google.protobuf.FieldOptions", 0x1CuLL, a6);
  v134 = v183;
  v133 = v184;
  v135 = v183[1];
  *v183 = 2;
  result = google::protobuf::DescriptorBuilder::AddSymbol(v9, v135 + 24, v133, v135, a2, v134);
  v137 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD85F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 121) < 0)
  {
    operator delete(*(v46 - 144));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::FieldDescriptor>(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, size_t a6, uint64_t a7)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  google::protobuf::FieldDescriptor::GetLocationPath(a3, &__p);
  v14 = v27;
  if (v27 >= v28)
  {
    v25 = a2;
    v19 = __p;
    v20 = v27 - __p;
    v21 = (v27 - __p) >> 2;
    v22 = v21 + 1;
    if ((v21 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v23 = v28 - __p;
    if ((v28 - __p) >> 1 > v22)
    {
      v22 = v23 >> 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v24 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (!(v24 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v21) = a4;
    v15 = 4 * v21 + 4;
    memcpy(0, v19, v20);
    __p = 0;
    v27 = v15;
    v28 = 0;
    if (v19)
    {
      operator delete(v19);
    }

    a2 = v25;
    v27 = (4 * v21 + 4);
    v16 = a3[1];
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v27 = a4;
    v15 = (v14 + 4);
    v27 = v15;
    v16 = a3[1];
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_3:
      v18 = (v16 + 24);
      goto LABEL_17;
    }
  }

  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
LABEL_17:
  a3[7] = google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::FieldDescriptor>(a1, v18, v17, v18, v17, a2, __p, (v15 - __p) >> 2, a5, a6, a7);
  a3[8] = &google::protobuf::_FeatureSet_default_instance_;
  a3[9] = &google::protobuf::_FeatureSet_default_instance_;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_23CD861A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::Descriptor::ExtensionRange>(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, size_t a6, uint64_t a7)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  google::protobuf::Descriptor::GetLocationPath(a3[2], &__p);
  v29 = 5;
  std::vector<int>::push_back[abi:ne200100](&__p, &v29);
  v29 = -858993459 * ((a3 - *(a3[2] + 88)) >> 3);
  std::vector<int>::push_back[abi:ne200100](&__p, &v29);
  v14 = v27;
  if (v27 >= v28)
  {
    v25 = a2;
    v19 = __p;
    v20 = v27 - __p;
    v21 = (v27 - __p) >> 2;
    v22 = v21 + 1;
    if ((v21 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v23 = v28 - __p;
    if ((v28 - __p) >> 1 > v22)
    {
      v22 = v23 >> 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v24 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (!(v24 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v21) = a4;
    v15 = 4 * v21 + 4;
    memcpy(0, v19, v20);
    __p = 0;
    v27 = v15;
    v28 = 0;
    if (v19)
    {
      operator delete(v19);
    }

    a2 = v25;
    v27 = (4 * v21 + 4);
    v16 = *(a3[2] + 8);
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v27 = a4;
    v15 = (v14 + 4);
    v27 = v15;
    v16 = *(a3[2] + 8);
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_3:
      v18 = (v16 + 24);
      goto LABEL_17;
    }
  }

  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
LABEL_17:
  a3[1] = google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::Descriptor::ExtensionRange>(a1, v18, v17, v18, v17, a2, __p, (v15 - __p) >> 2, a5, a6, a7);
  a3[3] = &google::protobuf::_FeatureSet_default_instance_;
  a3[4] = &google::protobuf::_FeatureSet_default_instance_;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_23CD863C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::OneofDescriptor>(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, size_t a6, uint64_t a7)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  google::protobuf::Descriptor::GetLocationPath(a3[2], &__p);
  v29 = 8;
  std::vector<int>::push_back[abi:ne200100](&__p, &v29);
  v29 = -1227133513 * ((a3 - *(a3[2] + 64)) >> 3);
  std::vector<int>::push_back[abi:ne200100](&__p, &v29);
  v14 = v27;
  if (v27 >= v28)
  {
    v25 = a2;
    v19 = __p;
    v20 = v27 - __p;
    v21 = (v27 - __p) >> 2;
    v22 = v21 + 1;
    if ((v21 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v23 = v28 - __p;
    if ((v28 - __p) >> 1 > v22)
    {
      v22 = v23 >> 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v24 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (!(v24 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v21) = a4;
    v15 = 4 * v21 + 4;
    memcpy(0, v19, v20);
    __p = 0;
    v27 = v15;
    v28 = 0;
    if (v19)
    {
      operator delete(v19);
    }

    a2 = v25;
    v27 = (4 * v21 + 4);
    v16 = a3[1];
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v27 = a4;
    v15 = (v14 + 4);
    v27 = v15;
    v16 = a3[1];
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_3:
      v18 = (v16 + 24);
      goto LABEL_17;
    }
  }

  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
LABEL_17:
  a3[3] = google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::OneofDescriptor>(a1, v18, v17, v18, v17, a2, __p, (v15 - __p) >> 2, a5, a6, a7);
  a3[4] = &google::protobuf::_FeatureSet_default_instance_;
  a3[5] = &google::protobuf::_FeatureSet_default_instance_;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_23CD865D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CheckEnumValueUniqueness(google::protobuf::DescriptorBuilder *this, const google::protobuf::EnumDescriptorProto *a2, const google::protobuf::EnumDescriptor *a3)
{
  v6 = *(a3 + 1);
  v7 = v6[23];
  if (v7 < 0)
  {
    v6 = *v6;
    v7 = *(*(a3 + 1) + 8);
    memset(&v58, 0, sizeof(v58));
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    memset(&v58, 0, sizeof(v58));
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  do
  {
    v9 = *v6;
    if (v9 != 95)
    {
      std::string::push_back(&v58, absl::lts_20240722::ascii_internal::kToLower[v9]);
    }

    ++v6;
    --v7;
  }

  while (v7);
LABEL_5:
  v49 = this;
  v57[0] = 0;
  v57[1] = 0;
  v57[2] = &unk_23CE31C20;
  if (*(a3 + 1) >= 1)
  {
    v8 = 0;
    v48 = (a2 + 24);
    while (1)
    {
      v11 = *(a3 + 7) + 48 * v8;
      v56 = v11;
      v12 = *(v11 + 8);
      v13 = v12[23];
      if ((v13 & 0x8000000000000000) != 0)
      {
        v12 = *v12;
        v13 = *(*(v11 + 8) + 8);
        v14 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        size = v58.__r_.__value_.__l.__size_;
        if (!v13)
        {
LABEL_29:
          if ((v14 & 0x80u) == 0)
          {
            v21 = v14;
          }

          else
          {
            v21 = size;
          }

          if (v21)
          {
            v54 = 0;
            goto LABEL_61;
          }

          v17 = 0;
          goto LABEL_46;
        }
      }

      else
      {
        v14 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        size = v58.__r_.__value_.__l.__size_;
        if (!v12[23])
        {
          goto LABEL_29;
        }
      }

      v16 = 0;
      v17 = 0;
      v18 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = size;
      }

      v19 = v58.__r_.__value_.__r.__words[0];
      if (v18 >= 0)
      {
        v19 = &v58;
      }

      while (1)
      {
        if (v16 >= v14)
        {
          goto LABEL_37;
        }

        v20 = v12[v17];
        if (v20 == 95)
        {
          goto LABEL_23;
        }

        if (absl::lts_20240722::ascii_internal::kToLower[v20] != v19->__r_.__value_.__s.__data_[v16])
        {
          break;
        }

        ++v16;
LABEL_23:
        if (v13 == ++v17)
        {
          v17 = v13;
LABEL_37:
          if (v16 >= v14)
          {
            if (v17 < v13)
            {
              while (v12[v17] == 95)
              {
                if (v13 == ++v17)
                {
                  goto LABEL_47;
                }
              }
            }

LABEL_46:
            v22 = v13 - v17;
            if (v13 == v17)
            {
LABEL_47:
              if (v13 <= 0x7FFFFFFFFFFFFFF7)
              {
                if (v13 >= 0x17)
                {
                  operator new();
                }

                v54 = v13;
                if (v13)
                {
                  goto LABEL_60;
                }

                goto LABEL_61;
              }
            }

            else if (v22 <= 0x7FFFFFFFFFFFFFF7)
            {
              if (v22 >= 0x17)
              {
                operator new();
              }

              v54 = v13 - v17;
              memmove(&__dst, &v12[v17], v22);
              v23 = &__dst + v22;
              goto LABEL_62;
            }
          }

          else if (v13 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v13 >= 0x17)
            {
              operator new();
            }

            goto LABEL_56;
          }

LABEL_111:
          std::string::__throw_length_error[abi:ne200100]();
        }
      }

      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_111;
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

LABEL_56:
      v54 = v13;
LABEL_60:
      memmove(&__dst, v12, v13);
LABEL_61:
      v23 = &__dst + v13;
LABEL_62:
      *v23 = 0;
      memset(&__p, 0, sizeof(__p));
      if ((v54 & 0x80u) == 0)
      {
        v24 = v54;
      }

      else
      {
        v24 = v52;
      }

      std::string::reserve(&__p, v24);
      v27 = v54;
      if ((v54 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if ((v54 & 0x80u) == 0)
      {
        v29 = v54;
      }

      else
      {
        v29 = v52;
      }

      if (v29)
      {
        v30 = 1;
        do
        {
          v31 = *p_dst;
          v32 = v31 == 95;
          if (v31 != 95)
          {
            if (v30)
            {
              v33 = absl::lts_20240722::ascii_internal::kToUpper;
            }

            else
            {
              v33 = absl::lts_20240722::ascii_internal::kToLower;
            }

            std::string::push_back(&__p, v33[v31]);
          }

          p_dst = (p_dst + 1);
          v30 = v32;
          v29 = (v29 - 1);
        }

        while (v29);
        v27 = v54;
      }

      if ((v27 & 0x80) != 0)
      {
        operator delete(__dst);
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::EnumValueDescriptor const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::EnumValueDescriptor const*>>>::find_or_prepare_insert_non_soo<std::string>(v57, &__p, v25, v26, &__dst);
      if (v53 != 1)
      {
        goto LABEL_87;
      }

      v34 = v52;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v52, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v35 = *&__p.__r_.__value_.__l.__data_;
        v52->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        *&v34->__r_.__value_.__l.__data_ = v35;
      }

      v34[1].__r_.__value_.__r.__words[0] = v56;
      if ((v53 & 1) == 0)
      {
LABEL_87:
        data = v52[1].__r_.__value_.__l.__data_;
        v37 = *(data + 1);
        v38 = v56;
        v39 = *(v56 + 8);
        v40 = *(v37 + 23);
        if (v40 >= 0)
        {
          v41 = *(v37 + 23);
        }

        else
        {
          v41 = *(v37 + 8);
        }

        v42 = *(v39 + 23);
        v43 = v42;
        if ((v42 & 0x80u) != 0)
        {
          v42 = *(v39 + 8);
        }

        if (v41 != v42 || (v40 >= 0 ? (v44 = *(data + 1)) : (v44 = *v37), (v45 = *v39, v43 >= 0) ? (v46 = *(v56 + 8)) : (v46 = *v39), memcmp(v44, v46, v41)))
        {
          if (*(data + 1) != *(v38 + 4))
          {
            v50[0] = &v56;
            v50[1] = &__dst;
            if (((*(*v49 + 54) & 1) != 0 || *(*(a3 + 4) + 82) == 1) && *(*(a3 + 2) + 32) == 998)
            {
              if (*v48)
              {
                v47 = (*v48 + 8 * v8 + 7);
              }

              else
              {
                v47 = v48;
              }

              google::protobuf::DescriptorBuilder::AddWarning(v49, (v39 + 24), *v47, 0, v50, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckEnumValueUniqueness(google::protobuf::EnumDescriptorProto const&,google::protobuf::EnumDescriptor const*)::$_0,std::string>);
            }

            else
            {
              if (*v48)
              {
                v10 = (*v48 + 8 * v8 + 7);
              }

              else
              {
                v10 = v48;
              }

              google::protobuf::DescriptorBuilder::AddError(v49, (v39 + 24), *v10, 0, v50, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckEnumValueUniqueness(google::protobuf::EnumDescriptorProto const&,google::protobuf::EnumDescriptor const*)::$_0,std::string>);
            }
          }
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (++v8 >= *(a3 + 1))
        {
          break;
        }
      }

      else if (++v8 >= *(a3 + 1))
      {
        break;
      }
    }
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(v57);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void sub_23CD86BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, unint64_t a27)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(&a27);
  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  _Unwind_Resume(a1);
}

BOOL std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

void google::protobuf::DescriptorBuilder::BuildEnumValue(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v55 = *MEMORY[0x277D85DE8];
  v48 = a4;
  v49 = a3;
  memset(&v47, 0, sizeof(v47));
  v10 = *(a3 + 8);
  v11 = *(v10 + 47);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = *(v10 + 23);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v13 = v11 - *(v10 + 8);
    v14 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *(v14 + 23);
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v11 = *(v10 + 32);
  v12 = *(v10 + 23);
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v13 = v11 - v12;
  v14 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 23);
  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v15 = *(v14 + 8);
LABEL_4:
  std::string::reserve(&v47, v15 + v13);
  v16 = *(a3 + 8);
  v17 = (v16 + 24);
  if (*(v16 + 47) < 0)
  {
    v17 = *v17;
  }

  std::string::append(&v47, v17, v13);
  v18 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append(&v47, v20, v21);
  *(v6 + 8) = v22;
  *(v6 + 4) = *(a2 + 40);
  *(v6 + 16) = a3;
  v23 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 23);
  if (v24 < 0)
  {
    v24 = *(v23 + 8);
    if (v24)
    {
      v25 = *v23;
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if (!*(v23 + 23))
  {
LABEL_27:
    google::protobuf::DescriptorBuilder::AddError(a1, (v22 + 24), a2, 0, "Missing name.");
    goto LABEL_28;
  }

  v25 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_21:
  while (1)
  {
    v26 = *v25;
    if ((v26 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v26 != 95 && (v26 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    ++v25;
    if (!--v24)
    {
      goto LABEL_28;
    }
  }

  v52 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  google::protobuf::DescriptorBuilder::AddError(a1, (v22 + 24), a2, 0, &v52, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_28:
  google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::EnumValueDescriptor>(a1, a2, v6, 3, "google.protobuf.EnumValueOptions", 0x20uLL, a5);
  v28 = *(v6 + 8);
  v29 = *(a3 + 24);
  *v6 = 5;
  v30 = google::protobuf::DescriptorBuilder::AddSymbol(a1, v28 + 24, v29, v28, a2, v6);
  v31 = a1[21];
  *(v6 + 1) = 6;
  if (((v30 | google::protobuf::FileDescriptorTables::AddAliasUnderParent(v31, v32, v33, v34, (v6 + 1)) ^ 1) & 1) == 0)
  {
    memset(&v46, 0, sizeof(v46));
    v35 = *(a3 + 24);
    if (v35)
    {
      v36 = (*(v35 + 8) + 24);
    }

    else
    {
      v36 = *(a1[20] + 16);
    }

    std::string::operator=(&v46, v36);
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v46.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v52 = "";
      v53 = 1;
      v38 = &v46;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v46.__r_.__value_.__r.__words[0];
      }

      v51[0] = v38;
      v51[1] = size;
      v50[0] = "";
      v50[1] = 1;
      absl::lts_20240722::StrCat(&v52, v51, v50, &v45);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      v46 = v45;
    }

    else
    {
      MEMORY[0x23EED9020](&v46, "the global scope");
    }

    v39 = *(v6 + 8);
    v52 = &v48;
    v53 = &v46;
    v54 = &v49;
    google::protobuf::DescriptorBuilder::AddError(a1, (v39 + 24), a2, 0, &v52, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnumValue(google::protobuf::EnumValueDescriptorProto const&,google::protobuf::EnumDescriptor const*,google::protobuf::EnumValueDescriptor *,google::protobuf::internal::FlatAllocator &)::$_0,std::string>);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v6 = v48;
  }

  v40 = a1[21];
  v51[0] = v6;
  v41 = *(v6 + 16);
  v42 = *(*(v41 + 56) + 4);
  v43 = *(v6 + 4);
  if (v42 > v43 || *(v41 + 2) + v42 < v43)
  {
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void sub_23CD8704C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::EnumDescriptor>(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, size_t a6, uint64_t a7)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  google::protobuf::EnumDescriptor::GetLocationPath(a3, &__p);
  v14 = v27;
  if (v27 >= v28)
  {
    v25 = a2;
    v19 = __p;
    v20 = v27 - __p;
    v21 = (v27 - __p) >> 2;
    v22 = v21 + 1;
    if ((v21 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v23 = v28 - __p;
    if ((v28 - __p) >> 1 > v22)
    {
      v22 = v23 >> 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v24 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (!(v24 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v21) = a4;
    v15 = 4 * v21 + 4;
    memcpy(0, v19, v20);
    __p = 0;
    v27 = v15;
    v28 = 0;
    if (v19)
    {
      operator delete(v19);
    }

    a2 = v25;
    v27 = (4 * v21 + 4);
    v16 = a3[1];
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v27 = a4;
    v15 = (v14 + 4);
    v27 = v15;
    v16 = a3[1];
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_3:
      v18 = (v16 + 24);
      goto LABEL_17;
    }
  }

  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
LABEL_17:
  a3[4] = google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::EnumDescriptor>(a1, v18, v17, v18, v17, a2, __p, (v15 - __p) >> 2, a5, a6, a7);
  a3[5] = &google::protobuf::_FeatureSet_default_instance_;
  a3[6] = &google::protobuf::_FeatureSet_default_instance_;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_23CD8725C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::EnumValueDescriptor>(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, size_t a6, uint64_t a7)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  google::protobuf::EnumDescriptor::GetLocationPath(a3[2], &__p);
  v29 = 2;
  std::vector<int>::push_back[abi:ne200100](&__p, &v29);
  v29 = -1431655765 * ((a3 - *(a3[2] + 56)) >> 4);
  std::vector<int>::push_back[abi:ne200100](&__p, &v29);
  v14 = v27;
  if (v27 >= v28)
  {
    v25 = a2;
    v19 = __p;
    v20 = v27 - __p;
    v21 = (v27 - __p) >> 2;
    v22 = v21 + 1;
    if ((v21 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v23 = v28 - __p;
    if ((v28 - __p) >> 1 > v22)
    {
      v22 = v23 >> 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v24 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (!(v24 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v21) = a4;
    v15 = 4 * v21 + 4;
    memcpy(0, v19, v20);
    __p = 0;
    v27 = v15;
    v28 = 0;
    if (v19)
    {
      operator delete(v19);
    }

    a2 = v25;
    v27 = (4 * v21 + 4);
    v16 = a3[1];
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v27 = a4;
    v15 = (v14 + 4);
    v27 = v15;
    v16 = a3[1];
    v17 = *(v16 + 47);
    if ((v17 & 0x8000000000000000) == 0)
    {
LABEL_3:
      v18 = (v16 + 24);
      goto LABEL_17;
    }
  }

  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
LABEL_17:
  a3[3] = google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::EnumValueDescriptor>(a1, v18, v17, v18, v17, a2, __p, (v15 - __p) >> 2, a5, a6, a7);
  a3[4] = &google::protobuf::_FeatureSet_default_instance_;
  a3[5] = &google::protobuf::_FeatureSet_default_instance_;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_23CD87470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::BuildMethod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 16) = a3;
  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, *(a3 + 8) + 24, *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL, a5);
  *(a4 + 8) = NameStrings;
  v9 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = *v9;
      goto LABEL_7;
    }
  }

  else if (*(v9 + 23))
  {
    v11 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_7:
    while (1)
    {
      v12 = *v11;
      if ((v12 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v12 != 95 && (v12 - 58) <= 0xFFFFFFF5)
      {
        break;
      }

      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    v14 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
    google::protobuf::DescriptorBuilder::AddError(a1, (NameStrings + 24), a2, 0, &v14, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_14:
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::MethodDescriptor>(a1, a2, a4);
  }

  google::protobuf::DescriptorBuilder::AddError(a1, (NameStrings + 24), a2, 0, "Missing name.");
  goto LABEL_14;
}

void google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::ServiceDescriptor>()
{
  __p = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23CD877F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::MethodDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  v3 = *(a3 + 16);
  operator new();
}

void sub_23CD87A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CrossLinkMessage(google::protobuf::DescriptorBuilder *this, google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3)
{
  v4 = a2;
  v91 = *MEMORY[0x277D85DE8];
  v84 = a2;
  if (!*(a2 + 4))
  {
    *(a2 + 4) = &google::protobuf::_MessageOptions_default_instance_;
  }

  if (*(a2 + 32) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = (a3 + 48);
    v9 = 8;
    do
    {
      if (*v8)
      {
        v10 = (*v8 + v9 - 1);
      }

      else
      {
        v10 = (a3 + 48);
      }

      google::protobuf::DescriptorBuilder::CrossLinkMessage(this, (*(v4 + 9) + v6), *v10);
      ++v7;
      v6 += 152;
      v9 += 8;
    }

    while (v7 < *(v4 + 32));
  }

  v11 = *(v4 + 33);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(v4 + 10);
    do
    {
      v14 = v13 + 88 * v12;
      if (*(v14 + 32))
      {
        v15 = *(v14 + 4);
        if (v15 >= 1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(v14 + 32) = &google::protobuf::_EnumOptions_default_instance_;
        v15 = *(v14 + 4);
        if (v15 >= 1)
        {
LABEL_16:
          v16 = (*(v14 + 56) + 24);
          do
          {
            if (!*v16)
            {
              *v16 = &google::protobuf::_EnumValueOptions_default_instance_;
            }

            v16 += 6;
            --v15;
          }

          while (v15);
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  if (*(v4 + 1) >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = (a3 + 24);
    v20 = 8;
    do
    {
      if (*v19)
      {
        v21 = (*v19 + v20 - 1);
      }

      else
      {
        v21 = (a3 + 24);
      }

      google::protobuf::DescriptorBuilder::CrossLinkField(this, (*(v4 + 7) + v17), *v21);
      ++v18;
      v17 += 88;
      v20 += 8;
    }

    while (v18 < *(v4 + 1));
  }

  if (*(v4 + 35) >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = (a3 + 120);
    v25 = 8;
    do
    {
      if (*v24)
      {
        v26 = (*v24 + v25 - 1);
      }

      else
      {
        v26 = (a3 + 120);
      }

      google::protobuf::DescriptorBuilder::CrossLinkField(this, (*(v4 + 12) + v22), *v26);
      ++v23;
      v22 += 88;
      v25 += 8;
    }

    while (v23 < *(v4 + 35));
  }

  v27 = *(v4 + 34);
  if (v27 >= 1)
  {
    v28 = (*(v4 + 11) + 8);
    do
    {
      if (!*v28)
      {
        *v28 = &google::protobuf::_ExtensionRangeOptions_default_instance_;
      }

      v28 += 5;
      --v27;
    }

    while (v27);
  }

  v83 = 0;
  v79 = a3;
  if (*(v4 + 1) >= 1)
  {
    v29 = 0;
    v30 = (a3 + 24);
    do
    {
      v31 = *(v4 + 7) + 88 * v29;
      if ((*(v31 + 1) & 0x10) == 0)
      {
        goto LABEL_40;
      }

      v32 = *(v31 + 40);
      v82 = v32;
      if (!v32)
      {
        goto LABEL_40;
      }

      if (*(v32 + 4) >= 1 && ((*(v31 - 87) & 0x10) == 0 || *(v31 - 48) != v32))
      {
        v33 = *(v4 + 1);
        v36 = *(v33 + 24);
        v34 = v33 + 24;
        v35 = v36;
        v37 = *(v34 + 8);
        if (*(v34 + 23) >= 0)
        {
          v38 = *(v34 + 23);
        }

        else
        {
          v34 = v35;
          v38 = v37;
        }

        v89 = v34;
        v90 = v38;
        v87 = ".";
        v88 = 1;
        v39 = *(v31 - 80);
        v40 = *(v39 + 23);
        v41 = v39[1];
        if ((v40 & 0x80u) != 0)
        {
          v39 = *v39;
          v40 = v41;
        }

        v85 = v39;
        v86 = v40;
        absl::lts_20240722::StrCat(&v89, &v87, &v85, &__p);
        v42 = (*v30 + 8 * v83 - 1);
        if ((*v30 & 1) == 0)
        {
          v42 = (a3 + 24);
        }

        v43 = *v42;
        v80[0] = &v84;
        v80[1] = &v83;
        v80[2] = &v82;
        google::protobuf::DescriptorBuilder::AddError(this, &__p, v43, 2, v80, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkMessage(google::protobuf::Descriptor *,google::protobuf::DescriptorProto const&)::$_0,std::string>);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v4 = v84;
        v32 = v82;
      }

      v44 = *(v4 + 8) + 56 * (-1227133513 * ((v32 - *(*(v32 + 16) + 64)) >> 3));
      v45 = *(v44 + 4);
      if (v45)
      {
        if ((*(this + 128) & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        *(v44 + 48) = *(v4 + 7) + 88 * v83;
        if ((*(this + 128) & 1) == 0)
        {
LABEL_60:
          v46 = *(v44 + 48) + 88 * v45;
          v47 = *(v4 + 7) + 88 * v83;
          if (v46 != v47)
          {
            google::protobuf::DescriptorBuilder::CrossLinkMessage(v46, v47);
          }
        }
      }

      *(v44 + 4) = v45 + 1;
      v29 = v83;
LABEL_40:
      v83 = ++v29;
    }

    while (v29 < *(v4 + 1));
  }

  if (*(v4 + 30) >= 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = (v79 + 144);
    v51 = 8;
    do
    {
      v52 = *(v4 + 8) + v48;
      if (*(v52 + 4))
      {
        goto LABEL_107;
      }

      v53 = *(v4 + 1);
      v56 = *(v53 + 24);
      v54 = v53 + 24;
      v55 = v56;
      v57 = *(v54 + 8);
      if (*(v54 + 23) >= 0)
      {
        v58 = *(v54 + 23);
      }

      else
      {
        v54 = v55;
        v58 = v57;
      }

      v89 = v54;
      v90 = v58;
      v87 = ".";
      v88 = 1;
      v59 = *(v52 + 8);
      v60 = *(v59 + 23);
      v61 = v59[1];
      if ((v60 & 0x80u) != 0)
      {
        v59 = *v59;
        v60 = v61;
      }

      v85 = v59;
      v86 = v60;
      absl::lts_20240722::StrCat(&v89, &v87, &v85, &__p);
      v62 = (*v50 & 1) != 0 ? (*v50 + v51 - 1) : (v79 + 144);
      google::protobuf::DescriptorBuilder::AddError(this, &__p, *v62, 0, "Oneof must have at least one field.");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!*(v52 + 24))
        {
          goto LABEL_77;
        }
      }

      else
      {
LABEL_107:
        if (!*(v52 + 24))
        {
LABEL_77:
          *(v52 + 24) = &google::protobuf::_OneofOptions_default_instance_;
        }
      }

      ++v49;
      v4 = v84;
      v48 += 56;
      v51 += 8;
    }

    while (v49 < *(v84 + 30));
  }

  if (*(v4 + 1) >= 1)
  {
    v63 = 0;
    v64 = 0;
    v65 = (v79 + 24);
    v66 = 8;
    do
    {
      v67 = *(v4 + 7);
      if ((*(v67 + v63 + 1) & 2) != 0 && ((*(v67 + v63 + 1) & 0x10) == 0 || (v68 = *(v67 + v63 + 40)) == 0 || *(v68 + 4) != 1 || (*(*(v68 + 48) + 1) & 2) == 0))
      {
        if (*v65)
        {
          v69 = (*v65 + v66 - 1);
        }

        else
        {
          v69 = (v79 + 24);
        }

        google::protobuf::DescriptorBuilder::AddError(this, (*(v4 + 1) + 24), *v69, 11, "Fields with proto3_optional set must be a member of a one-field oneof");
        v4 = v84;
      }

      ++v64;
      v66 += 8;
      v63 += 88;
    }

    while (v64 < *(v4 + 1));
  }

  LODWORD(v70) = *(v4 + 30);
  if (v70 >= 1)
  {
    v71 = 0;
    v72 = 0;
    v73 = (v79 + 144);
    v74 = -1;
    v75 = 8;
    do
    {
      v76 = *(v4 + 8) + v71;
      if (*(v76 + 4) == 1 && (*(*(v76 + 48) + 1) & 2) != 0)
      {
        if (v74 == -1)
        {
          v74 = v72;
        }
      }

      else if (v74 != -1)
      {
        if (*v73)
        {
          v77 = (*v73 + v75 - 1);
        }

        else
        {
          v77 = (v79 + 144);
        }

        google::protobuf::DescriptorBuilder::AddError(this, (*(v4 + 1) + 24), *v77, 11, "Synthetic oneofs must be after all other oneofs");
        v4 = v84;
      }

      ++v72;
      v70 = *(v4 + 30);
      v75 += 8;
      v71 += 56;
    }

    while (v72 < v70);
    if (v74 != -1)
    {
      LODWORD(v70) = v74;
    }
  }

  *(v4 + 31) = v70;
  v78 = *MEMORY[0x277D85DE8];
}

void sub_23CD88154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::DescriptorPool::Tables **this, google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v4 = a2;
  v104 = a2;
  if (*(a2 + 7))
  {
    if ((*(a3 + 16) & 2) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(a2 + 7) = &google::protobuf::_FieldOptions_default_instance_;
    if ((*(a3 + 16) & 2) == 0)
    {
      goto LABEL_39;
    }
  }

  v6 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(this, v6, *(a2 + 1) + 24, 0, 1);
  v8 = *v7;
  if (!*v7)
  {
    if (*(*this + 50) != 1)
    {
      goto LABEL_17;
    }

    v12 = *(v6 + 23);
    if (v12 < 0)
    {
      v13 = v6;
      v6 = *v6;
      v12 = *(v13 + 8);
    }

    v7 = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(*this, v6, v12, 2);
    v8 = *v7;
    if (!*v7)
    {
LABEL_17:
      v14 = (*(v4 + 1) + 24);
      v15 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFCLL;

      google::protobuf::DescriptorBuilder::AddNotDefinedError(this, v14, a3, 3, v15);
      return;
    }
  }

  if (v8 != 1)
  {
    v16 = *(v4 + 1);
    v108.__r_.__value_.__r.__words[0] = a3;
    google::protobuf::DescriptorBuilder::AddError(this, (v16 + 24), a3, 3, &v108, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_0,std::string>);
    return;
  }

  *(v4 + 4) = v7;
  v9 = *(v7 + 34);
  if (v9 < 1)
  {
LABEL_22:
    if (*(*this + 50) != 1)
    {
      goto LABEL_38;
    }

    v17 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFCLL;
    if ((*(v17 + 23) & 0x80000000) == 0 || *(v17 + 8) != 33)
    {
      goto LABEL_38;
    }

    v18 = *v17;
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = *(v18 + 32);
    v24 = v19 == 0x702E656C676F6F67 && v20 == 0x2E6675626F746F72;
    v25 = v24 && v21 == 0x4D2E656764697262;
    v26 = v25 && v22 == 0x6553656761737365;
    if (!v26 || v23 != 116)
    {
LABEL_38:
      v28 = *(v4 + 1);
      v108.__r_.__value_.__r.__words[0] = &v104;
      google::protobuf::DescriptorBuilder::AddError(this, (v28 + 24), a3, 1, &v108, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_1,std::string>);
      v4 = v104;
    }
  }

  else
  {
    v10 = *(v4 + 1);
    v11 = (*(v7 + 11) + 4);
    while (*(v11 - 1) > v10 || *v11 <= v10)
    {
      v11 += 10;
      if (!--v9)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_39:
  if ((*(v4 + 1) & 0x10) != 0 && (*(v4 + 1) & 0x60) != 0x20 && *(v4 + 5) != 0)
  {
    google::protobuf::DescriptorBuilder::AddError(this, (*(v4 + 1) + 24), a3, 0, "Fields of oneofs must themselves have label LABEL_OPTIONAL.");
  }

  v30 = *(a3 + 4);
  if ((v30 & 4) == 0)
  {
    v31 = v104;
    v32 = *(v104 + 3);
    v33 = v104;
    if (v32)
    {
      v108.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v105 = v104;
      if (atomic_load_explicit(v32, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v32, 1, &v108, &v105);
      }

      v33 = v104;
    }

    if ((*(v31 + 2) & 0xFE) == 0xA)
    {
      goto LABEL_55;
    }

    v34 = *(v33 + 3);
    if (!v34 || (v108.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v105 = v33, atomic_load_explicit(v34, memory_order_acquire) == 221))
    {
      if (*(v33 + 2) != 14)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    }

    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v34, 1, &v108, &v105);
    if (*(v33 + 2) == 14)
    {
LABEL_54:
      v33 = v104;
LABEL_55:
      v35 = *(v33 + 1);
      v36 = "Field with message or enum type missing type_name.";
LABEL_56:
      v37 = (v35 + 24);
      v38 = this;
      v39 = a3;
      v40 = 2;
LABEL_57:
      google::protobuf::DescriptorBuilder::AddError(v38, v37, v39, v40, v36);
    }

LABEL_58:
    if (google::protobuf::FileDescriptorTables::AddFieldByNumber(this[21], v104))
    {
      if ((*(v104 + 1) & 8) != 0)
      {
        v41 = this[1];
        v42 = *(v104 + 1);
        v105 = *(v104 + 4);
        LODWORD(v106) = v42;
        p_FieldByNumber = v104;
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::insert_unique<std::pair<google::protobuf::Descriptor const*,int>,std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>(v41 + 264, &v105, &v105, &v108);
        if (v108.__r_.__value_.__s.__data_[16] == 1)
        {
          v43 = v108.__r_.__value_.__r.__words[0] + 24 * v108.__r_.__value_.__s.__data_[8];
          v44 = v41 + 392;
LABEL_62:
          std::vector<std::pair<google::protobuf::Descriptor const*,int>>::push_back[abi:ne200100](v44, (v43 + 16));
          return;
        }

        v108.__r_.__value_.__r.__words[0] = this;
        v108.__r_.__value_.__l.__size_ = &v104;
        google::protobuf::DescriptorBuilder::AddWarning(this, (*(v104 + 1) + 24), a3, 1, &v108, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_8,std::string>);
      }

      return;
    }

    FieldByNumber = google::protobuf::FileDescriptorTables::FindFieldByNumber(this[21], *(v104 + 4), *(v104 + 1));
    v48 = *(v104 + 4);
    if (v48)
    {
      v49 = *(v48 + 8);
      if ((*(v49 + 47) & 0x80000000) == 0)
      {
        v108 = *(v49 + 24);
        v50 = *(v104 + 1);
        if ((*(v104 + 1) & 8) != 0)
        {
          goto LABEL_98;
        }

LABEL_95:
        v105 = &v104;
        v106 = &v108;
        p_FieldByNumber = &FieldByNumber;
        google::protobuf::DescriptorBuilder::AddError(this, (v50 + 24), a3, 1, &v105, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_7,std::string>);
        goto LABEL_99;
      }

      std::string::__init_copy_ctor_external(&v108, *(v49 + 24), *(v49 + 32));
      v50 = *(v104 + 1);
      if ((*(v104 + 1) & 8) == 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      *(&v108.__r_.__value_.__s + 23) = 7;
      strcpy(&v108, "unknown");
      v50 = *(v104 + 1);
      if ((*(v104 + 1) & 8) == 0)
      {
        goto LABEL_95;
      }
    }

LABEL_98:
    v105 = &v104;
    v106 = &v108;
    p_FieldByNumber = &FieldByNumber;
    google::protobuf::DescriptorBuilder::AddError(this, (v50 + 24), a3, 1, &v105, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_6,std::string>);
LABEL_99:
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    return;
  }

  v45 = (v30 >> 3) & 1;
  if (*(a3 + 22) == 14)
  {
    v46 = 1;
  }

  else
  {
    v46 = v45;
  }

  if (*(*this + 51))
  {
    v47 = 0;
  }

  else
  {
    v51 = *(a3 + 8);
    if (!v51)
    {
      v51 = &google::protobuf::_FieldOptions_default_instance_;
    }

    v47 = *(v51 + 132);
  }

  v52 = *(*this + 49) & (v47 ^ 1);
  v53 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  Symbol = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(this, v53, *(v104 + 1) + 24, 1, ((v52 & 1) == 0));
  v57 = *Symbol;
  if (*Symbol)
  {
    goto LABEL_76;
  }

  if (*(*this + 50) == 1)
  {
    v60 = *(v53 + 23);
    if (v60 < 0)
    {
      v61 = v53;
      v53 = *v53;
      v60 = *(v61 + 8);
    }

    Symbol = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(*this, v53, v60, v46);
    v57 = *Symbol;
    if (*Symbol)
    {
LABEL_76:
      v58 = v104;
      if ((*(a3 + 17) & 4) == 0)
      {
        if (v57 == 1)
        {
          v59 = 11;
        }

        else
        {
          if (v57 != 4)
          {
            v81 = *(v104 + 1);
            v108.__r_.__value_.__r.__words[0] = a3;
            v82 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_2,std::string>;
            goto LABEL_148;
          }

          v59 = 14;
        }

        *(v104 + 2) = v59;
      }

      v75 = *(v58 + 3);
      if (v75 && (v108.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v105 = v58, atomic_load_explicit(v75, memory_order_acquire) != 221))
      {
        v86 = Symbol;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v75, 1, &v108, &v105);
        Symbol = v86;
        if ((*(v58 + 2) & 0xFE) == 0xA)
        {
          goto LABEL_106;
        }
      }

      else if ((*(v58 + 2) & 0xFE) == 0xA)
      {
LABEL_106:
        v76 = *Symbol;
        v77 = v76 == 1;
        if (v76 == 1)
        {
          v78 = Symbol;
        }

        else
        {
          v78 = 0;
        }

        v79 = v104;
        *(v104 + 6) = v78;
        if (!v77)
        {
          v81 = *(v79 + 1);
          v108.__r_.__value_.__r.__words[0] = a3;
          v82 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_3,std::string>;
LABEL_148:
          google::protobuf::DescriptorBuilder::AddError(this, (v81 + 24), a3, 2, &v108, v82);
          return;
        }

        if ((*(v79 + 1) & 1) == 0)
        {
          goto LABEL_58;
        }

        v80 = *(v79 + 1);
        v36 = "Messages can't have default values.";
LABEL_113:
        v37 = (v80 + 24);
        v38 = this;
        v39 = a3;
        v40 = 4;
        goto LABEL_57;
      }

      v87 = v104;
      v88 = *(v104 + 3);
      if (v88 && (v108.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v105 = v104, atomic_load_explicit(v88, memory_order_acquire) != 221))
      {
        v102 = Symbol;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v88, 1, &v108, &v105);
        Symbol = v102;
        if (*(v87 + 2) == 14)
        {
LABEL_130:
          v89 = *Symbol;
          v90 = v89 == 4;
          if (v89 == 4)
          {
            v91 = Symbol;
          }

          else
          {
            v91 = 0;
          }

          v92 = v104;
          *(v104 + 6) = v91;
          if (!v90)
          {
            v81 = *(v92 + 1);
            v108.__r_.__value_.__r.__words[0] = a3;
            v82 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_4,std::string>;
            goto LABEL_148;
          }

          v93 = *(v92 + 3);
          if (v93)
          {
            v108.__r_.__value_.__r.__words[0] = v92;
            if (atomic_load_explicit(v93, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v93, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v108);
            }

            Symbol = *(v92 + 6);
            v92 = v104;
          }

          if (Symbol[1])
          {
            *(v92 + 1) &= ~1u;
            v92 = v104;
          }

          if ((*(v92 + 1) & 1) == 0)
          {
            if (*(google::protobuf::FieldDescriptor::enum_type(v92) + 4) >= 1)
            {
              v101 = google::protobuf::FieldDescriptor::enum_type(v104);
              *(v104 + 10) = *(v101 + 56);
            }

            goto LABEL_58;
          }

          if (!google::protobuf::io::Tokenizer::IsIdentifier((*(a3 + 6) & 0xFFFFFFFFFFFFFFFCLL)))
          {
            v80 = *(v104 + 1);
            v36 = "Default value for an enum field must be an identifier.";
            goto LABEL_113;
          }

          v94 = *(a3 + 6);
          v95 = google::protobuf::FieldDescriptor::enum_type(v104);
          v96 = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(this, (v94 & 0xFFFFFFFFFFFFFFFCLL), *(v95 + 8) + 24, 0, 1);
          v97 = v96;
          v98 = *v96;
          if (v98 != 5)
          {
            if (v98 != 6)
            {
              goto LABEL_147;
            }

            v97 = v96 - 1;
          }

          v99 = *(v97 + 2);
          if (v99 == google::protobuf::FieldDescriptor::enum_type(v104))
          {
            *(v104 + 10) = v97;
            goto LABEL_58;
          }

LABEL_147:
          v100 = *(v104 + 1);
          v108.__r_.__value_.__r.__words[0] = &v104;
          v108.__r_.__value_.__l.__size_ = a3;
          google::protobuf::DescriptorBuilder::AddError(this, (v100 + 24), a3, 4, &v108, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_5,std::string>);
          goto LABEL_58;
        }
      }

      else if (*(v87 + 2) == 14)
      {
        goto LABEL_130;
      }

      v35 = *(v104 + 1);
      v36 = "Field with primitive type has type_name.";
      goto LABEL_56;
    }
  }

  if ((v52 & 1) == 0)
  {
    if ((v47 & 1) == 0)
    {
      goto LABEL_119;
    }

    *(&v108.__r_.__value_.__s + 23) = 21;
    strcpy(&v108, "google.protobuf.Empty");
    Symbol = google::protobuf::DescriptorBuilder::FindSymbol(this, &v108, 1uLL, v55, v56);
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      v83 = Symbol;
      operator delete(v108.__r_.__value_.__l.__data_);
      Symbol = v83;
    }

    v57 = *Symbol;
    if (!*Symbol)
    {
LABEL_119:
      google::protobuf::DescriptorBuilder::AddNotDefinedError(this, (*(v104 + 1) + 24), a3, 2, *(a3 + 5) & 0xFFFFFFFFFFFFFFFCLL);
      return;
    }

    goto LABEL_76;
  }

  v62 = (*(a3 + 5) & 0xFFFFFFFFFFFFFFFCLL);
  v63 = *(v62 + 23);
  if ((v63 & 0x8000000000000000) != 0)
  {
    v63 = v62[1];
  }

  v64 = v63 + 1;
  v65 = *(a3 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  v66 = *(v65 + 23);
  if (v66 < 0)
  {
    v66 = *(v65 + 8);
  }

  Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(this[1], v64 + v66 + 5);
  *Bytes = 0;
  v68 = Bytes + 1;
  *(v104 + 3) = Bytes;
  v69 = *(v62 + 23);
  if ((v69 & 0x8000000000000000) == 0)
  {
    memcpy(Bytes + 1, v62, v69 + 1);
    v70 = *(v62 + 23);
    if ((v70 & 0x8000000000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  memcpy(Bytes + 1, *v62, v62[1] + 1);
  v70 = *(v62 + 23);
  if ((v70 & 0x8000000000000000) != 0)
  {
LABEL_91:
    v70 = v62[1];
  }

LABEL_92:
  v71 = v68 + v70;
  v72 = *(a3 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  v73 = *(v72 + 23);
  if (v73 < 0)
  {
    v74 = *v72;
    v73 = *(v72 + 8);
  }

  else
  {
    v74 = (*(a3 + 6) & 0xFFFFFFFFFFFFFFFCLL);
  }

  memcpy(v71 + 1, v74, v73 + 1);
  google::protobuf::FileDescriptorTables::AddFieldByNumber(this[21], v104);
  if ((*(v104 + 1) & 8) != 0)
  {
    v84 = this[1];
    v85 = *(v104 + 1);
    v105 = *(v104 + 4);
    LODWORD(v106) = v85;
    p_FieldByNumber = v104;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::insert_unique<std::pair<google::protobuf::Descriptor const*,int>,std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>(v84 + 264, &v105, &v105, &v108);
    if (v108.__r_.__value_.__s.__data_[16] == 1)
    {
      v43 = v108.__r_.__value_.__r.__words[0] + 24 * v108.__r_.__value_.__s.__data_[8];
      v44 = v84 + 392;
      goto LABEL_62;
    }
  }
}

void sub_23CD88C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CheckExtensionDeclarationFieldType(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, size_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 128))
  {
    goto LABEL_71;
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v36 = a2;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v38, &v36);
    }
  }

  v11 = (&google::protobuf::FieldDescriptor::kTypeToName)[*(a2 + 2)];
  v12 = strlen(v11);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  if (v12)
  {
    memmove(&__dst, v11, v12);
  }

  __dst.__r_.__value_.__s.__data_[v16] = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = a5;
  if (a5)
  {
    memmove(&__p, a4, a5);
    __p.__r_.__value_.__s.__data_[a5] = 0;
    v17 = *(a2 + 24);
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    v17 = *(a2 + 24);
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  v38 = a2;
  if (atomic_load_explicit(v17, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v17, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v38);
  }

LABEL_20:
  v18 = *(a2 + 2);
  v19 = *(a2 + 48);
  if ((v18 & 0xFE) == 0xA && v19)
  {
    if (*(a1 + 128))
    {
      goto LABEL_69;
    }
  }

  else
  {
    v20 = *(a2 + 24);
    if (v20)
    {
      v38 = a2;
      if (atomic_load_explicit(v20, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v38);
      }

      v18 = *(a2 + 2);
      v19 = *(a2 + 48);
    }

    if (v18 != 14 || !v19)
    {
      goto LABEL_49;
    }

    LOBYTE(v18) = 14;
    if (*(a1 + 128))
    {
      goto LABEL_69;
    }
  }

  v21 = *(a2 + 24);
  if (v21)
  {
    v38 = a2;
    if (atomic_load_explicit(v21, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v38);
    }

    LOBYTE(v18) = *(a2 + 2);
    v19 = *(a2 + 48);
  }

  v22 = *(a2 + 24);
  if ((v18 & 0xFE) == 0xA && v19)
  {
    if (v22)
    {
      v38 = a2;
      if (atomic_load_explicit(v22, memory_order_acquire) != 221)
      {
LABEL_42:
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v22, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v38);
      }
    }
  }

  else if (v22)
  {
    v38 = a2;
    if (atomic_load_explicit(v22, memory_order_acquire) != 221)
    {
      goto LABEL_42;
    }
  }

  v23 = *(*(a2 + 48) + 8);
  v24 = *(v23 + 47);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v25 = *(v23 + 24);
    v24 = *(v23 + 32);
  }

  else
  {
    v25 = (v23 + 24);
  }

  v38 = ".";
  p_p = 1;
  v36 = v25;
  v37 = v24;
  absl::lts_20240722::StrCat(&v38, &v36, &v33);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  __dst = v33;
LABEL_49:
  {
    v38 = ".";
    p_p = 1;
    v36 = a4;
    v37 = a5;
    absl::lts_20240722::StrCat(&v38, &v36, &v33);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v33;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __dst.__r_.__value_.__l.__size_;
  }

  if (size != v27 || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v28 = &__p) : (v28 = __p.__r_.__value_.__r.__words[0]), (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v29 = &__dst) : (v29 = __dst.__r_.__value_.__r.__words[0]), memcmp(v28, v29, size)))
  {
    v30 = *(a2 + 8);
    v38 = a2;
    p_p = &__p;
    p_dst = &__dst;
    google::protobuf::DescriptorBuilder::AddError(a1, (v30 + 24), a3, 3, &v38, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckExtensionDeclarationFieldType(google::protobuf::FieldDescriptor const&,google::protobuf::FieldDescriptorProto const&,std::string_view)::$_0,std::string>);
  }

LABEL_69:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_71:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  v32 = *MEMORY[0x277D85DE8];
}

void sub_23CD891A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::anonymous namespace::IsNonMessageType(absl::lts_20240722::hash_internal::MixingHashState *__s2, size_t __n, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2810C1A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C1A60))
  {
    operator new();
  }

  v7 = qword_2810C1A58;
  if (*qword_2810C1A58 > 1uLL)
  {
    _X8 = *(qword_2810C1A58 + 16);
    __asm { PRFM            #4, [X8] }

    v16 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, __s2, __n, a4, a5);
    v17 = 0;
    v18 = (((v16 + __n) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v16 + __n));
    v19 = v7[2];
    v20 = *v7;
    v21 = vdup_n_s8(v18 & 0x7F);
    v22 = ((v18 >> 7) ^ (v19 >> 12)) & *v7;
    v23 = *(v19 + v22);
    v24 = vceq_s8(v23, v21);
    if (!v24)
    {
      goto LABEL_11;
    }

LABEL_7:
    v25 = v7[3];
    do
    {
      v26 = v25 + 16 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v20);
      if (*(v26 + 8) == __n && !memcmp(*v26, __s2, __n))
      {
        result = v19 != 0;
        v28 = *MEMORY[0x277D85DE8];
        return result;
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v24);
LABEL_11:
    while (!*&vceq_s8(v23, 0x8080808080808080))
    {
      v17 += 8;
      v22 = (v17 + v22) & v20;
      v23 = *(v19 + v22);
      v24 = vceq_s8(v23, v21);
      if (v24)
      {
        goto LABEL_7;
      }
    }
  }

  else if (*(qword_2810C1A58 + 8) >= 2uLL && *(qword_2810C1A58 + 24) == __n)
  {
    result = memcmp(*(qword_2810C1A58 + 16), __s2, __n) == 0;
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = 0;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD89488(_Unwind_Exception *a1)
{
  MEMORY[0x23EED9460](v1, 0x1082C4091D7F878);
  __cxa_guard_abort(&qword_2810C1A60);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::CheckExtensionDeclaration(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, _BYTE *a6, size_t a7, int a8)
{
  v33 = *MEMORY[0x277D85DE8];
  v28[0] = a4;
  v28[1] = a5;
  v27 = a8;
  if (a7)
  {
    google::protobuf::DescriptorBuilder::CheckExtensionDeclarationFieldType(a1, a2, a3, a6, a7);
  }

  if (a5)
  {
    v30 = ".";
    v31 = 1;
    v14 = *(a2 + 8);
    v17 = *(v14 + 24);
    v15 = v14 + 24;
    v16 = v17;
    v18 = *(v15 + 8);
    if (*(v15 + 23) >= 0)
    {
      v19 = *(v15 + 23);
    }

    else
    {
      v15 = v16;
      v19 = v18;
    }

    v29[0] = v15;
    v29[1] = v19;
    absl::lts_20240722::StrCat(&v30, v29, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (a5 != size || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v22 = &__p) : (v22 = __p.__r_.__value_.__r.__words[0]), memcmp(a4, v22, a5)))
    {
      v23 = *(a2 + 8);
      v30 = a2;
      v31 = v28;
      p_p = &__p;
      google::protobuf::DescriptorBuilder::AddError(a1, (v23 + 24), a3, 3, &v30, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckExtensionDeclaration(google::protobuf::FieldDescriptor const&,google::protobuf::FieldDescriptorProto const&,std::string_view,std::string_view,BOOL)::$_0,std::string>);
      v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v21 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((((~*(a2 + 1) & 0x60) != 0) ^ a8))
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  if (((((~*(a2 + 1) & 0x60) != 0) ^ a8) & 1) == 0)
  {
LABEL_17:
    v24 = *(a2 + 8);
    v30 = a2;
    v31 = &v27;
    google::protobuf::DescriptorBuilder::AddError(a1, (v24 + 24), a3, 3, &v30, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckExtensionDeclaration(google::protobuf::FieldDescriptor const&,google::protobuf::FieldDescriptorProto const&,std::string_view,std::string_view,BOOL)::$_1,std::string>);
  }

LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_23CD896B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CrossLinkMethod(google::protobuf::DescriptorBuilder *this, google::protobuf::MethodDescriptor *a2, const google::protobuf::MethodDescriptorProto *a3)
{
  if (!*(a2 + 7))
  {
    *(a2 + 7) = &google::protobuf::_MethodOptions_default_instance_;
  }

  v6 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(this, v6, *(a2 + 1) + 24, 0, ((*(*this + 49) & 1) == 0));
  v8 = *v7;
  if (*v7)
  {
    goto LABEL_4;
  }

  v9 = *this;
  if (*(*this + 50) == 1)
  {
    v10 = *(v6 + 23);
    if (v10 < 0)
    {
      v7 = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(v9, *v6, *(v6 + 8), 0);
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(v9, v6, v10, 0);
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }
    }

LABEL_4:
    if (v8 == 1)
    {
      if (*(a2 + 4))
      {
        google::protobuf::DescriptorBuilder::CrossLinkMethod(v24);
      }

      *(a2 + 3) = v7;
    }

    else
    {
      v11 = *(a2 + 1);
      v24[0] = a3;
      google::protobuf::DescriptorBuilder::AddError(this, (v11 + 24), a3, 5, v24, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkMethod(google::protobuf::MethodDescriptor *,google::protobuf::MethodDescriptorProto const&)::$_0,std::string>);
    }

    goto LABEL_18;
  }

LABEL_13:
  if (*(*this + 49))
  {
    v12 = *(a3 + 4);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 23);
    if ((v14 & 0x8000000000000000) != 0)
    {
      v13 = *v13;
      v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    google::protobuf::internal::LazyDescriptor::SetLazy(a2 + 3, v13, v14, *(this + 20));
  }

  else
  {
    google::protobuf::DescriptorBuilder::AddNotDefinedError(this, (*(a2 + 1) + 24), a3, 5, *(a3 + 4) & 0xFFFFFFFFFFFFFFFCLL);
  }

LABEL_18:
  v15 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(this, v15, *(a2 + 1) + 24, 0, ((*(*this + 49) & 1) == 0));
  v17 = *v16;
  if (*v16)
  {
    goto LABEL_19;
  }

  v18 = *this;
  if (*(*this + 50) == 1)
  {
    v19 = *(v15 + 23);
    if (v19 < 0)
    {
      v16 = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(v18, *v15, *(v15 + 8), 0);
      v17 = *v16;
      if (!*v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(v18, v15, v19, 0);
      v17 = *v16;
      if (!*v16)
      {
        goto LABEL_28;
      }
    }

LABEL_19:
    if (v17 == 1)
    {
      if (*(a2 + 6))
      {
        google::protobuf::DescriptorBuilder::CrossLinkMethod(v24);
      }

      *(a2 + 5) = v16;
    }

    else
    {
      v20 = *(a2 + 1);
      v24[0] = a3;
      google::protobuf::DescriptorBuilder::AddError(this, (v20 + 24), a3, 6, v24, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkMethod(google::protobuf::MethodDescriptor *,google::protobuf::MethodDescriptorProto const&)::$_1,std::string>);
    }

    return;
  }

LABEL_28:
  if (*(*this + 49))
  {
    v21 = *(a3 + 5);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    v23 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 23);
    if ((v23 & 0x8000000000000000) != 0)
    {
      v22 = *v22;
      v23 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    google::protobuf::internal::LazyDescriptor::SetLazy(a2 + 5, v22, v23, *(this + 20));
  }

  else
  {
    google::protobuf::DescriptorBuilder::AddNotDefinedError(this, (*(a2 + 1) + 24), a3, 6, *(a3 + 5) & 0xFFFFFFFFFFFFFFFCLL);
  }
}

void *google::protobuf::internal::LazyDescriptor::SetLazy(void *a1, const void *a2, size_t a3, uint64_t a4)
{
  if (*a1)
  {
    google::protobuf::internal::LazyDescriptor::SetLazy(v11);
  }

  if (a1[1])
  {
    google::protobuf::internal::LazyDescriptor::SetLazy(v11);
  }

  if (!a4 || (v5 = *(a4 + 24)) == 0)
  {
    google::protobuf::internal::LazyDescriptor::SetLazy(v11);
  }

  if ((*(v5 + 49) & 1) == 0)
  {
    google::protobuf::internal::LazyDescriptor::SetLazy(v11);
  }

  if (*(a4 + 2) == 1)
  {
    google::protobuf::internal::LazyDescriptor::SetLazy(v11);
  }

  Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(*(v5 + 40), a3 + 5);
  *Bytes = 0;
  v9 = Bytes + 1;
  a1[1] = Bytes;
  result = memcpy(Bytes + 1, a2, a3);
  *(v9 + a3) = 0;
  return result;
}

void google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::DescriptorBuilder *this, uint64_t **a2, const google::protobuf::FileDescriptorProto *a3, unint64_t a4, const unint64_t *a5)
{
  v6 = a2;
  v29 = a2;
  if (*(a2 + 8) >= 1000)
  {
    if (*(a2[18] + 12) == 3)
    {
      google::protobuf::DescriptorBuilder::AddError(this, a2[1], a3, 10, "Required presence can't be specified by default.");
    }

    if (*(v6[16] + 162) == 1)
    {
      google::protobuf::DescriptorBuilder::AddError(this, v6[1], a3, 10, "File option java_string_check_utf8 is not allowed under editions. Use the (pb.java).utf8_validation feature to control this behavior.");
    }
  }

  v8 = v6[16];
  if (v8 == &google::protobuf::_FileOptions_default_instance_ || *(v8 + 42) != 3)
  {
    v28 = 0;
    if (*(v6 + 12) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = v6[5];
        if (v10 && (v27[0] = v6, atomic_load_explicit(v10, memory_order_acquire) != 221))
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v10, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, v27);
          v11 = v6[9][v9];
          if (!v11)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v11 = v6[9][v9];
          if (!v11)
          {
            goto LABEL_10;
          }
        }

        v12 = *(v11 + 128);
        if (v12 != &google::protobuf::_FileOptions_default_instance_ && *(v12 + 168) == 3)
        {
          v13 = v29;
          v14 = v28;
          v15 = v29[5];
          if (v15)
          {
            v27[0] = v29;
            if (atomic_load_explicit(v15, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v15, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, v27);
            }
          }

          v16 = *(v13[9][v14] + 8);
          v27[0] = &v29;
          v27[1] = &v28;
          google::protobuf::DescriptorBuilder::AddError(this, v16, a3, 9, v27, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::FileDescriptor const*,google::protobuf::FileDescriptorProto const&)::$_0,std::string>);
          v6 = v29;
          break;
        }

LABEL_10:
        v9 = v28 + 1;
        v28 = v9;
        v6 = v29;
      }

      while (v9 < *(v29 + 12));
    }
  }

  if (*(v6 + 8) == 999)
  {
    if (*(v6 + 1) >= 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = (a3 + 120);
      v20 = 8;
      do
      {
        if (*v19)
        {
          v21 = (*v19 + v20 - 1);
        }

        else
        {
          v21 = (a3 + 120);
        }

        google::protobuf::DescriptorBuilder::ValidateProto3Field(this, &v6[15][v17], *v21, a4, a5);
        ++v18;
        v20 += 8;
        v17 += 11;
      }

      while (v18 < *(v6 + 1));
    }

    if (*(v6 + 15) >= 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = (a3 + 48);
      v25 = 8;
      do
      {
        if (*v24)
        {
          v26 = (*v24 + v25 - 1);
        }

        else
        {
          v26 = v24;
        }

        google::protobuf::DescriptorBuilder::ValidateProto3Message(this, &v6[12][v22], *v26, a4, a5);
        ++v23;
        v25 += 8;
        v22 += 19;
      }

      while (v23 < *(v6 + 15));
    }
  }
}

void google::protobuf::DescriptorBuilder::ValidateProto3Field(google::protobuf::DescriptorBuilder *this, const google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3, unint64_t a4, const unint64_t *a5)
{
  v6 = a2;
  v45 = a2;
  if ((*(a2 + 1) & 8) == 0)
  {
LABEL_30:
    if (*(*(v6 + 9) + 48) != 3)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v8 = *(*(a2 + 4) + 8);
  if ((atomic_load_explicit(&qword_2810C1A70, memory_order_acquire) & 1) == 0)
  {
    v43 = __cxa_guard_acquire(&qword_2810C1A70);
    if (v43)
    {
    }
  }

  v9 = qword_2810C1A68;
  _X8 = *(qword_2810C1A68 + 16);
  __asm { PRFM            #4, [X8] }

  v16 = *(v8 + 47);
  if (v16 >= 0)
  {
    v17 = (v8 + 24);
  }

  else
  {
    v17 = *(v8 + 24);
  }

  if (v16 >= 0)
  {
    v18 = *(v8 + 47);
  }

  else
  {
    v18 = *(v8 + 32);
  }

  v19 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v17, v18, a4, a5);
  v20 = 0;
  v21 = (((v19 + v18) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v19 + v18));
  v22 = v9[2];
  v23 = *v9;
  v24 = (v21 >> 7) ^ (v22 >> 12);
  v25 = vdup_n_s8(v21 & 0x7F);
  v26 = *(v8 + 47);
  if (v26 >= 0)
  {
    v27 = *(v8 + 47);
  }

  else
  {
    v27 = *(v8 + 32);
  }

  if (v26 >= 0)
  {
    v28 = (v8 + 24);
  }

  else
  {
    v28 = *(v8 + 24);
  }

  v29 = v24 & v23;
  v30 = *(v22 + (v24 & v23));
  v31 = vceq_s8(v30, v25);
  if (v31)
  {
LABEL_16:
    v32 = v9[3];
    v44 = v20;
    while (1)
    {
      v33 = v32 + 24 * ((v29 + (__clz(__rbit64(v31)) >> 3)) & v23);
      v34 = *(v33 + 23);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v33 + 8);
      }

      if (v34 == v27)
      {
        v36 = v35 >= 0 ? v33 : *v33;
        if (!memcmp(v36, v28, v27))
        {
          break;
        }
      }

      v31 &= ((v31 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v20 = v44;
      if (!v31)
      {
        goto LABEL_25;
      }
    }

    if (v22)
    {
      v6 = v45;
      goto LABEL_30;
    }
  }

  else
  {
LABEL_25:
    while (!*&vceq_s8(v30, 0x8080808080808080))
    {
      v20 += 8;
      v29 = (v20 + v29) & v23;
      v30 = *(v22 + v29);
      v31 = vceq_s8(v30, v25);
      if (v31)
      {
        goto LABEL_16;
      }
    }
  }

  v6 = v45;
  google::protobuf::DescriptorBuilder::AddError(this, (*(v45 + 1) + 24), a3, 3, "Extensions in proto3 are only allowed for defining options.");
  if (*(*(v45 + 9) + 48) != 3)
  {
LABEL_31:
    if ((*(v6 + 1) & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_36:
    google::protobuf::DescriptorBuilder::AddError(this, (*(v6 + 1) + 24), a3, 4, "Explicit default values are not allowed in proto3.");
    v37 = *(v6 + 3);
    if (!v37)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_35:
  google::protobuf::DescriptorBuilder::AddError(this, (*(v6 + 1) + 24), a3, 2, "Required fields are not allowed in proto3.");
  if (*(v6 + 1))
  {
    goto LABEL_36;
  }

LABEL_32:
  v37 = *(v6 + 3);
  if (!v37)
  {
LABEL_38:
    if (*(v6 + 2) != 14)
    {
      goto LABEL_47;
    }

    goto LABEL_39;
  }

LABEL_37:
  v46 = v6;
  v47 = google::protobuf::FieldDescriptor::TypeOnceInit;
  if (atomic_load_explicit(v37, memory_order_acquire) == 221)
  {
    goto LABEL_38;
  }

  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v37, 1, &v47, &v46);
  if (*(v6 + 2) != 14)
  {
    goto LABEL_47;
  }

LABEL_39:
  v38 = *(v45 + 3);
  if (v38 && (v47 = v45, atomic_load_explicit(v38, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v38, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v47);
    if (*(v45 + 2) != 14)
    {
      goto LABEL_47;
    }
  }

  else if (*(v45 + 2) != 14)
  {
    goto LABEL_47;
  }

  if (*(v45 + 6))
  {
    v39 = *(v45 + 3);
    if (v39)
    {
      v47 = v45;
      if (atomic_load_explicit(v39, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v39, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v47);
        if (*(*(*(v45 + 6) + 48) + 52) != 2)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    if (*(*(*(v45 + 6) + 48) + 52) == 2)
    {
LABEL_46:
      v40 = *(v45 + 1);
      v47 = &v45;
      google::protobuf::DescriptorBuilder::AddError(this, (v40 + 24), a3, 2, &v47, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateProto3Field(google::protobuf::FieldDescriptor const*,google::protobuf::FieldDescriptorProto const&)::$_0,std::string>);
    }
  }

LABEL_47:
  v41 = v45;
  v42 = *(v45 + 3);
  if (!v42 || (v46 = v45, v47 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v42, memory_order_acquire) == 221))
  {
    if (*(v41 + 2) != 10)
    {
      return;
    }

    goto LABEL_50;
  }

  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v42, 1, &v47, &v46);
  if (*(v41 + 2) == 10)
  {
LABEL_50:
    google::protobuf::DescriptorBuilder::AddError(this, (*(v45 + 1) + 24), a3, 2, "Groups are not supported in proto3 syntax.");
  }
}

void google::protobuf::DescriptorBuilder::ValidateProto3Message(google::protobuf::DescriptorBuilder *this, const google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3, unint64_t a4, const unint64_t *a5)
{
  if (*(a2 + 32) >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = (a3 + 48);
    v11 = 8;
    do
    {
      if (*v10)
      {
        v12 = (*v10 + v11 - 1);
      }

      else
      {
        v12 = (a3 + 48);
      }

      google::protobuf::DescriptorBuilder::ValidateProto3Message(this, (*(a2 + 9) + v8), *v12);
      ++v9;
      v8 += 152;
      v11 += 8;
    }

    while (v9 < *(a2 + 32));
  }

  if (*(a2 + 1) >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = (a3 + 24);
    v16 = 8;
    do
    {
      if (*v15)
      {
        v17 = (*v15 + v16 - 1);
      }

      else
      {
        v17 = (a3 + 24);
      }

      google::protobuf::DescriptorBuilder::ValidateProto3Field(this, (*(a2 + 7) + v13), *v17, a4, a5);
      ++v14;
      v13 += 88;
      v16 += 8;
    }

    while (v14 < *(a2 + 1));
  }

  if (*(a2 + 35) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = (a3 + 120);
    v21 = 8;
    do
    {
      if (*v20)
      {
        v22 = (*v20 + v21 - 1);
      }

      else
      {
        v22 = (a3 + 120);
      }

      google::protobuf::DescriptorBuilder::ValidateProto3Field(this, (*(a2 + 12) + v18), *v22, a4, a5);
      ++v19;
      v18 += 88;
      v21 += 8;
    }

    while (v19 < *(a2 + 35));
  }

  if (*(a2 + 34) > 0)
  {
    v23 = (a3 + 96);
    v24 = *(a3 + 12);
    if (v24)
    {
      v23 = (v24 + 7);
    }

    google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), *v23, 1, "Extension ranges are not allowed in proto3.");
  }

  if (*(*(a2 + 4) + 80) == 1)
  {
    v25 = (*(a2 + 1) + 24);

    google::protobuf::DescriptorBuilder::AddError(this, v25, a3, 0, "MessageSet is not supported in proto3.");
  }
}

void google::protobuf::DescriptorBuilder::ValidateExtensionRangeOptions(google::protobuf::DescriptorBuilder *this, const google::protobuf::DescriptorProto *a2, const google::protobuf::Descriptor *a3, unint64_t a4, const unint64_t *a5)
{
  v5 = 0x1FFFFFFFLL;
  if (*(*(a3 + 4) + 80))
  {
    v5 = 0x7FFFFFFFLL;
  }

  v28 = v5;
  v6 = *(a3 + 34);
  if (v6 <= 0)
  {
    return;
  }

  v10 = 0;
  v11 = *(a3 + 11) + 8;
  do
  {
    if (*v11)
    {
      v10 += *(*v11 + 56);
    }

    v11 += 40;
    --v6;
  }

  while (v6);
  v26 = xmmword_23CE306D0;
  if (v10 >= 2)
  {
    if (v10 == 7)
    {
      v12 = 15;
    }

    else
    {
      v14 = (v10 - 1) / 7 + v10;
      v13 = v14 == 0;
      v15 = 0xFFFFFFFFFFFFFFFFLL >> __clz(v14);
      if (v13)
      {
        v12 = 1;
      }

      else
      {
        v12 = v15;
      }
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::resize_impl(&v26, v12, a3, a4, a5);
  }

  v16 = 0;
  v17 = 0;
  v18 = (a2 + 96);
  v19 = 8;
  while (1)
  {
    v21 = *(a3 + 11) + v16;
    if (v28 + 1 < *(v21 + 4))
    {
      v22 = *(a3 + 1);
      v25 = &v28;
      google::protobuf::DescriptorBuilder::AddError(this, (v22 + 24), a2, 1, &v25, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionRangeOptions(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const&)::$_0,std::string>);
    }

    v23 = *(v21 + 8);
    if (!*(v23 + 56))
    {
      goto LABEL_20;
    }

    if ((*(v23 + 40) & 2) != 0 && *(v23 + 104) == 1)
    {
      break;
    }

    if (*v18)
    {
      v20 = (*v18 + v19 - 1);
    }

    else
    {
      v20 = (a2 + 96);
    }

    google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(this, (*(a3 + 1) + 24), v23 + 48, *v20, &v26);
LABEL_20:
    ++v17;
    v19 += 8;
    v16 += 40;
    if (v17 >= *(a3 + 34))
    {
      goto LABEL_30;
    }
  }

  if (*v18)
  {
    v24 = (*v18 + v19 - 1);
  }

  else
  {
    v24 = (a2 + 96);
  }

  google::protobuf::DescriptorBuilder::AddError(this, (*(a3 + 1) + 24), *v24, 3, &v25, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionRangeOptions(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const&)::$_1,std::string>);
LABEL_30:
  if (v26 >= 2)
  {
    operator delete((v27 - (BYTE8(v26) & 1) - 8));
  }
}

void sub_23CD8A5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a11 >= 2)
  {
    operator delete((a13 - (a12 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::DescriptorBuilder *this, atomic_uint **a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v4 = a2;
  v76 = *MEMORY[0x277D85DE8];
  v73 = a2;
  if (*(*this + 49) == 1)
  {
    if (!a2)
    {
      goto LABEL_142;
    }

    v6 = a2[3];
    if (v6)
    {
      __p.__r_.__value_.__r.__words[0] = a2;
      if (atomic_load_explicit(v6, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &__p);
      }
    }

    if ((*(v4 + 2) & 0xFE) != 0xA || !*(v4 + 6))
    {
      goto LABEL_142;
    }

    v4 = v73;
  }

  google::protobuf::DescriptorBuilder::ValidateFieldFeatures(this, v4, a3);
  if (*(*(v4 + 2) + 32) >= 1000 && (*(*(v4 + 7) + 40) & 2) != 0)
  {
    v7 = *(v4 + 3);
    if (v7)
    {
      __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v74 = v4;
      if (atomic_load_explicit(v7, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, &__p, &v74);
      }
    }

    v8 = *(v4 + 2);
    if (v8 != 9 && v8 != 12)
    {
      v9 = (*(v73 + 1) + 24);
      v74 = v9;
      v75 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
      absl::lts_20240722::str_format_internal::FormatPack("Field %s specifies ctype, but is not a string nor bytes field.", 62, &v74, 1uLL, &__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      google::protobuf::DescriptorBuilder::AddError(this, v9, a3, 2, v10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v4 = v73;
    if (*(*(v73 + 7) + 120) == 1 && (*(v73 + 1) & 8) != 0)
    {
      v11 = (*(v73 + 1) + 24);
      v74 = v11;
      v75 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
      absl::lts_20240722::str_format_internal::FormatPack("Extension %s specifies ctype=CORD which is not supported for extensions.", 72, &v74, 1uLL, &__p);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      google::protobuf::DescriptorBuilder::AddError(this, v11, a3, 2, v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v13 = *(v4 + 7);
  if ((*(v13 + 129) & 1) == 0 && *(v13 + 130) != 1)
  {
    v15 = v4;
    if (*(*(v4 + 7) + 128) != 1)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  v14 = *(v4 + 3);
  v15 = v4;
  if (v14)
  {
    __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v74 = v4;
    if (atomic_load_explicit(v14, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v14, 1, &__p, &v74);
    }

    v15 = v73;
  }

  if (*(v4 + 2) != 11)
  {
    google::protobuf::DescriptorBuilder::AddError(this, (*(v15 + 1) + 24), a3, 2, "[lazy = true] can only be specified for submessage fields.");
  }

  if (*(*(v15 + 7) + 128) == 1)
  {
LABEL_39:
    if ((~*(v15 + 1) & 0x60) != 0)
    {
      goto LABEL_45;
    }

    v16 = *(v15 + 3);
    v17 = v15;
    if (v16)
    {
      __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v74 = v15;
      if (atomic_load_explicit(v16, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, &__p, &v74);
      }

      v17 = v73;
    }

    v18 = *(v15 + 2) - 13;
    v15 = v17;
    if (v18 >= 0xFFFFFFFC)
    {
LABEL_45:
      google::protobuf::DescriptorBuilder::AddError(this, (*(v15 + 1) + 24), a3, 2, "[packed = true] can only be specified for repeated primitive fields.");
    }
  }

LABEL_46:
  v19 = *(v15 + 4);
  if (v19)
  {
    v20 = *(v19 + 32);
    if (v20 != &google::protobuf::_MessageOptions_default_instance_ && *(v20 + 80) == 1)
    {
      if ((*(v15 + 1) & 8) != 0)
      {
        if ((*(v15 + 1) & 0x60) != 0x20)
        {
          goto LABEL_57;
        }

        v21 = *(v15 + 3);
        v22 = v15;
        if (v21)
        {
          __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v74 = v15;
          if (atomic_load_explicit(v21, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, &__p, &v74);
          }

          v22 = v73;
        }

        v23 = *(v15 + 2);
        v15 = v22;
        if (v23 != 11)
        {
LABEL_57:
          google::protobuf::DescriptorBuilder::AddError(this, (*(v15 + 1) + 24), a3, 2, "Extensions of MessageSets must be optional messages.");
        }
      }

      else
      {
        google::protobuf::DescriptorBuilder::AddError(this, (*(v15 + 1) + 24), a3, 0, "MessageSets cannot have fields, only extensions.");
      }
    }
  }

  v24 = *(v15 + 2);
  if (v24)
  {
    v25 = *(v24 + 128);
    if (v25 != &google::protobuf::_FileOptions_default_instance_ && *(v25 + 168) == 3)
    {
      v26 = *(v15 + 4);
      if (v26)
      {
        v27 = *(v26 + 16);
        if (!v27 || (v28 = *(v27 + 128), v28 == &google::protobuf::_FileOptions_default_instance_) || *(v28 + 168) != 3)
        {
          google::protobuf::DescriptorBuilder::AddError(this, (*(v15 + 1) + 24), a3, 3, "Extensions to non-lite types can only be declared in non-lite files.  Note that you cannot extend a non-lite type to contain a lite type, but the reverse is allowed.");
        }
      }
    }
  }

  v29 = *(v15 + 3);
  if (v29)
  {
    __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v74 = v15;
    if (atomic_load_explicit(v29, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v29, 1, &__p, &v74);
    }
  }

  if (*(v15 + 2) == 11)
  {
    v30 = v73;
    if (*(*(*(v15 + 6) + 32) + 83) == 1 && (google::protobuf::DescriptorBuilder::ValidateMapEntry(this, v73, a3) & 1) == 0)
    {
      google::protobuf::DescriptorBuilder::AddError(this, (*(v30 + 1) + 24), a3, 2, "map_entry should not be set explicitly. Use map<KeyType, ValueType> instead.");
    }
  }

  else
  {
    v30 = v73;
  }

  google::protobuf::DescriptorBuilder::ValidateJSType(this, v30, a3);
  if ((~*(v30 + 1) & 0xC) == 0)
  {
    v34 = *(v30 + 1);
    v35 = *(v30 + 3);
    memset(&__p, 0, sizeof(__p));
    if ((v34[23] & 0x80u) == 0)
    {
      v36 = v34[23];
    }

    else
    {
      v36 = *(v34 + 1);
    }

    std::string::reserve(&__p, v36);
    v37 = v34[23];
    if (v37 >= 0)
    {
      v38 = v34;
    }

    else
    {
      v38 = *v34;
    }

    if (v37 >= 0)
    {
      v39 = v34[23];
    }

    else
    {
      v39 = *(v34 + 1);
    }

    if (v39)
    {
      v40 = 0;
      do
      {
        v41 = *v38;
        v42 = v41 == 95;
        if (v41 != 95)
        {
          if (v40)
          {
            LOBYTE(v41) = absl::lts_20240722::ascii_internal::kToUpper[v41];
          }

          std::string::push_back(&__p, v41);
        }

        ++v38;
        v40 = v42;
        --v39;
      }

      while (v39);
    }

    v43 = &v34[24 * ((v35 >> 4) & 7)];
    v44 = *(v43 + 23);
    if (v44 >= 0)
    {
      v45 = *(v43 + 23);
    }

    else
    {
      v45 = v43[1];
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v47 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v45 == size)
    {
      if (v44 >= 0)
      {
        v48 = v43;
      }

      else
      {
        v48 = *v43;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v31 = memcmp(v48, p_p, v45);
      v50 = v31 != 0;
      if ((v47 & 0x80000000) == 0)
      {
LABEL_104:
        if (!v50)
        {
          goto LABEL_109;
        }

LABEL_108:
        google::protobuf::DescriptorBuilder::AddError(this, (*(v30 + 1) + 24), a3, 7, "option json_name is not allowed on extension fields.");
        goto LABEL_109;
      }
    }

    else
    {
      v50 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v50)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_109:
  v51 = *(v30 + 1);
  v52 = (v51 + 24 * ((*(v30 + 3) >> 4) & 7));
  v53 = v52[23];
  if ((v53 & 0x8000000000000000) != 0)
  {
    v52 = *v52;
    v53 = *(v51 + 24 * ((*(v30 + 3) >> 4) & 7) + 8);
    if (!v53)
    {
      goto LABEL_118;
    }
  }

  else if (!v52[23])
  {
    goto LABEL_118;
  }

  v31 = memchr(v52, 0, v53);
  if (v31)
  {
    v54 = v31 - v52 == -1;
  }

  else
  {
    v54 = 1;
  }

  if (!v54)
  {
    google::protobuf::DescriptorBuilder::AddError(this, (v51 + 24), a3, 7, "json_name cannot have embedded null characters.");
  }

LABEL_118:
  if ((*(v30 + 1) & 8) != 0 && !google::protobuf::DescriptorPool::IsExtendingDescriptor(v31, v30, v53, v32, v33))
  {
    v55 = *(v30 + 1);
      ;
    }

    v57 = *i;
    if (*i)
    {
      if (*(*this + 52) == 1)
      {
        v58 = *(v57 + 48);
        v59 = (v58 + 7);
        if ((v58 & 1) == 0)
        {
          v59 = (v57 + 48);
        }

        v60 = *(v57 + 56);
        if (v60)
        {
          v61 = 8 * v60;
          while (1)
          {
            v62 = *v59;
            if (*(*v59 + 40) == v55)
            {
              break;
            }

            ++v59;
            v61 -= 8;
            if (!v61)
            {
              goto LABEL_134;
            }
          }

          if (*(v62 + 44) == 1)
          {
            v64 = *(v30 + 1);
            __p.__r_.__value_.__r.__words[0] = &v73;
            google::protobuf::DescriptorBuilder::AddError(this, (v64 + 24), a3, 3, &__p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::FieldDescriptor const*,google::protobuf::FieldDescriptorProto const&)::$_0,std::string>);
          }

          else
          {
            v65 = *(v62 + 24);
            v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
            v67 = *((v65 & 0xFFFFFFFFFFFFFFFCLL) + 23);
            if ((v67 & 0x8000000000000000) != 0)
            {
              v66 = *v66;
              v67 = *((v65 & 0xFFFFFFFFFFFFFFFCLL) + 8);
            }

            v68 = *(v62 + 32);
            v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
            v70 = *((v68 & 0xFFFFFFFFFFFFFFFCLL) + 23);
            if ((v70 & 0x8000000000000000) != 0)
            {
              v69 = *v69;
              v70 = *((v68 & 0xFFFFFFFFFFFFFFFCLL) + 8);
            }

            google::protobuf::DescriptorBuilder::CheckExtensionDeclaration(this, v30, a3, v66, v67, v69, v70, *(v62 + 45));
          }
        }

        else if (!*(v57 + 104))
        {
LABEL_134:
          v63 = *(v30 + 1);
          __p.__r_.__value_.__r.__words[0] = &v73;
          google::protobuf::DescriptorBuilder::AddError(this, (v63 + 24), a3, 3, &__p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::FieldDescriptor const*,google::protobuf::FieldDescriptorProto const&)::$_1,std::string>);
        }
      }
    }
  }

LABEL_142:
  v71 = *MEMORY[0x277D85DE8];
}

void sub_23CD8AE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ValidateFieldFeatures(google::protobuf::DescriptorBuilder *this, const google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  if (*(*(a2 + 2) + 32) < 1000)
  {
    return;
  }

  if (*(a3 + 21) == 2)
  {
    google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Required label is not allowed under editions.  Use the feature field_presence = LEGACY_REQUIRED to control this behavior.");
    if (*(a3 + 22) != 10)
    {
LABEL_4:
      if ((*(*(a2 + 7) + 40) & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Field option packed is not allowed under editions.  Use the repeated_field_encoding feature to control this behavior.");
      if ((*(a2 + 1) & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else if (*(a3 + 22) != 10)
  {
    goto LABEL_4;
  }

  google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Group types are not allowed under editions.  Use the feature message_encoding = DELIMITED to control this behavior.");
  if ((*(*(a2 + 7) + 40) & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((*(a2 + 1) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(*(a2 + 9) + 48) == 2)
  {
    google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Implicit presence fields can't specify defaults.");
  }

LABEL_12:
  v6 = *(a2 + 3);
  if (v6 && (v28 = a2, atomic_load_explicit(v6, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v28);
    if (*(a2 + 2) != 14)
    {
      goto LABEL_23;
    }
  }

  else if (*(a2 + 2) != 14)
  {
    goto LABEL_23;
  }

  v7 = *(a2 + 6);
  if (v7)
  {
    v8 = *(a2 + 3);
    if (v8)
    {
      v28 = a2;
      if (atomic_load_explicit(v8, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v28);
      }

      v7 = *(a2 + 6);
    }

    if (*(*(v7 + 48) + 52) != 1 && *(*(a2 + 9) + 48) == 2)
    {
      google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Implicit presence enum fields must always be open.");
    }
  }

LABEL_23:
  if ((*(a2 + 1) & 8) != 0 && *(*(a2 + 9) + 48) == 3)
  {
    google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Extensions can't be required.");
  }

  v9 = *(a2 + 4);
  if (!v9 || (*(*(v9 + 32) + 83) & 1) == 0)
  {
    v10 = *(a2 + 8);
    if (*(v10 + 40))
    {
      v11 = *(a2 + 1);
      if ((v11 & 0x10) != 0 && *(a2 + 5))
      {
        v12 = "Oneof fields can't specify field presence.";
LABEL_34:
        google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, v12);
        goto LABEL_35;
      }

      if ((~v11 & 0x60) == 0)
      {
        v12 = "Repeated fields can't specify field presence.";
        goto LABEL_34;
      }

      if ((v11 & 8) != 0 && *(v10 + 48) != 3)
      {
        v12 = "Extensions can't specify field presence.";
        goto LABEL_34;
      }

      v26 = *(a2 + 3);
      if (v26 && (v28 = a2, atomic_load_explicit(v26, memory_order_acquire) != 221))
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v26, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v28);
        if ((*(a2 + 2) & 0xFE) != 0xA)
        {
          goto LABEL_35;
        }
      }

      else if ((*(a2 + 2) & 0xFE) != 0xA)
      {
        goto LABEL_35;
      }

      if (*(a2 + 6) && *(*(a2 + 8) + 48) == 2)
      {
        v12 = "Message fields can't specify implicit presence.";
        goto LABEL_34;
      }
    }

LABEL_35:
    if ((~*(a2 + 1) & 0x60) != 0 && (*(*(a2 + 8) + 40) & 4) != 0)
    {
      google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Only repeated fields can specify repeated field encoding.");
    }

    v13 = *(a2 + 3);
    if (v13 && (v27 = a2, v28 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v13, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v13, 1, &v28, &v27);
      v14 = *(a2 + 2);
      if (v14 == 9)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = *(a2 + 2);
      if (v14 == 9)
      {
        goto LABEL_62;
      }
    }

    v15 = *(a2 + 3);
    if (v15)
    {
      v27 = a2;
      v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v15, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v28, &v27);
      }

      v14 = *(a2 + 2);
    }

    if (v14 == 11 && *(*(*(a2 + 6) + 32) + 83) == 1)
    {
      v16 = 0;
      v17 = -1;
      do
      {
        v18 = *(a2 + 3);
        if (v18 && (v28 = a2, atomic_load_explicit(v18, memory_order_acquire) != 221))
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v18, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v28);
          v19 = *(a2 + 6);
          if (++v17 >= *(v19 + 4))
          {
            goto LABEL_60;
          }
        }

        else
        {
          v19 = *(a2 + 6);
          if (++v17 >= *(v19 + 4))
          {
            goto LABEL_60;
          }
        }

        v20 = *(a2 + 3);
        if (v20)
        {
          v28 = a2;
          if (atomic_load_explicit(v20, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v28);
          }

          v19 = *(a2 + 6);
        }

        v21 = *(v19 + 56);
        v22 = v21 + v16;
        v23 = *(v21 + v16 + 24);
        if (v23)
        {
          v27 = (v21 + v16);
          v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v23, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v23, 1, &v28, &v27);
          }
        }

        v16 += 88;
      }

      while (*(v22 + 2) != 9);
    }

    else
    {
LABEL_60:
      if ((*(*(a2 + 8) + 40) & 8) != 0)
      {
        google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Only string fields can specify utf8 validation.");
      }
    }

LABEL_62:
    if ((~*(a2 + 1) & 0x60) == 0)
    {
      v24 = *(a2 + 3);
      if (v24 && (v27 = a2, v28 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v24, memory_order_acquire) != 221))
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v24, 1, &v28, &v27);
        if (*(a2 + 2) - 13 < 0xFFFFFFFC)
        {
          goto LABEL_68;
        }
      }

      else if (*(a2 + 2) - 13 < 0xFFFFFFFC)
      {
        goto LABEL_68;
      }
    }

    if (*(*(a2 + 8) + 56) == 1)
    {
      google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Only repeated primitive fields can specify PACKED repeated field encoding.");
    }

LABEL_68:
    v25 = *(a2 + 3);
    if (v25 && (v27 = a2, v28 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v25, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v25, 1, &v28, &v27);
      if ((*(a2 + 2) & 0xFE) == 0xA)
      {
LABEL_71:
        if (*(*(*(a2 + 6) + 32) + 83) != 1)
        {
          return;
        }
      }
    }

    else if ((*(a2 + 2) & 0xFE) == 0xA)
    {
      goto LABEL_71;
    }

    if ((*(*(a2 + 8) + 40) & 0x10) != 0)
    {
      google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 0, "Only message fields can specify message encoding.");
    }
  }
}

uint64_t google::protobuf::DescriptorBuilder::ValidateMapEntry(google::protobuf::DescriptorBuilder *this, const google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 3);
  if (v6)
  {
    v27[0] = a2;
    if (atomic_load_explicit(v6, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, google::protobuf::FieldDescriptor::TypeOnceInit, v27);
    }
  }

  if ((*(a2 + 2) & 0xFE) == 0xA)
  {
    v7 = *(a2 + 6);
    if (*(v7 + 140))
    {
      goto LABEL_45;
    }
  }

  else
  {
    v7 = 0;
    if (MEMORY[0x8C])
    {
      goto LABEL_45;
    }
  }

  if ((~*(a2 + 1) & 0x60) != 0 || *(v7 + 136) || *(v7 + 128) || *(v7 + 132) || *(v7 + 4) != 2)
  {
    goto LABEL_45;
  }

  v8 = *(v7 + 8);
  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v27[0] = v10;
  v27[1] = size;
  v26[0] = "Entry";
  v26[1] = 5;
  absl::lts_20240722::StrCat(v27, v26, &__p);
  v11 = std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, &__p) || *(a2 + 4) != *(v7 + 24);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    operator delete(v24.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_45;
    }

    goto LABEL_27;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (v11)
  {
    goto LABEL_45;
  }

LABEL_27:
  if (*(*(v7 + 32) + 83) == 1)
  {
    v12 = *(v7 + 56);
    v13 = v12 + 88;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if ((*(v12 + 1) & 0x60) != 0x20 || *(v12 + 4) != 1)
  {
    goto LABEL_45;
  }

  v14 = *(v12 + 8);
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    if (*(v14 + 1) == 3)
    {
      v14 = *v14;
      goto LABEL_37;
    }

LABEL_45:
    result = 0;
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v15 != 3)
  {
    goto LABEL_45;
  }

LABEL_37:
  v16 = *v14;
  v17 = *(v14 + 2);
  if (v16 != 25963 || v17 != 121)
  {
    goto LABEL_45;
  }

  if ((*(v13 + 1) & 0x60) != 0x20)
  {
    goto LABEL_45;
  }

  v23 = v13;
  if (*(v13 + 4) != 2 || std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*(v13 + 8), "value"))
  {
    goto LABEL_45;
  }

  v21 = google::protobuf::FieldDescriptor::type(v12) - 1;
  if (v21 <= 0xD && ((0x2E03u >> v21) & 1) != 0)
  {
    google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 2, off_278BC40C0[v21]);
  }

  if (google::protobuf::FieldDescriptor::type(v23) == 14)
  {
    if (*(*(google::protobuf::FieldDescriptor::enum_type(v23) + 56) + 4))
    {
      google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 2, "Enum value in map must define 0 as the first value.");
    }
  }

  result = 1;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD8B840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ValidateJSType(google::protobuf::DescriptorBuilder *this, const google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v12 = *(*(a2 + 7) + 124);
  if (v12)
  {
    v3 = *(a2 + 3);
    if (v3)
    {
      v13 = a2;
      v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v3, memory_order_acquire) != 221)
      {
        v10 = this;
        v11 = a3;
        v9 = a2;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, &v14, &v13);
        a2 = v9;
        this = v10;
        a3 = v11;
      }
    }

    v4 = *(a2 + 2);
    v5 = v4 > 0x12;
    v6 = (1 << v4) & 0x50058;
    if (v5 || v6 == 0)
    {
      google::protobuf::DescriptorBuilder::AddError(this, (*(a2 + 1) + 24), a3, 2, "jstype is only allowed on int64, uint64, sint64, fixed64 or sfixed64 fields.");
    }

    else if ((v12 - 1) >= 2)
    {
      v8 = *(a2 + 1);
      v14 = &v12;
      google::protobuf::DescriptorBuilder::AddError(this, (v8 + 24), a3, 2, &v14, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateJSType(google::protobuf::FieldDescriptor const*,google::protobuf::FieldDescriptorProto const&)::$_0,std::string>);
    }
  }
}

void google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::DescriptorBuilder *this, const google::protobuf::EnumDescriptor *a2, const google::protobuf::EnumDescriptorProto *a3)
{
  v4 = a2;
  v20 = a2;
  google::protobuf::DescriptorBuilder::CheckEnumValueUniqueness(this, a3, a2);
  if (*(*(v4 + 6) + 52) != 2 && *(v4 + 1) >= 1 && *(*(v4 + 7) + 4))
  {
    v6 = (a3 + 24);
    v7 = *(a3 + 3);
    if (v7)
    {
      v6 = (v7 + 7);
    }

    google::protobuf::DescriptorBuilder::AddError(this, (*(v4 + 1) + 24), *v6, 1, "The first enum value must be zero for open enums.");
  }

  v8 = *(v4 + 4);
  if ((*(v8 + 40) & 2) == 0 || (*(v8 + 80) & 1) == 0)
  {
    v19[0] = 0;
    v19[1] = 0;
    v19[2] = &unk_23CE31C20;
    if (*(v4 + 1) >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = (a3 + 24);
      v12 = 8;
      do
      {
        v18 = *(v4 + 7) + v9;
        v16 = *(v18 + 4);
        v13 = *(v18 + 8);
        v15[0] = v19;
        absl::lts_20240722::container_internal::memory_internal::DecomposePairImpl<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::EmplaceDecomposable,int &&,std::tuple<std::string const&>>(v15, &v16, (v13 + 24), v17);
        v4 = v20;
        if ((v17[16] & 1) == 0 && (*(*(v20 + 4) + 80) & 1) == 0)
        {
          v15[0] = &v20;
          v15[1] = &v18;
          v15[2] = v17;
          if (*v11)
          {
            v14 = (*v11 + v12 - 1);
          }

          else
          {
            v14 = (a3 + 24);
          }

          google::protobuf::DescriptorBuilder::AddError(this, (*(v20 + 1) + 24), *v14, 1, v15, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::EnumDescriptor const*,google::protobuf::EnumDescriptorProto const&)::$_0,std::string>);
          v4 = v20;
        }

        ++v10;
        v12 += 8;
        v9 += 48;
      }

      while (v10 < *(v4 + 1));
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::~raw_hash_set(v19);
  }
}

void sub_23CD8BB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::~raw_hash_set(va);
  _Unwind_Resume(a1);
}

void sub_23CD8BB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::~raw_hash_set(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v75 = xmmword_23CE306D0;
  if (*a3)
  {
    v5 = *a3 + 7;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a3 + 8);
  if (!v6)
  {
    goto LABEL_92;
  }

  v7 = a5;
  v8 = a4;
  v9 = a2;
  v10 = a1;
  v11 = v5 + 8 * v6;
  v66 = v11;
  while (1)
  {
    v12 = *v5;
    v13 = *(*v5 + 40);
    if (v13 < *(v8 + 32) || v13 >= *(v8 + 36))
    {
      __p.__r_.__value_.__r.__words[0] = *v5;
      google::protobuf::DescriptorBuilder::AddError(v10, v9, v8, 1, &__p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_0,std::string>);
      v13 = *(v12 + 40);
    }

    LODWORD(v71.__r_.__value_.__l.__data_) = v13;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v75, &v71, &__p);
    if (__p.__r_.__value_.__s.__data_[16] == 1)
    {
      *__p.__r_.__value_.__l.__size_ = v71.__r_.__value_.__l.__data_;
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = v12;
      google::protobuf::DescriptorBuilder::AddError(v10, v9, v8, 1, &__p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_1,std::string>);
    }

    if ((~*(v12 + 16) & 3) != 0)
    {
      if (((*(v12 + 16) ^ ((*(v12 + 16) & 2u) >> 1)) & 1) != 0 || (*(v12 + 44) & 1) == 0)
      {
        __p.__r_.__value_.__r.__words[0] = v12;
        google::protobuf::DescriptorBuilder::AddError(v10, v9, v8, 3, &__p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_2,std::string>);
      }

      goto LABEL_7;
    }

    v17 = *(v12 + 24) & 0xFFFFFFFFFFFFFFFCLL;
    if (*v7 > 1)
    {
      break;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<std::string>(v7, (*(v12 + 24) & 0xFFFFFFFFFFFFFFFCLL), v15, v16, &__p);
    if ((__p.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_44:
    size = __p.__r_.__value_.__l.__size_;
    v46 = *(v17 + 23);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v17;
    }

    else
    {
      v47 = *v17;
    }

    if ((v46 & 0x80u) != 0)
    {
      v46 = *(v17 + 8);
    }

    *__p.__r_.__value_.__l.__size_ = v47;
    *(size + 8) = v46;
    if ((__p.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      goto LABEL_91;
    }

    v48 = *(v12 + 24);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    v50 = *((v48 & 0xFFFFFFFFFFFFFFFCLL) + 23);
    v8 = a4;
    v10 = a1;
    if (v50 < 0)
    {
      v49 = *v49;
      v50 = *((v48 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    v9 = a2;
    v7 = a5;
    v54 = v74;
    if (v74 == 1)
    {
      v71.__r_.__value_.__s.__data_[0] = 0;
      v72 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v71, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v71 = __p;
      }

      v72 = 1;
      google::protobuf::DescriptorBuilder::AddError(a1, a2, a4, 0, &v71, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_4,std::string>);
      if (v72 == 1 && SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }
    }

    v55 = *(v12 + 32);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    v57 = *((v55 & 0xFFFFFFFFFFFFFFFCLL) + 23);
    if ((v57 & 0x8000000000000000) != 0)
    {
      v56 = *v56;
      v57 = *((v55 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    {
      v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (v54)
      {
        goto LABEL_88;
      }

      goto LABEL_90;
    }

    v59 = *(v12 + 32);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    v61 = *((v59 & 0xFFFFFFFFFFFFFFFCLL) + 23);
    if (v61 < 0)
    {
      v60 = *v60;
      v61 = *((v59 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    v62 = v72;
    if (v54 != v72)
    {
      if (v54)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v54 = 0;
        v74 = 0;
LABEL_76:
        if (!v62)
        {
          goto LABEL_79;
        }
      }

      else
      {
        __p = v71;
        memset(&v71, 0, sizeof(v71));
        v54 = 1;
        v74 = 1;
        if (!v72)
        {
          goto LABEL_79;
        }
      }

LABEL_77:
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      goto LABEL_79;
    }

    if (!v54)
    {
      goto LABEL_76;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v71;
    *(&v71.__r_.__value_.__s + 23) = 0;
    v71.__r_.__value_.__s.__data_[0] = 0;
    v54 = 1;
    if (v62)
    {
      goto LABEL_77;
    }

LABEL_79:
    if (v54)
    {
      v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v71.__r_.__value_.__s.__data_[0] = 0;
      v72 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v71, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v71 = __p;
      }

      v72 = 1;
      google::protobuf::DescriptorBuilder::AddError(a1, a2, a4, 0, &v71, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_5,std::string>);
      if (v72 == 1 && SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

LABEL_88:
      if (v58 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_90:
    v11 = v66;
LABEL_7:
    v5 += 8;
    if (v5 == v11)
    {
      goto LABEL_92;
    }
  }

  _X8 = v7[2];
  __asm { PRFM            #4, [X8] }

  v23 = *(v17 + 23);
  if (v23 >= 0)
  {
    v24 = (*(v12 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v24 = *v17;
  }

  if (v23 >= 0)
  {
    v25 = *(v17 + 23);
  }

  else
  {
    v25 = *(v17 + 8);
  }

  v26 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v24, v25, v15, v16);
  v27 = 0;
  v28 = (((v26 + v25) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v26 + v25));
  v29 = vdup_n_s8(v28 & 0x7F);
  v30 = *v7;
  v31 = *(v17 + 23);
  _NF = v31 < 0;
  if (v31 >= 0)
  {
    v33 = *(v17 + 23);
  }

  else
  {
    v33 = *(v17 + 8);
  }

  v35 = v7[2];
  v34 = v7[3];
  v36 = (v35 >> 12) ^ (v28 >> 7);
  if (_NF)
  {
    v37 = *v17;
  }

  else
  {
    v37 = v17;
  }

  v38 = v36 & v30;
  v39 = *(v35 + (v36 & v30));
  v40 = vceq_s8(v39, v29);
  if (!v40)
  {
LABEL_40:
    while (1)
    {
      v42 = vceq_s8(v39, 0x8080808080808080);
      if (v42)
      {
        break;
      }

      v27 += 8;
      v38 = (v27 + v38) & v30;
      v39 = *(v35 + v38);
      v40 = vceq_s8(v39, v29);
      if (v40)
      {
        goto LABEL_36;
      }
    }

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a5, v28, (v38 + (__clz(__rbit64(v42)) >> 3)) & v30, v27, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::GetPolicyFunctions(void)::value);
    v44 = a5[3] + 16 * inserted;
    __p.__r_.__value_.__r.__words[0] = a5[2] + inserted;
    __p.__r_.__value_.__l.__size_ = v44;
    __p.__r_.__value_.__s.__data_[16] = 1;
    goto LABEL_44;
  }

LABEL_36:
  v64 = v34;
  v65 = v27;
  while (1)
  {
    v41 = v34 + 16 * ((v38 + (__clz(__rbit64(v40)) >> 3)) & v30);
    if (*(v41 + 8) == v33 && !memcmp(*v41, v37, v33))
    {
      break;
    }

    v40 &= ((v40 & 0x8080808080808080) - 1) & 0x8080808080808080;
    v34 = v64;
    v27 = v65;
    if (!v40)
    {
      goto LABEL_40;
    }
  }

LABEL_91:
  v63 = *(v12 + 24);
  __p.__r_.__value_.__r.__words[0] = v12;
  google::protobuf::DescriptorBuilder::AddError(a1, (v63 & 0xFFFFFFFFFFFFFFFCLL), a4, 0, &__p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_3,std::string>);
LABEL_92:
  if (v75 >= 2)
  {
    operator delete((v76 - (BYTE8(v75) & 1) - 8));
  }
}

void sub_23CD8C140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 160) >= 2uLL)
  {
    operator delete((*(v35 - 144) - (*(v35 - 152) & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

const void **google::protobuf::anonymous namespace::ValidateSymbolForDeclaration(const void **result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = result;
  v18 = *MEMORY[0x277D85DE8];
  if (a3 && *a2 == 46)
  {
    v4 = 0;
    v5 = &a2[a3];
    v6 = a2;
    do
    {
      while (1)
      {
        v7 = *v6;
        if ((v7 & 0xFFFFFFDF) - 65 < 0x1A)
        {
          break;
        }

        if (v7 == 95 || (v7 - 48) < 0xA)
        {
          break;
        }

        if (!(v4 & 1 | (v7 != 46)))
        {
          ++v6;
          v4 = 1;
          if (v6 != v5)
          {
            continue;
          }
        }

        v16 = "";
        v17 = 1;
        v14 = a2;
        v15 = a3;
        v12 = " contains invalid identifiers.";
        v13 = 31;
        result = absl::lts_20240722::StrCat(&v16, &v14, &v12, &v11);
        goto LABEL_15;
      }

      v4 = 0;
      ++v6;
    }

    while (v6 != v5);
    *result = 0;
    *(result + 24) = 0;
    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = "";
    v17 = 1;
    v14 = a2;
    v15 = a3;
    v12 = " must have a leading dot to indicate the fully-qualified scope.";
    v13 = 64;
    result = absl::lts_20240722::StrCat(&v16, &v14, &v12, &v11);
LABEL_15:
    *v3 = v11;
    v3[1].__r_.__value_.__s.__data_[0] = 1;
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void google::protobuf::anonymous namespace::ToCamelCase(std::string *a1, unsigned __int8 *a2, char a3)
{
  v4 = a2;
  v5 = a1;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if ((a2[23] & 0x80u) == 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  std::string::reserve(a1, v6);
  v7 = *(v4 + 1);
  if ((v4[23] & 0x80u) == 0)
  {
    v8 = v4[23];
  }

  else
  {
    v4 = *v4;
    v8 = v7;
  }

  if (v8)
  {
    v9 = a3 ^ 1;
    do
    {
      v10 = *v4;
      v11 = v10 == 95;
      if (v10 != 95)
      {
        if (v9)
        {
          LOBYTE(v10) = absl::lts_20240722::ascii_internal::kToUpper[v10];
        }

        std::string::push_back(v5, v10);
      }

      ++v4;
      v9 = v11;
      --v8;
    }

    while (v8);
  }

  if (a3)
  {
    if ((SHIBYTE(v5->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!*(&v5->__r_.__value_.__s + 23))
      {
        return;
      }

LABEL_20:
      v5->__r_.__value_.__s.__data_[0] = absl::lts_20240722::ascii_internal::kToLower[v5->__r_.__value_.__s.__data_[0]];
      return;
    }

    if (v5->__r_.__value_.__l.__size_)
    {
      v5 = v5->__r_.__value_.__r.__words[0];
      goto LABEL_20;
    }
  }
}

void sub_23CD8C44C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 1;
    }

    return memcmp(a1, __s, v4) != 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) != 0;
  }

  return 1;
}

void *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,google::protobuf::anonymous namespace::DescriptorsByNameHash<google::protobuf::Descriptor>,google::protobuf::anonymous namespace::DescriptorsByNameEq<google::protobuf::Descriptor>,std::allocator<google::protobuf::Descriptor const*>>::find<std::string>(uint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  if (*a1 > 1)
  {
    _X8 = a1[2];
    __asm { PRFM            #4, [X8] }

    LODWORD(_X8) = *(a2 + 23);
    _NF = _X8 < 0;
    if (_X8 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (_NF)
    {
      v17 = a2[1];
    }

    else
    {
      v17 = *(a2 + 23);
    }

    v18 = a2;
    v19 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v16, v17, a4, a5);
    v20 = 0;
    v21 = (((v19 + v17) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v19 + v17));
    v22 = a1[2];
    v23 = *a1;
    v24 = (v21 >> 7) ^ (v22 >> 12);
    v25 = vdup_n_s8(v21 & 0x7F);
    v26 = *(v18 + 23);
    if (v26 >= 0)
    {
      v27 = v18;
    }

    else
    {
      v27 = *v18;
    }

    if (v26 >= 0)
    {
      v28 = *(v18 + 23);
    }

    else
    {
      v28 = v18[1];
    }

    v29 = v24 & v23;
    v30 = *(v22 + (v24 & v23));
    v31 = vceq_s8(v30, v25);
    if (!v31)
    {
LABEL_28:
      while (!*&vceq_s8(v30, 0x8080808080808080))
      {
        v20 += 8;
        v29 = (v20 + v29) & v23;
        v30 = *(v22 + v29);
        v31 = vceq_s8(v30, v25);
        if (v31)
        {
          goto LABEL_22;
        }
      }

      return 0;
    }

LABEL_22:
    v32 = a1[3];
    while (1)
    {
      v33 = (v29 + (__clz(__rbit64(v31)) >> 3)) & v23;
      v34 = *(*(v32 + 8 * v33) + 8);
      v35 = *(v34 + 23);
      if (v35 < 0)
      {
        v34 = *v34;
        v35 = *(*(*(v32 + 8 * v33) + 8) + 8);
      }

      if (v35 == v28 && !memcmp(v34, v27, v28))
      {
        return (v22 + v33);
      }

      v31 &= ((v31 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v31)
      {
        goto LABEL_28;
      }
    }
  }

  if (a1[1] < 2)
  {
    return 0;
  }

  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = *(a1[2] + 8);
  v9 = *(v8 + 23);
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v9 != v7)
    {
      return 0;
    }

    goto LABEL_33;
  }

  v37 = v8;
  v8 = *v8;
  if (v37[1] != v7)
  {
    return 0;
  }

LABEL_33:
  if (memcmp(v8, a2, v7))
  {
    return 0;
  }

  return &absl::lts_20240722::container_internal::kSooControl;
}

void *absl::lts_20240722::flat_hash_map<std::vector<int>,std::vector<int>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::vector<int>>>>::~flat_hash_map(void *a1)
{
  if (*a1)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::destroy_slots(a1);
    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v5 = a1;
  v103 = *MEMORY[0x277D85DE8];
  v6 = a1[2];
  if (!*(v6 + 32))
  {
    if (a5)
    {
LABEL_27:
      v26 = 1;
      goto LABEL_157;
    }

    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), v6, 7, &v101, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0,std::string>);
LABEL_33:
    v26 = 0;
    goto LABEL_157;
  }

  v9 = (v6 + 24);
  v10 = *(v6 + 24);
  if (v10)
  {
    v9 = (v10 + 7);
  }

  v11 = *v9;
  v12 = *(v11 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    if (*(v12 + 8) != 20)
    {
      goto LABEL_18;
    }

    v12 = *v12;
  }

  else if (v13 != 20)
  {
    goto LABEL_18;
  }

  v14 = *v12;
  v15 = *(v12 + 8);
  v16 = *(v12 + 16);
  if (v14 == 0x707265746E696E75 && v15 == 0x706F5F6465746572 && v16 == 1852795252)
  {
    if (a5)
    {
      goto LABEL_27;
    }

    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), v6, 7, &v101, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_1,std::string>);
    goto LABEL_33;
  }

LABEL_18:
  if (*(v11 + 32) == a5)
  {
    goto LABEL_27;
  }

  v19 = *a1;
  v20 = (*(*a2 + 80))(a2);
  SymbolNotEnforcingDepsHelper = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(v19, *v19, (*(v20 + 8) + 24), 1uLL, v21);
  v23 = SymbolNotEnforcingDepsHelper;
  v24 = 0;
  v25 = *SymbolNotEnforcingDepsHelper;
  if (v25 <= 4)
  {
    if (*SymbolNotEnforcingDepsHelper > 2u)
    {
      if (v25 == 3)
      {
        goto LABEL_41;
      }

      if (v25 != 4)
      {
        goto LABEL_42;
      }
    }

    else if (v25 != 1 && v25 != 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (*SymbolNotEnforcingDepsHelper > 7u)
    {
      if (v25 != 8)
      {
        if (v25 == 9)
        {
          v24 = SymbolNotEnforcingDepsHelper;
          if (SymbolNotEnforcingDepsHelper == *(v19 + 160))
          {
            goto LABEL_56;
          }

          goto LABEL_43;
        }

        if (v25 == 10)
        {
          v24 = *(SymbolNotEnforcingDepsHelper + 1);
          if (v24 == *(v19 + 160))
          {
            goto LABEL_56;
          }

          goto LABEL_43;
        }

LABEL_42:
        if (v24 == *(v19 + 160))
        {
          goto LABEL_56;
        }

        goto LABEL_43;
      }

LABEL_41:
      v24 = *(*(SymbolNotEnforcingDepsHelper + 2) + 16);
      goto LABEL_42;
    }

    if (v25 == 5)
    {
      goto LABEL_41;
    }

    if (v25 != 7)
    {
      goto LABEL_42;
    }
  }

  v24 = *(SymbolNotEnforcingDepsHelper + 2);
  if (v24 == *(v19 + 160))
  {
    goto LABEL_56;
  }

LABEL_43:
  v27 = *(v19 + 176);
  if (v27 > 1)
  {
    v28 = 0;
    v29 = &v24[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24))];
    v30 = 0x9DDFEA08EB382D69 * v29;
    v31 = (v29 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(v19 + 192);
    __asm { PRFM            #4, [X12] }

    v37 = v31 ^ v30;
    v38 = vdup_n_s8(v37 & 0x7F);
    v39 = ((v37 >> 7) ^ (_X12 >> 12)) & v27;
    v40 = *(_X12 + v39);
    v41 = vceq_s8(v40, v38);
    if (!v41)
    {
      goto LABEL_50;
    }

LABEL_48:
    while (*(*(v19 + 200) + 8 * ((v39 + (__clz(__rbit64(v41)) >> 3)) & v27)) != v24)
    {
      v41 &= ((v41 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v41)
      {
LABEL_50:
        while (!*&vceq_s8(v40, 0x8080808080808080))
        {
          v28 += 8;
          v39 = (v28 + v39) & v27;
          v40 = *(_X12 + v39);
          v41 = vceq_s8(v40, v38);
          if (v41)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_69;
      }
    }

    if (_X12)
    {
      goto LABEL_56;
    }

    goto LABEL_69;
  }

  if (*(v19 + 184) < 2uLL || *(v19 + 192) != v24)
  {
    goto LABEL_69;
  }

LABEL_56:
  if (v25 - 9 < 2)
  {
LABEL_70:
    v55 = (*(*a2 + 80))(a2);
    if (!v55)
    {
      google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(&v101);
    }

    v23 = v55;
    goto LABEL_72;
  }

  v42 = *(v19 + 240);
  if (v42 > 1)
  {
    v43 = 0;
    v44 = &v24[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24))];
    v45 = 0x9DDFEA08EB382D69 * v44;
    v46 = (v44 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(v19 + 256);
    __asm { PRFM            #4, [X12] }

    v49 = v46 ^ v45;
    v50 = vdup_n_s8(v49 & 0x7F);
    v51 = ((v49 >> 7) ^ (_X12 >> 12)) & v42;
    v52 = *(_X12 + v51);
    v53 = vceq_s8(v52, v50);
    if (!v53)
    {
      goto LABEL_64;
    }

    do
    {
LABEL_62:
      v54 = (v51 + (__clz(__rbit64(v53)) >> 3)) & v42;
      if (*(*(v19 + 264) + 8 * v54) == v24)
      {
        if (_X12)
        {
          absl::lts_20240722::container_internal::EraseMetaOnly((v19 + 240), v54);
          v25 = *v23;
        }

        goto LABEL_69;
      }

      v53 &= ((v53 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v53);
LABEL_64:
    while (!*&vceq_s8(v52, 0x8080808080808080))
    {
      v43 += 8;
      v51 = (v43 + v51) & v42;
      v52 = *(_X12 + v51);
      v53 = vceq_s8(v52, v50);
      if (v53)
      {
        goto LABEL_62;
      }
    }
  }

  else if (*(v19 + 248) >= 2uLL && *(v19 + 256) == v24)
  {
    *(v19 + 248) = 0;
  }

LABEL_69:
  if (v25 != 1)
  {
    goto LABEL_70;
  }

LABEL_72:
  v98 = v23;
  *(&v97.__r_.__value_.__s + 23) = 0;
  v97.__r_.__value_.__s.__data_[0] = 0;
  v96 = 0;
  v56 = a4[1] - *a4;
  if (v56)
  {
    if ((v56 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v95 = v5;
  if (*(v5[2] + 32) < 1)
  {
    v58 = 0;
    v76 = 0;
LABEL_139:
    if (~*(v76 + 1) & 0x60) == 0 || ((*(*a2 + 80))(a2), UnknownFields = google::protobuf::Reflection::GetUnknownFields(v90, a2), (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(v5, 0, v58, v76, &v97, UnknownFields)))
    {
      operator new();
    }

    goto LABEL_154;
  }

  v57 = 0;
  v58 = 0;
  v59 = 8;
  while (1)
  {
    v60 = *v5;
    if (*(*v5 + 327) < 0)
    {
      **(v60 + 304) = 0;
      *(v60 + 312) = 0;
    }

    else
    {
      *(v60 + 304) = 0;
      *(v60 + 327) = 0;
    }

    v61 = v5[2];
    v63 = *(v61 + 24);
    v62 = v61 + 24;
    v64 = v63 - 1;
    v65 = v63 & 1;
    v66 = v63 - 1 + v59;
    if (v63)
    {
      v62 = v66;
    }

    v67 = *(*v62 + 24);
    size = HIBYTE(v97.__r_.__value_.__r.__words[2]);
    if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v97.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v101 = ".";
      v102 = 1;
      absl::lts_20240722::StrAppend(&v97, &v101);
      v61 = v5[2];
      v65 = *(v61 + 24) & 1;
      v64 = *(v61 + 24) - 1;
    }

    v69 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = v61 + 24;
    v71 = v64 + v59;
    if (v65)
    {
      v70 = v71;
    }

    if (*(*v70 + 32) != 1)
    {
      v80 = *(v69 + 23);
      if ((v80 & 0x80u) == 0)
      {
        v81 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v81 = *v69;
      }

      if ((v80 & 0x80u) != 0)
      {
        v80 = *(v69 + 8);
      }

      v101 = v81;
      v102 = v80;
      absl::lts_20240722::StrAppend(&v97, &v101);
      v83 = *(v69 + 23);
      if ((v83 & 0x8000000000000000) != 0)
      {
        v69 = *v69;
        v83 = *((v67 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      NestedSymbol = google::protobuf::FileDescriptorTables::FindNestedSymbol(*(*(v23 + 2) + 152), v23, v69, v83, v82);
      v76 = NestedSymbol;
      v5 = v95;
      if (*NestedSymbol != 2 || (NestedSymbol[1] & 8) != 0)
      {
        break;
      }

      v23 = v98;
      v79 = *(NestedSymbol + 4);
      if (v79 != v98)
      {
LABEL_147:
        if (v79 && (v79[1] & 1) != 0)
        {
          goto LABEL_149;
        }

        v101 = &v97;
        v102 = &v98;
        google::protobuf::DescriptorBuilder::AddError(*v5, (v5[1] + 24), v5[2], 7, &v101, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_4,std::string>);
        goto LABEL_154;
      }

      goto LABEL_113;
    }

    v101 = "(";
    v102 = 1;
    v72 = *(v69 + 23);
    if ((v72 & 0x80u) == 0)
    {
      v73 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v73 = *v69;
    }

    if ((v72 & 0x80u) != 0)
    {
      v72 = *(v69 + 8);
    }

    v100[0] = v73;
    v100[1] = v72;
    v99[0] = ")";
    v99[1] = 1;
    absl::lts_20240722::StrAppend(&v97, &v101, v100, v99);
    v74 = *v5;
    NestedSymbol = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(*v5, (v67 & 0xFFFFFFFFFFFFFFFCLL), v5[1], 0, 1);
    v76 = NestedSymbol;
    v77 = *NestedSymbol;
    if (!*NestedSymbol)
    {
      if (*(*v74 + 50) != 1)
      {
        break;
      }

      v78 = *(v69 + 23);
      if (v78 < 0)
      {
        v69 = *v69;
        v78 = *((v67 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      NestedSymbol = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(*v74, v69, v78, 0);
      v76 = NestedSymbol;
      v77 = *NestedSymbol;
    }

    if (v77 != 2)
    {
      break;
    }

    v79 = *(v76 + 32);
    if (v79 != v23)
    {
      goto LABEL_147;
    }

LABEL_113:
    v84 = v96 >> 2;
    if (((v96 >> 2) + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v96 >> 2 != -1)
    {
      if (!(((v96 >> 2) + 1) >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v84) = *(v76 + 4);
    memcpy(0, 0, v96);
    v96 = 4 * v84 + 4;
    v5 = v95;
    v85 = *(v95[2] + 32);
    if (v57 >= v85 - 1)
    {
      ++v57;
      v59 += 8;
      if (v57 >= v85)
      {
        goto LABEL_139;
      }
    }

    else
    {
      v86 = *(v76 + 24);
      if (v86)
      {
        v101 = google::protobuf::FieldDescriptor::TypeOnceInit;
        v100[0] = v76;
        if (atomic_load_explicit(v86, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v86, 1, &v101, v100);
        }

        v5 = v95;
      }

      if ((*(v76 + 2) & 0xFE) != 0xA)
      {
        v101 = &v97;
        google::protobuf::DescriptorBuilder::AddError(*v5, (v5[1] + 24), v5[2], 7, &v101, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_5,std::string>);
        goto LABEL_154;
      }

      if ((~*(v76 + 1) & 0x60) == 0)
      {
        v101 = &v97;
        google::protobuf::DescriptorBuilder::AddError(*v5, (v5[1] + 24), v5[2], 7, &v101, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_6,std::string>);
        goto LABEL_154;
      }

      v87 = v58;
      v88 = v58 >> 3;
      if (((v58 >> 3) + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v58 >> 3 != -1)
      {
        if (!(((v58 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v88) = v76;
      v58 = 8 * v88 + 8;
      memcpy(0, 0, v87);
      v5 = v95;
      v89 = *(v76 + 24);
      if (v89)
      {
        v101 = v76;
        if (atomic_load_explicit(v89, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v89, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v101);
        }

        v5 = v95;
        if ((*(v76 + 2) & 0xFE) == 0xA)
        {
LABEL_135:
          v23 = *(v76 + 48);
          goto LABEL_136;
        }
      }

      else if ((*(v76 + 2) & 0xFE) == 0xA)
      {
        goto LABEL_135;
      }

      v23 = 0;
LABEL_136:
      v98 = v23;
      ++v57;
      v59 += 8;
      if (v57 >= *(v5[2] + 32))
      {
        goto LABEL_139;
      }
    }
  }

  NestedSymbol = *v5;
  if (*(**v5 + 50) == 1)
  {
LABEL_149:
    google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(NestedSymbol, v5[2], a2);
    v26 = 1;
    goto LABEL_155;
  }

  v92 = NestedSymbol[327];
  if (v92 < 0)
  {
    v92 = *(NestedSymbol + 39);
  }

  if (v92)
  {
    v101 = &v97;
    v102 = v5;
    google::protobuf::DescriptorBuilder::AddError(NestedSymbol, (v5[1] + 24), v5[2], 7, &v101, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_2,std::string>);
  }

  else
  {
    v101 = &v97;
    google::protobuf::DescriptorBuilder::AddError(NestedSymbol, (v5[1] + 24), v5[2], 7, &v101, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_3,std::string>);
  }

LABEL_154:
  v26 = 0;
LABEL_155:
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

LABEL_157:
  v93 = *MEMORY[0x277D85DE8];
  return v26;
}

void sub_23CD8D6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a16)
  {
    operator delete(a16);
    if (a24 < 0)
    {
LABEL_3:
      operator delete(__p);
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a24 < 0)
  {
    goto LABEL_3;
  }

  if (v26)
  {
LABEL_4:
    operator delete(v26);
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(uint64_t a1, const google::protobuf::Message *a2, uint64_t a3)
{
  v5 = (*(*a3 + 80))(a3);
  NestedSymbol = google::protobuf::FileDescriptorTables::FindNestedSymbol(*(*(v5 + 16) + 152), v5, "uninterpreted_option", 0x14uLL, v6);
  if (*NestedSymbol != 2 || (v8 = NestedSymbol, (*(NestedSymbol + 1) & 8) != 0))
  {
    google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(&v12);
  }

  (*(*a3 + 80))(a3);
  v11 = google::protobuf::Reflection::AddMessage(v9, a3, v8, 0, v10);

  google::protobuf::Message::CopyFrom(v11, a2);
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5, int **a6)
{
  v10 = *a6;
  v9 = a6[1];
  v11 = v9 - *a6;
  v12 = v11 >> 4;
  if (a2 != a3)
  {
    if (v12 < 1)
    {
      return 1;
    }

    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = *a2;
      if (v10[v18] != *(*a2 + 4))
      {
        goto LABEL_10;
      }

      v21 = *(v20 + 24);
      if (v21 && (__p = google::protobuf::FieldDescriptor::TypeOnceInit, v34 = v20, atomic_load_explicit(v21, memory_order_acquire) != 221))
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, &__p, &v34);
        v22 = *(v20 + 2);
        v33 = v22;
        if (v22 != 10)
        {
LABEL_15:
          if (v22 != 11)
          {
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&__p, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 8891);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Invalid wire type for CPPTYPE_MESSAGE: ", 0x27uLL);
            absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::Type,0>(&__p, &v33);
            absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&__p);
          }

          if (v10[v18 + 1] == 3)
          {
            __p = 0;
            v31 = 0;
            v32 = 0;
            v23 = *&v10[v18 + 2];
            v24 = *(v23 + 23);
            if (v24 >= 0)
            {
              v25 = *&v10[v18 + 2];
            }

            else
            {
              v25 = *v23;
            }

            if (v24 >= 0)
            {
              v26 = *(v23 + 23);
            }

            else
            {
              v26 = *(v23 + 8);
            }

            if (google::protobuf::UnknownFieldSet::ParseFromArray(&__p, v25, v26) && (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 1, a3, a4, a5, &__p) & 1) == 0)
            {
              v29 = __p;
              if (__p != v31)
              {
                google::protobuf::UnknownFieldSet::ClearFallback(&__p);
                v29 = __p;
              }

              if (v29)
              {
                v31 = v29;
                operator delete(v29);
              }

              return 0;
            }

            v27 = __p;
            if (__p != v31)
            {
              google::protobuf::UnknownFieldSet::ClearFallback(&__p);
              v27 = __p;
            }

            if (v27)
            {
              v31 = v27;
              operator delete(v27);
            }
          }

          goto LABEL_9;
        }
      }

      else
      {
        v22 = *(v20 + 2);
        v33 = v22;
        if (v22 != 10)
        {
          goto LABEL_15;
        }
      }

      if (v10[v18 + 1] == 4 && (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 1, a3, a4, a5, *&v10[v18 + 2]) & 1) == 0)
      {
        return 0;
      }

LABEL_9:
      v10 = *a6;
      v9 = a6[1];
LABEL_10:
      ++v19;
      v18 += 4;
      if (v19 >= ((v9 - v10) >> 4))
      {
        return 1;
      }
    }
  }

  if (v12 < 1)
  {
    return 1;
  }

  v13 = (v11 >> 4) & 0x7FFFFFFF;
  while (1)
  {
    v14 = *v10;
    v10 += 4;
    if (v14 == *(a4 + 4))
    {
      break;
    }

    if (!--v13)
    {
      return 1;
    }
  }

  __p = a5;
  google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, &__p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(std::__wrap_iter<google::protobuf::FieldDescriptor const* const*>,std::__wrap_iter<google::protobuf::FieldDescriptor const* const*>,google::protobuf::FieldDescriptor const*,std::string const&,google::protobuf::UnknownFieldSet const&)::$_0,std::string>);
  return 0;
}

void sub_23CD8DBB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::UnknownFieldSet::~UnknownFieldSet(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::DescriptorBuilder::OptionInterpreter *this, atomic_uint **a2, google::protobuf::UnknownFieldSet *a3)
{
  v85 = a2;
  v5 = a2[3];
  if (v5 && (v83.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v82[0] = a2, atomic_load_explicit(v5, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v83, v82);
    v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 2)];
    if (v6 <= 5)
    {
LABEL_4:
      if (v6 <= 2)
      {
        if (v6 == 1)
        {
          v7 = *(this + 2);
          v11 = *(v7 + 16);
          if ((v11 & 8) != 0)
          {
            v18 = *(v7 + 72);
            if (v18 >> 31)
            {
              v83.__r_.__value_.__r.__words[0] = &v85;
              v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_0,std::string>;
              goto LABEL_129;
            }

            v27 = v85;
            v28 = *(v85 + 1);
            v29 = v85[3];
            if (v29)
            {
              v83.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
              v82[0] = v85;
              if (atomic_load_explicit(v29, memory_order_acquire) != 221)
              {
                v80 = v28;
                absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v29, 1, &v83, v82);
                v28 = v80;
              }
            }

            v30 = *(v27 + 2);
            v31 = v18;
          }

          else
          {
            if ((v11 & 0x10) == 0)
            {
              v83.__r_.__value_.__r.__words[0] = &v85;
              v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_2,std::string>;
              goto LABEL_129;
            }

            v26 = *(v7 + 80);
            if (v26 <= 0xFFFFFFFF7FFFFFFFLL)
            {
              v83.__r_.__value_.__r.__words[0] = &v85;
              v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_1,std::string>;
              goto LABEL_129;
            }

            v35 = *(v85 + 1);
            LODWORD(v29) = google::protobuf::FieldDescriptor::type(v85);
            v28 = v35;
            v31 = v26;
            v30 = v29;
          }

          google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(v29, v28, v31, v30, a3);
        }

        else if (v6 == 2)
        {
          v7 = *(this + 2);
          v10 = *(v7 + 16);
          if ((v10 & 8) != 0)
          {
            v12 = *(v7 + 72);
            if (v12 < 0)
            {
              v83.__r_.__value_.__r.__words[0] = &v85;
              v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_3,std::string>;
              goto LABEL_129;
            }

            v13 = v85;
            v14 = *(v85 + 1);
            v15 = v85[3];
            if (v15)
            {
              v83.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
              v82[0] = v85;
              if (atomic_load_explicit(v15, memory_order_acquire) != 221)
              {
                v77 = v14;
                absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v83, v82);
                v14 = v77;
              }
            }

            v16 = *(v13 + 2);
            v17 = v12;
          }

          else
          {
            if ((v10 & 0x10) == 0)
            {
              v83.__r_.__value_.__r.__words[0] = &v85;
              v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_4,std::string>;
              goto LABEL_129;
            }

            v25 = v85;
            v14 = *(v85 + 1);
            v17 = *(v7 + 80);
            v15 = v85[3];
            if (v15)
            {
              v83.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
              v82[0] = v85;
              if (atomic_load_explicit(v15, memory_order_acquire) != 221)
              {
                v78 = v17;
                v79 = v14;
                absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v83, v82);
                v17 = v78;
                v14 = v79;
              }
            }

            v16 = *(v25 + 2);
          }

          google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(v15, v14, v17, v16, a3);
        }
      }

      else if (v6 == 3)
      {
        v7 = *(this + 2);
        if ((*(v7 + 16) & 8) == 0)
        {
          v83.__r_.__value_.__r.__words[0] = &v85;
          v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_6,std::string>;
          goto LABEL_129;
        }

        v19 = *(v7 + 72);
        if (HIDWORD(v19))
        {
          v83.__r_.__value_.__r.__words[0] = &v85;
          v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_5,std::string>;
          goto LABEL_129;
        }

        v32 = v85;
        v33 = *(v85 + 1);
        v34 = v85[3];
        if (v34)
        {
          v83.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v82[0] = v85;
          if (atomic_load_explicit(v34, memory_order_acquire) != 221)
          {
            v81 = v33;
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v34, 1, &v83, v82);
            v33 = v81;
          }
        }

        google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(v34, v33, v19, *(v32 + 2), a3);
      }

      else if (v6 == 4)
      {
        v7 = *(this + 2);
        if ((*(v7 + 16) & 8) == 0)
        {
          v83.__r_.__value_.__r.__words[0] = &v85;
          v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_7,std::string>;
          goto LABEL_129;
        }

        v21 = v85;
        v22 = *(v85 + 1);
        v23 = *(v7 + 72);
        v24 = v85[3];
        if (v24)
        {
          v83.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v82[0] = v85;
          if (atomic_load_explicit(v24, memory_order_acquire) != 221)
          {
            v75 = v23;
            v76 = v22;
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v24, 1, &v83, v82);
            v23 = v75;
            v22 = v76;
          }
        }

        google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(v24, v22, v23, *(v21 + 2), a3);
      }

      else
      {
        v7 = *(this + 2);
        v8 = *(v7 + 16);
        if ((v8 & 0x20) != 0)
        {
          v20 = *(v7 + 88);
        }

        else if ((v8 & 8) != 0)
        {
          v20 = *(v7 + 72);
        }

        else
        {
          if ((v8 & 0x10) == 0)
          {
            v83.__r_.__value_.__r.__words[0] = &v85;
            v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_9,std::string>;
LABEL_129:
            v70 = v9;
            v71 = *this;
            v72 = *(this + 1);
LABEL_130:
            google::protobuf::DescriptorBuilder::AddError(v71, (v72 + 24), v7, 8, &v83, v70);
            return 0;
          }

          v20 = *(v7 + 80);
        }

        google::protobuf::UnknownFieldSet::AddFixed64(a3, *(v85 + 1), *&v20);
      }

      return 1;
    }
  }

  else
  {
    v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 2)];
    if (v6 <= 5)
    {
      goto LABEL_4;
    }
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      v7 = *(this + 2);
      v38 = *(v7 + 16);
      if ((v38 & 0x20) != 0)
      {
        v41 = *(v7 + 88);
      }

      else if ((v38 & 8) != 0)
      {
        v41 = *(v7 + 72);
      }

      else
      {
        if ((v38 & 0x10) == 0)
        {
          v83.__r_.__value_.__r.__words[0] = &v85;
          v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_8,std::string>;
          goto LABEL_129;
        }

        v41 = *(v7 + 80);
      }

      google::protobuf::UnknownFieldSet::AddFixed32(a3, *(v85 + 1), SLODWORD(v41));
      return 1;
    }

    v7 = *(this + 2);
    if ((*(v7 + 16) & 1) == 0)
    {
      v83.__r_.__value_.__r.__words[0] = &v85;
      v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_10,std::string>;
      goto LABEL_129;
    }

    v39 = (*(v7 + 48) & 0xFFFFFFFFFFFFFFFCLL);
    if (*(v39 + 23) < 0)
    {
      if (*(v39 + 1) == 4 && **v39 == 1702195828)
      {
        goto LABEL_126;
      }

      if (*(v39 + 1) == 5)
      {
        v39 = *v39;
LABEL_94:
        v51 = *v39;
        v52 = *(v39 + 4);
        if (v51 != 1936482662 || v52 != 101)
        {
          goto LABEL_128;
        }

        v54 = 0;
LABEL_127:
        v69 = *(v85 + 1);
LABEL_158:
        google::protobuf::UnknownFieldSet::AddVarint(a3, v69, v54);
        return 1;
      }
    }

    else
    {
      v40 = *(v39 + 23);
      if (v40 != 4)
      {
        if (v40 != 5)
        {
          goto LABEL_128;
        }

        goto LABEL_94;
      }

      if (*v39 == 1702195828)
      {
LABEL_126:
        v54 = 1;
        goto LABEL_127;
      }
    }

LABEL_128:
    v83.__r_.__value_.__r.__words[0] = &v85;
    v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_11,std::string>;
    goto LABEL_129;
  }

  if (v6 == 8)
  {
    v7 = *(this + 2);
    if ((*(v7 + 16) & 1) == 0)
    {
      v83.__r_.__value_.__r.__words[0] = &v85;
      v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_12,std::string>;
      goto LABEL_129;
    }

    v42 = v85;
    v43 = v85[3];
    if (v43)
    {
      v83.__r_.__value_.__r.__words[0] = v85;
      if (atomic_load_explicit(v43, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v43, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v83);
      }

      v7 = *(this + 2);
    }

    v44 = *(v42 + 6);
    v84 = v44;
    v45 = *(v7 + 48) & 0xFFFFFFFFFFFFFFFCLL;
    v46 = *(*(v44 + 16) + 24);
    if (v46 == google::protobuf::DescriptorPool::generated_pool(v43))
    {
      v55 = *(v45 + 23);
      if ((v55 & 0x8000000000000000) != 0)
      {
        v56 = *v45;
        v55 = *(v45 + 8);
      }

      else
      {
        v56 = v45;
      }

      ValueByName = google::protobuf::EnumDescriptor::FindValueByName(v44, v56, v55, v47, v48);
LABEL_156:
      if (!ValueByName)
      {
        v83.__r_.__value_.__r.__words[0] = &v85;
        v83.__r_.__value_.__l.__size_ = v45;
        v70 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_14,std::string>;
        v71 = *this;
        v72 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_130;
      }

      v69 = *(v85 + 1);
      v54 = *(ValueByName + 1);
      goto LABEL_158;
    }

    v49 = *(v44 + 8);
    if (*(v49 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v83, *(v49 + 24), *(v49 + 32));
    }

    else
    {
      v83 = *(v49 + 24);
    }

    size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v83.__r_.__value_.__l.__size_;
    }

    v58 = *(v44 + 8);
    v59 = *(v58 + 23);
    if (v59 < 0)
    {
      v59 = *(v58 + 8);
    }

    std::string::resize(&v83, size - v59, 0);
    v60 = *(v45 + 23);
    if (v60 >= 0)
    {
      v61 = v45;
    }

    else
    {
      v61 = *v45;
    }

    if (v60 >= 0)
    {
      v62 = *(v45 + 23);
    }

    else
    {
      v62 = *(v45 + 8);
    }

    std::string::append(&v83, v61, v62);
    v63 = *this;
    SymbolNotEnforcingDepsHelper = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(*this, **this, &v83.__r_.__value_.__l.__data_, 1uLL, v64);
    ValueByName = SymbolNotEnforcingDepsHelper;
    v67 = 0;
    v68 = *SymbolNotEnforcingDepsHelper;
    if (v68 <= 4)
    {
      if (*SymbolNotEnforcingDepsHelper > 2u)
      {
        if (v68 == 3)
        {
          goto LABEL_140;
        }

        if (v68 != 4)
        {
          goto LABEL_142;
        }
      }

      else if (v68 != 1 && v68 != 2)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (*SymbolNotEnforcingDepsHelper > 7u)
      {
        if (v68 != 8)
        {
          if (v68 == 9)
          {
            v67 = SymbolNotEnforcingDepsHelper;
          }

          else if (v68 == 10)
          {
            v67 = *(SymbolNotEnforcingDepsHelper + 1);
          }

LABEL_142:
          v82[0] = v67;
          if (v67 == v63[20] || (v73 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::contains<google::protobuf::FileDescriptor const*>(v63 + 22, v82), v68 = *ValueByName, v73))
          {
            if (v68 - 9 >= 2)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::erase<google::protobuf::FileDescriptor const*>(v63 + 30, v82);
              v68 = *ValueByName;
            }
          }

          if (v68 != 5)
          {
            if (v68 != 6)
            {
              ValueByName = 0;
              goto LABEL_152;
            }

            --ValueByName;
          }

          if (*(ValueByName + 2) != v44)
          {
            v82[0] = &v84;
            v82[1] = v45;
            v82[2] = &v85;
            google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, v82, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_13,std::string>);
            ValueByName = 0;
            v74 = 0;
            goto LABEL_153;
          }

LABEL_152:
          v74 = 1;
LABEL_153:
          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if ((v74 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_156;
        }

LABEL_140:
        v67 = *(*(SymbolNotEnforcingDepsHelper + 2) + 16);
        goto LABEL_142;
      }

      if (v68 == 5)
      {
        goto LABEL_140;
      }

      if (v68 != 7)
      {
        goto LABEL_142;
      }
    }

    v67 = *(SymbolNotEnforcingDepsHelper + 2);
    goto LABEL_142;
  }

  if (v6 == 9)
  {
    v7 = *(this + 2);
    if ((*(v7 + 16) & 2) != 0)
    {
      v50 = *(v7 + 56);
      google::protobuf::UnknownFieldSet::AddLengthDelimited(a3, *(v85 + 1));
    }

    v83.__r_.__value_.__r.__words[0] = &v85;
    v9 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_15,std::string>;
    goto LABEL_129;
  }

  if (v6 != 10)
  {
    return 1;
  }

  result = google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(this, v85, a3);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_23CD8E528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::Type,0>(uint64_t a1, unsigned int *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9180](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CD8E5A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD8E5B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

google::protobuf::UnknownFieldSet **std::unique_ptr<google::protobuf::UnknownFieldSet>::~unique_ptr[abi:ne200100](google::protobuf::UnknownFieldSet **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2 != *(v2 + 1))
    {
      google::protobuf::UnknownFieldSet::ClearFallback(v2);
      v3 = *v2;
    }

    if (v3)
    {
      *(v2 + 1) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v2, 0x20C40960023A9);
  }

  return a1;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::SourceCodeInfo_Location>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

void google::protobuf::UnknownFieldSet::~UnknownFieldSet(google::protobuf::UnknownFieldSet *this)
{
  v2 = *this;
  if (v2 != *(this + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(this);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(int a1, int a2, uint64_t a3, unsigned int a4, google::protobuf::UnknownFieldSet *this)
{
  v7 = a4;
  if (a4 == 17)
  {
    a3 = (2 * a3) ^ (a3 >> 31);
    v5 = this;

    goto LABEL_6;
  }

  if (a4 != 15)
  {
    if (a4 != 5)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v6, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 9291);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "Invalid wire type for CPPTYPE_INT32: ", 0x25uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::Type,0>(v6, &v7);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v6);
    }

    a3 = a3;
    v5 = this;

LABEL_6:
    google::protobuf::UnknownFieldSet::AddVarint(v5, a2, a3);
    return;
  }

  google::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(int a1, int a2, uint64_t a3, unsigned int a4, google::protobuf::UnknownFieldSet *this)
{
  v7 = a4;
  if (a4 == 18)
  {
    a3 = (2 * a3) ^ (a3 >> 63);
    v5 = this;

    goto LABEL_6;
  }

  if (a4 != 16)
  {
    if (a4 != 3)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v6, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 9314);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "Invalid wire type for CPPTYPE_INT64: ", 0x25uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::Type,0>(v6, &v7);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v6);
    }

    v5 = this;

LABEL_6:
    google::protobuf::UnknownFieldSet::AddVarint(v5, a2, a3);
    return;
  }

  google::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(int a1, int a2, unsigned int a3, unsigned int a4, google::protobuf::UnknownFieldSet *this)
{
  v6 = a4;
  if (a4 == 7)
  {

    google::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
  }

  else
  {
    if (a4 != 13)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v5, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 9332);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Invalid wire type for CPPTYPE_UINT32: ", 0x26uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::Type,0>(v5, &v6);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v5);
    }

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
  }
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(int a1, int a2, uint64_t a3, unsigned int a4, google::protobuf::UnknownFieldSet *this)
{
  v6 = a4;
  if (a4 == 6)
  {

    google::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
  }

  else
  {
    if (a4 != 4)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v5, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 9350);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Invalid wire type for CPPTYPE_UINT64: ", 0x26uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::Type,0>(v5, &v6);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v5);
    }

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
  }
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(google::protobuf::DescriptorBuilder::OptionInterpreter *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::UnknownFieldSet *a3)
{
  v32 = a2;
  v5 = *(this + 2);
  if ((*(v5 + 16) & 4) == 0)
  {
    v26.__r_.__value_.__r.__words[0] = &v32;
    google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), v5, 8, &v26, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_0,std::string>);
    return 0;
  }

  v7 = *(a2 + 3);
  if (v7)
  {
    v26.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v7, memory_order_acquire) != 221)
    {
      v9 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v26);
      a2 = v9;
      if ((*(v9 + 2) & 0xFE) == 0xA)
      {
        goto LABEL_6;
      }

LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  if ((*(a2 + 2) & 0xFE) != 0xA)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = *(a2 + 6);
LABEL_9:
  Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(this + 11, v8);
  v11 = (*(*Prototype + 16))(Prototype, 0);
  if (!v11)
  {
    v23 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v28, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 9242);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "Could not create an instance of ", 0x20uLL);
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    __str.__r_.__value_.__s.__data_[2] = 0;
    google::protobuf::FieldDescriptor::DebugStringWithOptions(v32, &__str, &v26);
    absl::lts_20240722::log_internal::LogMessage::operator<<(&v28, &v26);
    std::string::~string(&v26);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v28);
  }

  v12 = v11;
  v28 = &unk_284F451C8;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v13 = *this;
  v27[0] = &unk_284F45210;
  v27[1] = v13;
  google::protobuf::TextFormat::Parser::Parser(&v26);
  v26.__r_.__value_.__r.__words[0] = &v28;
  v26.__r_.__value_.__l.__size_ = v27;
  v14 = *(*(this + 2) + 64);
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  v16 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 23);
  if ((v16 & 0x8000000000000000) != 0)
  {
    v15 = *v15;
    v16 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v17 = google::protobuf::TextFormat::Parser::ParseFromString(&v26, v15, v16, v12);
  if (v17)
  {
    memset(&__str, 0, sizeof(__str));
    google::protobuf::MessageLite::SerializeToString(v12, &__str);
    v18 = v32;
    v19 = *(v32 + 3);
    v20 = v32;
    if (v19)
    {
      v24[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v33 = v32;
      if (atomic_load_explicit(v19, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v19, 1, v24, &v33);
      }

      v20 = v32;
    }

    if (*(v18 + 2) == 11)
    {
      google::protobuf::UnknownFieldSet::AddLengthDelimited(a3, *(v20 + 1));
    }

    v21 = *(v20 + 3);
    if (v21)
    {
      v24[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v33 = v20;
      if (atomic_load_explicit(v21, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, v24, &v33);
      }
    }

    v22 = *(v20 + 2);
    if (v22 == 10)
    {
      google::protobuf::UnknownFieldSet::AddGroup(a3, *(v32 + 1));
    }

    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v22, 10, "option_field->type() == FieldDescriptor::TYPE_GROUP");
  }

  __str.__r_.__value_.__r.__words[0] = &v32;
  __str.__r_.__value_.__l.__size_ = &v28;
  google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &__str, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_1,std::string>);
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(&v26);
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v27);
  v28 = &unk_284F451C8;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(&v28);
  (*(*v12 + 8))(v12);
  return v17;
}

void sub_23CD8EDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(&a18);
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(&a24);
  (*(*v24 + 8))(v24);
  _Unwind_Resume(a1);
}

void sub_23CD8EE38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal((v20 - 96));
  }

  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal((v20 - 96));
}

void google::protobuf::anonymous namespace::AggregateErrorCollector::~AggregateErrorCollector(void **this)
{
  *this = &unk_284F451C8;
  if (*(this + 31) < 0)
  {
    v2 = this;
    operator delete(this[1]);
    this = v2;
  }

  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);
}

{
  *this = &unk_284F451C8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);

  JUMPOUT(0x23EED9460);
}

_BYTE *google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(uint64_t a1, const void *a2, size_t __len, uint64_t a4, const unint64_t *a5)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = __len;
  if (__len)
  {
    memmove(&__dst, a2, __len);
    *(&__dst + __len) = 0;
    v7 = SHIBYTE(v19);
    if ((SHIBYTE(v19) & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (!v7 || __dst != 46)
      {
        v11 = *(a1 + 40);
        goto LABEL_19;
      }

      p_dst = &__dst;
      v9 = v7;
LABEL_12:
      v10 = v9 - 1;
      if ((v9 - 1) > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v17) = v9 - 1;
      if (v9 == 1)
      {
        LOBYTE(v16) = 0;
        if ((SHIBYTE(v19) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        memmove(&v16, p_dst + 1, v10);
        *(&v16 + v10) = 0;
        if ((SHIBYTE(v19) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      operator delete(__dst);
LABEL_16:
      v19 = v17;
      __dst = v16;
      LODWORD(v7) = SHIBYTE(v17);
      v11 = *(a1 + 40);
      if (SHIBYTE(v17) < 0)
      {
        goto LABEL_21;
      }

LABEL_19:
      v12 = v7;
      v13 = &__dst;
      goto LABEL_22;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v7 = SHIBYTE(v19);
    if ((SHIBYTE(v19) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = *(&__dst + 1);
  if (*(&__dst + 1))
  {
    p_dst = __dst;
    if (*__dst == 46)
    {
      goto LABEL_12;
    }
  }

  v11 = *(a1 + 40);
LABEL_21:
  v12 = *(&__dst + 1);
  v13 = __dst;
LABEL_22:
  result = google::protobuf::DescriptorPool::Tables::FindByNameHelper(v11, a1, v13, v12, a5);
  if (SHIBYTE(v19) < 0)
  {
    v15 = result;
    operator delete(__dst);
    return v15;
  }

  return result;
}

void sub_23CD8F0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *google::protobuf::FieldDescriptor::InternalTypeOnceInit(google::protobuf::FieldDescriptor *this)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if ((*(v1 + 2) & 1) == 0)
  {
    google::protobuf::FieldDescriptor::InternalTypeOnceInit(v30);
  }

  v3 = (*(this + 3) + 4);
  v4 = strlen(v3);
  result = google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(*(v1 + 24), v3, v4, 0, v5);
  v7 = *result;
  if (v7 != 4)
  {
    if (v7 == 1)
    {
      *(this + 2) = 11;
      *(this + 6) = result;
    }

    goto LABEL_46;
  }

  v8 = &v3[v4 + 1];
  *(this + 2) = 14;
  *(this + 6) = result;
  if (*v8)
  {
    v9 = result;
    v10 = *(result + 1);
    if (*(v10 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, *(v10 + 24), *(v10 + 32));
    }

    else
    {
      v27 = *(v10 + 24);
    }

    v11 = std::string::rfind(&v27, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v11 == -1)
    {
      MEMORY[0x23EED9020](&v27, v8);
    }

    else
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v27;
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
        v13 = v27.__r_.__value_.__r.__words[0];
      }

      if (size >= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = size;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v25 = v14;
      if (v14)
      {
        memmove(__p, v13, v14);
      }

      *(__p + v14) = 0;
      v16 = v25;
      v17 = __p;
      if ((v25 & 0x80u) != 0)
      {
        v17 = __p[0];
        v16 = __p[1];
      }

      v30[0] = v17;
      v30[1] = v16;
      v29[0] = ".";
      v29[1] = 1;
      v18 = strlen(v8);
      v28[0] = v8;
      v28[1] = v18;
      absl::lts_20240722::StrCat(v30, v29, v28, &v26);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      v27 = v26;
      *(&v26.__r_.__value_.__s + 23) = 0;
      v26.__r_.__value_.__s.__data_[0] = 0;
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v27;
    }

    else
    {
      v19 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v27.__r_.__value_.__l.__size_;
    }

    v21 = google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(*(*(this + 2) + 24), v19, v20, 0, v15);
    v22 = *v21;
    result = v9;
    if (v22 != 5)
    {
      if (v22 != 6)
      {
        v21 = 0;
        *(this + 10) = 0;
        if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_40:
          if (v21)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }

        goto LABEL_43;
      }

      --v21;
    }

    *(this + 10) = v21;
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_43:
    operator delete(v27.__r_.__value_.__l.__data_);
    result = v9;
    if (*(this + 10))
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  *(this + 10) = 0;
LABEL_44:
  if (!*(result + 1))
  {
    google::protobuf::FieldDescriptor::InternalTypeOnceInit(v30);
  }

  *(this + 10) = *(result + 7);
LABEL_46:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD8F404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::FieldDescriptor::PrintableNameForExtension(google::protobuf::FieldDescriptor *this)
{
  if ((*(this + 1) & 8) == 0 || *(*(*(this + 4) + 32) + 80) != 1)
  {
    return *(this + 1) + 24;
  }

  v1 = *(this + 3);
  if (v1 && (v11[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v10 = this, atomic_load_explicit(v1, memory_order_acquire) != 221))
  {
    v7 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v1, 1, v11, &v10);
    this = v7;
    if (*(v7 + 2) != 11)
    {
      return *(this + 1) + 24;
    }
  }

  else if (*(this + 2) != 11)
  {
    return *(this + 1) + 24;
  }

  if ((*(this + 1) & 0x60) != 0x20)
  {
    return *(this + 1) + 24;
  }

  if ((*(this + 1) & 8) == 0)
  {
    google::protobuf::FieldDescriptor::PrintableNameForExtension(v11);
  }

  v2 = *(this + 5);
  v3 = *(this + 3);
  if (v3)
  {
    v11[0] = this;
    if (atomic_load_explicit(v3, memory_order_acquire) == 221)
    {
      if ((*(this + 2) & 0xFE) == 0xA)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (v2)
      {
        return *(this + 1) + 24;
      }

      goto LABEL_18;
    }

    v6 = v2;
    v8 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, google::protobuf::FieldDescriptor::TypeOnceInit, v11);
    v2 = v6;
    this = v8;
    if ((*(v8 + 2) & 0xFE) != 0xA)
    {
      goto LABEL_17;
    }
  }

LABEL_11:
  if (v2 != *(this + 6))
  {
    return *(this + 1) + 24;
  }

LABEL_18:
  v5 = *(this + 3);
  if (!v5)
  {
    return *(*(this + 6) + 8) + 24;
  }

  v11[0] = this;
  if (atomic_load_explicit(v5, memory_order_acquire) == 221)
  {
    return *(*(this + 6) + 8) + 24;
  }

  v9 = this;
  absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, google::protobuf::FieldDescriptor::TypeOnceInit, v11);
  return *(*(v9 + 6) + 8) + 24;
}

size_t google::protobuf::FileDescriptor::DependenciesOnceInit(size_t this, const google::protobuf::FileDescriptor *a2)
{
  if ((*(this + 2) & 1) == 0)
  {
    google::protobuf::FileDescriptor::DependenciesOnceInit(&v7);
  }

  v2 = this;
  v3 = *(this + 48);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = (*(this + 40) + 4);
    do
    {
      this = strlen(v5);
      v6 = this;
      if (*v5)
      {
        this = google::protobuf::DescriptorPool::FindFileByName(*(v2 + 24), v5, this);
        *(*(v2 + 72) + 8 * v4) = this;
        v3 = *(v2 + 48);
      }

      v5 += v6 + 1;
      ++v4;
    }

    while (v4 < v3);
  }

  return this;
}

uint64_t google::protobuf::internal::ParseNoReflection(char *a1, size_t a2, google::protobuf::MessageLite *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  (*(*a3 + 24))(a3);
  memset(v14, 0, sizeof(v14));
  v15 = 0u;
  v16 = 0;
  v17 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v18 = 0x80000000;
  v19 = 0;
  v20 = 0;
  if (a2 < 0x11)
  {
    if (a2)
    {
      memcpy(v14 + 8, a1, a2);
      v6 = v14 + 8;
      v13 = 0;
      v10 = v14 + a2 + 8;
      v11 = v14 + a2 + 8;
      v12 = 0;
      if (*(&v15 + 1) == 1)
      {
        *(&v15 + 1) = a1 - (v14 + 8);
      }
    }

    else
    {
      v13 = 0;
      v6 = v14 + 8;
      v10 = v14 + 8;
      v11 = v14 + 8;
      v12 = 0;
    }
  }

  else
  {
    v13 = 16;
    v10 = &a1[a2 - 16];
    v11 = v10;
    v12 = v14 + 8;
    v6 = a1;
  }

  if ((*(*a3 + 56))(a3, v6, &v10))
  {
    v7 = v16 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  if (((*(*a3 + 32))(a3) & 1) == 0)
  {
    google::protobuf::MessageLite::LogInitializationErrorMessage(a3);
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  result = 1;
LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL google::protobuf::internal::cpp::HasPreservingUnknownEnumSemantics(atomic_uint **this, const google::protobuf::FieldDescriptor *a2)
{
  if (google::protobuf::FieldDescriptor::legacy_enum_field_treated_as_closed(this))
  {
    return 0;
  }

  v3 = this[3];
  if (v3 && (v7 = this, atomic_load_explicit(v3, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v7);
    if (*(this + 2) != 14)
    {
      return 0;
    }
  }

  else if (*(this + 2) != 14)
  {
    return 0;
  }

  v4 = this[6];
  if (!v4)
  {
    return 0;
  }

  v5 = this[3];
  if (v5)
  {
    v7 = this;
    if (atomic_load_explicit(v5, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v7);
    }

    v4 = this[6];
  }

  return *(*(v4 + 6) + 52) != 2;
}

uint64_t google::protobuf::internal::cpp::HasHasbit(google::protobuf::internal::cpp *this, const google::protobuf::FieldDescriptor *a2)
{
  v4 = *(this + 1);
  if ((~v4 & 0x60) == 0)
  {
    return 0;
  }

  v10[1] = v2;
  v10[2] = v3;
  v6 = *(this + 3);
  if (v6)
  {
    v10[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v9 = this;
    if (atomic_load_explicit(v6, memory_order_acquire) != 221)
    {
      v8 = this;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, v10, &v9);
      this = v8;
    }

    LOBYTE(v4) = *(this + 1);
  }

  if ((*(this + 2) & 0xFE) == 0xA)
  {
    goto LABEL_11;
  }

  if ((v4 & 0x10) == 0 || !*(this + 5))
  {
    if (*(*(this + 9) + 48) == 2)
    {
      return 0;
    }

LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      return (*(*(this + 7) + 132) ^ 1) & 1;
    }
  }

  v7 = *(this + 5);
  if (v7 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    return 0;
  }

  return (*(*(this + 7) + 132) ^ 1) & 1;
}

uint64_t google::protobuf::internal::cpp::GetUtf8CheckMode(google::protobuf::internal::cpp *this, const google::protobuf::FieldDescriptor *a2)
{
  v2 = *(this + 3);
  if (v2 && (v28 = this, v29 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v2, memory_order_acquire) != 221))
  {
    v7 = this;
    v8 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v2, 1, &v29, &v28);
    this = v7;
    LODWORD(a2) = v8;
    v3 = v7[2];
    if (v3 == 9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *(this + 2);
    if (v3 == 9)
    {
      goto LABEL_4;
    }
  }

  v9 = *(this + 3);
  if (v9)
  {
    v28 = this;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != 221)
    {
      v14 = this;
      v15 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v29, &v28);
      this = v14;
      LODWORD(a2) = v15;
    }

    v3 = *(this + 2);
  }

  if (v3 != 11 || *(*(*(this + 6) + 32) + 83) != 1)
  {
    return 2;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    goto LABEL_20;
  }

  v29 = this;
  if (atomic_load_explicit(v10, memory_order_acquire) != 221)
  {
    v24 = this;
    v22 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v29);
    this = v24;
    LODWORD(a2) = v22;
    if ((*(v24 + 2) & 0xFE) != 0xA)
    {
      goto LABEL_24;
    }

LABEL_20:
    v11 = *(this + 6);
    if (*(*(v11 + 32) + 83) == 1)
    {
      goto LABEL_21;
    }

LABEL_25:
    v12 = 0;
    v13 = MEMORY[0x18];
    if (!MEMORY[0x18])
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((*(this + 2) & 0xFE) == 0xA)
  {
    goto LABEL_20;
  }

LABEL_24:
  v11 = 0;
  if (*(MEMORY[0x20] + 83) != 1)
  {
    goto LABEL_25;
  }

LABEL_21:
  v12 = *(v11 + 56);
  v13 = *(v12 + 24);
  if (!v13)
  {
LABEL_27:
    if (*(v12 + 2) == 9)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

LABEL_26:
  v28 = v12;
  v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
  if (atomic_load_explicit(v13, memory_order_acquire) == 221)
  {
    goto LABEL_27;
  }

  v25 = this;
  v19 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v13, 1, &v29, &v28);
  this = v25;
  LODWORD(a2) = v19;
  if (*(v12 + 2) == 9)
  {
    goto LABEL_4;
  }

LABEL_28:
  v16 = *(this + 3);
  if (!v16 || (v29 = this, atomic_load_explicit(v16, memory_order_acquire) == 221))
  {
    if ((*(this + 2) & 0xFE) == 0xA)
    {
      goto LABEL_31;
    }

LABEL_36:
    v17 = 0;
    if (*(MEMORY[0x20] + 83) != 1)
    {
      goto LABEL_32;
    }

LABEL_37:
    v18 = *(v17 + 56) + 88;
    goto LABEL_38;
  }

  v26 = this;
  v23 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v29);
  this = v26;
  LODWORD(a2) = v23;
  if ((*(v26 + 2) & 0xFE) != 0xA)
  {
    goto LABEL_36;
  }

LABEL_31:
  v17 = *(this + 6);
  if (*(*(v17 + 32) + 83) == 1)
  {
    goto LABEL_37;
  }

LABEL_32:
  v18 = 0;
LABEL_38:
  v20 = *(v18 + 24);
  if (v20 && (v28 = v18, v29 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v20, memory_order_acquire) != 221))
  {
    v27 = this;
    v21 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, &v29, &v28);
    this = v27;
    LODWORD(a2) = v21;
    if (*(v18 + 2) != 9)
    {
      return 2;
    }
  }

  else if (*(v18 + 2) != 9)
  {
    return 2;
  }

LABEL_4:
  v4 = *(*(this + 9) + 60);
  result = v4 != 2;
  if (v4 != 2 && a2 != 0)
  {
    return 2;
  }

  return result;
}

BOOL google::protobuf::internal::cpp::IsLazilyInitializedFile(void *a1, int64_t __n)
{
  v3 = 0;
  if (__n > 33)
  {
    if (__n != 34)
    {
      if (__n != 39)
      {
        return v3;
      }

      return *a1 == 0x61705F6472696874 && a1[1] == 0x746F72702F797472 && a1[2] == 0x7070632F6675626FLL && a1[3] == 0x657275746165665FLL && *(a1 + 31) == 0x6F746F72702E7365;
    }

    v4 = "google/protobuf/cpp_features.proto";
  }

  else if (__n == 32)
  {
    v4 = "google/protobuf/descriptor.proto";
  }

  else
  {
    if (__n != 33)
    {
      return v3;
    }

    v4 = "net/proto2/proto/descriptor.proto";
  }

  return memcmp(a1, v4, __n) == 0;
}

uint64_t *google::protobuf::internal::ShortEditionName(google::protobuf *a1)
{
  v2 = google::protobuf::Edition_descriptor(a1);
  result = google::protobuf::internal::NameOfEnum(v2, a1);
  v4 = result[1];
  if (*(result + 23) >= 0)
  {
    v5 = *(result + 23);
  }

  else
  {
    result = *result;
    v5 = v4;
  }

  if (v5 >= 8 && *result == 0x5F4E4F4954494445)
  {
    ++result;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::destroy_slots(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (*a1 > 6uLL)
  {
    v8 = a1[1];
    if (v8 >= 2)
    {
      v9 = v8 >> 1;
      do
      {
        v10 = *v2 & 0x8080808080808080;
        if (v10 != 0x8080808080808080)
        {
          v11 = v10 ^ 0x8080808080808080;
          do
          {
            v12 = v1 + ((4 * __clz(__rbit64(v11))) & 0x1E0);
            v13 = *(v12 + 24);
            *(v12 + 24) = 0;
            if (v13)
            {
              google::protobuf::FeatureSet::~FeatureSet(v13);
              MEMORY[0x23EED9460]();
            }

            if (*(v12 + 23) < 0)
            {
              operator delete(*v12);
            }

            --v9;
            v11 &= v11 - 1;
          }

          while (v11);
        }

        ++v2;
        v1 += 256;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(v2 + *a1) & 0x8080808080808080;
    if (v3 != 0x8080808080808080)
    {
      v4 = v1 - 32;
      v5 = v3 ^ 0x8080808080808080;
      do
      {
        v6 = v4 + ((4 * __clz(__rbit64(v5))) & 0x1E0);
        v7 = *(v6 + 24);
        *(v6 + 24) = 0;
        if (v7)
        {
          google::protobuf::FeatureSet::~FeatureSet(v7);
          MEMORY[0x23EED9460]();
        }

        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        v5 &= v5 - 1;
      }

      while (v5);
    }
  }
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 256];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 256]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 32);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v9 = a1[1];
      if (v9 >= 2)
      {
        v11 = v9 >> 1;
        do
        {
          v12 = *v4 & 0x8080808080808080;
          if (v12 != 0x8080808080808080)
          {
            v13 = v12 ^ 0x8080808080808080;
            do
            {
              v14 = v3 + 24 * (__clz(__rbit64(v13)) >> 3);
              if (*(v14 + 23) < 0)
              {
                operator delete(*v14);
              }

              --v11;
              v13 &= v13 - 1;
            }

            while (v13);
          }

          ++v4;
          v3 += 192;
        }

        while (v11);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 24;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + 24 * (__clz(__rbit64(v7)) >> 3);
          if (*(v8 + 23) < 0)
          {
            operator delete(*v8);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

uint64_t google::protobuf::Symbol::full_name(unsigned __int8 **this)
{
  v3 = *this;
  v4 = **this;
  if (v4 <= 4)
  {
    if (**this > 2u)
    {
      if (v4 == 3)
      {
        v8 = *(v3 + 1);
        if ((*(v8 + 47) & 0x8000000000000000) == 0)
        {
          return v8 + 24;
        }
      }

      else
      {
        if (v4 != 4)
        {
          goto LABEL_36;
        }

        v8 = *(v3 + 1);
        if ((*(v8 + 47) & 0x8000000000000000) == 0)
        {
          return v8 + 24;
        }
      }
    }

    else if (v4 == 1)
    {
      v8 = *(v3 + 1);
      if ((*(v8 + 47) & 0x8000000000000000) == 0)
      {
        return v8 + 24;
      }
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_36;
      }

      v8 = *(v3 + 1);
      if ((*(v8 + 47) & 0x8000000000000000) == 0)
      {
        return v8 + 24;
      }
    }

    goto LABEL_31;
  }

  if (**this <= 7u)
  {
    if (v4 == 5)
    {
      v8 = *(v3 + 1);
      if ((*(v8 + 47) & 0x8000000000000000) == 0)
      {
        return v8 + 24;
      }
    }

    else
    {
      if (v4 != 7)
      {
        goto LABEL_36;
      }

      v8 = *(v3 + 1);
      if ((*(v8 + 47) & 0x8000000000000000) == 0)
      {
        return v8 + 24;
      }
    }

LABEL_31:
    result = *(v8 + 24);
    v9 = *(v8 + 32);
    return result;
  }

  if (v4 == 8)
  {
    v8 = *(v3 + 1);
    if ((*(v8 + 47) & 0x8000000000000000) == 0)
    {
      return v8 + 24;
    }

    goto LABEL_31;
  }

  if (v4 != 9)
  {
    if (v4 == 10)
    {
      result = *(*(v3 + 1) + 16);
      v6 = *(result + 23);
      if ((v6 & 0x8000000000000000) != 0)
      {
        result = *result;
        *(*(*(v3 + 1) + 16) + 8);
        *(v3 + 1);
      }

      else if (v6 < *(v3 + 1))
      {
        v7 = *(result + 23);
      }

      return result;
    }

LABEL_36:
    v11[2] = v1;
    v11[3] = v2;
    google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(v11);
  }

  result = *(v3 + 2);
  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v10 = *(*(v3 + 2) + 8);
  }

  return result;
}
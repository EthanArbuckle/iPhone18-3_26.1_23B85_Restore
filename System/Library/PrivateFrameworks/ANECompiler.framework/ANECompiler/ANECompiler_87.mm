void google::protobuf::EnumDescriptor::DebugString(google::protobuf::EnumDescriptor *this@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  google::protobuf::EnumDescriptor::DebugString(this, 0, a2, &v2);
}

void sub_23CD790B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::EnumValueDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, __int16 *a4)
{
  v53[2] = *MEMORY[0x277D85DE8];
  if (a2 < 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = 2 * a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__b.__r_.__value_.__s + 23) = 2 * a2;
  if (a2)
  {
    memset(&__b, 32, v8);
  }

  __b.__r_.__value_.__s.__data_[v8] = 0;
  v40 = 0;
  *v39 = 0u;
  v38 = 0u;
  *v37 = 0u;
  *v36 = 0u;
  v41 = *a4;
  v42 = *(a4 + 2);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __b.__r_.__value_.__l.__data_, __b.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __b;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::EnumValueDescriptor::GetSourceLocation(a1, &v35);
  }

  else
  {
    SourceLocation = 0;
  }

  v33 = a2;
  v34[0] = SourceLocation;
  v10 = a3;
  v11 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  v12 = *&__b.__r_.__value_.__l.__data_;
  v13 = *(a1 + 8);
  v14 = *(v13 + 23);
  v16 = *v13;
  v15 = v13[1];
  v18 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 4), &v52[0].__r_.__value_.__s.__data_[16], v17);
  v52[0].__r_.__value_.__r.__words[0] = &v52[0].__r_.__value_.__r.__words[2];
  v52[0].__r_.__value_.__l.__size_ = v18 - &v52[0].__r_.__value_.__r.__words[2];
  if ((v14 & 0x80u) == 0)
  {
    v19 = v13;
  }

  else
  {
    v19 = v16;
  }

  if ((v14 & 0x80u) == 0)
  {
    v20 = v14;
  }

  else
  {
    v20 = v15;
  }

  p_b = &__b;
  if (v11 >= 0)
  {
    v22 = v11;
  }

  else
  {
    v22 = *(&v12 + 1);
    p_b = v12;
  }

  v45 = p_b;
  v46 = v22;
  v47 = v19;
  v48 = v20;
  v49 = &v52[0].__r_.__value_.__s.__data_[16];
  v50 = v18 - &v52[0].__r_.__value_.__r.__words[2];
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(v10, "$0$1 = $2", 9uLL, &v45, 3uLL);
  google::protobuf::EnumValueOptions::EnumValueOptions(&v45, 0, *(a1 + 24));
  v23 = *(a1 + 32);
  if (v23 != &google::protobuf::_FeatureSet_default_instance_)
  {
    LODWORD(v50) = v50 | 1;
    v24 = v51;
    if (!v51)
    {
      v25 = v46;
      if (v46)
      {
        v25 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v25);
      v51 = v24;
    }

    google::protobuf::FeatureSet::CopyFrom(v24, v23);
  }

  memset(v52, 0, 24);
  {
    size = HIBYTE(v52[0].__r_.__value_.__r.__words[2]);
    v27 = v52;
    if ((v52[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v52[0].__r_.__value_.__l.__size_;
      v27 = v52[0].__r_.__value_.__r.__words[0];
    }

    v53[0] = v27;
    v53[1] = size;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(v10, " [$0]", 5uLL, v53, 1uLL);
  }

  std::string::append(v10, ";\n");
  if (SHIBYTE(v52[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52[0].__r_.__value_.__l.__data_);
    google::protobuf::EnumValueOptions::~EnumValueOptions(&v45);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      v28 = v39[0];
      if (!v39[0])
      {
        goto LABEL_35;
      }

LABEL_41:
      v30 = v39[1];
      if (v39[1] == v28)
      {
        v39[1] = v28;
        operator delete(v28);
        if (SHIBYTE(v38) < 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        do
        {
          v31 = *(v30 - 1);
          v30 -= 3;
          if (v31 < 0)
          {
            operator delete(*v30);
          }
        }

        while (v30 != v28);
        v39[1] = v28;
        operator delete(v39[0]);
        if (SHIBYTE(v38) < 0)
        {
          goto LABEL_48;
        }
      }

LABEL_36:
      if ((SHIBYTE(v37[0]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_49:
      operator delete(v36[0]);
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_50;
    }
  }

  else
  {
    google::protobuf::EnumValueOptions::~EnumValueOptions(&v45);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v28 = v39[0];
  if (v39[0])
  {
    goto LABEL_41;
  }

LABEL_35:
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_48:
  operator delete(v37[1]);
  if (SHIBYTE(v37[0]) < 0)
  {
    goto LABEL_49;
  }

LABEL_37:
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_38:
    v29 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_50:
  operator delete(__b.__r_.__value_.__l.__data_);
  v32 = *MEMORY[0x277D85DE8];
}

void sub_23CD794A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  google::protobuf::SourceLocation::~SourceLocation((v36 + 8));
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL google::protobuf::FieldDescriptor::is_packed(google::protobuf::FieldDescriptor *this)
{
  if ((~*(this + 1) & 0x60) != 0)
  {
    return 0;
  }

  v7[1] = v1;
  v7[2] = v2;
  v3 = *(this + 3);
  if (v3 && (v7[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v6 = this, atomic_load_explicit(v3, memory_order_acquire) != 221))
  {
    v5 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, v7, &v6);
    this = v5;
    if (v5[2] - 13 <= 0xFFFFFFFB)
    {
      return *(*(this + 9) + 56) == 1;
    }
  }

  else if (*(this + 2) - 13 <= 0xFFFFFFFB)
  {
    return *(*(this + 9) + 56) == 1;
  }

  return 0;
}

BOOL google::protobuf::FieldDescriptor::requires_utf8_validation(google::protobuf::FieldDescriptor *this)
{
  v1 = *(this + 3);
  if (v1 && (v4 = this, v5 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v1, memory_order_acquire) != 221))
  {
    v3 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v1, 1, &v5, &v4);
    this = v3;
    if (*(v3 + 2) == 9)
    {
      return *(*(this + 9) + 60) == 2;
    }
  }

  else if (*(this + 2) == 9)
  {
    return *(*(this + 9) + 60) == 2;
  }

  return 0;
}

BOOL google::protobuf::FieldDescriptor::has_presence(google::protobuf::FieldDescriptor *this)
{
  if ((~*(this + 1) & 0x60) == 0)
  {
    return 0;
  }

  v7[1] = v1;
  v7[2] = v2;
  v4 = *(this + 3);
  if (v4 && (v7[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v6 = this, atomic_load_explicit(v4, memory_order_acquire) != 221))
  {
    v5 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, v7, &v6);
    this = v5;
    if ((*(v5 + 2) & 0xFE) == 0xA)
    {
      return 1;
    }
  }

  else if ((*(this + 2) & 0xFE) == 0xA)
  {
    return 1;
  }

  return (*(this + 1) & 0x10) != 0 && *(this + 5) || *(*(this + 9) + 48) != 2;
}

BOOL google::protobuf::FieldDescriptor::legacy_enum_field_treated_as_closed(google::protobuf::FieldDescriptor *this)
{
  v2 = *(this + 3);
  if (!v2 || (v5 = this, v6 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v2, memory_order_acquire) == 221))
  {
    if (*(this + 2) == 14)
    {
      goto LABEL_4;
    }

    return 0;
  }

  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v2, 1, &v6, &v5);
  if (*(this + 2) != 14)
  {
    return 0;
  }

LABEL_4:
  if (*(google::protobuf::internal::ExtensionSet::GetMessage((*(this + 9) + 16), pb::cpp, off_27E25D428) + 24))
  {
    return 1;
  }

  v4 = *(this + 3);
  if (v4)
  {
    v6 = this;
    if (atomic_load_explicit(v4, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v6);
    }
  }

  return *(*(*(this + 6) + 48) + 52) == 2;
}

uint64_t google::protobuf::FileDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    google::protobuf::FileDescriptor::GetSourceLocation(&v13);
  }

  v4 = *(a1 + 160);
  if (!v4)
  {
    return 0;
  }

  result = google::protobuf::FileDescriptorTables::GetSourceLocation(*(a1 + 152), a2, v4);
  if (!result)
  {
    return result;
  }

  v6 = *(result + 48);
  if ((v6 - 3) > 1)
  {
    return 0;
  }

  v7 = *(result + 56);
  *a3 = *v7;
  *(a3 + 8) = v7[1];
  *(a3 + 4) = v7[2 * (v6 != 3)];
  *(a3 + 12) = v7[v6 - 1];
  v8 = result;
  std::string::operator=((a3 + 16), (*(result + 96) & 0xFFFFFFFFFFFFFFFCLL));
  std::string::operator=((a3 + 40), (*(v8 + 104) & 0xFFFFFFFFFFFFFFFCLL));
  v10 = *(v8 + 72);
  v9 = v8 + 72;
  v11 = (v10 + 7);
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(a3 + 64, v12, &v12[*(v9 + 8)], *(v9 + 8));
  return 1;
}

void google::protobuf::Descriptor::GetLocationPath(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 4;
    std::vector<int>::push_back[abi:ne200100](a2, &v7);
    v5 = *(a1 + 24);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = (*(a1 + 16) + 96);
    goto LABEL_6;
  }

  google::protobuf::Descriptor::GetLocationPath(v4, a2);
  v7 = 3;
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = (v5 + 72);
LABEL_6:
  v7 = 678152731 * ((a1 - *v6) >> 3);
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
}

void google::protobuf::FieldDescriptor::GetLocationPath(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1) & 8) != 0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      google::protobuf::Descriptor::GetLocationPath(v5, a2);
      v7 = 6;
      std::vector<int>::push_back[abi:ne200100](a2, &v7);
      if ((*(a1 + 1) & 8) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v7 = 7;
      std::vector<int>::push_back[abi:ne200100](a2, &v7);
      if ((*(a1 + 1) & 8) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    google::protobuf::Descriptor::GetLocationPath(*(a1 + 32), a2);
    v7 = 2;
    std::vector<int>::push_back[abi:ne200100](a2, &v7);
    if ((*(a1 + 1) & 8) == 0)
    {
LABEL_3:
      v4 = (*(a1 + 32) + 56);
      goto LABEL_11;
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = (v6 + 96);
  }

  else
  {
    v4 = (*(a1 + 16) + 120);
  }

LABEL_11:
  v7 = -1171354717 * ((a1 - *v4) >> 3);
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
}

uint64_t google::protobuf::OneofDescriptor::GetSourceLocation(google::protobuf::OneofDescriptor *this, google::protobuf::SourceLocation *a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::Descriptor::GetLocationPath(*(this + 2), &__p);
  v9 = 8;
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  v9 = -1227133513 * ((this - *(*(this + 2) + 64)) >> 3);
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  result = google::protobuf::FileDescriptor::GetSourceLocation(*(*(this + 2) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    v5 = result;
    operator delete(__p);
    return v5;
  }

  return result;
}

void sub_23CD79BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::EnumDescriptor::GetLocationPath(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 5;
    std::vector<int>::push_back[abi:ne200100](a2, &v7);
    v5 = *(a1 + 24);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = (*(a1 + 16) + 104);
    goto LABEL_6;
  }

  google::protobuf::Descriptor::GetLocationPath(v4, a2);
  v7 = 4;
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = (v5 + 80);
LABEL_6:
  v7 = -1171354717 * ((a1 - *v6) >> 3);
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
}

uint64_t google::protobuf::EnumValueDescriptor::GetSourceLocation(google::protobuf::EnumValueDescriptor *this, google::protobuf::SourceLocation *a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::EnumDescriptor::GetLocationPath(*(this + 2), &__p);
  v9 = 2;
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  v9 = -1431655765 * ((this - *(*(this + 2) + 56)) >> 4);
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  result = google::protobuf::FileDescriptor::GetSourceLocation(*(*(this + 2) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    v5 = result;
    operator delete(__p);
    return v5;
  }

  return result;
}

void sub_23CD79D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorBuilder::BuildFile(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2)
{
  v4 = (this + 136);
  std::string::operator=((this + 136), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL));
  v7 = *(this + 1);
  v8 = *(this + 159);
  if ((v8 & 0x8000000000000000) != 0)
  {
    File = google::protobuf::DescriptorPool::Tables::FindFile(v7, *(this + 17), *(this + 18), v5, v6);
    if (!File)
    {
      goto LABEL_6;
    }
  }

  else
  {
    File = google::protobuf::DescriptorPool::Tables::FindFile(v7, v4, v8, v5, v6);
    if (!File)
    {
LABEL_6:
      v13 = *(this + 1);
      v15 = *v13;
      v14 = v13[1];
      if (v14 != *v13)
      {
        v16 = *(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v16 + 23) >= 0)
        {
          v17 = *(v16 + 23);
        }

        else
        {
          v17 = *(v16 + 8);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 3) <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 3);
        }

        v19 = 0;
        if ((*(v16 + 23) & 0x80) != 0)
        {
          while (1)
          {
            size = HIBYTE(v15->__r_.__value_.__r.__words[2]);
            v24 = size;
            if ((size & 0x80u) != 0)
            {
              size = v15->__r_.__value_.__l.__size_;
            }

            if (size == v17)
            {
              v25 = v24 >= 0 ? v15 : v15->__r_.__value_.__r.__words[0];
              if (!memcmp(v25, *v16, v17))
              {
                break;
              }
            }

            ++v19;
            ++v15;
            if (v18 == v19)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          while (1)
          {
            v20 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
            v21 = v20;
            if ((v20 & 0x80u) != 0)
            {
              v20 = v15->__r_.__value_.__l.__size_;
            }

            if (v20 == v17)
            {
              v22 = v21 >= 0 ? v15 : v15->__r_.__value_.__r.__words[0];
              if (!memcmp(v22, v16, v17))
              {
                break;
              }
            }

            ++v19;
            ++v15;
            if (v18 == v19)
            {
              goto LABEL_33;
            }
          }
        }

        google::protobuf::DescriptorBuilder::AddRecursiveImportError(this, a2, v19);
        return 0;
      }

LABEL_33:
      v26 = *(a2 + 23) & 0xFFFFFFFFFFFFFFFCLL;
      if (*(v26 + 23) < 0 && *(v26 + 8) >= 0x200uLL)
      {
        google::protobuf::DescriptorBuilder::AddError(this, v26, a2, 0, "Package name is too long");
        return 0;
      }

      if ((*(*this + 49) & 1) == 0 && *(*this + 8))
      {
        v27 = *(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL;
        if (v14 >= v13[2])
        {
          v13[1] = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v13, v27);
          if (*(a2 + 8) >= 1)
          {
LABEL_46:
            v29 = 0;
            v30 = (a2 + 24);
            v31 = 8;
            do
            {
              if (*v30)
              {
                v33 = (*v30 + v31 - 1);
              }

              else
              {
                v33 = a2 + 24;
              }

              v34 = *v33;
              v35 = *(*v33 + 23);
              if ((v35 & 0x8000000000000000) != 0)
              {
                if (google::protobuf::DescriptorPool::Tables::FindFile(*(this + 1), *v34, *(*v33 + 8), v10, v11))
                {
                  goto LABEL_53;
                }
              }

              else if (google::protobuf::DescriptorPool::Tables::FindFile(*(this + 1), v34, v35, v10, v11))
              {
                goto LABEL_53;
              }

              if (!*(*this + 24))
              {
                goto LABEL_47;
              }

              if (*v30)
              {
                v36 = (*v30 + v31 - 1);
              }

              else
              {
                v36 = a2 + 24;
              }

              v37 = *v36;
              v38 = *(*v36 + 23);
              if (v38 < 0)
              {
                if (!google::protobuf::DescriptorPool::FindFileByName(*(*this + 24), *v37, *(*v36 + 8)))
                {
LABEL_69:
                  v39 = *this;
LABEL_47:
                  if (*v30)
                  {
                    v32 = (*v30 + v31 - 1);
                  }

                  else
                  {
                    v32 = (a2 + 24);
                  }

                  if ((*(*v32 + 23) & 0x8000000000000000) != 0)
                  {
                    v40 = **v32;
                    v41 = (*v32)[1];
                  }

                  google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase();
                }
              }

              else if (!google::protobuf::DescriptorPool::FindFileByName(*(*this + 24), v37, v38))
              {
                goto LABEL_69;
              }

LABEL_53:
              ++v29;
              v31 += 8;
            }

            while (v29 < *(a2 + 8));
          }
        }

        else
        {
          if (*(v27 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v14, *v27, *(v27 + 8));
          }

          else
          {
            v28 = *v27;
            v14->__r_.__value_.__r.__words[2] = *(v27 + 16);
            *&v14->__r_.__value_.__l.__data_ = v28;
          }

          v13[1] = v14 + 1;
          v13[1] = v14 + 1;
          if (*(a2 + 8) >= 1)
          {
            goto LABEL_46;
          }
        }

        v42 = *(this + 1);
        v43 = v42[1];
        p_data = &v43[-1].__r_.__value_.__l.__data_;
        v13 = v42;
        if (SHIBYTE(v43[-1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(*p_data);
          v13 = *(this + 1);
        }

        v42[1] = p_data;
      }

      v48 = v13;
      v45 = v13[41];
      if (v45 >= v13[42])
      {
        v46 = std::vector<google::protobuf::DescriptorPool::Tables::CheckPoint>::__emplace_back_slow_path<google::protobuf::DescriptorPool::Tables*>((v13 + 40), &v48);
      }

      else
      {
        LODWORD(v45->__r_.__value_.__l.__data_) = (v13[23] - v13[22]) >> 3;
        HIDWORD(v45->__r_.__value_.__r.__words[0]) = (v13[20] - v13[19]) >> 3;
        LODWORD(v45->__r_.__value_.__r.__words[1]) = (v13[44] - v13[43]) >> 3;
        HIDWORD(v45->__r_.__value_.__r.__words[1]) = (v13[47] - v13[46]) >> 3;
        LODWORD(v45->__r_.__value_.__r.__words[2]) = (v13[50] - v13[49]) >> 4;
        v46 = &v45->__r_.__value_.__r.__words[2] + 4;
      }

      v13[41] = v46;
      operator new();
    }
  }

  v12 = File;
  if (!google::protobuf::ExistingFileMatchesProto(*(File + 32), File, a2))
  {
    goto LABEL_6;
  }

  return v12;
}

void ***std::unique_ptr<google::protobuf::DescriptorBuilder>::~unique_ptr[abi:ne200100](void ***a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    google::protobuf::DescriptorBuilder::~DescriptorBuilder(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

uint64_t google::protobuf::DescriptorBuilder::DescriptorBuilder(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 176) = xmmword_23CE306D0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = &unk_23CE31C20;
  *(result + 240) = xmmword_23CE306D0;
  *(result + 327) = 0;
  *(result + 304) = 0;
  *(result + 328) = 32;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  {
    v5 = result;
    result = v5;
    if (v4)
    {
      google::protobuf::internal::ExtensionSet::RegisterMessageExtension(&google::protobuf::_FeatureSet_default_instance_, pb::cpp, 11, 0, 0, &pb::_CppFeatures_default_instance_, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_23CD7A8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, google::protobuf::FeatureSet *a10, void ***a11, uint64_t a12)
{
  if (*(a12 + 327) < 0)
  {
    operator delete(*(a12 + 304));
    if ((*(a12 + 303) & 0x80000000) == 0)
    {
LABEL_3:
      if (*(a12 + 240) < 2uLL)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a12 + 303) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a12 + 280));
  if (*(a12 + 240) < 2uLL)
  {
LABEL_4:
    if (!*v13)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete((*(a12 + 256) - (*(a12 + 248) & 1) - 8));
  if (!*v13)
  {
LABEL_5:
    if (*(a12 + 176) < 2uLL)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete((*(a12 + 224) - (*(a12 + 216) & 1) - 8));
  if (*(a12 + 176) < 2uLL)
  {
LABEL_6:
    if ((*(a12 + 159) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete((*(a12 + 192) - (*(a12 + 184) & 1) - 8));
  if ((*(a12 + 159) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(a12 + 96) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v12);
  if (*(a12 + 96) != 1)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_15:
  google::protobuf::FeatureSet::~FeatureSet(a10);
  _Unwind_Resume(a1);
}

void ***std::vector<google::protobuf::anonymous namespace::OptionsToInterpret>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      v5 = *(v3 - 5);
      if (v5)
      {
        *(v3 - 4) = v5;
        operator delete(v5);
      }

      if (*(v3 - 41) < 0)
      {
        operator delete(*(v3 - 8));
        v6 = v3 - 11;
        if (*(v3 - 65) < 0)
        {
LABEL_11:
          operator delete(*v6);
        }
      }

      else
      {
        v6 = v3 - 11;
        if (*(v3 - 65) < 0)
        {
          goto LABEL_11;
        }
      }

      v3 = v6;
      if (v6 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

void google::protobuf::DescriptorBuilder::~DescriptorBuilder(void **this)
{
  if (*(this + 327) < 0)
  {
    operator delete(this[38]);
    if ((*(this + 303) & 0x80000000) == 0)
    {
LABEL_3:
      if (this[30] < 2)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*(this + 303) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[35]);
  if (this[30] < 2)
  {
LABEL_4:
    if (!this[26])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_29:
  operator delete(this[32] - (this[31] & 1) - 8);
  if (this[26])
  {
LABEL_5:
    operator delete(this[28] - (this[27] & 1) - 8);
  }

LABEL_6:
  if (this[22] >= 2)
  {
    operator delete(this[24] - (this[23] & 1) - 8);
    if ((*(this + 159) & 0x80000000) == 0)
    {
LABEL_8:
      v2 = this[13];
      if (!v2)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 159) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(this[17]);
  v2 = this[13];
  if (!v2)
  {
LABEL_9:
    if (*(this + 96) != 1)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_14:
  v3 = this[14];
  if (v3 == v2)
  {
    this[14] = v2;
    operator delete(v2);
    if (*(this + 96) != 1)
    {
      return;
    }

LABEL_10:
    google::protobuf::FeatureSet::~FeatureSet((this + 3));
    return;
  }

  do
  {
    v4 = *(v3 - 5);
    if (v4)
    {
      *(v3 - 4) = v4;
      operator delete(v4);
    }

    if (*(v3 - 41) < 0)
    {
      operator delete(*(v3 - 8));
      v5 = v3 - 11;
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v5 = v3 - 11;
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    operator delete(*v5);
LABEL_17:
    v3 = v5;
  }

  while (v5 != v2);
  v6 = this[13];
  this[14] = v2;
  operator delete(v6);
  if (*(this + 96) == 1)
  {
    goto LABEL_10;
  }
}

void google::protobuf::DescriptorBuilder::AddError(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void **__return_ptr, uint64_t))
{
  a6(&__p, a5);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 159);
    if (v11 < 0)
    {
      v12 = *(a1 + 136);
      v11 = *(a1 + 144);
    }

    else
    {
      v12 = a1 + 136;
    }

    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = a2[1];
    }

    (*(*v10 + 16))(v10, v12, v11, v14, v15, a3, a4);
    *(a1 + 128) = 1;
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(__p);
    return;
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 4620);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "Invalid proto descriptor for file ", 0x23uLL);
    v16 = absl::lts_20240722::log_internal::LogMessage::operator<<(v18, (a1 + 136));
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, ":", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 4623);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "  ", 2uLL);
  v17 = absl::lts_20240722::log_internal::LogMessage::operator<<(v18, a2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, ": ", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<(v17, &__p);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
  *(a1 + 128) = 1;
  if (v20 < 0)
  {
    goto LABEL_16;
  }
}

void sub_23CD7AE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AddNotDefinedError(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 272))
  {
    v12[0] = a1;
    v9 = a1;
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, v12, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_1,std::string>);
    a1 = v9;
    LOBYTE(v10) = *(v9 + 327);
    goto LABEL_5;
  }

  v10 = *(a1 + 327);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 327))
    {
      goto LABEL_5;
    }

LABEL_11:
    v12[0] = a5;
    v11 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_0,std::string>;
    goto LABEL_12;
  }

  if (!*(a1 + 312))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v10 & 0x80) == 0)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_9;
  }

  if (*(a1 + 312))
  {
LABEL_9:
    v12[0] = a5;
    v12[1] = a1;
    v11 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_2,std::string>;
LABEL_12:
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, v12, v11);
  }
}

void google::protobuf::DescriptorBuilder::AddWarning(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void **__return_ptr, uint64_t))
{
  a6(&__p, a5);
  v10 = *(a1 + 16);
  if (!v10)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 4679);
    v16 = absl::lts_20240722::log_internal::LogMessage::operator<<(v18, (a1 + 136));
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, " ", 1uLL);
    v17 = absl::lts_20240722::log_internal::LogMessage::operator<<(v16, a2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, ": ", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v17, &__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(__p);
    return;
  }

  v11 = *(a1 + 159);
  if (v11 < 0)
  {
    v12 = *(a1 + 136);
    v11 = *(a1 + 144);
  }

  else
  {
    v12 = a1 + 136;
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  (*(*v10 + 24))(v10, v12, v11, v14, v15, a3, a4);
  if (v20 < 0)
  {
    goto LABEL_14;
  }
}

void sub_23CD7B0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *google::protobuf::DescriptorBuilder::RecordPublicDependencies(uint64_t *result, uint64_t a2)
{
  v9 = a2;
  if (a2)
  {
    v2 = result;
    result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::find_or_prepare_insert<google::protobuf::FileDescriptor const*>(result + 22, &v9, v7);
    if (v8)
    {
      v3 = v9;
      *v7[1] = v9;
      if (v3)
      {
        v4 = 0;
        do
        {
          if (v4 >= *(v3 + 52))
          {
            break;
          }

          v5 = *(*(v3 + 80) + 4 * v4);
          v6 = *(v3 + 40);
          if (v6)
          {
            v7[0] = v3;
            if (atomic_load_explicit(v6, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v6, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, v7);
            }
          }

          result = google::protobuf::DescriptorBuilder::RecordPublicDependencies(v2, *(*(v3 + 72) + 8 * v5));
          ++v4;
          v3 = v9;
        }

        while (v9);
      }
    }
  }

  return result;
}

_BYTE *google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(atomic_ullong ***a1, atomic_ullong **a2, void **a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a4;
  if (*a1 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      absl::lts_20240722::Mutex::Lock(v9);
    }
  }

  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(a2[5], v11, v12, a4, a5);
  if (!*Symbol)
  {
    v17 = a2[3];
    if (!v17 || (Symbol = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(a1, v17, a3, 1), !*Symbol))
    {
      if (v5)
      {
        v18 = *(a3 + 23);
        v19 = v18 >= 0 ? a3 : *a3;
        v20 = v18 >= 0 ? *(a3 + 23) : a3[1];
        if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, v19, v20, v13, v14))
        {
          v23 = *(a3 + 23);
          if (v23 >= 0)
          {
            v24 = a3;
          }

          else
          {
            v24 = *a3;
          }

          if (v23 >= 0)
          {
            v25 = *(a3 + 23);
          }

          else
          {
            v25 = a3[1];
          }

          Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(a2[5], v24, v25, v21, v22);
        }
      }
    }
  }

  if (v9)
  {
    absl::lts_20240722::Mutex::Unlock(v9);
  }

  return Symbol;
}

void sub_23CD7B300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void sub_23CD7B314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void sub_23CD7B32C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

BOOL absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::contains<google::protobuf::FileDescriptor const*>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    v4 = 0;
    _X9 = a1[2];
    __asm { PRFM            #4, [X9] }

    v11 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
    v13 = vdup_n_s8(v12 & 0x7F);
    v14 = ((v12 >> 7) ^ (_X9 >> 12)) & v2;
    v15 = *(_X9 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      if (*(a1[3] + 8 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v2)) == *a2)
      {
        return _X9 != 0;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v16);
LABEL_7:
    while (!*&vceq_s8(v15, 0x8080808080808080))
    {
      v4 += 8;
      v14 = (v4 + v14) & v2;
      v15 = *(_X9 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  if (a1[1] < 2)
  {
    return 0;
  }

  return a1[2] == *a2;
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::erase<google::protobuf::FileDescriptor const*>(unint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    v4 = 0;
    _X9 = a1[2];
    __asm { PRFM            #4, [X9] }

    v11 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
    v13 = vdup_n_s8(v12 & 0x7F);
    v14 = ((v12 >> 7) ^ (_X9 >> 12)) & v2;
    v15 = *(_X9 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_7;
    }

LABEL_5:
    while (1)
    {
      v17 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v2;
      if (*(a1[3] + 8 * v17) == *a2)
      {
        break;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v16)
      {
LABEL_7:
        while (!*&vceq_s8(v15, 0x8080808080808080))
        {
          v4 += 8;
          v14 = (v4 + v14) & v2;
          v15 = *(_X9 + v14);
          v16 = vceq_s8(v15, v13);
          if (v16)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }

    if (_X9)
    {
      a1[2];
      absl::lts_20240722::container_internal::EraseMetaOnly(a1, v17);
      return 1;
    }

    return 0;
  }

  else if (a1[1] >= 2)
  {
    if (a1[2] == *a2)
    {
      a1[1] = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

_BYTE *google::protobuf::DescriptorBuilder::FindSymbol(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const unint64_t *a5)
{
  result = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(a1, *a1, a2, a3, a5);
  v8 = 0;
  v9 = *result;
  if (v9 <= 4)
  {
    if (*result > 2u)
    {
      if (v9 == 3)
      {
        goto LABEL_19;
      }

      if (v9 != 4)
      {
        goto LABEL_20;
      }
    }

    else if (v9 != 1 && v9 != 2)
    {
      goto LABEL_20;
    }

LABEL_17:
    v8 = *(result + 2);
    if (v8 == *(a1 + 160))
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (*result <= 7u)
  {
    if (v9 == 5)
    {
      goto LABEL_19;
    }

    if (v9 != 7)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v9 == 8)
  {
LABEL_19:
    v8 = *(*(result + 2) + 16);
    goto LABEL_20;
  }

  if (v9 == 9)
  {
    v8 = result;
    if (result != *(a1 + 160))
    {
      goto LABEL_21;
    }

LABEL_34:
    if ((v9 - 9) < 2)
    {
      goto LABEL_48;
    }

    v26 = *(a1 + 240);
    if (v26 > 1)
    {
      v27 = 0;
      v28 = &v8[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8))];
      v29 = 0x9DDFEA08EB382D69 * v28;
      v30 = (v28 * 0x9DDFEA08EB382D69) >> 64;
      _X13 = *(a1 + 256);
      __asm { PRFM            #4, [X13] }

      v33 = v30 ^ v29;
      v34 = vdup_n_s8(v33 & 0x7F);
      v35 = ((v33 >> 7) ^ (_X13 >> 12)) & v26;
      v36 = *(_X13 + v35);
      v37 = vceq_s8(v36, v34);
      if (!v37)
      {
        goto LABEL_42;
      }

      do
      {
LABEL_40:
        v38 = (v35 + (__clz(__rbit64(v37)) >> 3)) & v26;
        if (*(*(a1 + 264) + 8 * v38) == v8)
        {
          if (_X13)
          {
            v39 = result;
            absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 240), v38);
            result = v39;
            v9 = *v39;
          }

          goto LABEL_47;
        }

        v37 &= ((v37 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v37);
LABEL_42:
      while (!*&vceq_s8(v36, 0x8080808080808080))
      {
        v27 += 8;
        v35 = (v27 + v35) & v26;
        v36 = *(_X13 + v35);
        v37 = vceq_s8(v36, v34);
        if (v37)
        {
          goto LABEL_40;
        }
      }
    }

    else if (*(a1 + 248) >= 2uLL && *(a1 + 256) == v8)
    {
      *(a1 + 248) = 0;
    }

    goto LABEL_47;
  }

  if (v9 != 10)
  {
LABEL_20:
    if (v8 != *(a1 + 160))
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  v8 = *(result + 1);
  if (v8 == *(a1 + 160))
  {
    goto LABEL_34;
  }

LABEL_21:
  v10 = *(a1 + 176);
  if (v10 > 1)
  {
    v11 = 0;
    v12 = &v8[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8))];
    v13 = 0x9DDFEA08EB382D69 * v12;
    v14 = (v12 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(a1 + 192);
    __asm { PRFM            #4, [X12] }

    v21 = v14 ^ v13;
    v22 = vdup_n_s8(v21 & 0x7F);
    v23 = ((v21 >> 7) ^ (_X12 >> 12)) & v10;
    v24 = *(_X12 + v23);
    v25 = vceq_s8(v24, v22);
    if (!v25)
    {
      goto LABEL_28;
    }

LABEL_26:
    while (*(*(a1 + 200) + 8 * ((v23 + (__clz(__rbit64(v25)) >> 3)) & v10)) != v8)
    {
      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v25)
      {
LABEL_28:
        while (!*&vceq_s8(v24, 0x8080808080808080))
        {
          v11 += 8;
          v23 = (v11 + v23) & v10;
          v24 = *(_X12 + v23);
          v25 = vceq_s8(v24, v22);
          if (v25)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_47;
      }
    }

    if (_X12)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

  if (*(a1 + 184) >= 2uLL && *(a1 + 192) == v8)
  {
    goto LABEL_34;
  }

LABEL_47:
  if (!v9)
  {
    return result;
  }

LABEL_48:
  if (*(*a1 + 48) != 1)
  {
    return result;
  }

  v40 = 0;
  if (v9 <= 4)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        goto LABEL_66;
      }
    }

    else if (v9 != 1 && v9 != 2)
    {
      goto LABEL_67;
    }

LABEL_64:
    v40 = *(result + 2);
    v41 = *(a1 + 160);
    if (v40 == v41)
    {
      return result;
    }

    goto LABEL_68;
  }

  if (v9 <= 7)
  {
    if (v9 == 5)
    {
      goto LABEL_66;
    }

    if (v9 != 7)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  if (v9 == 8)
  {
LABEL_66:
    v40 = *(*(result + 2) + 16);
    goto LABEL_67;
  }

  if (v9 != 9)
  {
    if (v9 == 10)
    {
      v40 = *(result + 1);
      v41 = *(a1 + 160);
      if (v40 == v41)
      {
        return result;
      }

      goto LABEL_68;
    }

LABEL_67:
    v41 = *(a1 + 160);
    if (v40 == v41)
    {
      return result;
    }

    goto LABEL_68;
  }

  v40 = result;
  v41 = *(a1 + 160);
  if (result == v41)
  {
    return result;
  }

LABEL_68:
  v42 = *(a1 + 176);
  if (v42 <= 1)
  {
    if (*(a1 + 184) < 2uLL || *(a1 + 192) != v40)
    {
      goto LABEL_79;
    }

    return result;
  }

  v43 = 0;
  v44 = &v40[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v40) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v40))];
  v45 = 0x9DDFEA08EB382D69 * v44;
  v46 = (v44 * 0x9DDFEA08EB382D69) >> 64;
  _X11 = *(a1 + 192);
  __asm { PRFM            #4, [X11] }

  v49 = v46 ^ v45;
  v50 = vdup_n_s8(v49 & 0x7F);
  v51 = ((v49 >> 7) ^ (_X11 >> 12)) & v42;
  v52 = *(_X11 + v51);
  v53 = vceq_s8(v52, v50);
  if (!v53)
  {
    goto LABEL_75;
  }

  do
  {
LABEL_73:
    if (*(*(a1 + 200) + 8 * ((v51 + (__clz(__rbit64(v53)) >> 3)) & v42)) == v40)
    {
      if (!_X11)
      {
        goto LABEL_79;
      }

      return result;
    }

    v53 &= ((v53 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v53);
LABEL_75:
  while (!*&vceq_s8(v52, 0x8080808080808080))
  {
    v43 += 8;
    v51 = (v43 + v51) & v42;
    v52 = *(_X11 + v51);
    v53 = vceq_s8(v52, v50);
    if (v53)
    {
      goto LABEL_73;
    }
  }

LABEL_79:
  if ((v9 - 9) > 1)
  {
    goto LABEL_125;
  }

  v54 = *(a2 + 23);
  if (v54 >= 0)
  {
    v55 = a2;
  }

  else
  {
    v55 = *a2;
  }

  if (v54 >= 0)
  {
    v56 = *(a2 + 23);
  }

  else
  {
    v56 = *(a2 + 8);
  }

  v57 = *(v41 + 16);
  v58 = *(v57 + 23);
  if (v58 < 0)
  {
    v59 = *v57;
    v60 = v57[1];
    if (v56)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  v59 = *(v41 + 16);
  v60 = *(v57 + 23);
  if (!v56)
  {
    goto LABEL_94;
  }

LABEL_92:
  if (v60 < v56 || (v61 = result, v62 = memcmp(v59, v55, v56), result = v61, v62))
  {
LABEL_101:
    if (*(a1 + 184) >= 2uLL)
    {
      if (v42 >= 2)
      {
        v65 = *(a1 + 192);
        v64 = *(a1 + 200);
        if (*v65 <= -2)
        {
          do
          {
            v66 = __clz(__rbit64((*v65 | ~(*v65 >> 7)) & 0x101010101010101)) >> 3;
            v65 = (v65 + v66);
            v64 += 8 * v66;
          }

          while (*v65 < -1);
        }
      }

      else
      {
        v64 = a1 + 192;
        v65 = &absl::lts_20240722::container_internal::kSooControl;
      }

      do
      {
        if (!*v64)
        {
          goto LABEL_122;
        }

        v67 = *(*v64 + 16);
        v68 = *(v67 + 23);
        if (v68 < 0)
        {
          v69 = *v67;
          v70 = v67[1];
          if (v56)
          {
LABEL_113:
            if (v70 < v56)
            {
              goto LABEL_122;
            }

            v71 = result;
            v72 = memcmp(v69, v55, v56);
            result = v71;
            if (v72)
            {
              goto LABEL_122;
            }
          }
        }

        else
        {
          v69 = *(*v64 + 16);
          v70 = *(v67 + 23);
          if (v56)
          {
            goto LABEL_113;
          }
        }

        if ((v68 & 0x80000000) != 0)
        {
          if (v67[1] == v56)
          {
            return result;
          }
        }

        else if (v68 == v56)
        {
          return result;
        }

        if ((v68 & 0x80000000) != 0)
        {
          v67 = *v67;
        }

        if (*(v67 + v56) == 46)
        {
          return result;
        }

LABEL_122:
        v74 = *(v65 + 1);
        v65 = (v65 + 1);
        LOBYTE(v73) = v74;
        v64 += 8;
        if (v74 <= -2)
        {
          do
          {
            v75 = __clz(__rbit64((*v65 | ~(*v65 >> 7)) & 0x101010101010101)) >> 3;
            v65 = (v65 + v75);
            v64 += 8 * v75;
            v73 = *v65;
          }

          while (v73 < -1);
        }
      }

      while (v73 != 255);
    }

LABEL_125:
    *(a1 + 272) = v40;
    std::string::operator=((a1 + 280), a2);
    return &google::protobuf::Symbol::Symbol(void)::null_symbol;
  }

LABEL_94:
  if ((v58 & 0x80000000) != 0)
  {
    v63 = v57[1];
  }

  else
  {
    v63 = v58;
  }

  if (v63 != v56)
  {
    if ((v58 & 0x80000000) != 0)
    {
      v57 = *v57;
    }

    if (*(v57 + v56) != 46)
    {
      goto LABEL_101;
    }
  }

  return result;
}

_BYTE *google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(uint64_t a1, std::string *this, uint64_t a3, uint64_t a4, const unint64_t *a5)
{
  v6 = a4;
  v8 = this;
  *(a1 + 272) = 0;
  if (*(a1 + 327) < 0)
  {
    **(a1 + 304) = 0;
    *(a1 + 312) = 0;
    v10 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 304) = 0;
    *(a1 + 327) = 0;
    v10 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v10 && this->__r_.__value_.__s.__data_[0] == 46)
      {
        v11 = v10 - 1;
        if ((v10 - 1) <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  size = this->__r_.__value_.__l.__size_;
  if (size && *this->__r_.__value_.__l.__data_ == 46)
  {
    v8 = this->__r_.__value_.__r.__words[0];
    v11 = size - 1;
    if (size - 1 <= 0x7FFFFFFFFFFFFFF7)
    {
LABEL_6:
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&__dst, &v8->__r_.__value_.__l.__data_ + 1, v11);
      }

      __dst.__r_.__value_.__s.__data_[v11] = 0;
      Symbol = google::protobuf::DescriptorBuilder::FindSymbol(a1, &__dst, a5, a4, a5);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_65;
      }

      return Symbol;
    }

LABEL_13:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_14:
  v13 = std::string::find(this, 46, 0);
  memset(&__dst, 0, sizeof(__dst));
  if (v13 != -1)
  {
    v14 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = v8->__r_.__value_.__l.__size_;
    }

    if (v15 >= 0)
    {
      v16 = v8;
    }

    else
    {
      v16 = v8->__r_.__value_.__r.__words[0];
    }

    if (v14 >= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memmove(&__p, v16, v17);
      __p.__r_.__value_.__s.__data_[v17] = 0;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        __dst = __p;
        goto LABEL_33;
      }
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_27;
  }

  std::string::operator=(&__dst, v8);
LABEL_33:
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  while (1)
  {
    v19 = std::string::rfind(&__p, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v19 == -1)
    {
      Symbol = google::protobuf::DescriptorBuilder::FindSymbol(a1, v8, a5, v20, v21);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_71;
    }

    std::string::erase(&__p, v19, 0xFFFFFFFFFFFFFFFFLL);
    v22 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::string::append(&__p, 1uLL, 46);
    v23 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
    v24 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
    std::string::append(&__p, v23, v24);
    Symbol = google::protobuf::DescriptorBuilder::FindSymbol(a1, &__p, a5, v25, v26);
    v27 = *Symbol;
    if (*Symbol)
    {
      break;
    }

LABEL_36:
    std::string::erase(&__p, v22, 0xFFFFFFFFFFFFFFFFLL);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = __dst.__r_.__value_.__l.__size_;
  }

  v29 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  if ((v29 & 0x80u) != 0)
  {
    v29 = v8->__r_.__value_.__l.__size_;
  }

  if (v29 <= v28)
  {
    if (v6 != 1 || v27 == 1 || v27 == 4)
    {
      goto LABEL_63;
    }

    goto LABEL_36;
  }

  if (v27 > 0xA || ((1 << v27) & 0x692) == 0)
  {
    goto LABEL_36;
  }

  std::string::append(&__p, v8, v28, v29 - v28);
  v32 = google::protobuf::DescriptorBuilder::FindSymbol(a1, &__p, a5, v30, v31);
  Symbol = v32;
  if (!*v32)
  {
    std::string::operator=((a1 + 304), &__p);
  }

LABEL_63:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_64:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return Symbol;
    }

    goto LABEL_65;
  }

LABEL_71:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return Symbol;
  }

LABEL_65:
  operator delete(__dst.__r_.__value_.__l.__data_);
  return Symbol;
}

void sub_23CD7C098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void *google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(void **a1, char *a2, uint64_t a3, int a4)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (v8)
  {
    absl::lts_20240722::Mutex::AssertHeld(v8, a2);
  }

  v55 = 0uLL;
  if (a3)
  {
    v9 = 0;
    v10 = &a2[a3];
    v11 = a2;
    v12 = &google::protobuf::Symbol::Symbol(void)::null_symbol;
    do
    {
      while (1)
      {
        v13 = *v11;
        if ((v13 & 0xFFFFFFDF) - 65 < 0x1A)
        {
          break;
        }

        if (v13 == 95 || (v13 - 48) < 0xA)
        {
          break;
        }

        if (!(v9 & 1 | (v13 != 46)))
        {
          ++v11;
          v9 = 1;
          if (v11 != v10)
          {
            continue;
          }
        }

        goto LABEL_62;
      }

      v9 = 0;
      ++v11;
    }

    while (v11 != v10);
    v15 = *a2 == 46;
    if (*a2 == 46)
    {
      v16 = a2 + 1;
    }

    else
    {
      v16 = a2;
    }

    v17 = a3 - v15;
    *&v56 = v16;
    *(&v56 + 1) = v17;
    if (v15)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v45 = v18;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    memset(v47, 0, sizeof(v47));
    if (a4 == 1)
    {
      *&v48 = 0x600000130;
    }

    else
    {
      *&v48 = 0x400000140;
      if (a4 == 2)
      {
        LODWORD(v48) = 360;
      }
    }

    if (v17)
    {
      v19 = 0;
      while (-(a3 + v45) != v19)
      {
        v20 = v16[a3 - 1 + v45 + v19--];
        if (v20 == 46)
        {
          v21 = a3 + v45 + v19;
          if (v21 == -1)
          {
            break;
          }

          if (v17 >= v21)
          {
            v17 = a3 + v45 + v19;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v23 = v44;
          if (v17 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v60) = v17;
          if (-(a3 + v45) != v19)
          {
            memmove(&__dst, v16, v17);
          }

          *(&__dst + v17) = 0;
          if (*(v23 + 23) < 0)
          {
            operator delete(*v23);
          }

          *v23 = __dst;
          *(v23 + 16) = v60;
          v17 = *(&v56 + 1);
          if (*(&v56 + 1) <= (a3 + v45 + v19))
          {
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

          v16 = v56;
          *&v55 = v56 + a3 + v45 + v19 + 1;
          *(&v55 + 1) = *(&v56 + 1) + ~a3 - v45 - v19;
          goto LABEL_34;
        }
      }
    }

    v23 = v22;
    if (*(v22 + 23) < 0)
    {
      operator delete(*v22);
    }

    *v23 = 0;
    *(v23 + 23) = 0;
    v55 = v56;
LABEL_34:
    *&__dst = v16;
    *(&__dst + 1) = v17;
    v57 = ".placeholder.proto";
    v58 = 18;
    absl::lts_20240722::StrCat(&__dst, &v57, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v26 = google::protobuf::DescriptorPool::NewPlaceholderFileWithMutexHeld(a1, p_p, size, v47);
    v27 = v26;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      *(v27 + 16) = v23;
      if (a4 == 1)
      {
LABEL_42:
        *(v27 + 64) = 1;
        *(v27 + 104) = v12;
        v12[10] = 0;
        *(v12 + 3) = 0u;
        *(v12 + 4) = 0u;
        *(v12 + 1) = 0u;
        *(v12 + 2) = 0u;
        *v12 = 0u;
        v12[2] = v27;
        v12[4] = &google::protobuf::_EnumOptions_default_instance_;
        v12[5] = &google::protobuf::_FeatureSet_default_instance_;
        v12[6] = &google::protobuf::_FeatureSet_default_instance_;
        v28 = *(v12 + 1) | 1;
        *(v12 + 1) = v28;
        *(v12 + 1) = v28 & 0xFD | (2 * (*a2 != 46));
        *(v12 + 1) = 1;
        v12[7] = v29;
        *(v12 + 1) = -1;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 0u;
        *v29 = 0u;
        v30 = *(v23 + 23);
        if (v30 < 0)
        {
          if (*(v23 + 8))
          {
            goto LABEL_44;
          }
        }

        else if (*(v23 + 23))
        {
LABEL_44:
          v31 = *v23;
          if (v30 < 0)
          {
            v30 = *(v23 + 8);
          }

          else
          {
            v31 = v23;
          }

          *&__dst = v31;
          *(&__dst + 1) = v30;
          v57 = ".PLACEHOLDER_VALUE";
          v58 = 18;
          absl::lts_20240722::StrCat(&__dst, &v57, &__p);
          goto LABEL_54;
        }

        *(&__p.__r_.__value_.__s + 23) = 17;
        strcpy(&__p, "PLACEHOLDER_VALUE");
LABEL_54:
        v36 = v35;
        if (*(v35 + 23) < 0)
        {
          operator delete(*v35);
        }

        strcpy(v36, "PLACEHOLDER_VALUE");
        *(v36 + 23) = 17;
        v61[0] = __p.__r_.__value_.__l.__size_;
        v37 = __p.__r_.__value_.__r.__words[0];
        *(v61 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
        v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        memset(&__p, 0, sizeof(__p));
        if (*(v36 + 47) < 0)
        {
          operator delete(*(v36 + 24));
          v40 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v41 = v61[0];
          *(v36 + 24) = v37;
          *(v36 + 32) = v41;
          *(v36 + 39) = *(v61 + 7);
          *(v36 + 47) = v38;
          *(v29 + 8) = v36;
          if (v40 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v39 = v61[0];
          *(v36 + 24) = v37;
          *(v36 + 32) = v39;
          *(v36 + 39) = *(v61 + 7);
          *(v36 + 47) = v38;
          *(v29 + 8) = v36;
        }

        *(v29 + 4) = 0;
        *(v29 + 16) = v12;
        *(v29 + 24) = &google::protobuf::_EnumValueOptions_default_instance_;
        v34 = 4;
LABEL_61:
        *v12 = v34;
        goto LABEL_62;
      }
    }

    else
    {
      *(v26 + 16) = v23;
      if (a4 == 1)
      {
        goto LABEL_42;
      }
    }

    *(v27 + 60) = 1;
    *(v27 + 96) = v12;
    v12[18] = 0;
    *(v12 + 7) = 0u;
    *(v12 + 8) = 0u;
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v12[2] = v27;
    v12[4] = &google::protobuf::_MessageOptions_default_instance_;
    v12[5] = &google::protobuf::_FeatureSet_default_instance_;
    v12[6] = &google::protobuf::_FeatureSet_default_instance_;
    v32 = *(v12 + 1) | 1;
    *(v12 + 1) = v32;
    *(v12 + 1) = v32 & 0xFD | (2 * (*a2 != 46));
    if (a4 == 2)
    {
      *(v12 + 34) = 1;
      v12[11] = v33;
      *v33 = 0x2000000000000001;
      v33[1] = 0;
      v33[3] = &google::protobuf::_FeatureSet_default_instance_;
      v33[4] = &google::protobuf::_FeatureSet_default_instance_;
    }

    v34 = 1;
    goto LABEL_61;
  }

  v12 = &google::protobuf::Symbol::Symbol(void)::null_symbol;
LABEL_62:
  v42 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_23CD7C75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::FinalizePlanning<std::unique_ptr<google::protobuf::DescriptorPool::Tables> const>(uint64_t a1, void *a2)
{
  if (*a1)
  {
  }

  result = google::protobuf::DescriptorPool::Tables::CreateFlatAlloc<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>(a2, (a1 + 112));
  v4 = result + 14;
  v5 = *result;
  v6 = result[1];
  if (v5 == 56)
  {
    v4 = 0;
  }

  v7 = result + v5;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[2];
  v9 = result[3];
  if (v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = result + v6;
  }

  v11 = result + v8;
  if (v8 == v9)
  {
    v11 = 0;
  }

  v12 = result + v9;
  v13 = result[4];
  v14 = result[5];
  if (v9 == v13)
  {
    v12 = 0;
  }

  v15 = result + v13;
  if (v13 == v14)
  {
    v15 = 0;
  }

  v16 = result + v14;
  v18 = result[6];
  v17 = result[7];
  if (v14 == v18)
  {
    v16 = 0;
  }

  v19 = result + v18;
  v20 = result[8];
  v21 = result[9];
  v22 = result[10];
  v23 = result[11];
  if (v18 == v17)
  {
    v19 = 0;
  }

  v24 = result + v17;
  v25 = v17 == v20;
  v26 = result[13];
  v27 = result[12];
  if (v25)
  {
    v24 = 0;
  }

  v25 = v20 == v21;
  v28 = result + v20;
  if (v25)
  {
    v28 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v7;
  v29 = result + v21;
  if (v21 == v22)
  {
    v29 = 0;
  }

  v30 = result + v22;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  if (v22 == v23)
  {
    v30 = 0;
  }

  v31 = result + v23;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
  if (v23 == v27)
  {
    v31 = 0;
  }

  v32 = result + v27;
  if (v27 == v26)
  {
    v32 = 0;
  }

  *(a1 + 48) = v16;
  *(a1 + 56) = v19;
  *(a1 + 64) = v24;
  *(a1 + 72) = v28;
  *(a1 + 80) = v29;
  *(a1 + 88) = v30;
  *(a1 + 96) = v31;
  *(a1 + 104) = v32;
  if (v5 == 56)
  {
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::NewPlaceholderFileWithMutexHeld(void **a1, const void *a2, size_t a3, uint64_t *a4)
{
  v8 = *a1;
  if (v8)
  {
    absl::lts_20240722::Mutex::AssertHeld(v8, a2);
  }

  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = a3;
  if (a3)
  {
    v10 = memmove(&__dst, a2, a3);
    *(&__dst + a3) = 0;
    if ((v11[23] & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((v10[23] & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(*v11);
LABEL_7:
  *v11 = __dst;
  *(v11 + 2) = v14;
  *(v9 + 8) = v11;
  if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::internal::InitProtobufDefaultsSlow(v10);
  }

  *(v9 + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(v9 + 24) = a1;
  *(v9 + 128) = &google::protobuf::_FileOptions_default_instance_;
  *(v9 + 136) = &google::protobuf::_FeatureSet_default_instance_;
  *(v9 + 144) = &google::protobuf::_FeatureSet_default_instance_;
  {
    operator new();
  }

  *(v9 + 152) = google::protobuf::FileDescriptorTables::GetEmptyInstance(void)::file_descriptor_tables;
  *(v9 + 160) = &google::protobuf::_SourceCodeInfo_default_instance_;
  *(v9 + 1) = 257;
  return v9;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::EnumDescriptor>(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
  }

  v4 = *(a1 + 42);
  v5 = v4 + 88 * a2;
  *(a1 + 42) = v5;
  v6 = *(a1 + 28);
  if (v5 > v6)
  {
  }

  return v2 + v4;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateStrings<std::string_view &,std::string_view &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_18:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v5;
  v8 = *a2;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v6;
  if (v6)
  {
    memmove(&__dst, v8, v6);
    *(&__dst + v6) = 0;
    if ((*(v7 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*v7);
LABEL_5:
  *v7 = __dst;
  *(v7 + 16) = v15;
  HIBYTE(v15) = 0;
  LOBYTE(__dst) = 0;
  v9 = *(a3 + 8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_18;
  }

  v10 = *a3;
  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v9;
  if (!v9)
  {
    LOBYTE(v12) = 0;
    if ((*(v7 + 47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    operator delete(*(v7 + 24));
    *(v7 + 24) = v12;
    *(v7 + 40) = v13;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      return v7;
    }

LABEL_17:
    operator delete(__dst);
    return v7;
  }

  memmove(&v12, v10, v9);
  *(&v12 + v9) = 0;
  if (*(v7 + 47) < 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  *(v7 + 24) = v12;
  *(v7 + 40) = v13;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::EnumValueDescriptor>(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
  }

  v4 = *(a1 + 42);
  v5 = v4 + 48 * a2;
  *(a1 + 42) = v5;
  v6 = *(a1 + 28);
  if (v5 > v6)
  {
  }

  return v2 + v4;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::Descriptor>(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
  }

  v4 = *(a1 + 42);
  v5 = v4 + 152 * a2;
  *(a1 + 42) = v5;
  v6 = *(a1 + 28);
  if (v5 > v6)
  {
  }

  return v2 + v4;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::Descriptor::ExtensionRange>(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
  }

  v4 = *(a1 + 42);
  v5 = v4 + 40 * a2;
  *(a1 + 42) = v5;
  v6 = *(a1 + 28);
  if (v5 > v6)
  {
  }

  return v2 + v4;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::FileDescriptor>(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
  }

  v2 = *(a1 + 42);
  *(a1 + 42) = v2 + 168;
  v3 = *(a1 + 28);
  if (v2 + 168 > v3)
  {
  }

  return v1 + v2;
}

uint64_t google::protobuf::DescriptorBuilder::AddSymbol(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if (v11)
  {
    v12 = v10 >= 0 ? a2 : *a2;
    v13 = memchr(v12, 0, v11);
    if (v13 && v13 - v12 != -1)
    {
      v28 = a2;
      v27 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_0,std::string>;
LABEL_45:
      google::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, &v28, v27);
      return 0;
    }
  }

  if (!google::protobuf::DescriptorPool::Tables::AddSymbol(a1[1], a2, v11, a6))
  {
    v21 = *(a2 + 23);
    if (v21 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= 0)
    {
      v23 = *(a2 + 23);
    }

    else
    {
      v23 = *(a2 + 8);
    }

    Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(a1[1], v22, v23, v17, v18);
    v25 = 0;
    v26 = *Symbol;
    if (v26 <= 4)
    {
      if (*Symbol > 2u)
      {
        if (v26 == 3)
        {
          goto LABEL_42;
        }

        if (v26 != 4)
        {
          goto LABEL_43;
        }
      }

      else if (v26 != 1 && v26 != 2)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (*Symbol > 7u)
      {
        if (v26 != 8)
        {
          if (v26 == 9)
          {
            v31 = Symbol;
            if (Symbol == a1[20])
            {
LABEL_40:
              v30 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
              if (v30 == -1)
              {
                v28 = a2;
                v27 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_1,std::string>;
              }

              else
              {
                v28 = a2;
                v29 = &v30;
                v27 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_2,std::string>;
              }

              goto LABEL_45;
            }

LABEL_44:
            v28 = a2;
            v29 = &v31;
            v27 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_3,std::string>;
            goto LABEL_45;
          }

          if (v26 == 10)
          {
            v31 = *(Symbol + 1);
            if (v31 == a1[20])
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }

LABEL_43:
          v31 = v25;
          if (v25 == a1[20])
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }

LABEL_42:
        v25 = *(*(Symbol + 2) + 16);
        goto LABEL_43;
      }

      if (v26 == 5)
      {
        goto LABEL_42;
      }

      if (v26 != 7)
      {
        goto LABEL_43;
      }
    }

    v31 = *(Symbol + 2);
    if (v31 == a1[20])
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

  v19 = a1[21];

  return google::protobuf::FileDescriptorTables::AddAliasUnderParent(v19, v15, v16, v17, a6);
}

void google::protobuf::DescriptorBuilder::AddPackage(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  if (std::string::find(a2, 0, 0) != -1)
  {
    __p = a2;
    v10 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddPackage(std::string const&,google::protobuf::Message const&,google::protobuf::FileDescriptor *)::$_0,std::string>;
LABEL_3:
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, &__p, v10);
    return;
  }

  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2->__r_.__value_.__r.__words[0];
  }

  if (v11 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(*(a1 + 8), v12, size, v8, v9);
  v17 = *Symbol;
  if (!*Symbol)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    v21 = *(a4 + 16);
    if (*(v21 + 23) < 0)
    {
      if (v20 != *v21)
      {
        goto LABEL_24;
      }
    }

    else if (v20 != v21)
    {
LABEL_24:
      Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(*(a1 + 8), 16);
      v23 = Bytes;
      *Bytes = 0;
      *(Bytes + 1) = 0;
      *(Bytes + 1) = 0;
      LODWORD(v24) = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v24 & 0x80u) != 0)
      {
        v24 = a2->__r_.__value_.__l.__size_;
      }

      *(Bytes + 1) = v24;
      *(Bytes + 1) = a4;
      v25 = *(a1 + 8);
      *v23 = 10;
LABEL_29:
      google::protobuf::DescriptorPool::Tables::AddSymbol(v25, v15, v16, v23);
      v26 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
      if (v26 == -1)
      {
        v32 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if ((v32 & 0x8000000000000000) != 0)
        {
          v32 = a2->__r_.__value_.__l.__size_;
          if (v32)
          {
            v33 = a2->__r_.__value_.__r.__words[0];
            goto LABEL_78;
          }
        }

        else if (*(&a2->__r_.__value_.__s + 23))
        {
          v33 = a2;
LABEL_78:
          while (1)
          {
            v43 = v33->__r_.__value_.__s.__data_[0];
            if ((v43 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v43 != 95 && (v43 - 58) <= 0xFFFFFFF5)
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v32)
            {
              return;
            }
          }

          __p = a2;
          v10 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>;
          goto LABEL_3;
        }

        google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, "Missing name.");
        return;
      }

      v27 = v26;
      v28 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = a2->__r_.__value_.__l.__size_;
      }

      if (v29 >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = a2->__r_.__value_.__r.__words[0];
      }

      if (v28 >= v26)
      {
        v31 = v26;
      }

      else
      {
        v31 = v28;
      }

      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_62;
      }

      if (v31 >= 0x17)
      {
        operator new();
      }

      v47 = v31;
      if (v31)
      {
        memmove(&__p, v30, v31);
      }

      *(&__p + v31) = 0;
      google::protobuf::DescriptorBuilder::AddPackage(a1, &__p, a3, a4);
      if (v47 < 0)
      {
        operator delete(__p);
      }

      v34 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v34 & 0x8000000000000000) != 0)
      {
        v34 = a2->__r_.__value_.__l.__size_;
        if (v34 > v27)
        {
          v35 = a2->__r_.__value_.__r.__words[0];
          v36 = v27 + 1;
          v37 = v34 - (v27 + 1);
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
LABEL_52:
            if (v37 >= 0x17)
            {
              operator new();
            }

            v47 = v37;
            if (v34 != v36)
            {
              memmove(&__p, v35 + v36, v37);
            }

            *(&__p + v37) = 0;
            v38 = v47;
            if ((v47 & 0x8000000000000000) != 0)
            {
              v40 = v46;
              if (v46)
              {
                p_p = __p;
                goto LABEL_66;
              }
            }

            else if (v47)
            {
              p_p = &__p;
              v40 = v47;
LABEL_66:
              while (1)
              {
                v41 = *p_p;
                if ((v41 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v41 != 95 && (v41 - 58) <= 0xFFFFFFF5)
                {
                  break;
                }

                ++p_p;
                v40 = (v40 - 1);
                if (!v40)
                {
                  goto LABEL_73;
                }
              }

              v48 = &__p;
              google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, &v48, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
              v38 = v47;
              goto LABEL_73;
            }

            google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, "Missing name.");
LABEL_73:
            if (v38 < 0)
            {
              operator delete(__p);
            }

            return;
          }

LABEL_62:
          std::string::__throw_length_error[abi:ne200100]();
        }
      }

      else
      {
        v35 = a2;
        if (v27 < v34)
        {
          v36 = v27 + 1;
          v37 = v34 - (v27 + 1);
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_52;
          }

          goto LABEL_62;
        }
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v25 = *(a1 + 8);
    *a4 = 9;
    v23 = a4;
    goto LABEL_29;
  }

  if (v17 - 9 >= 2)
  {
    v18 = 0;
    if (v17 <= 8)
    {
      v19 = 1 << v17;
      if ((v19 & 0x96) != 0)
      {
LABEL_17:
        v18 = *(Symbol + 2);
        goto LABEL_18;
      }

      if ((v19 & 0x128) != 0)
      {
        Symbol = *(Symbol + 2);
        goto LABEL_17;
      }
    }

LABEL_18:
    v48 = v18;
    __p = a2;
    v46 = &v48;
    v10 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddPackage(std::string const&,google::protobuf::Message const&,google::protobuf::FileDescriptor *)::$_1,std::string>;
    goto LABEL_3;
  }
}

void sub_23CD7D56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CD7D6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    operator delete(v18);
    _Unwind_Resume(a1);
  }

  operator delete(v18);
  _Unwind_Resume(a1);
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::FileDescriptor>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v63[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 8) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 200);
  v14 = *(a11 + 104);
  v15 = *(a11 + 220);
  *(a11 + 220) = v15 + 1;
  v16 = *(a11 + 164);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::FileOptions::IsInitialized(v13) & 1) == 0)
  {
    __dst[0] = a2;
    __dst[1] = a3;
    v63[0] = ".";
    v63[1] = 1;
    v62[0] = a4;
    v62[1] = a5;
    absl::lts_20240722::StrCat(__dst, v63, v62, &__p);
    google::protobuf::DescriptorBuilder::AddError(a1, &__p, v13, 7, "Uninterpreted option is missing name or value.");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_16;
  }

  google::protobuf::MessageLite::SerializeAsString(v13, __dst);
  v22 = (v14 + 176 * v15);
  if ((v57 & 0x80u) == 0)
  {
    v23 = __dst;
  }

  else
  {
    v23 = __dst[0];
  }

  if ((v57 & 0x80u) == 0)
  {
    v24 = v57;
  }

  else
  {
    v24 = __dst[1];
  }

  v25 = google::protobuf::internal::ParseNoReflection(v23, v24, v22);
  if ((v57 & 0x80000000) == 0)
  {
    if (v22[14] < 1)
    {
      goto LABEL_25;
    }

LABEL_19:
    v25 = v60;
    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    if (v57 < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_25;
  }

  operator delete(__dst[0]);
  if (v22[14] >= 1)
  {
    goto LABEL_19;
  }

LABEL_25:
  v30 = *(v13 + 1);
  if (v30)
  {
    v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (*v31 == *((v30 & 0xFFFFFFFFFFFFFFFELL) + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v31 = google::protobuf::UnknownFieldSet::default_instance(v25);
    if (*v31 == v31[1])
    {
      goto LABEL_17;
    }
  }

  Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(*(a1 + 8), a9, a10, v26, v27);
  if (*Symbol == 1)
  {
    v34 = *v31;
    if (((v31[1] - *v31) >> 4) >= 1)
    {
      v35 = 0;
      while (1)
      {
        v41 = *a1;
        if (**a1)
        {
          absl::lts_20240722::Mutex::AssertHeld(**a1, v32);
          v41 = *a1;
          v34 = *v31;
        }

        if (*Symbol == 1)
        {
          v42 = Symbol;
        }

        else
        {
          v42 = 0;
        }

        ExtensionByNumberNoLock = google::protobuf::DescriptorPool::InternalFindExtensionByNumberNoLock(v41, v42, *(v34 + 16 * v35));
        if (!ExtensionByNumberNoLock)
        {
          goto LABEL_46;
        }

        v44 = *(ExtensionByNumberNoLock + 16);
        v45 = *(a1 + 240);
        if (v45 > 1)
        {
          v39 = 0;
          v46 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v44) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v44))) + v44;
          v47 = ((v46 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v46);
          v48 = vdup_n_s8(v47 & 0x7F);
          _X11 = *(a1 + 256);
          __asm { PRFM            #4, [X11] }

          for (i = (v47 >> 7) ^ (_X11 >> 12); ; i = v39 + v36)
          {
            v36 = i & v45;
            v37 = *(_X11 + v36);
            v38 = vceq_s8(v37, v48);
            if (v38)
            {
              break;
            }

LABEL_33:
            if (vceq_s8(v37, 0x8080808080808080))
            {
              goto LABEL_46;
            }

            v39 += 8;
          }

          while (1)
          {
            v32 = (v36 + (__clz(__rbit64(v38)) >> 3)) & v45;
            if (*(*(a1 + 264) + 8 * v32) == v44)
            {
              break;
            }

            v38 &= ((v38 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v38)
            {
              goto LABEL_33;
            }
          }

          if (!_X11)
          {
            goto LABEL_46;
          }

          absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 240), v32);
          v34 = *v31;
          if (++v35 >= ((v31[1] - *v31) >> 4))
          {
            break;
          }
        }

        else if (*(a1 + 248) >= 2uLL && *(a1 + 256) == v44)
        {
          *(a1 + 248) = 0;
          if (++v35 >= ((v31[1] - v34) >> 4))
          {
            break;
          }
        }

        else
        {
LABEL_46:
          if (++v35 >= ((v31[1] - v34) >> 4))
          {
            break;
          }
        }
      }
    }
  }

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_23CD7DB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CD7DB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a4 + 136) = &google::protobuf::_FeatureSet_default_instance_;
  *(a4 + 144) = &google::protobuf::_FeatureSet_default_instance_;
  if ((*(a1 + 96) & 1) == 0)
  {
    google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(&v23);
  }

  if (!a5)
  {
    google::protobuf::FeatureSet::FeatureSet(v25, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((*(a5 + 41) & 4) == 0)
  {
    google::protobuf::FeatureSet::FeatureSet(v25, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v16 = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), *(a5 + 152));
  *(a4 + 136) = v16;
  v18 = *(a5 + 152);
  if (v18)
  {
    google::protobuf::FeatureSet::Clear(v18);
    v16 = *(a4 + 136);
  }

  *(a5 + 40) &= ~0x400u;
  google::protobuf::FeatureSet::FeatureSet(v25, 0, v16, v17);
  if (a2 <= 999)
  {
LABEL_11:
    if (*(a4 + 136) != &google::protobuf::_FeatureSet_default_instance_)
    {
      google::protobuf::DescriptorBuilder::AddError(a1, *(a4 + 8), a3, a8, "Features are only valid under editions.");
    }
  }

LABEL_13:
  if (google::protobuf::FeatureSet::ByteSizeLong(v25) || (a9 & 1) != 0)
  {
    google::protobuf::FeatureResolver::MergeFeatures((a1 + 24), &google::protobuf::_FeatureSet_default_instance_, v25, &v23, v19);
    if (v23 == 1)
    {
      *(a4 + 144) = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), v24);
    }

    else
    {
      v21 = *(a4 + 8);
      v22 = &v23;
      google::protobuf::DescriptorBuilder::AddError(a1, v21, a3, a8, &v22, absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(google::protobuf::Edition,google::protobuf::FileDescriptor::Proto const&,google::protobuf::FileDescriptor::Proto*,google::protobuf::FileDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>);
    }

    if (v23 == 1)
    {
      google::protobuf::FeatureSet::~FeatureSet(v24);
    }

    else if ((v23 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v23, v20);
    }
  }

  else
  {
    *(a4 + 144) = &google::protobuf::_FeatureSet_default_instance_;
  }

  google::protobuf::FeatureSet::~FeatureSet(v25);
}

void sub_23CD7DD4C(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  absl::lts_20240722::StatusOr<google::protobuf::FeatureSet>::~StatusOr(va, a2);
  google::protobuf::FeatureSet::~FeatureSet(va1);
  _Unwind_Resume(a1);
}

void sub_23CD7DD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void sub_23CD7DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::AddRecursiveImportError(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2, int a3)
{
  v9 = a3;
  v8[0] = &v9;
  v8[1] = this;
  v8[2] = a2;
  v4 = **(this + 1);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v4) >> 3) - 1;
  v6 = v4 + 24 * a3 + 24;
  if (v5 <= a3)
  {
    v7 = (*(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v7 = v6;
  }

  google::protobuf::DescriptorBuilder::AddError(this, v7, a2, 9, v8, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddRecursiveImportError(google::protobuf::FileDescriptorProto const&,int)::$_0,std::string>);
}

BOOL google::protobuf::ExistingFileMatchesProto(int a1, atomic_uint **a2, google::protobuf::MessageLite *a3)
{
  google::protobuf::FileDescriptorProto::FileDescriptorProto(v19, 0);
  google::protobuf::FileDescriptor::CopyTo(a2, v19);
  if (a1 == 998 && (*(a3 + 16) & 4) != 0)
  {
    v21 |= 4u;
    v6 = v20;
    if (v20)
    {
      v6 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(v22, "proto2", 6uLL, v6);
  }

  google::protobuf::MessageLite::SerializeAsString(v19, v17);
  google::protobuf::MessageLite::SerializeAsString(a3, __p);
  v7 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = v17[1];
  }

  v9 = v16;
  v10 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 == v9)
  {
    if ((v18 & 0x80u) == 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = v17[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = memcmp(v11, v12, v8) == 0;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  operator delete(__p[0]);
  v7 = v18;
LABEL_22:
  if ((v7 & 0x80) != 0)
  {
    operator delete(v17[0]);
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(v19);
  return v13;
}

void sub_23CD7DF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a18);
    _Unwind_Resume(a1);
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a18);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorBuilder::BuildFileImpl(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v310 = v6;
  a1[20] = v6;
  v7 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *(v7 + 23);
  if ((v8 & 0x80) != 0)
  {
    v9 = *(v7 + 8);
    if (v9)
    {
      if (v9 != 6)
      {
        if (v9 != 8)
        {
          goto LABEL_21;
        }

        v7 = *v7;
        goto LABEL_10;
      }

      v7 = *v7;
      if (*v7 != 1953460848 || *(v7 + 4) != 12911)
      {
LABEL_17:
        v12 = *v7;
        v13 = *(v7 + 4);
        if (v12 == 1953460848 && v13 == 13167)
        {
          *(v6 + 32) = 999;
          v10 = *(*a1 + 88);
          v287 = a2;
          if (v10)
          {
            goto LABEL_31;
          }

          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

LABEL_28:
    *(v6 + 32) = 998;
    v10 = *(*a1 + 88);
    v287 = a2;
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (!*(v7 + 23))
  {
    goto LABEL_28;
  }

  if (v8 == 6)
  {
    if (*v7 != 1953460848 || *(v7 + 4) != 12911)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (v8 != 8)
  {
LABEL_21:
    *(v6 + 32) = 0;
    v15 = *(a2 + 176);
    __p[0] = a2;
    google::protobuf::DescriptorBuilder::AddError(a1, (v15 & 0xFFFFFFFFFFFFFFFCLL), a2, 11, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_0,std::string>);
    v10 = *(*a1 + 88);
    v287 = a2;
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_10:
  if (*v7 != 0x736E6F6974696465)
  {
    goto LABEL_21;
  }

  *(v6 + 32) = *(a2 + 216);
  v10 = *(*a1 + 88);
  v287 = a2;
  if (v10)
  {
    goto LABEL_31;
  }

LABEL_29:
  if ((atomic_load_explicit(&qword_2810C1A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C1A50))
  {
  }

  v10 = qword_2810C1A48;
LABEL_31:
  google::protobuf::FeatureResolver::Create(*(a1[20] + 32), v10, &v308);
  if (v308 == 1)
  {
    std::optional<google::protobuf::FeatureResolver>::emplace[abi:ne200100]<google::protobuf::FeatureResolver,void>((a1 + 3), v309);
  }

  else
  {
    v17 = *(a2 + 176);
    __p[0] = &v308;
    google::protobuf::DescriptorBuilder::AddError(a1, (v17 & 0xFFFFFFFFFFFFFFFCLL), a2, 10, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_1,std::string>);
  }

  v18 = v310;
  *(v310 + 1) = 0;
  if ((*(a2 + 16) & 0x10) != 0)
  {
    if (!*a3)
    {
      goto LABEL_331;
    }

    v20 = *(a3 + 16);
    v21 = *(a3 + 176);
    *(a3 + 176) = v21 + 1;
    v22 = *(a3 + 120);
    if (v21 + 1 > v22)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v21 + 1, v22, "used <= total_.template Get<TypeToUse>()");
    }

    v19 = (v20 + 48 * v21);
    if (*(a2 + 208))
    {
      v23 = *(a2 + 208);
    }

    else
    {
      v23 = &google::protobuf::_SourceCodeInfo_default_instance_;
    }

    google::protobuf::SourceCodeInfo::CopyFrom(v19, v23);
  }

  else
  {
    v19 = &google::protobuf::_SourceCodeInfo_default_instance_;
  }

  *(v18 + 160) = v19;
  if (!*a3)
  {
    goto LABEL_331;
  }

  v24 = *(a3 + 24);
  v25 = *(a3 + 180);
  *(a3 + 180) = v25 + 1;
  v26 = *(a3 + 124);
  if (v25 + 1 > v26)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v25 + 1, v26, "used <= total_.template Get<TypeToUse>()");
  }

  v27 = (v24 + 200 * v25);
  a1[21] = v27;
  *(a1[20] + 152) = v27;
  if ((*(a2 + 16) & 1) == 0)
  {
    BYTE7(v289) = 0;
    LOBYTE(__p[0]) = 0;
    google::protobuf::DescriptorBuilder::AddError(a1, __p, a2, 11, "Missing field: FileDescriptorProto.name.");
    if (SBYTE7(v289) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v28 = *(a2 + 176);
  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  if (*((v28 & 0xFFFFFFFFFFFFFFFCLL) + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *v30, *(v30 + 8));
  }

  else
  {
    v31 = *v30;
    *&v289 = *(v30 + 16);
    *__p = v31;
  }

  if (*(v29 + 23) < 0)
  {
    operator delete(*v29);
  }

  v32 = *__p;
  *(v29 + 16) = v289;
  *v29 = v32;
  *(v18 + 8) = v29;
  if ((*(a2 + 16) & 2) != 0)
  {
    v35 = *(a2 + 184);
    v36 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    if (*((v35 & 0xFFFFFFFFFFFFFFFCLL) + 23) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *v36, *(v36 + 8));
    }

    else
    {
      v37 = *v36;
      *&v289 = *(v36 + 16);
      *__p = v37;
    }

    if (*(v34 + 23) < 0)
    {
      operator delete(*v34);
    }

    v38 = *__p;
    *(v34 + 16) = v289;
    *v34 = v38;
  }

  else
  {
    v34 = v33;
    if (*(v33 + 23) < 0)
    {
      operator delete(*v33);
    }

    *v34 = 0;
    *(v34 + 23) = 0;
  }

  *(v18 + 16) = v34;
  *(v18 + 24) = *a1;
  if (std::string::find(*(v18 + 8), 0, 0) != -1)
  {
    v42 = *(v18 + 8);
    __p[0] = &v310;
    google::protobuf::DescriptorBuilder::AddError(a1, v42, a2, 0, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_2,std::string>);
    goto LABEL_92;
  }

  if ((google::protobuf::DescriptorPool::Tables::AddFile(a1[1], v18, v39, v40, v41) & 1) == 0)
  {
    v46 = *(a2 + 176) & 0xFFFFFFFFFFFFFFFCLL;
    v51 = "A file with this name is already in the pool.";
    v52 = 11;
LABEL_91:
    google::protobuf::DescriptorBuilder::AddError(a1, v46, a2, v52, v51);
    goto LABEL_92;
  }

  v46 = *(v18 + 16);
  v47 = *(v46 + 23);
  if ((v47 & 0x8000000000000000) != 0)
  {
    v47 = *(v46 + 8);
    if (v47)
    {
      v48 = *v46;
      if (v47 < 8)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }
  }

  else if (*(v46 + 23))
  {
    v48 = *(v18 + 16);
    if (v47 < 8)
    {
LABEL_68:
      v49 = 0;
      v50 = v48;
      goto LABEL_85;
    }

LABEL_72:
    if (v47 >= 0x20)
    {
      v54 = 0uLL;
      v55.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v55.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v56 = vdupq_n_s64(1uLL);
      v53 = v47 & 0xFFFFFFFFFFFFFFE0;
      v57 = 0uLL;
      v58 = (v48 + 16);
      v59 = 0uLL;
      v60 = v47 & 0xFFFFFFFFFFFFFFE0;
      v61 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      do
      {
        v74 = vceqq_s8(v58[-1], v55);
        v75 = vmovl_u8(*v74.i8);
        v76 = vmovl_high_u8(v74);
        v77 = vmovl_high_u16(v76);
        v78.i64[0] = v77.u32[2];
        v78.i64[1] = v77.u32[3];
        v65 = vaddq_s64(v65, vandq_s8(v78, v56));
        v79 = vmovl_high_u16(v75);
        v80 = vmovl_u16(*v76.i8);
        v78.i64[0] = v77.u32[0];
        v78.i64[1] = v77.u32[1];
        v64 = vaddq_s64(v64, vandq_s8(v78, v56));
        v78.i64[0] = v80.u32[2];
        v78.i64[1] = v80.u32[3];
        v63 = vaddq_s64(v63, vandq_s8(v78, v56));
        v78.i64[0] = v79.u32[2];
        v78.i64[1] = v79.u32[3];
        v61 = vaddq_s64(v61, vandq_s8(v78, v56));
        v81 = vmovl_u16(*v75.i8);
        v78.i64[0] = v80.u32[0];
        v78.i64[1] = v80.u32[1];
        v62 = vaddq_s64(v62, vandq_s8(v78, v56));
        v78.i64[0] = v81.u32[0];
        v78.i64[1] = v81.u32[1];
        v82 = vandq_s8(v78, v56);
        v78.i64[0] = v81.u32[2];
        v78.i64[1] = v81.u32[3];
        v83 = vandq_s8(v78, v56);
        v78.i64[0] = v79.u32[0];
        v78.i64[1] = v79.u32[1];
        v84 = vceqq_s8(*v58, v55);
        v59 = vaddq_s64(v59, vandq_s8(v78, v56));
        v85 = vmovl_u8(*v84.i8);
        v86 = vmovl_high_u8(v84);
        v57 = vaddq_s64(v57, v83);
        v87 = vmovl_high_u16(v86);
        v54 = vaddq_s64(v54, v82);
        v78.i64[0] = v87.u32[2];
        v78.i64[1] = v87.u32[3];
        v73 = vaddq_s64(v73, vandq_s8(v78, v56));
        v88 = vmovl_high_u16(v85);
        v89 = vmovl_u16(*v86.i8);
        v78.i64[0] = v87.u32[0];
        v78.i64[1] = v87.u32[1];
        v72 = vaddq_s64(v72, vandq_s8(v78, v56));
        v78.i64[0] = v89.u32[2];
        v78.i64[1] = v89.u32[3];
        v71 = vaddq_s64(v71, vandq_s8(v78, v56));
        v78.i64[0] = v88.u32[2];
        v78.i64[1] = v88.u32[3];
        v69 = vaddq_s64(v69, vandq_s8(v78, v56));
        v78.i64[0] = v89.u32[0];
        v78.i64[1] = v89.u32[1];
        v70 = vaddq_s64(v70, vandq_s8(v78, v56));
        v90 = vmovl_u16(*v85.i8);
        v78.i64[0] = v88.u32[0];
        v78.i64[1] = v88.u32[1];
        v68 = vaddq_s64(v68, vandq_s8(v78, v56));
        v78.i64[0] = v90.u32[2];
        v78.i64[1] = v90.u32[3];
        v67 = vaddq_s64(v67, vandq_s8(v78, v56));
        v78.i64[0] = v90.u32[0];
        v78.i64[1] = v90.u32[1];
        v66 = vaddq_s64(v66, vandq_s8(v78, v56));
        v58 += 2;
        v60 -= 32;
      }

      while (v60);
      v49 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v66, v54), vaddq_s64(v70, v62)), vaddq_s64(vaddq_s64(v68, v59), vaddq_s64(v72, v64))), vaddq_s64(vaddq_s64(vaddq_s64(v67, v57), vaddq_s64(v71, v63)), vaddq_s64(vaddq_s64(v69, v61), vaddq_s64(v73, v65)))));
      if (v47 == v53)
      {
        goto LABEL_89;
      }

      if ((v47 & 0x18) == 0)
      {
        v50 = (v48 + v53);
        goto LABEL_85;
      }
    }

    else
    {
      v49 = 0;
      v53 = 0;
    }

    v50 = (v48 + (v47 & 0xFFFFFFFFFFFFFFF8));
    v91 = 0uLL;
    v92 = v49;
    v93 = (v48 + v53);
    v94 = v53 - (v47 & 0xFFFFFFFFFFFFFFF8);
    v95 = vdupq_n_s64(1uLL);
    v96 = 0uLL;
    v97 = 0uLL;
    do
    {
      v98 = *v93++;
      v99 = vmovl_u8(vceq_s8(v98, 0x2E2E2E2E2E2E2E2ELL));
      v100 = vmovl_u16(*v99.i8);
      v101.i64[0] = v100.u32[0];
      v101.i64[1] = v100.u32[1];
      v102 = vandq_s8(v101, v95);
      v101.i64[0] = v100.u32[2];
      v101.i64[1] = v100.u32[3];
      v103 = vandq_s8(v101, v95);
      v104 = vmovl_high_u16(v99);
      v101.i64[0] = v104.u32[0];
      v101.i64[1] = v104.u32[1];
      v105 = vandq_s8(v101, v95);
      v101.i64[0] = v104.u32[2];
      v101.i64[1] = v104.u32[3];
      v97 = vaddq_s64(v97, vandq_s8(v101, v95));
      v96 = vaddq_s64(v96, v105);
      v91 = vaddq_s64(v91, v103);
      v92 = vaddq_s64(v92, v102);
      v94 += 8;
    }

    while (v94);
    v49 = vaddvq_s64(vaddq_s64(vaddq_s64(v92, v96), vaddq_s64(v91, v97)));
    if (v47 == (v47 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_89:
      if (v49 >= 0x65)
      {
        v52 = 0;
        v51 = "Exceeds Maximum Package Depth";
        goto LABEL_91;
      }

      google::protobuf::DescriptorBuilder::AddPackage(a1, v46, a2, v18);
      goto LABEL_98;
    }

LABEL_85:
    v106 = (v48 + v47);
    do
    {
      v107 = *v50++;
      if (v107 == 46)
      {
        ++v49;
      }
    }

    while (v50 != v106);
    goto LABEL_89;
  }

LABEL_98:
  v109 = xmmword_23CE306D0;
  v305 = xmmword_23CE306D0;
  v110 = *(a2 + 32);
  *(v18 + 48) = v110;
  v111 = *a3;
  if (!*a3)
  {
    goto LABEL_331;
  }

  v112 = *(a3 + 168);
  v113 = v112 + 8 * v110;
  *(a3 + 168) = v113;
  v114 = *(a3 + 112);
  if (v113 > v114)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v113, v114, "used <= total_.template Get<TypeToUse>()");
  }

  *(v18 + 72) = v111 + v112;
  *(v18 + 40) = 0;
  v115 = a1[30];
  if (v115 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(a1 + 30, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::GetPolicyFunctions(void)::value, v115 < 0x80, 1u);
    v109 = xmmword_23CE306D0;
  }

  else
  {
    a1[31] = 0;
  }

  v302 = v109;
  if (*(a2 + 160) >= 1)
  {
    v116 = 0;
    do
    {
      LODWORD(v312) = *(*(a2 + 168) + 4 * v116);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v302, &v312, __p);
      if (v289 == 1)
      {
        *__p[1] = v312;
      }

      ++v116;
    }

    while (v116 < *(a2 + 160));
  }

  v283 = a1 + 30;
  if (*(a2 + 32) < 1)
  {
LABEL_252:
    v227 = v310;
    *(v310 + 80) = v226;
    if (*(a2 + 144) < 1)
    {
      *(v227 + 52) = 0;
      v246 = a1 + 22;
      v247 = a1[22];
      if (v247 <= 1)
      {
LABEL_276:
        a1[23] = 0;
        goto LABEL_279;
      }
    }

    else
    {
      v228 = 0;
      v229 = 0;
      do
      {
        v230 = *(*(a2 + 152) + 4 * v228);
        if ((v230 & 0x80000000) != 0 || v230 >= *(a2 + 32))
        {
          google::protobuf::DescriptorBuilder::AddError(a1, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFCLL), a2, 11, "Invalid public dependency index.");
          goto LABEL_255;
        }

        v231 = v310;
        *(*(v310 + 80) + 4 * v229) = v230;
        if (*(*a1 + 49))
        {
          goto LABEL_259;
        }

        v232 = v231[5];
        if (v232)
        {
          __p[0] = v231;
          if (atomic_load_explicit(v232, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v232, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, __p);
          }
        }

        v233 = *(v231[9] + 8 * v230);
        v234 = (a1 + 30);
        v235 = *v283;
        if (*v283 > 1)
        {
          v236 = 0;
          _X10 = a1[32];
          v238 = v233 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v233) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v233)));
          v239 = ((v238 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v238);
          v240 = vdup_n_s8(v239 & 0x7F);
          __asm { PRFM            #4, [X10] }

          v242 = ((_X10 >> 12) ^ (v239 >> 7)) & v235;
          v243 = *(_X10 + v242);
          v244 = vceq_s8(v243, v240);
          if (!v244)
          {
            goto LABEL_270;
          }

          do
          {
LABEL_268:
            v245 = (v242 + (__clz(__rbit64(v244)) >> 3)) & v235;
            if (*(a1[33] + 8 * v245) == v233)
            {
              if (!_X10)
              {
                goto LABEL_259;
              }

              absl::lts_20240722::container_internal::EraseMetaOnly(v234, v245);
              ++v229;
              goto LABEL_255;
            }

            v244 &= ((v244 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v244);
LABEL_270:
          while (!*&vceq_s8(v243, 0x8080808080808080))
          {
            v236 += 8;
            v234 = (a1 + 30);
            v242 = (v236 + v242) & v235;
            v243 = *(_X10 + v242);
            v244 = vceq_s8(v243, v240);
            if (v244)
            {
              goto LABEL_268;
            }
          }

LABEL_259:
          ++v229;
        }

        else
        {
          if (a1[31] < 2 || a1[32] != v233)
          {
            goto LABEL_259;
          }

          a1[31] = 0;
          ++v229;
        }

LABEL_255:
        ++v228;
      }

      while (v228 < *(a2 + 144));
      v227 = v310;
      *(v310 + 52) = v229;
      v246 = a1 + 22;
      v247 = a1[22];
      if (v247 <= 1)
      {
        goto LABEL_276;
      }
    }

    absl::lts_20240722::container_internal::ClearBackingArray(v246, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::GetPolicyFunctions(void)::value, v247 < 0x80, 1u);
LABEL_279:
    if ((*(*a1 + 49) & 1) == 0 && *(v227 + 48) >= 1)
    {
      v248 = 0;
      do
      {
        v249 = *(v227 + 40);
        if (v249)
        {
          __p[0] = v227;
          if (atomic_load_explicit(v249, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v249, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, __p);
          }
        }

        google::protobuf::DescriptorBuilder::RecordPublicDependencies(a1, *(*(v227 + 72) + 8 * v248++));
        v227 = v310;
      }

      while (v248 < *(v310 + 48));
    }

    if (*(a2 + 160) < 1)
    {
      v251 = 0;
    }

    else
    {
      v250 = 0;
      v251 = 0;
      do
      {
        while (1)
        {
          v252 = *(*(a2 + 168) + 4 * v250);
          if ((v252 & 0x80000000) == 0 && v252 < *(a2 + 32))
          {
            break;
          }

          google::protobuf::DescriptorBuilder::AddError(a1, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFCLL), a2, 11, "Invalid weak dependency index.");
          if (++v250 >= *(a2 + 160))
          {
            goto LABEL_294;
          }
        }

        *(*(v227 + 88) + 4 * v251++) = v252;
        ++v250;
      }

      while (v250 < *(a2 + 160));
    }

LABEL_294:
    *(v227 + 56) = v251;
    v253 = *(a2 + 56);
    *(v227 + 60) = v253;
    if (*(a2 + 56) >= 1)
    {
      v254 = 0;
      v255 = 0;
      v256 = (a2 + 48);
      v257 = 8;
      do
      {
        if (*v256)
        {
          v258 = (*v256 + v257 - 1);
        }

        else
        {
          v258 = (a2 + 48);
        }

        google::protobuf::DescriptorBuilder::BuildMessage(a1, *v258, 0, *(v227 + 96) + v254, a3);
        ++v255;
        v254 += 152;
        v257 += 8;
      }

      while (v255 < *(a2 + 56));
    }

    v259 = *(a2 + 80);
    *(v227 + 64) = v259;
    if (*(a2 + 80) >= 1)
    {
      v261 = 0;
      v262 = 0;
      v263 = (a2 + 72);
      v264 = 8;
      do
      {
        if (*v263)
        {
          v265 = (*v263 + v264 - 1);
        }

        else
        {
          v265 = (a2 + 72);
        }

        google::protobuf::DescriptorBuilder::BuildEnum(a1, *v265, 0, *(v227 + 104) + v261, a3);
        ++v262;
        v261 += 88;
        v264 += 8;
      }

      while (v262 < *(a2 + 80));
    }

    v266 = *(a2 + 104);
    *(v227 + 68) = v266;
    v267 = *a3;
    if (*a3)
    {
      v268 = *(a3 + 168);
      v269 = v268 + (v266 << 6);
      *(a3 + 168) = v269;
      v270 = *(a3 + 112);
      if (v269 <= v270)
      {
        *(v227 + 112) = v267 + v268;
        if (*(a2 + 104) >= 1)
        {
          if (*(a2 + 96))
          {
            v271 = (*(a2 + 96) + 7);
          }

          else
          {
            v271 = (a2 + 96);
          }

          google::protobuf::DescriptorBuilder::BuildService(a1, *v271, v260, *(v227 + 112), a3);
        }

        v272 = *(a2 + 128);
        *(v227 + 4) = v272;
        if (*(a2 + 128) >= 1)
        {
          v273 = 0;
          v274 = 0;
          v275 = (a2 + 120);
          v276 = 8;
          do
          {
            if (*v275)
            {
              v277 = (*v275 + v276 - 1);
            }

            else
            {
              v277 = (a2 + 120);
            }

            google::protobuf::DescriptorBuilder::BuildFieldOrExtension(a1, *v277, 0, (*(v227 + 120) + v273), 1, a3);
            ++v274;
            v273 += 88;
            v276 += 8;
          }

          while (v274 < *(a2 + 128));
        }

        google::protobuf::DescriptorBuilder::AllocateOptions();
      }

      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v269, v270, "used <= total_.template Get<TypeToUse>()");
    }

LABEL_331:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 390);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
  }

  v117 = 0;
  v118 = 0;
  v119 = (a2 + 24);
  v284 = v18;
  v285 = (a2 + 24);
  while (1)
  {
    v286 = v118;
    v134 = (*v119 & 1) != 0 ? (*v119 + 8 * v117 + 7) : v119;
    v135 = *v134;
    if (v305 > 1)
    {
      _X8 = v306;
      __asm { PRFM            #4, [X8] }

      v144 = *(v135 + 23);
      if (v144 >= 0)
      {
        v145 = v135;
      }

      else
      {
        v145 = *v135;
      }

      if (v144 >= 0)
      {
        v146 = *(v135 + 23);
      }

      else
      {
        v146 = *(v135 + 1);
      }

      v147 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v145, v146, v44, v45);
      v148 = 0;
      v149 = (((v147 + v146) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v147 + v146));
      v150 = v306;
      v151 = v305;
      v152 = (v306 >> 12) ^ (v149 >> 7);
      v153 = vdup_n_s8(v149 & 0x7F);
      v154 = *(v135 + 23);
      if (v154 >= 0)
      {
        v155 = *(v135 + 23);
      }

      else
      {
        v155 = *(v135 + 1);
      }

      if (v154 >= 0)
      {
        v156 = v135;
      }

      else
      {
        v156 = *v135;
      }

      v157 = v307;
      v158 = v152 & v305;
      v159 = *(v306 + (v152 & v305));
      v160 = vceq_s8(v159, v153);
      if (v160)
      {
LABEL_145:
        v280 = v151;
        v282 = v148;
        v278 = v157;
        while (1)
        {
          v161 = v157 + 16 * ((v158 + (__clz(__rbit64(v160)) >> 3)) & v151);
          if (*(v161 + 8) == v155 && !memcmp(*v161, v156, v155))
          {
            break;
          }

          v160 &= ((v160 & 0x8080808080808080) - 1) & 0x8080808080808080;
          v151 = v280;
          v148 = v282;
          v157 = v278;
          if (!v160)
          {
            goto LABEL_149;
          }
        }

LABEL_152:
        v163 = v287;
        v119 = v285;
LABEL_160:
        LODWORD(v312) = v117;
        v167 = v163[3];
        if (v167)
        {
          v168 = (v167 + 8 * v117 + 7);
        }

        else
        {
          v168 = v119;
        }

        v169 = *v168;
        __p[0] = v163;
        __p[1] = &v312;
        google::protobuf::DescriptorBuilder::AddError(a1, v169, v163, 9, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddTwiceListedError(google::protobuf::FileDescriptorProto const&,int)::$_0,std::string>);
        goto LABEL_164;
      }

LABEL_149:
      while (1)
      {
        v162 = vceq_s8(v159, 0x8080808080808080);
        if (v162)
        {
          break;
        }

        v148 += 8;
        v158 = (v148 + v158) & v151;
        v159 = *(v150 + v158);
        v160 = vceq_s8(v159, v153);
        if (v160)
        {
          goto LABEL_145;
        }
      }

      inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v305, v149, (v158 + (__clz(__rbit64(v162)) >> 3)) & v151, v148, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::GetPolicyFunctions(void)::value);
      v138 = (v307 + 16 * inserted);
      __p[0] = (v306 + inserted);
      __p[1] = v138;
      LOBYTE(v289) = 1;
    }

    else
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<std::string>(&v305, v135, v44, v45, __p);
      if ((v289 & 1) == 0)
      {
        goto LABEL_152;
      }

      v138 = __p[1];
    }

    v119 = v285;
    v165 = *(v135 + 23);
    if (v165 >= 0)
    {
      v166 = v135;
    }

    else
    {
      v166 = *v135;
    }

    if (v165 < 0)
    {
      v165 = *(v135 + 1);
    }

    *v138 = v166;
    v138[1] = v165;
    v163 = v287;
    if ((v289 & 1) == 0)
    {
      goto LABEL_160;
    }

LABEL_164:
    if (*v119)
    {
      v170 = *v119 + 8 * v117 + 7;
    }

    else
    {
      v170 = v119;
    }

    v171 = *v170;
    v172 = *(*v170 + 23);
    v132 = v284;
    if ((v172 & 0x8000000000000000) != 0)
    {
      v171 = *v171;
      v172 = *(*v170 + 8);
    }

    File = google::protobuf::DescriptorPool::Tables::FindFile(a1[1], v171, v172, v136, v137);
    v312 = File;
    if (File)
    {
      if (File == v284)
      {
        break;
      }

      goto LABEL_179;
    }

    v174 = *a1;
    v175 = *(*a1 + 24);
    if (!v175)
    {
      if (!v284)
      {
        break;
      }

      goto LABEL_194;
    }

    if (*v119)
    {
      v176 = *v119 + 8 * v117 + 7;
    }

    else
    {
      v176 = v119;
    }

    v177 = *v176;
    v178 = *(*v176 + 23);
    if (v178 < 0)
    {
      v177 = *v177;
      v178 = *(*v176 + 8);
    }

    File = google::protobuf::DescriptorPool::FindFileByName(v175, v177, v178);
    v312 = File;
    if (File == v284)
    {
      break;
    }

LABEL_179:
    v174 = *a1;
    if (File)
    {
      if (*(v174 + 48) == 1)
      {
        v179 = *(v287 + 176) & 0xFFFFFFFFFFFFFFFCLL;
        _X8 = *(v174 + 72);
        __asm { PRFM            #4, [X8] }

        v182 = *(v179 + 23);
        if (v182 >= 0)
        {
          v183 = (*(v287 + 176) & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v183 = *v179;
        }

        if (v182 >= 0)
        {
          v184 = *(v179 + 23);
        }

        else
        {
          v184 = *(v179 + 8);
        }

        v185 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v183, v184, v44, v45);
        v131 = 0;
        v186 = (((v185 + v184) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v185 + v184));
        v187 = *(v174 + 72);
        v133 = (v187 >> 12) ^ (v186 >> 7);
        v188 = vdup_n_s8(v186 & 0x7F);
        v189 = *(v179 + 23);
        if (v189 >= 0)
        {
          v190 = *(v179 + 23);
        }

        else
        {
          v190 = *(v179 + 8);
        }

        v191 = *(v174 + 56);
        if (v189 >= 0)
        {
          v130 = v179;
        }

        else
        {
          v130 = *v179;
        }

        while (1)
        {
          v120 = v133 & v191;
          v121 = *(v187 + (v133 & v191));
          v122 = vceq_s8(v121, v188);
          if (v122)
          {
            break;
          }

LABEL_120:
          v132 = v284;
          v119 = v285;
          if (vceq_s8(v121, 0x8080808080808080))
          {
            goto LABEL_207;
          }

          v131 += 8;
          v133 = v131 + v120;
        }

        v123 = *(v174 + 80);
        v279 = v123;
        v281 = v131;
        while (1)
        {
          v124 = v123 + 32 * ((v120 + (__clz(__rbit64(v122)) >> 3)) & v191);
          v125 = *(v124 + 23);
          v126 = v125;
          if ((v125 & 0x80u) != 0)
          {
            v125 = *(v124 + 8);
          }

          if (v125 == v190)
          {
            v127 = v126 >= 0 ? v124 : *v124;
            v128 = v130;
            v129 = memcmp(v127, v130, v190);
            v130 = v128;
            if (!v129)
            {
              break;
            }
          }

          v122 &= ((v122 & 0x8080808080808080) - 1) & 0x8080808080808080;
          v123 = v279;
          v131 = v281;
          if (!v122)
          {
            goto LABEL_120;
          }
        }

        v132 = v284;
        v119 = v285;
        if (v187)
        {
          if (!*(v312 + 52))
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::find_or_prepare_insert<google::protobuf::FileDescriptor const*>(v283, &v312, __p);
            if (v289 == 1)
            {
              *__p[1] = v312;
            }
          }
        }
      }

      goto LABEL_207;
    }

LABEL_194:
    if ((*(v174 + 49) & 1) == 0)
    {
      if (*(v174 + 50))
      {
        goto LABEL_196;
      }

      if ((*(v174 + 51) & 1) == 0)
      {
        if (v302 > 1)
        {
          v201 = 0;
          _X9 = v303;
          __asm { PRFM            #4, [X9] }

          v204 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v117) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v117));
          v205 = vdup_n_s8(v204 & 0x7F);
          v206 = ((v303 >> 12) ^ (v204 >> 7)) & v302;
          v207 = *(v303 + v206);
          v208 = vceq_s8(v207, v205);
          if (!v208)
          {
            goto LABEL_219;
          }

LABEL_217:
          while (v117 != *(v304 + 4 * ((v206 + (__clz(__rbit64(v208)) >> 3)) & v302)))
          {
            v208 &= ((v208 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v208)
            {
LABEL_219:
              while (!*&vceq_s8(v207, 0x8080808080808080))
              {
                v201 += 8;
                v206 = (v201 + v206) & v302;
                v207 = *(v303 + v206);
                v208 = vceq_s8(v207, v205);
                if (v208)
                {
                  goto LABEL_217;
                }
              }

              goto LABEL_203;
            }
          }

          if (v303)
          {
            goto LABEL_196;
          }
        }

        else if (*(&v302 + 1) >= 2uLL && v117 == v303)
        {
LABEL_196:
          v300 = 0u;
          v301 = 0u;
          v298 = 0u;
          v299 = 0u;
          v296 = 0u;
          v297 = 0u;
          v294 = 0u;
          v292 = 0u;
          v293 = 0u;
          v290 = 0u;
          v291 = 0u;
          *__p = 0u;
          v289 = 0u;
          v295 = 0x1000000A8uLL;
          if (*v119)
          {
            v192 = *v119 + 8 * v117 + 7;
          }

          else
          {
            v192 = v119;
          }

          v193 = *v192;
          v194 = *(*v192 + 23);
          if ((v194 & 0x8000000000000000) != 0)
          {
            v193 = *v193;
            v194 = *(*v192 + 8);
          }

          v312 = google::protobuf::DescriptorPool::NewPlaceholderFileWithMutexHeld(*a1, v193, v194, __p);
          goto LABEL_207;
        }
      }

LABEL_203:
      v311 = v117;
      __p[0] = a1;
      __p[1] = v287;
      *&v289 = &v311;
      v195 = *(v287 + 24);
      if (v195)
      {
        v196 = (v195 + 8 * v117 + 7);
      }

      else
      {
        v196 = v119;
      }

      google::protobuf::DescriptorBuilder::AddError(a1, *v196, v287, 9, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddImportError(google::protobuf::FileDescriptorProto const&,int)::$_0,std::string>);
    }

LABEL_207:
    v197 = v312;
    v198 = *(v132 + 72);
    v198[v117] = v312;
    if (v197)
    {
      v199 = 0;
    }

    else
    {
      v199 = *(*a1 + 49);
    }

    v118 = v199 | v286;
    ++v117;
    a2 = v287;
    v200 = *(v287 + 32);
    if (v117 >= v200)
    {
      if (v118)
      {
        if (v200 < 1)
        {
          v215 = 4;
        }

        else
        {
          v209 = 0;
          v210 = *v285 + 7;
          do
          {
            while (1)
            {
              while (*v198)
              {
                v211 = v209++;
                v210 += 8;
                ++v198;
                if (!--v200)
                {
                  goto LABEL_235;
                }
              }

              v212 = v285;
              if (*v285)
              {
                v212 = v210;
              }

              v213 = *v212;
              v214 = *(*v212 + 23);
              if (v214 < 0)
              {
                break;
              }

              v211 = v209 + v214;
              v209 = v211 + 1;
              v210 += 8;
              ++v198;
              if (!--v200)
              {
                goto LABEL_235;
              }
            }

            v211 = v209 + *(v213 + 8);
            v209 = v211 + 1;
            v210 += 8;
            ++v198;
            --v200;
          }

          while (v200);
LABEL_235:
          v215 = v211 + 5;
        }

        Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(a1[1], v215);
        *Bytes = 0;
        *(v132 + 40) = Bytes;
        if (*(v287 + 32) >= 1)
        {
          v217 = 0;
          v218 = Bytes + 1;
          v219 = 8;
          do
          {
            if (!*(*(v310 + 72) + 8 * v217))
            {
              if (*v285)
              {
                v220 = *v285 + v219 - 1;
              }

              else
              {
                v220 = v285;
              }

              v221 = *v220;
              v222 = *(*v220 + 23);
              if ((v222 & 0x8000000000000000) != 0)
              {
                v221 = *v221;
                v222 = *(*v220 + 8);
              }

              memcpy(v218, v221, v222);
              if (*v285)
              {
                v223 = *v285 + v219 - 1;
              }

              else
              {
                v223 = v285;
              }

              v224 = *v223;
              v225 = *(*v223 + 23);
              if (v225 < 0)
              {
                v225 = *(v224 + 8);
              }

              v218 += v225;
            }

            *v218++ = 0;
            ++v217;
            v219 += 8;
          }

          while (v217 < *(v287 + 32));
        }
      }

      goto LABEL_252;
    }
  }

  if (v302 >= 2)
  {
    operator delete((v303 - (BYTE8(v302) & 1) - 8));
    if (v305 >= 2)
    {
      goto LABEL_324;
    }
  }

  else if (v305 >= 2)
  {
LABEL_324:
    operator delete((v306 - (BYTE8(v305) & 1) - 8));
  }

LABEL_92:
  if (v308 == 1)
  {
    google::protobuf::FeatureSet::~FeatureSet(v309);
  }

  else if ((v308 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v308, v43);
  }

  return 0;
}

void sub_23CD7FF40(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a54 >= 2)
  {
    operator delete((a56 - (a55 & 1) - 8));
  }

  if (a58 >= 2)
  {
    operator delete((a60 - (a59 & 1) - 8));
    absl::lts_20240722::StatusOr<google::protobuf::FeatureResolver>::~StatusOr((v60 - 232), v62);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::StatusOr<google::protobuf::FeatureResolver>::~StatusOr((v60 - 232), a2);
  _Unwind_Resume(a1);
}

google::protobuf::FeatureSet *std::optional<google::protobuf::FeatureResolver>::emplace[abi:ne200100]<google::protobuf::FeatureResolver,void>(google::protobuf::FeatureSet *this, const google::protobuf::FeatureSet *a2)
{
  if (*(this + 72) == 1)
  {
    google::protobuf::FeatureSet::~FeatureSet(this);
    *(this + 72) = 0;
  }

  google::protobuf::FeatureSet::FeatureSet(this, 0);
  if (this != a2)
  {
    v4 = *(this + 1);
    if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
      v5 = *(a2 + 1);
      if ((v5 & 1) == 0)
      {
LABEL_6:
        if (v4 != v5)
        {
LABEL_7:
          google::protobuf::FeatureSet::CopyFrom(this, a2);
          goto LABEL_11;
        }

LABEL_10:
        google::protobuf::FeatureSet::InternalSwap(this, a2);
        goto LABEL_11;
      }
    }

    else
    {
      v5 = *(a2 + 1);
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v4 != *(v5 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_11:
  *(this + 72) = 1;
  return this;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateStrings<std::string const&>(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *a2;
  if (*(v3 + 23) < 0)
  {
LABEL_3:
    operator delete(*v4);
  }

LABEL_4:
  v5 = *&v7.__r_.__value_.__l.__data_;
  *(v4 + 16) = *(&v7.__r_.__value_.__l + 2);
  *v4 = v5;
  return v4;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<int>(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
  }

  v4 = *(a1 + 42);
  v5 = v4 + ((4 * a2 + 7) & 0xFFFFFFF8);
  *(a1 + 42) = v5;
  v6 = *(a1 + 28);
  if (v5 > v6)
  {
  }

  return v2 + v4;
}

void google::protobuf::DescriptorBuilder::BuildMessage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = *(a3 + 8) + 24;
  }

  else
  {
    v10 = *(a1[20] + 16);
  }

  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, v10, *(a2 + 216) & 0xFFFFFFFFFFFFFFFCLL, a5);
  *(a4 + 8) = NameStrings;
  v14 = *(a2 + 216) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = *v14;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!*(v14 + 23))
  {
LABEL_16:
    google::protobuf::DescriptorBuilder::AddError(a1, (NameStrings + 24), a2, 0, "Missing name.");
    goto LABEL_17;
  }

  v16 = (*(a2 + 216) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_10:
  while (1)
  {
    v17 = *v16;
    if ((v17 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v17 != 95 && (v17 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    ++v16;
    if (!--v15)
    {
      goto LABEL_17;
    }
  }

  v257.__r_.__value_.__r.__words[0] = *(a2 + 216) & 0xFFFFFFFFFFFFFFFCLL;
  google::protobuf::DescriptorBuilder::AddError(a1, (NameStrings + 24), a2, 0, &v257, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_17:
  v249 = a3;
  v251 = a2;
  *(a4 + 16) = a1[20];
  *(a4 + 24) = a3;
  *(a4 + 1) &= 0x80u;
  *(a4 + 32) = 0;
  v19 = *(*a1 + 40);
  v20 = *(a4 + 8);
  _X8 = v19[17];
  __asm { PRFM            #4, [X8] }

  v29 = *(v20 + 24);
  v28 = v20 + 24;
  v27 = v29;
  v30 = *(v28 + 23);
  if (v30 >= 0)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v30 >= 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = *(v28 + 8);
  }

  v33 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v31, v32, v12, v13);
  v34 = 0;
  v35 = (((v33 + v32) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v33 + v32));
  v36 = vdup_n_s8(v35 & 0x7F);
  v37 = v19[17];
  v38 = *(v28 + 23);
  v39 = v38 < 0;
  if (v38 >= 0)
  {
    v40 = *(v28 + 23);
  }

  else
  {
    v40 = *(v28 + 8);
  }

  v41 = v19[15];
  v42 = (v35 >> 7) ^ (v37 >> 12);
  if (v39)
  {
    v43 = *v28;
  }

  else
  {
    v43 = v28;
  }

  v44 = v42 & v41;
  v45 = *(v37 + (v42 & v41));
  v46 = vceq_s8(v45, v36);
  if (v46)
  {
LABEL_30:
    v47 = v19[18];
    v246 = v41;
    v248 = v34;
    v244 = v47;
    while (1)
    {
      v48 = v47 + 32 * ((v44 + (__clz(__rbit64(v46)) >> 3)) & v41);
      v49 = *(v48 + 23);
      v50 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v49 = *(v48 + 8);
      }

      if (v49 == v40)
      {
        v51 = v50 >= 0 ? v48 : *v48;
        if (!memcmp(v51, v43, v40))
        {
          break;
        }
      }

      v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v41 = v246;
      v34 = v248;
      v47 = v244;
      if (!v46)
      {
        goto LABEL_39;
      }
    }

    if (v37)
    {
      *(a4 + 1) = (4 * (*(v48 + 24) & 0x1F)) | *(a4 + 1) & 0x83;
    }
  }

  else
  {
LABEL_39:
    while (!*&vceq_s8(v45, 0x8080808080808080))
    {
      v34 += 8;
      v44 = (v34 + v44) & v41;
      v45 = *(v37 + v44);
      v46 = vceq_s8(v45, v36);
      if (v46)
      {
        goto LABEL_30;
      }
    }
  }

  v52 = (v251 + 24);
  *(a4 + 2) = 0;
  if (*(v251 + 32) >= 1)
  {
    v53 = 0;
    v54 = *v52;
    v55 = *v52 + 7;
    do
    {
      if (v54)
      {
        v56 = v55;
      }

      else
      {
        v56 = v251 + 24;
      }

      v57 = *(*v56 + 72);
      v58 = v53 + 1;
      if (v53 + 1 != v57)
      {
        break;
      }

      *(a4 + 2) = v58;
      if (v53 > 0xFFFD)
      {
        break;
      }

      v55 += 8;
      ++v53;
    }

    while (v58 < *(v251 + 32));
  }

  v59 = *(v251 + 152);
  *(a4 + 120) = v59;
  v60 = *a5;
  if (!*a5)
  {
  }

  v61 = *(a5 + 168);
  v62 = v61 + 56 * v59;
  *(a5 + 168) = v62;
  v63 = *(a5 + 112);
  if (v62 > v63)
  {
  }

  *(a4 + 64) = v60 + v61;
  if (*(v251 + 152) >= 1)
  {
    v64 = 0;
    v65 = 0;
    v66 = 8;
    do
    {
      v67 = *(v251 + 144);
      if (v67)
      {
        v68 = (v67 + v66 - 1);
      }

      else
      {
        v68 = (v251 + 144);
      }

      google::protobuf::DescriptorBuilder::BuildOneof(a1, *v68, a4, *(a4 + 64) + v64, a5);
      ++v65;
      v64 += 56;
      v66 += 8;
    }

    while (v65 < *(v251 + 152));
  }

  v69 = *(v251 + 32);
  *(a4 + 4) = v69;
  if (*(v251 + 32) >= 1)
  {
    v70 = 0;
    v71 = 0;
    v72 = 8;
    do
    {
      v73 = *(v251 + 24);
      if (v73)
      {
        v74 = (v73 + v72 - 1);
      }

      else
      {
        v74 = (v251 + 24);
      }

      google::protobuf::DescriptorBuilder::BuildFieldOrExtension(a1, *v74, a4, (*(a4 + 56) + v70), 0, a5);
      ++v71;
      v70 += 88;
      v72 += 8;
    }

    while (v71 < *(v251 + 32));
  }

  v75 = *(v251 + 80);
  *(a4 + 132) = v75;
  if (*(v251 + 80) >= 1)
  {
    v76 = 0;
    v77 = 0;
    v78 = 8;
    do
    {
      v79 = *(v251 + 72);
      if (v79)
      {
        v80 = (v79 + v78 - 1);
      }

      else
      {
        v80 = (v251 + 72);
      }

      google::protobuf::DescriptorBuilder::BuildEnum(a1, *v80, a4, *(a4 + 80) + v76, a5);
      ++v77;
      v76 += 88;
      v78 += 8;
    }

    while (v77 < *(v251 + 80));
  }

  v81 = *(v251 + 104);
  *(a4 + 136) = v81;
  if (*(v251 + 104) >= 1)
  {
    v82 = 0;
    v83 = 0;
    v84 = 8;
    do
    {
      v85 = *(v251 + 96);
      if (v85)
      {
        v86 = (v85 + v84 - 1);
      }

      else
      {
        v86 = (v251 + 96);
      }

      google::protobuf::DescriptorBuilder::BuildExtensionRange(a1, *v86, a4, (*(a4 + 88) + v82), a5);
      ++v83;
      v82 += 40;
      v84 += 8;
    }

    while (v83 < *(v251 + 104));
  }

  v87 = *(v251 + 128);
  *(a4 + 140) = v87;
  if (*(v251 + 128) >= 1)
  {
    v88 = 0;
    v89 = 0;
    v90 = 8;
    do
    {
      v91 = *(v251 + 120);
      if (v91)
      {
        v92 = (v91 + v90 - 1);
      }

      else
      {
        v92 = (v251 + 120);
      }

      google::protobuf::DescriptorBuilder::BuildFieldOrExtension(a1, *v92, a4, (*(a4 + 96) + v88), 1, a5);
      ++v89;
      v88 += 88;
      v90 += 8;
    }

    while (v89 < *(v251 + 128));
  }

  v93 = *(v251 + 176);
  *(a4 + 144) = v93;
  v94 = *a5;
  if (!*a5)
  {
  }

  v95 = *(a5 + 168);
  v96 = v95 + 8 * v93;
  *(a5 + 168) = v96;
  v97 = *(a5 + 112);
  if (v96 > v97)
  {
  }

  *(a4 + 104) = v94 + v95;
  if (*(v251 + 176) >= 1)
  {
    v98 = 0;
    v99 = 0;
    do
    {
      v100 = *(v251 + 168);
      v101 = v98 + 8;
      if (v100)
      {
        v102 = (v100 + v98 + 8 - 1);
      }

      else
      {
        v102 = (v251 + 168);
      }

      google::protobuf::DescriptorBuilder::BuildReservedRange(a1, *v102, a4, (*(a4 + 104) + v98));
      ++v99;
      v98 = v101;
    }

    while (v99 < *(v251 + 176));
  }

  v103 = *(a1 + 82);
  _VF = __OFSUB__(v103--, 1);
  *(a1 + 82) = v103;
  if ((v103 < 0) ^ _VF | (v103 == 0))
  {
    google::protobuf::DescriptorBuilder::AddError(a1, (*(a4 + 8) + 24), v251, 11, "Reached maximum recursion limit for nested messages.");
    *(a4 + 72) = 0;
    *(a4 + 128) = 0;
  }

  else
  {
    v104 = *(v251 + 56);
    *(a4 + 128) = v104;
    if (*(v251 + 56) >= 1)
    {
      v105 = 0;
      v106 = 0;
      v107 = (v251 + 48);
      v108 = 8;
      do
      {
        if (*v107)
        {
          v109 = (*v107 + v108 - 1);
        }

        else
        {
          v109 = (v251 + 48);
        }

        google::protobuf::DescriptorBuilder::BuildMessage(a1, *v109, a4, *(a4 + 72) + v105, a5);
        ++v106;
        v105 += 152;
        v108 += 8;
      }

      while (v106 < *(v251 + 56));
    }

    v247 = (v251 + 24);
    v110 = *(v251 + 200);
    *(a4 + 148) = v110;
    if (v110 >= 1)
    {
      v111 = 0;
      v112 = (v251 + 192);
      v113 = 8 * v110;
      do
      {
        if (*v112)
        {
          v115 = (*v112 + v111 + 7);
        }

        else
        {
          v115 = (v251 + 192);
        }

        v116 = *v115;
        if (*(v116 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v257, *v116, *(v116 + 1));
        }

        else
        {
          v118 = *v116;
          v257.__r_.__value_.__r.__words[2] = *(v116 + 2);
          *&v257.__r_.__value_.__l.__data_ = v118;
        }

        if (*(v117 + 23) < 0)
        {
          operator delete(*v117);
        }

        v114 = *&v257.__r_.__value_.__l.__data_;
        *(v117 + 16) = *(&v257.__r_.__value_.__l + 2);
        *v117 = v114;
        *(*(a4 + 112) + v111) = v117;
        v111 += 8;
      }

      while (v113 != v111);
    }

    google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::Descriptor>(a1, v251, a4, 7, "google.protobuf.MessageOptions", 0x1EuLL, a5);
    v119 = *(a4 + 8);
    *a4 = 1;
    google::protobuf::DescriptorBuilder::AddSymbol(a1, v119 + 24, v249, v119, v251, a4);
    v123 = *(v251 + 176);
    if (v123 >= 1)
    {
      v124 = 0;
      v125 = (v251 + 168);
      v126 = 1;
      v127 = 16;
      do
      {
        v129 = (*v125 + 8 * v124 + 7);
        if ((*v125 & 1) == 0)
        {
          v129 = (v251 + 168);
        }

        v130 = v124 + 1;
        v128 = v123;
        if (v124 + 1 < v123)
        {
          v131 = *v129;
          v132 = v126;
          v133 = v127;
          do
          {
            v134 = *v125;
            v135 = (*v125 + v133 - 1);
            if ((*v125 & 1) == 0)
            {
              v135 = (v251 + 168);
            }

            v136 = *v135;
            if (*(v131 + 28) > *(v136 + 24) && *(v136 + 28) > *(v131 + 24))
            {
              v137 = *(a4 + 8);
              v138 = (v134 + 7 + 8 * v124);
              if ((v134 & 1) == 0)
              {
                v138 = (v251 + 168);
              }

              v139 = *v138;
              v257.__r_.__value_.__r.__words[0] = v136;
              v257.__r_.__value_.__l.__size_ = v131;
              google::protobuf::DescriptorBuilder::AddError(a1, (v137 + 24), v139, 1, &v257, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_0,std::string>);
              v123 = *(v251 + 176);
            }

            v133 += 8;
            ++v132;
          }

          while (v123 > v132);
          v128 = v123;
        }

        v127 += 8;
        ++v126;
        ++v124;
      }

      while (v130 < v128);
    }

    *&v257.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
    v140 = *(v251 + 192);
    if (v140)
    {
      v141 = (v140 + 7);
    }

    else
    {
      v141 = (v251 + 192);
    }

    v142 = *(v251 + 200);
    if (v142)
    {
      v250 = &v141[v142];
      do
      {
        v153 = *v141;
        if (v257.__r_.__value_.__r.__words[0] > 1)
        {
          _X8 = v257.__r_.__value_.__r.__words[2];
          __asm { PRFM            #4, [X8] }

          v159 = *(v153 + 23);
          if (v159 >= 0)
          {
            v160 = *v141;
          }

          else
          {
            v160 = *v153;
          }

          if (v159 >= 0)
          {
            v161 = *(v153 + 23);
          }

          else
          {
            v161 = *(v153 + 1);
          }

          v162 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v160, v161, v121, v122);
          v147 = 0;
          v163 = (((v162 + v161) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v162 + v161));
          v164 = v257.__r_.__value_.__r.__words[2];
          v148 = v257.__r_.__value_.__r.__words[0];
          v151 = (v257.__r_.__value_.__r.__words[2] >> 12) ^ (v163 >> 7);
          v165 = vdup_n_s8(v163 & 0x7F);
          v166 = *(v153 + 23);
          if (v166 >= 0)
          {
            v167 = *(v153 + 23);
          }

          else
          {
            v167 = *(v153 + 1);
          }

          if (v166 >= 0)
          {
            v168 = v153;
          }

          else
          {
            v168 = *v153;
          }

          v149 = v258;
          while (1)
          {
            v143 = v151 & v148;
            v144 = *(v164 + (v151 & v148));
            v145 = vceq_s8(v144, v165);
            if (v145)
            {
              break;
            }

LABEL_138:
            v150 = vceq_s8(v144, 0x8080808080808080);
            if (v150)
            {
              inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v257, v163, (v143 + (__clz(__rbit64(v150)) >> 3)) & v148, v147, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::GetPolicyFunctions(void)::value);
              v254 = (v257.__r_.__value_.__r.__words[2] + inserted);
              v255 = (v258 + 16 * inserted);
              v256 = 1;
              goto LABEL_143;
            }

            v147 += 8;
            v151 = v147 + v143;
          }

          v243 = v148;
          v245 = v147;
          v242 = v149;
          while (1)
          {
            v146 = v149 + 16 * ((v143 + (__clz(__rbit64(v145)) >> 3)) & v148);
            if (*(v146 + 8) == v167 && !memcmp(*v146, v168, v167))
            {
              break;
            }

            v145 &= ((v145 & 0x8080808080808080) - 1) & 0x8080808080808080;
            v148 = v243;
            v147 = v245;
            v149 = v242;
            if (!v145)
            {
              goto LABEL_138;
            }
          }
        }

        else
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<std::string>(&v257, *v141, v121, v122, &v254);
          if (v256)
          {
LABEL_143:
            v154 = v255;
            v155 = *(v153 + 23);
            if ((v155 & 0x80u) == 0)
            {
              v156 = v153;
            }

            else
            {
              v156 = *v153;
            }

            if ((v155 & 0x80u) != 0)
            {
              v155 = *(v153 + 1);
            }

            *v255 = v156;
            v154[1] = v155;
            v120 = v251;
            if (v256)
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }
        }

        v120 = v251;
LABEL_151:
        v254 = v153;
        google::protobuf::DescriptorBuilder::AddError(a1, v153, v120, 0, &v254, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_1,std::string>);
LABEL_152:
        ++v141;
      }

      while (v141 != v250);
    }

    if (*(a4 + 4) >= 1)
    {
      v169 = 0;
      v170 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4))) + a4;
      v171 = ((v170 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v170);
      v172 = v171 >> 7;
      v173 = (v251 + 96);
      v174 = (v251 + 168);
      v175 = vdup_n_s8(v171 & 0x7F);
      do
      {
        v253 = *(a4 + 56) + 88 * v169;
        v176 = *(a4 + 136);
        if (v176 >= 1)
        {
          for (i = 0; i < v176; ++i)
          {
            v179 = (*(a4 + 88) + 40 * i);
            v252 = v179;
            v180 = *(v253 + 4);
            if (*v179 <= v180 && v180 < v179[1])
            {
              v181 = 0;
              _X9 = a1[28];
              __asm { PRFM            #4, [X9] }

              v184 = a1[26];
              v185 = (v172 ^ (_X9 >> 12)) & v184;
              v186 = *(_X9 + v185);
              v187 = vceq_s8(v186, v175);
              if (!v187)
              {
                goto LABEL_180;
              }

LABEL_177:
              v188 = a1[29];
              do
              {
                v189 = (v185 + (__clz(__rbit64(v187)) >> 3)) & v184;
                if (*(v188 + 32 * v189) == a4)
                {
                  v191 = v188 + 32 * v189;
                  v192 = *(v191 + 8);
                  goto LABEL_185;
                }

                v187 &= ((v187 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v187);
LABEL_180:
              while (1)
              {
                v190 = vceq_s8(v186, 0x8080808080808080);
                if (v190)
                {
                  break;
                }

                v181 += 8;
                v185 = (v181 + v185) & v184;
                v186 = *(_X9 + v185);
                v187 = vceq_s8(v186, v175);
                if (v187)
                {
                  goto LABEL_177;
                }
              }

              v193 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 26, v171, (v185 + (__clz(__rbit64(v190)) >> 3)) & v184, v181, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
              v192 = 0;
              v191 = a1[29] + 32 * v193;
              *v191 = a4;
              *(v191 + 8) = 0;
              *(v191 + 16) = 0;
              *(v191 + 24) = 0;
              *(v191 + 24) = 11;
LABEL_185:
              if (*v173)
              {
                v194 = (*v173 + 8 * i + 7);
              }

              else
              {
                v194 = (v251 + 96);
              }

              v195 = *v194;
              if (v192 < 0)
              {
                v192 = -1;
              }

              if ((v192 + 1) < 0x1FFFFFFF)
              {
                v196 = v192 + 1;
              }

              else
              {
                v196 = 0x1FFFFFFF;
              }

              *(v191 + 8) = v196;
              if (!*(v191 + 16))
              {
                *(v191 + 16) = v195;
                *(v191 + 24) = 1;
                v195 = *v194;
              }

              v178 = *(v253 + 8);
              v254 = &v252;
              v255 = &v253;
              google::protobuf::DescriptorBuilder::AddError(a1, (v178 + 24), v195, 1, &v254, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_2,std::string>);
              v176 = *(a4 + 136);
            }
          }
        }

        v197 = *(a4 + 144);
        if (v197 >= 1)
        {
          for (j = 0; j < v197; ++j)
          {
            v200 = (*(a4 + 104) + 8 * j);
            v201 = *(v253 + 4);
            if (*v200 <= v201 && v201 < v200[1])
            {
              v202 = 0;
              _X9 = a1[28];
              __asm { PRFM            #4, [X9] }

              v205 = a1[26];
              v206 = (v172 ^ (_X9 >> 12)) & v205;
              v207 = *(_X9 + v206);
              v208 = vceq_s8(v207, v175);
              if (!v208)
              {
                goto LABEL_205;
              }

LABEL_202:
              v209 = a1[29];
              do
              {
                v210 = (v206 + (__clz(__rbit64(v208)) >> 3)) & v205;
                if (*(v209 + 32 * v210) == a4)
                {
                  v212 = v209 + 32 * v210;
                  v213 = *(v212 + 8);
                  goto LABEL_210;
                }

                v208 &= ((v208 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v208);
LABEL_205:
              while (1)
              {
                v211 = vceq_s8(v207, 0x8080808080808080);
                if (v211)
                {
                  break;
                }

                v202 += 8;
                v206 = (v202 + v206) & v205;
                v207 = *(_X9 + v206);
                v208 = vceq_s8(v207, v175);
                if (v208)
                {
                  goto LABEL_202;
                }
              }

              v214 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 26, v171, (v206 + (__clz(__rbit64(v211)) >> 3)) & v205, v202, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
              v213 = 0;
              v212 = a1[29] + 32 * v214;
              *v212 = a4;
              *(v212 + 8) = 0;
              *(v212 + 16) = 0;
              *(v212 + 24) = 0;
              *(v212 + 24) = 11;
LABEL_210:
              if (*v174)
              {
                v215 = (*v174 + 8 * j + 7);
              }

              else
              {
                v215 = (v251 + 168);
              }

              v216 = *v215;
              if (v213 < 0)
              {
                v213 = -1;
              }

              if ((v213 + 1) < 0x1FFFFFFF)
              {
                v217 = v213 + 1;
              }

              else
              {
                v217 = 0x1FFFFFFF;
              }

              *(v212 + 8) = v217;
              if (!*(v212 + 16))
              {
                *(v212 + 16) = v216;
                *(v212 + 24) = 1;
                v216 = *v215;
              }

              v199 = *(v253 + 8);
              v254 = &v253;
              google::protobuf::DescriptorBuilder::AddError(a1, (v199 + 24), v216, 1, &v254, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_3,std::string>);
              v197 = *(a4 + 144);
            }
          }
        }

        if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find<std::string>(&v257, *(v253 + 8), v120, v121, v122))
        {
          v218 = *(v253 + 8);
          if (*v247)
          {
            v219 = (*v247 + 8 * v169 + 7);
          }

          else
          {
            v219 = (v251 + 24);
          }

          v220 = *v219;
          v254 = &v253;
          google::protobuf::DescriptorBuilder::AddError(a1, (v218 + 24), v220, 0, &v254, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_4,std::string>);
        }

        ++v169;
      }

      while (v169 < *(a4 + 4));
    }

    v221 = *(a4 + 136);
    if (v221 >= 1)
    {
      v222 = 0;
      v223 = 0;
      v224 = (v251 + 96);
      v225 = 1;
      do
      {
        v253 = *(a4 + 88) + 40 * v223;
        v227 = *(a4 + 144);
        if (v227 >= 1)
        {
          v228 = 0;
          for (k = 0; k < v227; ++k)
          {
            v230 = (*(a4 + 104) + v228);
            v252 = v230;
            if (*(v253 + 4) > *v230 && v230[1] > *v253)
            {
              v231 = *(a4 + 8);
              if (*v224)
              {
                v232 = (*v224 + 8 * v223 + 7);
              }

              else
              {
                v232 = (v251 + 96);
              }

              v233 = *v232;
              v254 = &v253;
              v255 = &v252;
              google::protobuf::DescriptorBuilder::AddError(a1, (v231 + 24), v233, 1, &v254, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_5,std::string>);
              v227 = *(a4 + 144);
            }

            v228 += 8;
          }

          v221 = *(a4 + 136);
        }

        v234 = v223 + 1;
        v226 = v221;
        v235 = v225;
        v236 = v222;
        if (v223 + 1 < v221)
        {
          do
          {
            v237 = *(a4 + 88) + v236;
            v238 = *(v237 + 40);
            v252 = (v237 + 40);
            if (*(v253 + 4) > v238 && *(v237 + 44) > *v253)
            {
              v239 = *(a4 + 8);
              if (*v224)
              {
                v240 = (*v224 + 8 * v223 + 7);
              }

              else
              {
                v240 = (v251 + 96);
              }

              v241 = *v240;
              v254 = &v252;
              v255 = &v253;
              google::protobuf::DescriptorBuilder::AddError(a1, (v239 + 24), v241, 1, &v254, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_6,std::string>);
              v221 = *(a4 + 136);
            }

            v236 += 40;
            ++v235;
          }

          while (v221 > v235);
          v226 = v221;
        }

        v222 += 40;
        ++v225;
        ++v223;
      }

      while (v234 < v226);
    }

    if (v257.__r_.__value_.__r.__words[0] >= 2)
    {
      operator delete((v257.__r_.__value_.__r.__words[2] - (v257.__r_.__value_.__s.__data_[8] & 1) - 8));
    }
  }

  ++*(a1 + 82);
}

void sub_23CD813B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, char a24, uint64_t a25)
{
  if (a23 >= 2)
  {
    v26 = a1;
    operator delete((a25 - (a24 & 1) - 8));
    a1 = v26;
  }

  ++*(v25 + 328);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::BuildEnum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (a3)
  {
    v10 = *(a3 + 8) + 24;
  }

  else
  {
    v10 = *(*(a1 + 160) + 16);
  }

  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, v10, *(a2 + 96) & 0xFFFFFFFFFFFFFFFCLL, a5);
  *(a4 + 8) = NameStrings;
  v12 = *(a2 + 96) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = *v12;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!*(v12 + 23))
  {
LABEL_16:
    google::protobuf::DescriptorBuilder::AddError(v9, (NameStrings + 24), a2, 0, "Missing name.");
    goto LABEL_17;
  }

  v14 = (*(a2 + 96) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_10:
  while (1)
  {
    v15 = *v14;
    if ((v15 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v15 != 95 && (v15 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    ++v14;
    if (!--v13)
    {
      goto LABEL_17;
    }
  }

  v133.__r_.__value_.__r.__words[0] = *(a2 + 96) & 0xFFFFFFFFFFFFFFFCLL;
  google::protobuf::DescriptorBuilder::AddError(v9, (NameStrings + 24), a2, 0, &v133, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_17:
  *(a4 + 16) = v9[20];
  *(a4 + 24) = a3;
  *(a4 + 1) &= 0xFCu;
  v17 = *(a2 + 32);
  if (!v17)
  {
    google::protobuf::DescriptorBuilder::AddError(v9, (*(a4 + 8) + 24), a2, 0, "Enums must contain at least one value.");
    v17 = *(a2 + 32);
  }

  v18 = (a2 + 24);
  if (v17 >= 1)
  {
    v19 = 0;
    v20 = *v18;
    v21 = (*v18 + 7);
    if ((*v18 & 1) == 0)
    {
      v21 = (a2 + 24);
    }

    v22 = *v21;
    v23 = v20 + 15;
    do
    {
      *(a4 + 2) = v19;
      v17 = *(a2 + 32);
      if (v19 > 0xFFFD)
      {
        break;
      }

      if (++v19 >= v17)
      {
        break;
      }

      v24 = (v20 & 1) != 0 ? v23 : a2 + 24;
      v23 += 8;
    }

    while (*(v22 + 40) + v19 == *(*v24 + 40));
  }

  *(a4 + 4) = v17;
  if (*(a2 + 32) >= 1)
  {
    v25 = 0;
    v26 = 0;
    v27 = 8;
    do
    {
      v28 = *(a2 + 24);
      if (v28)
      {
        v29 = (v28 + v27 - 1);
      }

      else
      {
        v29 = (a2 + 24);
      }

      google::protobuf::DescriptorBuilder::BuildEnumValue(v9, *v29, a4, *(a4 + 56) + v25, a5);
      ++v26;
      v25 += 48;
      v27 += 8;
    }

    while (v26 < *(a2 + 32));
  }

  v30 = *(a2 + 56);
  *(a4 + 64) = v30;
  v31 = *a5;
  if (!*a5)
  {
  }

  v32 = *(a5 + 168);
  v33 = v32 + 8 * v30;
  *(a5 + 168) = v33;
  v34 = *(a5 + 112);
  if (v33 > v34)
  {
  }

  v125 = (a2 + 24);
  *(a4 + 72) = v31 + v32;
  v35 = *(a2 + 56);
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = 0;
    v38 = (a2 + 48);
    do
    {
      if (*v38)
      {
        v39 = (*v38 + v36 + 7);
      }

      else
      {
        v39 = (a2 + 48);
      }

      v40 = *v39;
      v41 = (*(a4 + 72) + v36);
      v42 = *(v40 + 24);
      *v41 = v42;
      v43 = *(v40 + 28);
      v41[1] = v43;
      if (v42 > v43)
      {
        google::protobuf::DescriptorBuilder::AddError(v9, (*(a4 + 8) + 24), v40, 1, "Reserved range end number must be greater than start number.");
        v35 = *(a2 + 56);
      }

      ++v37;
      v36 += 8;
    }

    while (v37 < v35);
  }

  v44 = *(a2 + 80);
  *(a4 + 68) = v44;
  if (v44 >= 1)
  {
    v45 = 0;
    v46 = (a2 + 72);
    v47 = 8 * v44;
    do
    {
      if (*v46)
      {
        v49 = (*v46 + v45 + 7);
      }

      else
      {
        v49 = (a2 + 72);
      }

      v50 = *v49;
      v52 = v51;
      if (*(v50 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v133, *v50, *(v50 + 1));
        if (*(v52 + 23) < 0)
        {
LABEL_55:
          operator delete(*v52);
        }
      }

      else
      {
        v53 = *v50;
        v133.__r_.__value_.__r.__words[2] = *(v50 + 2);
        *&v133.__r_.__value_.__l.__data_ = v53;
        if (*(v51 + 23) < 0)
        {
          goto LABEL_55;
        }
      }

      v48 = *&v133.__r_.__value_.__l.__data_;
      *(v52 + 16) = *(&v133.__r_.__value_.__l + 2);
      *v52 = v48;
      *(*(a4 + 80) + v45) = v52;
      v45 += 8;
    }

    while (v47 != v45);
  }

  google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::EnumDescriptor>(v9, a2, a4, 3, "google.protobuf.EnumOptions", 0x1BuLL, a5);
  v54 = *(a4 + 8);
  *a4 = 4;
  google::protobuf::DescriptorBuilder::AddSymbol(v9, v54 + 24, a3, v54, a2, a4);
  v127 = a2;
  v128 = v9;
  v58 = *(a2 + 56);
  if (v58 >= 1)
  {
    v59 = 0;
    v60 = (a2 + 48);
    v61 = 1;
    v62 = 16;
    do
    {
      v64 = (*v60 + 8 * v59 + 7);
      if ((*v60 & 1) == 0)
      {
        v64 = v60;
      }

      v65 = v59 + 1;
      v63 = v58;
      if (v59 + 1 < v58)
      {
        v66 = *v64;
        v67 = v61;
        v68 = v62;
        do
        {
          v69 = *v60;
          v70 = (*v60 + v68 - 1);
          if ((*v60 & 1) == 0)
          {
            v70 = v60;
          }

          v71 = *v70;
          if (*(v66 + 28) >= *(v71 + 24) && *(v71 + 28) >= *(v66 + 24))
          {
            v72 = *(a4 + 8);
            v73 = (v69 + 7 + 8 * v59);
            if ((v69 & 1) == 0)
            {
              v73 = v60;
            }

            v74 = *v73;
            v133.__r_.__value_.__r.__words[0] = v71;
            v133.__r_.__value_.__l.__size_ = v66;
            google::protobuf::DescriptorBuilder::AddError(v128, (v72 + 24), v74, 1, &v133, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_0,std::string>);
            v58 = *(v127 + 56);
          }

          v68 += 8;
          ++v67;
        }

        while (v58 > v67);
        v63 = v58;
        v9 = v128;
      }

      v62 += 8;
      ++v61;
      ++v59;
    }

    while (v65 < v63);
  }

  *&v133.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
  v75 = v127;
  v76 = *(v127 + 72);
  if (v76)
  {
    v77 = (v76 + 7);
  }

  else
  {
    v77 = (v127 + 72);
  }

  v78 = *(v127 + 80);
  if (v78)
  {
    v126 = &v77[v78];
    do
    {
      v88 = *v77;
      if (v133.__r_.__value_.__r.__words[0] > 1)
      {
        _X8 = v133.__r_.__value_.__r.__words[2];
        __asm { PRFM            #4, [X8] }

        v98 = *(v88 + 23);
        if (v98 >= 0)
        {
          v99 = *v77;
        }

        else
        {
          v99 = *v88;
        }

        if (v98 >= 0)
        {
          v100 = *(v88 + 23);
        }

        else
        {
          v100 = *(v88 + 1);
        }

        v101 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v99, v100, v56, v57);
        v83 = 0;
        v102 = (((v101 + v100) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v101 + v100));
        v103 = v133.__r_.__value_.__r.__words[2];
        v104 = v133.__r_.__value_.__r.__words[0];
        v86 = (v133.__r_.__value_.__r.__words[2] >> 12) ^ (v102 >> 7);
        v105 = vdup_n_s8(v102 & 0x7F);
        v106 = *(v88 + 23);
        if (v106 >= 0)
        {
          v107 = *(v88 + 23);
        }

        else
        {
          v107 = *(v88 + 1);
        }

        if (v106 >= 0)
        {
          v108 = v88;
        }

        else
        {
          v108 = *v88;
        }

        v84 = v134;
        while (1)
        {
          v79 = v86 & v104;
          v80 = *(v103 + (v86 & v104));
          v81 = vceq_s8(v80, v105);
          if (v81)
          {
            break;
          }

LABEL_82:
          v85 = vceq_s8(v80, 0x8080808080808080);
          if (v85)
          {
            inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v133, v102, (v79 + (__clz(__rbit64(v85)) >> 3)) & v104, v83, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::GetPolicyFunctions(void)::value);
            v130 = v133.__r_.__value_.__r.__words[2] + inserted;
            v131 = (v134 + 16 * inserted);
            v132 = 1;
            goto LABEL_87;
          }

          v83 += 8;
          v86 = v83 + v79;
        }

        v123 = v84;
        v124 = v83;
        while (1)
        {
          v82 = v84 + 16 * ((v79 + (__clz(__rbit64(v81)) >> 3)) & v104);
          if (*(v82 + 8) == v107 && !memcmp(*v82, v108, v107))
          {
            break;
          }

          v81 &= ((v81 & 0x8080808080808080) - 1) & 0x8080808080808080;
          v84 = v123;
          v83 = v124;
          if (!v81)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<std::string>(&v133, *v77, v56, v57, &v130);
        if (v132)
        {
LABEL_87:
          v89 = v131;
          v90 = *(v88 + 23);
          if (v90 >= 0)
          {
            v91 = v88;
          }

          else
          {
            v91 = *v88;
          }

          if (v90 < 0)
          {
            v90 = *(v88 + 1);
          }

          *v131 = v91;
          v89[1] = v90;
          v75 = v127;
          v9 = v128;
          if (v132)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }
      }

      v75 = v127;
      v9 = v128;
LABEL_95:
      v130 = v88;
      google::protobuf::DescriptorBuilder::AddError(v9, v88, v75, 0, &v130, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_1,std::string>);
LABEL_96:
      ++v77;
    }

    while (v77 != v126);
  }

  if (*(a4 + 4) >= 1)
  {
    v109 = 0;
    v110 = (v75 + 48);
    do
    {
      v111 = *(a4 + 56) + 48 * v109;
      v130 = v111;
      v112 = *(a4 + 64);
      if (v112 >= 1)
      {
        v113 = 0;
        for (i = 0; i < v112; ++i)
        {
          v115 = *(a4 + 72);
          v116 = *(v130 + 4);
          if (*(v115 + v113) <= v116 && v116 <= *(v115 + v113 + 4))
          {
            v117 = *(v130 + 8);
            if (*v110)
            {
              v118 = (*v110 + v113 + 7);
            }

            else
            {
              v118 = v110;
            }

            v119 = *v118;
            v129 = &v130;
            google::protobuf::DescriptorBuilder::AddError(v9, (v117 + 24), v119, 1, &v129, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_2,std::string>);
            v112 = *(a4 + 64);
          }

          v113 += 8;
        }

        v111 = v130;
      }

      if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find<std::string>(&v133, *(v111 + 8), v55, v56, v57))
      {
        v120 = *(v130 + 8);
        if (*v125)
        {
          v121 = (*v125 + 8 * v109 + 7);
        }

        else
        {
          v121 = v125;
        }

        v122 = *v121;
        v129 = &v130;
        google::protobuf::DescriptorBuilder::AddError(v9, (v120 + 24), v122, 0, &v129, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_3,std::string>);
      }

      ++v109;
    }

    while (v109 < *(a4 + 4));
  }

  if (v133.__r_.__value_.__r.__words[0] >= 2)
  {
    operator delete((v133.__r_.__value_.__r.__words[2] - (v133.__r_.__value_.__s.__data_[8] & 1) - 8));
  }
}

void sub_23CD81D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, char a22, uint64_t a23)
{
  if (a21 >= 2)
  {
    v23 = a1;
    operator delete((a23 - (a22 & 1) - 8));
    a1 = v23;
  }

  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::BuildService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, *(*(a1 + 160) + 16), *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL, a5);
  *(a4 + 8) = NameStrings;
  *(a4 + 16) = *(a1 + 160);
  v10 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 23);
  if (v11 < 0)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = *v10;
      goto LABEL_7;
    }
  }

  else if (*(v10 + 23))
  {
    v12 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_7:
    while (1)
    {
      v13 = *v12;
      if ((v13 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v13 != 95 && (v13 - 58) <= 0xFFFFFFF5)
      {
        break;
      }

      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    v22[0] = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
    google::protobuf::DescriptorBuilder::AddError(a1, (NameStrings + 24), a2, 0, v22, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_14:
    v15 = *(a2 + 32);
    *(a4 + 56) = v15;
    v16 = *a5;
    if (*a5)
    {
      v17 = *(a5 + 168);
      v18 = v17 + 80 * v15;
      *(a5 + 168) = v18;
      v19 = *(a5 + 112);
      if (v18 <= v19)
      {
        *(a4 + 48) = v16 + v17;
        if (*(a2 + 32) >= 1)
        {
          v20 = *(a2 + 24);
          if (v20)
          {
            v21 = (v20 + 7);
          }

          else
          {
            v21 = (a2 + 24);
          }

          google::protobuf::DescriptorBuilder::BuildMethod(a1, *v21, a4, *(a4 + 48), a5);
        }

        google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::ServiceDescriptor>();
      }
    }
  }

  google::protobuf::DescriptorBuilder::AddError(a1, (NameStrings + 24), a2, 0, "Missing name.");
  goto LABEL_14;
}

void google::protobuf::DescriptorBuilder::CrossLinkFile(google::protobuf::DescriptorBuilder *this, google::protobuf::FileDescriptor *a2, const google::protobuf::FileDescriptorProto *a3)
{
  if (!*(a2 + 16))
  {
    *(a2 + 16) = &google::protobuf::_FileOptions_default_instance_;
  }

  if (*(a2 + 15) >= 1)
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

      google::protobuf::DescriptorBuilder::CrossLinkMessage(this, (*(a2 + 12) + v6), *v10);
      ++v7;
      v6 += 152;
      v9 += 8;
    }

    while (v7 < *(a2 + 15));
  }

  if (*(a2 + 1) >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = (a3 + 120);
    v14 = 8;
    do
    {
      if (*v13)
      {
        v15 = (*v13 + v14 - 1);
      }

      else
      {
        v15 = (a3 + 120);
      }

      google::protobuf::DescriptorBuilder::CrossLinkField(this, (*(a2 + 15) + v11), *v15);
      ++v12;
      v11 += 88;
      v14 += 8;
    }

    while (v12 < *(a2 + 1));
  }

  v16 = *(a2 + 16);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(a2 + 13);
    do
    {
      v19 = v18 + 88 * v17;
      if (*(v19 + 32))
      {
        v20 = *(v19 + 4);
        if (v20 >= 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *(v19 + 32) = &google::protobuf::_EnumOptions_default_instance_;
        v20 = *(v19 + 4);
        if (v20 >= 1)
        {
LABEL_22:
          v21 = (*(v19 + 56) + 24);
          do
          {
            if (!*v21)
            {
              *v21 = &google::protobuf::_EnumValueOptions_default_instance_;
            }

            v21 += 6;
            --v20;
          }

          while (v20);
        }
      }

      ++v17;
    }

    while (v17 != v16);
  }

  v22 = *(a2 + 17);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = (a3 + 96);
    do
    {
      v25 = *(a2 + 14) + (v23 << 6);
      if (*v24)
      {
        v26 = (*v24 + 8 * v23 + 7);
      }

      else
      {
        v26 = v24;
      }

      v27 = *v26;
      if (*(v25 + 24))
      {
        if (*(v25 + 56) >= 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        *(v25 + 24) = &google::protobuf::_ServiceOptions_default_instance_;
        if (*(v25 + 56) >= 1)
        {
LABEL_36:
          v28 = 0;
          v29 = 0;
          v30 = (v27 + 24);
          v31 = 8;
          do
          {
            if (*v30)
            {
              v32 = (*v30 + v31 - 1);
            }

            else
            {
              v32 = v30;
            }

            google::protobuf::DescriptorBuilder::CrossLinkMethod(this, (*(v25 + 48) + v28), *v32);
            ++v29;
            v28 += 80;
            v31 += 8;
          }

          while (v29 < *(v25 + 56));
          v22 = *(a2 + 17);
        }
      }

      ++v23;
    }

    while (v23 < v22);
  }
}

uint64_t google::protobuf::DescriptorBuilder::SuggestFieldNumbers(uint64_t this, google::protobuf::FileDescriptor *a2, const google::protobuf::FileDescriptorProto *a3)
{
  v3 = *(a2 + 15);
  if (v3 >= 1)
  {
    v4 = a2;
    v5 = this;
    v6 = 0;
    this = 3758096384;
    v107 = v5;
    do
    {
      v12 = 0;
      v19 = *(v4 + 12) + 152 * v6;
      v116 = v19;
      _X11 = v5[28];
      __asm { PRFM            #4, [X11] }

      v103 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19))) + v19;
      v104 = ((v103 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v103);
      v105 = vdup_n_s8(v104 & 0x7F);
      v106 = v5[26];
      for (i = (v104 >> 7) ^ (_X11 >> 12); ; i = v12 + v7)
      {
        v7 = i & v106;
        v8 = *(_X11 + v7);
        v9 = vceq_s8(v8, v105);
        if (v9)
        {
          break;
        }

LABEL_7:
        if (vceq_s8(v8, 0x8080808080808080))
        {
          goto LABEL_139;
        }

        v12 += 8;
      }

      v10 = v5[29];
      while (1)
      {
        v11 = (v7 + (__clz(__rbit64(v9)) >> 3)) & v106;
        if (*(v10 + 32 * v11) == v19)
        {
          break;
        }

        v9 &= ((v9 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      if (_X11)
      {
        v109 = v10 + 32 * v11;
        v14 = *(v109 + 8);
        v15 = v14 >= 3 ? 3 : *(v109 + 8);
        v115 = v15;
        if (v14 >= 1)
        {
          __p = 0;
          v113 = 0;
          v114 = 0;
          if (*(v19 + 4) < 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = 0;
            v17 = 0;
            v18 = 4;
            do
            {
              v20 = *(*(v19 + 56) + v18);
              if ((v20 - 0x20000000) >= 0xE0000001)
              {
                v21 = __p;
                if (__p == v16 || *(v16 - 1) != v20)
                {
                  v22 = v20 + 1;
                  if (v16 < v114)
                  {
                    *v16++ = v20 | (v22 << 32);
                  }

                  else
                  {
                    v23 = v16 - __p;
                    v24 = (v16 - __p) >> 3;
                    v25 = v24 + 1;
                    if ((v24 + 1) >> 61)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v26 = v114 - __p;
                    if ((v114 - __p) >> 2 > v25)
                    {
                      v25 = v26 >> 2;
                    }

                    if (v26 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v27 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v27 = v25;
                    }

                    if (v27)
                    {
                      if (!(v27 >> 61))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v28 = v24;
                    v29 = (8 * v24);
                    v30 = v20 | (v22 << 32);
                    v31 = &v29[-v28];
                    *v29 = v30;
                    v16 = v29 + 1;
                    memcpy(v31, v21, v23);
                    __p = v31;
                    v113 = v16;
                    v114 = 0;
                    if (v21)
                    {
                      operator delete(v21);
                    }
                  }

                  v113 = v16;
                  v19 = v116;
                }

                else
                {
                  *(v16 - 1) = v20 + 1;
                }
              }

              ++v17;
              v18 += 88;
            }

            while (v17 < *(v19 + 4));
          }

          if (*(v19 + 140) >= 1)
          {
            v32 = 0;
            v33 = 4;
            do
            {
              v34 = *(*(v19 + 96) + v33);
              if ((v34 - 0x20000000) >= 0xE0000001)
              {
                v35 = __p;
                if (__p == v16 || *(v16 - 1) != v34)
                {
                  v36 = v34 + 1;
                  if (v16 < v114)
                  {
                    *v16++ = v34 | (v36 << 32);
                  }

                  else
                  {
                    v37 = v16 - __p;
                    v38 = (v16 - __p) >> 3;
                    v39 = v38 + 1;
                    if ((v38 + 1) >> 61)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v40 = v114 - __p;
                    if ((v114 - __p) >> 2 > v39)
                    {
                      v39 = v40 >> 2;
                    }

                    if (v40 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v41 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v41 = v39;
                    }

                    if (v41)
                    {
                      if (!(v41 >> 61))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v42 = v38;
                    v43 = (8 * v38);
                    v44 = v34 | (v36 << 32);
                    v45 = &v43[-v42];
                    *v43 = v44;
                    v16 = v43 + 1;
                    memcpy(v45, v35, v37);
                    __p = v45;
                    v113 = v16;
                    v114 = 0;
                    if (v35)
                    {
                      operator delete(v35);
                    }
                  }

                  v113 = v16;
                  v19 = v116;
                }

                else
                {
                  *(v16 - 1) = v34 + 1;
                }
              }

              ++v32;
              v33 += 88;
            }

            while (v32 < *(v19 + 140));
          }

          if (*(v19 + 144) >= 1)
          {
            v46 = 0;
            v47 = 0;
            do
            {
              v48 = (*(v19 + 104) + v46);
              v50 = *v48;
              v49 = v48[1];
              if (v50 >= 0x20000000)
              {
                v50 = 0x20000000;
              }

              v51 = v50 & ~(v50 >> 31);
              if (v49 >= 0x20000000)
              {
                v52 = 0x20000000;
              }

              else
              {
                v52 = v49;
              }

              if (v52 > v51)
              {
                if (v16 < v114)
                {
                  *v16++ = v51 | (v52 << 32);
                }

                else
                {
                  v53 = __p;
                  v54 = v16 - __p;
                  v55 = (v16 - __p) >> 3;
                  v56 = v55 + 1;
                  if ((v55 + 1) >> 61)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v57 = v114 - __p;
                  if ((v114 - __p) >> 2 > v56)
                  {
                    v56 = v57 >> 2;
                  }

                  if (v57 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v58 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v58 = v56;
                  }

                  if (v58)
                  {
                    if (!(v58 >> 61))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v59 = v55;
                  v60 = (8 * v55);
                  v61 = v51 | (v52 << 32);
                  v62 = &v60[-v59];
                  *v60 = v61;
                  v16 = v60 + 1;
                  memcpy(v62, v53, v54);
                  __p = v62;
                  v113 = v16;
                  v114 = 0;
                  if (v53)
                  {
                    operator delete(v53);
                  }
                }

                v113 = v16;
                v19 = v116;
              }

              ++v47;
              v46 += 8;
            }

            while (v47 < *(v19 + 144));
          }

          if (*(v19 + 136) >= 1)
          {
            v63 = 0;
            v64 = 0;
            do
            {
              v65 = (*(v19 + 88) + v63);
              v67 = *v65;
              v66 = v65[1];
              if (v67 >= 0x20000000)
              {
                v67 = 0x20000000;
              }

              v68 = v67 & ~(v67 >> 31);
              if (v66 >= 0x20000000)
              {
                v69 = 0x20000000;
              }

              else
              {
                v69 = v66;
              }

              if (v69 > v68)
              {
                if (v16 < v114)
                {
                  *v16++ = v68 | (v69 << 32);
                }

                else
                {
                  v70 = __p;
                  v71 = v16 - __p;
                  v72 = (v16 - __p) >> 3;
                  v73 = v72 + 1;
                  if ((v72 + 1) >> 61)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v74 = v114 - __p;
                  if ((v114 - __p) >> 2 > v73)
                  {
                    v73 = v74 >> 2;
                  }

                  if (v74 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v75 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v75 = v73;
                  }

                  if (v75)
                  {
                    if (!(v75 >> 61))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v76 = v72;
                  v77 = (8 * v72);
                  v78 = v68 | (v69 << 32);
                  v79 = &v77[-v76];
                  *v77 = v78;
                  v16 = v77 + 1;
                  memcpy(v79, v70, v71);
                  __p = v79;
                  v113 = v16;
                  v114 = 0;
                  if (v70)
                  {
                    operator delete(v70);
                  }
                }

                v113 = v16;
                v19 = v116;
              }

              ++v64;
              v63 += 40;
            }

            while (v64 < *(v19 + 136));
          }

          if (v16 >= v114)
          {
            v81 = __p;
            v82 = v16 - __p;
            v83 = (v16 - __p) >> 3;
            v84 = v83 + 1;
            if ((v83 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v85 = v114 - __p;
            if ((v114 - __p) >> 2 > v84)
            {
              v84 = v85 >> 2;
            }

            if (v85 >= 0x7FFFFFFFFFFFFFF8)
            {
              v86 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v86 = v84;
            }

            if (v86)
            {
              if (!(v86 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v83) = 0x200000001FFFFFFFLL;
            v80 = (8 * v83 + 8);
            memcpy(0, v81, v82);
            __p = 0;
            v113 = v80;
            v114 = 0;
            if (v81)
            {
              operator delete(v81);
            }
          }

          else
          {
            *v16 = 0x200000001FFFFFFFLL;
            v80 = v16 + 1;
          }

          v113 = v80;
          if (v80 >= v114)
          {
            v88 = __p;
            v89 = v80 - __p;
            v90 = (v80 - __p) >> 3;
            v91 = v90 + 1;
            if ((v90 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v92 = v114 - __p;
            if ((v114 - __p) >> 2 > v91)
            {
              v91 = v92 >> 2;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFF8)
            {
              v93 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              if (!(v93 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v90) = 0x4E1F00004A38;
            v87 = (8 * v90 + 8);
            memcpy(0, v88, v89);
            __p = 0;
            v113 = v87;
            v114 = 0;
            if (v88)
            {
              operator delete(v88);
            }
          }

          else
          {
            *v80 = 0x4E1F00004A38;
            v87 = v80 + 1;
          }

          v94 = 126 - 2 * __clz((v87 - __p) >> 3);
          v113 = v87;
          if (v87 == __p)
          {
            v95 = 0;
          }

          else
          {
            v95 = v94;
          }

          std::__introsort<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,false>(__p, v87, v95, 1);
          v111 = 1;
          v4 = a2;
          v96 = *(v109 + 16);
          v5 = v107;
          if (v96)
          {
            v110[0] = &v116;
            v110[1] = &__p;
            v110[2] = &v111;
            v110[3] = &v115;
            google::protobuf::DescriptorBuilder::AddError(v107, (*(v116 + 8) + 24), v96, *(v109 + 24), v110, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_0,std::string>);
          }

          if (__p)
          {
            v113 = __p;
            operator delete(__p);
          }

          v3 = *(a2 + 15);
          this = 3758096384;
        }
      }

LABEL_139:
      ++v6;
    }

    while (v6 < v3);
  }

  return this;
}

void sub_23CD82AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    v21 = a1;
    operator delete(__p);
    a1 = v21;
  }

  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::UpdateSourceCodeInfo(google::protobuf::DescriptorBuilder::OptionInterpreter *this, google::protobuf::SourceCodeInfo *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  if (*(this + 4) < 2uLL)
  {
    return;
  }

  v5 = a2;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (!*(a2 + 6))
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a2 + 2);
  v47 = (a2 + 16);
  if (v8)
  {
    v9 = (v8 + 7);
  }

  else
  {
    v9 = (a2 + 16);
  }

  do
  {
    v13 = *(*v9 + 6);
    if ((v7 & 1) != 0 && v13 >= 0)
    {
      v7 = 1;
      goto LABEL_8;
    }

    v48 = v6;
    if (v13 >= 1)
    {
      operator new();
    }

    _X8 = *(this + 5);
    __asm { PRFM            #4, [X8] }

    v20 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, 0, 0, a4, a5);
    v21 = 0;
    v22 = ((v20 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v20);
    v23 = *(this + 5);
    v24 = *(this + 3);
    v25 = vdup_n_s8(v22 & 0x7F);
    v26 = ((v23 >> 12) ^ (v22 >> 7)) & v24;
    v27 = *(v23 + v26);
    v28 = vceq_s8(v27, v25);
    if (!v28)
    {
LABEL_20:
      while (!*&vceq_s8(v27, 0x8080808080808080))
      {
        v21 += 8;
        v26 = (v21 + v26) & v24;
        v27 = *(v23 + v26);
        v28 = vceq_s8(v27, v25);
        if (v28)
        {
          goto LABEL_16;
        }
      }

LABEL_31:
      if ((v48 & 1) == 0)
      {
        v7 = 0;
        v6 = 0;
        v5 = a2;
        goto LABEL_8;
      }

      v39 = *v9;
      v40 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v50, google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceCodeInfo_Location>);
      v5 = a2;
      google::protobuf::SourceCodeInfo_Location::CopyFrom(v40, v39);
      v7 = 0;
LABEL_41:
      v6 = 1;
      goto LABEL_8;
    }

LABEL_16:
    v29 = *(this + 6);
    v44 = v29;
    v45 = v21;
    while (1)
    {
      v30 = v29 + 48 * ((v26 + (__clz(__rbit64(v28)) >> 3)) & v24);
      if (*(v30 + 8) == *v30)
      {
        v31 = v30;
        if (!memcmp(*v30, 0, 0))
        {
          break;
        }
      }

      v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v29 = v44;
      v21 = v45;
      if (!v28)
      {
        goto LABEL_20;
      }
    }

    if (!v23)
    {
      goto LABEL_31;
    }

    v5 = a2;
    if ((v48 & 1) == 0)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v50, *(a2 + 6));
      for (i = (*v47 & 1) != 0 ? (*v47 + 7) : v47; i != v9; ++i)
      {
        v42 = *i;
        v43 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v50, google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceCodeInfo_Location>);
        google::protobuf::SourceCodeInfo_Location::CopyFrom(v43, v42);
      }
    }

    v32 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v50, google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceCodeInfo_Location>);
    google::protobuf::SourceCodeInfo_Location::CopyFrom(v32, *v9);
    *(v32 + 24) = 0;
    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    if (v34 == v33)
    {
      v7 = 1;
      goto LABEL_41;
    }

    v35 = 0;
    v36 = *(v32 + 28);
    do
    {
      v37 = *v34;
      if (v35 == v36)
      {
        google::protobuf::RepeatedField<int>::Grow(v32 + 24, v35, (v35 + 1));
        LODWORD(v35) = *(v32 + 24);
        v36 = *(v32 + 28);
        v33 = *(v31 + 32);
      }

      v38 = *(v32 + 32);
      *(v32 + 24) = v35 + 1;
      *(v38 + 4 * v35) = v37;
      ++v34;
      v35 = (v35 + 1);
    }

    while (v34 != v33);
    v7 = 1;
    v6 = 1;
LABEL_8:
    ++v9;
    v10 = *(v5 + 2);
    v11 = (v10 + 7);
    if ((v10 & 1) == 0)
    {
      v11 = v47;
    }

    v12 = *(v5 + 6);
  }

  while (v9 != &v11[2 * v12]);
  if (((v47 != &v50) & v6) != 0)
  {
    if (v12 >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v47);
    }

    if (v51)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v47, &v50, google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo_Location>);
    }
  }

  if (v50)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(&v50);
  }
}

void sub_23CD8301C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  google::protobuf::RepeatedPtrField<google::protobuf::SourceCodeInfo_Location>::~RepeatedPtrField(&a16);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::~OptionInterpreter(google::protobuf::DescriptorBuilder::OptionInterpreter *this)
{
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((this + 88));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::~raw_hash_set(this + 7);
  if (*(this + 3))
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::destroy_slots(this + 3);
    operator delete((*(this + 5) - (*(this + 4) & 1) - 8));
  }
}

void google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::DescriptorBuilder *this, const google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3, unint64_t a4, const unint64_t *a5)
{
  v6 = this;
  v72 = xmmword_23CE306D0;
  if (*(a2 + 32) >= 1)
  {
    v7 = 0;
    v8 = (a3 + 48);
    v67 = a3 + 48;
    do
    {
      v9 = *(a2 + 9) + 152 * v7;
      v69 = v9;
      if (v72 > 1)
      {
        _X8 = v73;
        __asm { PRFM            #4, [X8] }

        v17 = *(v9 + 8);
        v18 = *(v17 + 23);
        if (v18 >= 0)
        {
          v19 = *(v9 + 8);
        }

        else
        {
          v19 = *v17;
        }

        if (v18 >= 0)
        {
          v20 = *(v17 + 23);
        }

        else
        {
          v20 = *(v17 + 8);
        }

        v21 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v19, v20, a4, a5);
        v22 = 0;
        v23 = (((v21 + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v21 + v20));
        v24 = v73;
        v25 = v74;
        v26 = v72;
        v27 = vdup_n_s8(v23 & 0x7F);
        v9 = v69;
        v28 = ((v73 >> 12) ^ (v23 >> 7)) & v72;
        v29 = *(v73 + v28);
        v30 = vceq_s8(v29, v27);
        if (!v30)
        {
LABEL_28:
          while (1)
          {
            v40 = vceq_s8(v29, 0x8080808080808080);
            if (v40)
            {
              break;
            }

            v22 += 8;
            v28 = (v22 + v28) & v26;
            v29 = *(v24 + v28);
            v30 = vceq_s8(v29, v27);
            if (v30)
            {
              goto LABEL_13;
            }
          }

          v8 = v67;
          v10 = (v74 + 8 * inserted);
          goto LABEL_51;
        }

LABEL_13:
        while (1)
        {
          v31 = *(v25 + 8 * ((v28 + (__clz(__rbit64(v30)) >> 3)) & v26));
          if (v31 == v69)
          {
            break;
          }

          v66 = v22;
          v32 = v31[1];
          v33 = v69[1];
          v34 = *(v32 + 23);
          if (v34 >= 0)
          {
            v35 = *(v32 + 23);
          }

          else
          {
            v35 = *(v32 + 8);
          }

          v36 = *(v33 + 23);
          v37 = v36;
          if ((v36 & 0x80u) != 0)
          {
            v36 = *(v33 + 8);
          }

          if (v35 == v36)
          {
            v38 = v34 >= 0 ? v31[1] : *v32;
            v39 = v37 >= 0 ? v69[1] : *v33;
            if (!memcmp(v38, v39, v35))
            {
              break;
            }
          }

          v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
          v6 = this;
          v22 = v66;
          if (!v30)
          {
            goto LABEL_28;
          }
        }

        v8 = v67;
      }

      else
      {
        if (*(&v72 + 1) <= 1uLL)
        {
          *(&v72 + 1) = 2;
          v10 = &v73;
LABEL_51:
          *v10 = v69;
          goto LABEL_52;
        }

        v31 = v73;
        if (v73 != v9)
        {
          v41 = *(v73 + 8);
          v42 = *(v9 + 8);
          v43 = *(v41 + 23);
          if (v43 >= 0)
          {
            v44 = *(v41 + 23);
          }

          else
          {
            v44 = *(v41 + 8);
          }

          v45 = *(v42 + 23);
          v46 = v45;
          if ((v45 & 0x80u) != 0)
          {
            v45 = *(v42 + 8);
          }

          if (v44 != v45 || (v43 >= 0 ? (v47 = *(v73 + 8)) : (v47 = *v41), v46 >= 0 ? (v48 = *(v9 + 8)) : (v48 = *v42), memcmp(v47, v48, v44)))
          {
          }
        }
      }

      v49 = *(v31[4] + 83);
      v6 = this;
      if ((v49 & 1) != 0 || *(*(v9 + 32) + 83) == 1)
      {
        v52 = *(a2 + 1);
        v71 = &v69;
        google::protobuf::DescriptorBuilder::AddError(this, (v52 + 24), a3, 0, &v71, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_0,std::string>);
        break;
      }

LABEL_52:
      if (*v8)
      {
        v51 = (*v8 + 8 * v7 + 7);
      }

      else
      {
        v51 = v8;
      }

      google::protobuf::DescriptorBuilder::DetectMapConflicts(v6, (*(a2 + 9) + 152 * v7++), *v51);
    }

    while (v7 < *(a2 + 32));
  }

  if (*(a2 + 1) >= 1)
  {
    v53 = 0;
    v54 = 8;
    do
    {
      v70 = v55;
      if (v69 && *(*(*v55 + 32) + 83) == 1)
      {
        v56 = *(a2 + 1);
        v71 = &v69;
        google::protobuf::DescriptorBuilder::AddError(v6, (v56 + 24), a3, 0, &v71, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_1,std::string>);
      }

      ++v53;
      v54 += 88;
    }

    while (v53 < *(a2 + 1));
  }

  if (*(a2 + 33) >= 1)
  {
    v57 = 0;
    v58 = 8;
    do
    {
      v70 = v59;
      if (v69 && *(*(*v59 + 32) + 83) == 1)
      {
        v60 = *(a2 + 1);
        v71 = &v69;
        google::protobuf::DescriptorBuilder::AddError(v6, (v60 + 24), a3, 0, &v71, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_2,std::string>);
      }

      ++v57;
      v58 += 88;
    }

    while (v57 < *(a2 + 33));
  }

  if (*(a2 + 30) >= 1)
  {
    v61 = 0;
    v62 = 8;
    do
    {
      v70 = v63;
      if (v69 && *(*(*v63 + 32) + 83) == 1)
      {
        v64 = *(a2 + 1);
        v71 = &v69;
        google::protobuf::DescriptorBuilder::AddError(v6, (v64 + 24), a3, 0, &v71, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_3,std::string>);
      }

      ++v61;
      v62 += 56;
    }

    while (v61 < *(a2 + 30));
  }

  if (v72 >= 2)
  {
    operator delete((v73 - (BYTE8(v72) & 1) - 8));
  }
}

void sub_23CD8365C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a19 >= 2)
  {
    operator delete((a21 - (a20 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *absl::lts_20240722::StatusOr<google::protobuf::FeatureResolver>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if (v3 == 1)
  {
    google::protobuf::FeatureSet::~FeatureSet((a1 + 1));
    return a1;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
    }

    return a1;
  }
}

uint64_t google::protobuf::DescriptorBuilder::AllocateNameStrings(uint64_t a1, std::string::size_type a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *a3, *(a3 + 8));
    }

    else
    {
      v19 = *a3;
    }

    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    v13 = *&v19.__r_.__value_.__l.__data_;
    *(v11 + 16) = *(&v19.__r_.__value_.__l + 2);
    *v11 = v13;
    *(&v19.__r_.__value_.__s + 23) = 0;
    v19.__r_.__value_.__s.__data_[0] = 0;
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
    }

    else
    {
      v18 = *a3;
    }

    if (*(v11 + 47) < 0)
    {
      operator delete(*(v11 + 24));
      *(v11 + 24) = v18;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(v11 + 24) = v18;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    v12 = v19.__r_.__value_.__r.__words[0];
    goto LABEL_27;
  }

  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v19.__r_.__value_.__r.__words[0] = v8;
  v19.__r_.__value_.__l.__size_ = v6;
  v18.__r_.__value_.__r.__words[0] = ".";
  v18.__r_.__value_.__l.__size_ = 1;
  v9 = *(a3 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  v17[0] = v10;
  v17[1] = v9;
  absl::lts_20240722::StrCat(&v19.__r_.__value_.__l.__data_, &v18, v17, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = v16.__r_.__value_.__r.__words[0];
LABEL_27:
    operator delete(v12);
  }

LABEL_28:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23CD838B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 - 57) < 0)
  {
    operator delete(*(v15 - 80));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateStrings<std::string const&,std::string>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = *&__p.__r_.__value_.__l.__data_;
  *(v5 + 16) = *(&__p.__r_.__value_.__l + 2);
  *v5 = v6;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v7 = *a3;
  v15[0] = a3[1];
  *(v15 + 7) = *(a3 + 15);
  v8 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (*(v5 + 47) < 0)
  {
    operator delete(*(v5 + 24));
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v11 = v15[0];
    *(v5 + 24) = v7;
    *(v5 + 32) = v11;
    *(v5 + 39) = *(v15 + 7);
    *(v5 + 47) = v8;
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = v15[0];
    *(v5 + 24) = v7;
    *(v5 + 32) = v9;
    *(v5 + 39) = *(v15 + 7);
    *(v5 + 47) = v8;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t google::protobuf::DescriptorBuilder::BuildOneof(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, *(a3 + 8) + 24, *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL, a5);
  *(a4 + 8) = NameStrings;
  v11 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = *v11;
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (!*(v11 + 23))
  {
LABEL_13:
    google::protobuf::DescriptorBuilder::AddError(a1, (NameStrings + 24), a2, 0, "Missing name.");
    goto LABEL_14;
  }

  v13 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_7:
  while (1)
  {
    v14 = *v13;
    if ((v14 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v14 != 95 && (v14 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    ++v13;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  v18 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  google::protobuf::DescriptorBuilder::AddError(a1, (NameStrings + 24), a2, 0, &v18, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_14:
  *(a4 + 16) = a3;
  *(a4 + 4) = 0;
  *(a4 + 48) = 0;
  google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::OneofDescriptor>(a1, a2, a4, 2, "google.protobuf.OneofOptions", 0x1CuLL, a5);
  v16 = *(a4 + 8);
  *a4 = 3;
  return google::protobuf::DescriptorBuilder::AddSymbol(a1, v16 + 24, a3, v16, a2, a4);
}

void google::protobuf::DescriptorBuilder::BuildExtensionRange(void *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5)
{
  v10 = *(a2 + 32);
  a4->i32[0] = v10;
  v11 = *(a2 + 36);
  a4->i32[1] = v11;
  a4[2] = a3;
  if (v10 > 0)
  {
    if (v10 < v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  _X10 = a1[28];
  __asm { PRFM            #4, [X10] }

  v19 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3))) + a3;
  v20 = 0x9DDFEA08EB382D69 * v19;
  v21 = (v19 * 0x9DDFEA08EB382D69) >> 64;
  v22 = a1 + 26;
  v23 = a1[26];
  v24 = v21 ^ v20;
  v25 = vdup_n_s8((v21 ^ v20) & 0x7F);
  v26 = (((v21 ^ v20) >> 7) ^ (_X10 >> 12)) & v23;
  v27 = *(_X10 + v26);
  v28 = vceq_s8(v27, v25);
  if (!v28)
  {
    goto LABEL_11;
  }

LABEL_8:
  v29 = a1[29];
  do
  {
    v30 = (v26 + (__clz(__rbit64(v28)) >> 3)) & v23;
    if (*(v29 + 32 * v30) == a3)
    {
      v32 = v29 + 32 * v30;
      v33 = *(v32 + 8);
      v34 = __PAIR64__(v11, v10);
      goto LABEL_16;
    }

    v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v28);
LABEL_11:
  while (1)
  {
    v31 = vceq_s8(v27, 0x8080808080808080);
    if (v31)
    {
      break;
    }

    v12 += 8;
    v26 = (v12 + v26) & v23;
    v27 = *(_X10 + v26);
    v28 = vceq_s8(v27, v25);
    if (v28)
    {
      goto LABEL_8;
    }
  }

  inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v22, v24, (v26 + (__clz(__rbit64(v31)) >> 3)) & v23, v12, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
  v33 = 0;
  v32 = a1[29] + 32 * inserted;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *v32 = a3;
  *(v32 + 8) = 0;
  *(v32 + 24) = 11;
  v34 = *a4;
LABEL_16:
  v36 = vmin_s32(vmax_s32(v34, 0), 0xE0000000E0000000);
  v36.i32[0] = vsub_s32(vdup_lane_s32(v36, 1), v36).u32[0];
  v37 = ((v36.i32[0] & ~(v36.i32[0] >> 31)) + v33) & ~(((v36.i32[0] & ~(v36.i32[0] >> 31)) + v33) >> 31);
  if (v37 >= 0x1FFFFFFF)
  {
    v37 = 0x1FFFFFFF;
  }

  *(v32 + 8) = v37;
  if (!*(v32 + 16))
  {
    *(v32 + 16) = a2;
    *(v32 + 24) = 1;
  }

  google::protobuf::DescriptorBuilder::AddError(a1, (*(a3 + 8) + 24), a2, 1, "Extension numbers must be positive integers.");
  if (a4->i32[0] >= a4->i32[1])
  {
LABEL_3:
    google::protobuf::DescriptorBuilder::AddError(a1, (*(a3 + 8) + 24), a2, 1, "Extension range end number must be greater than start number.");
  }

LABEL_4:

  google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::Descriptor::ExtensionRange>(a1, a2, a4, 3, "google.protobuf.ExtensionRangeOptions", 0x25uLL, a5);
}

void google::protobuf::DescriptorBuilder::BuildReservedRange(void *a1, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  v7 = *(a2 + 24);
  a4->i32[0] = v7;
  v8 = *(a2 + 28);
  a4->i32[1] = v8;
  if (v7 > 0)
  {
    if (v7 < v8)
    {
      return;
    }

    goto LABEL_18;
  }

  v10 = 0;
  _X10 = a1[28];
  __asm { PRFM            #4, [X10] }

  v17 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3))) + a3;
  v18 = 0x9DDFEA08EB382D69 * v17;
  v19 = (v17 * 0x9DDFEA08EB382D69) >> 64;
  v20 = a1 + 26;
  v21 = a1[26];
  v22 = v19 ^ v18;
  v23 = vdup_n_s8((v19 ^ v18) & 0x7F);
  v24 = (((v19 ^ v18) >> 7) ^ (_X10 >> 12)) & v21;
  v25 = *(_X10 + v24);
  v26 = vceq_s8(v25, v23);
  if (!v26)
  {
    goto LABEL_8;
  }

LABEL_5:
  v27 = a1[29];
  do
  {
    v28 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v21;
    if (*(v27 + 32 * v28) == a3)
    {
      v30 = v27 + 32 * v28;
      v31 = *(v30 + 8);
      v32 = __PAIR64__(v8, v7);
      goto LABEL_13;
    }

    v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v26);
LABEL_8:
  while (1)
  {
    v29 = vceq_s8(v25, 0x8080808080808080);
    if (v29)
    {
      break;
    }

    v10 += 8;
    v24 = (v10 + v24) & v21;
    v25 = *(_X10 + v24);
    v26 = vceq_s8(v25, v23);
    if (v26)
    {
      goto LABEL_5;
    }
  }

  inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v20, v22, (v24 + (__clz(__rbit64(v29)) >> 3)) & v21, v10, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
  v31 = 0;
  v30 = a1[29] + 32 * inserted;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *v30 = a3;
  *(v30 + 8) = 0;
  *(v30 + 24) = 11;
  v32 = *a4;
LABEL_13:
  v34 = vmin_s32(vmax_s32(v32, 0), 0xE0000000E0000000);
  v34.i32[0] = vsub_s32(vdup_lane_s32(v34, 1), v34).u32[0];
  v35 = ((v34.i32[0] & ~(v34.i32[0] >> 31)) + v31) & ~(((v34.i32[0] & ~(v34.i32[0] >> 31)) + v31) >> 31);
  if (v35 >= 0x1FFFFFFF)
  {
    v35 = 0x1FFFFFFF;
  }

  *(v30 + 8) = v35;
  if (!*(v30 + 16))
  {
    *(v30 + 16) = a2;
    *(v30 + 24) = 1;
  }

  google::protobuf::DescriptorBuilder::AddError(a1, (*(a3 + 8) + 24), a2, 1, "Reserved numbers must be positive integers.");
  if (a4->i32[0] >= a4->i32[1])
  {
LABEL_18:
    v36 = (*(a3 + 8) + 24);

    google::protobuf::DescriptorBuilder::AddError(a1, v36, a2, 1, "Reserved range end number must be greater than start number.");
  }
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<std::string const*>(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
  }

  v4 = *(a1 + 42);
  v5 = v4 + 8 * a2;
  *(a1 + 42) = v5;
  v6 = *(a1 + 28);
  if (v5 > v6)
  {
  }

  return v2 + v4;
}

void google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::Descriptor>(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, size_t a6, uint64_t a7)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  google::protobuf::Descriptor::GetLocationPath(a3, &__p);
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
  a3[4] = google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::Descriptor>(a1, v18, v17, v18, v17, a2, __p, (v15 - __p) >> 2, a5, a6, a7);
  a3[5] = &google::protobuf::_FeatureSet_default_instance_;
  a3[6] = &google::protobuf::_FeatureSet_default_instance_;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_23CD84218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(google::protobuf::DescriptorBuilder *this, const google::protobuf::DescriptorProto *a2, const google::protobuf::Descriptor *a3)
{
  v6 = *(a3 + 1);
  if (*(v6 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v6 + 24), *(v6 + 32));
    if (*(*this + 54))
    {
      goto LABEL_6;
    }
  }

  else
  {
    __p = *(v6 + 24);
    if (*(*this + 54))
    {
      goto LABEL_6;
    }
  }

  if (*(*(a3 + 4) + 84) != 1)
  {
    google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(this, &__p, a2, a3, 0);
    v7 = 1;
    goto LABEL_9;
  }

LABEL_6:
  if (*(*(a3 + 2) + 32) != 999)
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(this, &__p, a2, a3, v7);
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23CD84330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v70 = a5;
  v75[0] = 0;
  v75[1] = 0;
  v76 = &unk_23CE31C20;
  v6 = *(a3 + 24);
  v5 = a3 + 24;
  v7 = (v6 + 7);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(v5 + 8);
  if (v9)
  {
    v68 = &v8[v9];
    do
    {
      v10 = *v8;
      v11 = (*(*v8 + 24) & 0xFFFFFFFFFFFFFFFCLL);
      memset(&v78, 0, sizeof(v78));
      if ((v11[23] & 0x80u) == 0)
      {
        v12 = v11[23];
      }

      else
      {
        v12 = *(v11 + 1);
      }

      std::string::reserve(&v78, v12);
      v15 = *(v11 + 1);
      if ((v11[23] & 0x80u) == 0)
      {
        v16 = v11[23];
      }

      else
      {
        v11 = *v11;
        v16 = v15;
      }

      if (v16)
      {
        v17 = 0;
        do
        {
          v18 = *v11;
          v19 = v18 == 95;
          if (v18 != 95)
          {
            if (v17)
            {
              LOBYTE(v18) = absl::lts_20240722::ascii_internal::kToUpper[v18];
            }

            std::string::push_back(&v78, v18);
          }

          ++v11;
          v17 = v19;
          --v16;
        }

        while (v16);
      }

      if (!v70 || (*(v10 + 16) & 0x10) == 0)
      {
        goto LABEL_22;
      }

      v51 = *(v10 + 56) & 0xFFFFFFFFFFFFFFFCLL;
      v52 = *(v51 + 23);
      v53 = *(v51 + 8);
      if (v52 >= 0)
      {
        v54 = *(v51 + 23);
      }

      else
      {
        v54 = *(v51 + 8);
      }

      size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      v56 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v78.__r_.__value_.__l.__size_;
      }

      if (v54 == size)
      {
        v57 = v52 >= 0 ? (*(v10 + 56) & 0xFFFFFFFFFFFFFFFCLL) : *v51;
        v58 = (v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v78 : v78.__r_.__value_.__r.__words[0];
        if (!memcmp(v57, v58, v54))
        {
LABEL_22:
          v72 = v10;
          __p = v78;
          v74 = 0;
          goto LABEL_23;
        }
      }

      v72 = v10;
      if (v52 < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v51, v53);
        v74 = 1;
        if ((*(&v78.__r_.__value_.__s + 23) & 0x80) != 0)
        {
LABEL_86:
          operator delete(v78.__r_.__value_.__l.__data_);
          if ((v74 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v59 = *v51;
        __p.__r_.__value_.__r.__words[2] = *(v51 + 16);
        *&__p.__r_.__value_.__l.__data_ = v59;
        v74 = 1;
        if (v56 < 0)
        {
          goto LABEL_86;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v71, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v71 = __p;
      }

      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v71.__r_.__value_.__l.__size_ && *v71.__r_.__value_.__l.__data_ == 91)
        {
          v62 = *(v71.__r_.__value_.__r.__words[0] + v71.__r_.__value_.__l.__size_ - 1);
          operator delete(v71.__r_.__value_.__l.__data_);
          if (v62 == 93)
          {
            goto LABEL_98;
          }
        }

        else
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      else if (*(&v71.__r_.__value_.__s + 23) && v71.__r_.__value_.__s.__data_[0] == 91 && *(&v70 + SHIBYTE(v71.__r_.__value_.__r.__words[2]) + 3) == 93)
      {
LABEL_98:
        v78.__r_.__value_.__r.__words[0] = v10;
        v78.__r_.__value_.__l.__size_ = &v72;
        google::protobuf::DescriptorBuilder::AddError(a1, a2, v10, 0, &v78, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(std::string const&,google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,BOOL)::$_0,std::string>);
        goto LABEL_83;
      }

LABEL_23:
      _X8 = v76;
      __asm { PRFM            #4, [X8] }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = __p.__r_.__value_.__l.__size_;
      }

      v28 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, p_p, v27, v13, v14);
      v29 = 0;
      v30 = (((v28 + v27) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v28 + v27));
      v31 = v76;
      v32 = v77;
      v33 = v75[0];
      v34 = (v76 >> 12) ^ (v30 >> 7);
      v35 = vdup_n_s8(v30 & 0x7F);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &__p;
      }

      else
      {
        v37 = __p.__r_.__value_.__r.__words[0];
      }

      v38 = v34 & v75[0];
      v39 = *(v76 + (v34 & v75[0]));
      v40 = vceq_s8(v39, v35);
      if (!v40)
      {
LABEL_45:
        while (1)
        {
          v45 = vceq_s8(v39, 0x8080808080808080);
          if (v45)
          {
            break;
          }

          v29 += 8;
          v38 = (v29 + v38) & v33;
          v39 = *(v31 + v38);
          v40 = vceq_s8(v39, v35);
          if (v40)
          {
            goto LABEL_36;
          }
        }

        v48 = v77 + (inserted << 6);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((v77 + (inserted << 6)), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v49 = *&__p.__r_.__value_.__l.__data_;
          *(v48 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v48 = v49;
        }

        *(v48 + 24) = v72;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((v48 + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v61 = *&__p.__r_.__value_.__l.__data_;
          *(v48 + 48) = *(&__p.__r_.__value_.__l + 2);
          *(v48 + 32) = v61;
        }

        *(v48 + 56) = v74;
        goto LABEL_83;
      }

LABEL_36:
      v69 = v8;
      v65 = v29;
      while (1)
      {
        v41 = v32 + (((v38 + (__clz(__rbit64(v40)) >> 3)) & v33) << 6);
        v42 = *(v41 + 23);
        v43 = v42;
        if ((v42 & 0x80u) != 0)
        {
          v42 = *(v41 + 8);
        }

        if (v42 == v36)
        {
          v44 = v43 >= 0 ? v41 : *v41;
          if (!memcmp(v44, v37, v36))
          {
            break;
          }
        }

        v40 &= ((v40 & 0x8080808080808080) - 1) & 0x8080808080808080;
        v8 = v69;
        v29 = v65;
        if (!v40)
        {
          goto LABEL_45;
        }
      }

      v46 = v41 + 24;
      if (!v70)
      {
        v78.__r_.__value_.__r.__words[0] = &v72;
        v78.__r_.__value_.__l.__size_ = v41 + 24;
        v78.__r_.__value_.__r.__words[2] = v10;
        if ((v74 & 1) == 0)
        {
          v50 = 0;
          goto LABEL_74;
        }

        goto LABEL_54;
      }

      if (v74)
      {
        v78.__r_.__value_.__r.__words[0] = &v72;
        v78.__r_.__value_.__l.__size_ = v41 + 24;
        v78.__r_.__value_.__r.__words[2] = v10;
LABEL_54:
        v50 = *(v41 + 56);
        goto LABEL_74;
      }

      v60 = *(v41 + 56);
      v8 = v69;
      if (v60 != 1)
      {
        goto LABEL_83;
      }

      v50 = 0;
      v78.__r_.__value_.__r.__words[0] = &v72;
      v78.__r_.__value_.__l.__size_ = v46;
      v78.__r_.__value_.__r.__words[2] = v10;
LABEL_74:
      if (*(*(a4 + 48) + 68) != 2 || (v50 & 1) != 0)
      {
        google::protobuf::DescriptorBuilder::AddError(a1, a2, v10, 0, &v78, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(std::string const&,google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,BOOL)::$_1,std::string>);
        v8 = v69;
      }

      else
      {
        google::protobuf::DescriptorBuilder::AddWarning(a1, a2, v10, 0, &v78, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(std::string const&,google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,BOOL)::$_1,std::string>);
        v8 = v69;
      }

LABEL_83:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v8;
    }

    while (v8 != v68);
  }
}
void sub_23CD9DC58(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
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

void sub_23CD9DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void sub_23CD9DC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

uint64_t **absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::EnumDescriptor>(google::protobuf::Edition,google::protobuf::EnumDescriptor::Proto const&,google::protobuf::EnumDescriptor::Proto*,google::protobuf::EnumDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>@<X0>(uint64_t **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = **result;
  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      a2[23] = 0;
LABEL_7:
      *a2 = 0;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(v3 + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 16);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = *(v3 + 8);
    if (v4 < 0x17)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator new();
  }

  v5 = (v3 + 8);
  if (v4 >= 0x17)
  {
    goto LABEL_13;
  }

LABEL_11:
  a2[23] = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  result = memmove(a2, v5, v4);
  a2[v4] = 0;
  return result;
}

void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::EnumValueDescriptor>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(*(a4 + 16) + 48);
  *(a4 + 32) = &google::protobuf::_FeatureSet_default_instance_;
  *(a4 + 40) = &google::protobuf::_FeatureSet_default_instance_;
  if ((*(a1 + 96) & 1) == 0)
  {
    google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(&v24);
  }

  if (!a5)
  {
    google::protobuf::FeatureSet::FeatureSet(v26, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((*(a5 + 40) & 1) == 0)
  {
    google::protobuf::FeatureSet::FeatureSet(v26, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v17 = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), *(a5 + 72));
  *(a4 + 32) = v17;
  v19 = *(a5 + 72);
  if (v19)
  {
    google::protobuf::FeatureSet::Clear(v19);
    v17 = *(a4 + 32);
  }

  *(a5 + 40) &= ~1u;
  google::protobuf::FeatureSet::FeatureSet(v26, 0, v17, v18);
  if (a2 <= 999)
  {
LABEL_11:
    if (*(a4 + 32) != &google::protobuf::_FeatureSet_default_instance_)
    {
      google::protobuf::DescriptorBuilder::AddError(a1, *(a4 + 8), a3, a8, "Features are only valid under editions.");
    }
  }

LABEL_13:
  if (google::protobuf::FeatureSet::ByteSizeLong(v26) || (a9 & 1) != 0)
  {
    google::protobuf::FeatureResolver::MergeFeatures((a1 + 24), v9, v26, &v24, v20);
    if (v24 == 1)
    {
      *(a4 + 40) = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), v25);
    }

    else
    {
      v22 = *(a4 + 8);
      v23 = &v24;
      google::protobuf::DescriptorBuilder::AddError(a1, v22, a3, a8, &v23, absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::EnumValueDescriptor>(google::protobuf::Edition,google::protobuf::EnumValueDescriptor::Proto const&,google::protobuf::EnumValueDescriptor::Proto*,google::protobuf::EnumValueDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>);
    }

    if (v24 == 1)
    {
      google::protobuf::FeatureSet::~FeatureSet(v25);
    }

    else if ((v24 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v24, v21);
    }
  }

  else
  {
    *(a4 + 40) = v9;
  }

  google::protobuf::FeatureSet::~FeatureSet(v26);
}

void sub_23CD9DF84(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
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

void sub_23CD9DFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void sub_23CD9DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

uint64_t **absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::EnumValueDescriptor>(google::protobuf::Edition,google::protobuf::EnumValueDescriptor::Proto const&,google::protobuf::EnumValueDescriptor::Proto*,google::protobuf::EnumValueDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>@<X0>(uint64_t **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = **result;
  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      a2[23] = 0;
LABEL_7:
      *a2 = 0;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(v3 + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 16);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = *(v3 + 8);
    if (v4 < 0x17)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator new();
  }

  v5 = (v3 + 8);
  if (v4 >= 0x17)
  {
    goto LABEL_13;
  }

LABEL_11:
  a2[23] = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  result = memmove(a2, v5, v4);
  a2[v4] = 0;
  return result;
}

void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FieldDescriptor>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(a4 + 1) & 0x10) == 0 || (v16 = *(a4 + 40)) == 0)
  {
    if ((*(a4 + 1) & 8) != 0)
    {
      v18 = *(a4 + 40);
      if (!v18)
      {
        v17 = *(*(a4 + 16) + 144);
        *(a4 + 64) = &google::protobuf::_FeatureSet_default_instance_;
        *(a4 + 72) = &google::protobuf::_FeatureSet_default_instance_;
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v18 = *(a4 + 32);
    }

    v17 = *(v18 + 48);
    *(a4 + 64) = &google::protobuf::_FeatureSet_default_instance_;
    *(a4 + 72) = &google::protobuf::_FeatureSet_default_instance_;
    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_9;
  }

  v17 = *(v16 + 40);
  *(a4 + 64) = &google::protobuf::_FeatureSet_default_instance_;
  *(a4 + 72) = &google::protobuf::_FeatureSet_default_instance_;
  if ((*(a1 + 96) & 1) == 0)
  {
LABEL_43:
    google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(&v27);
  }

LABEL_9:
  if (!a5)
  {
    google::protobuf::FeatureSet::FeatureSet(v29, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if ((*(a5 + 40) & 1) == 0)
  {
    google::protobuf::FeatureSet::FeatureSet(v29, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_31;
    }

LABEL_18:
    if (*(a4 + 64) != &google::protobuf::_FeatureSet_default_instance_)
    {
      google::protobuf::DescriptorBuilder::AddError(a1, *(a4 + 8), a3, a8, "Features are only valid under editions.");
    }

    if (*(a3 + 84) == 2)
    {
      v31 = 3;
      v30 |= 1u;
      if (*(a3 + 88) != 10)
      {
LABEL_22:
        v22 = *(a5 + 128);
        if (v22 != 1)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }
    }

    else if (*(a3 + 88) != 10)
    {
      goto LABEL_22;
    }

    v33 = 2;
    v30 |= 0x10u;
    v22 = *(a5 + 128);
    if (v22 != 1)
    {
LABEL_23:
      if (a2 != 999)
      {
        goto LABEL_31;
      }

LABEL_28:
      if ((*(a5 + 40) & 8) != 0 && (v22 & 1) == 0)
      {
        v32 = 2;
        v30 |= 4u;
      }

      goto LABEL_31;
    }

LABEL_27:
    v32 = 1;
    v30 |= 4u;
    if (a2 != 999)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v19 = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), *(a5 + 112));
  *(a4 + 64) = v19;
  v21 = *(a5 + 112);
  if (v21)
  {
    google::protobuf::FeatureSet::Clear(v21);
    v19 = *(a4 + 64);
  }

  *(a5 + 40) &= ~1u;
  google::protobuf::FeatureSet::FeatureSet(v29, 0, v19, v20);
  if (a2 <= 999)
  {
    goto LABEL_18;
  }

LABEL_31:
  if (google::protobuf::FeatureSet::ByteSizeLong(v29) || (a9 & 1) != 0)
  {
    google::protobuf::FeatureResolver::MergeFeatures((a1 + 24), v17, v29, &v27, v23);
    if (v27 == 1)
    {
      *(a4 + 72) = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), v28);
    }

    else
    {
      v25 = *(a4 + 8);
      v26 = &v27;
      google::protobuf::DescriptorBuilder::AddError(a1, v25, a3, a8, &v26, absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FieldDescriptor>(google::protobuf::Edition,google::protobuf::FieldDescriptor::Proto const&,google::protobuf::FieldDescriptor::Proto*,google::protobuf::FieldDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>);
    }

    if (v27 == 1)
    {
      google::protobuf::FeatureSet::~FeatureSet(v28);
    }

    else if ((v27 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v27, v24);
    }
  }

  else
  {
    *(a4 + 72) = v17;
  }

  google::protobuf::FeatureSet::~FeatureSet(v29);
}

void sub_23CD9E3B8(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
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

void sub_23CD9E3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void sub_23CD9E3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

uint64_t **absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FieldDescriptor>(google::protobuf::Edition,google::protobuf::FieldDescriptor::Proto const&,google::protobuf::FieldDescriptor::Proto*,google::protobuf::FieldDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>@<X0>(uint64_t **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = **result;
  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      a2[23] = 0;
LABEL_7:
      *a2 = 0;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(v3 + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 16);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = *(v3 + 8);
    if (v4 < 0x17)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator new();
  }

  v5 = (v3 + 8);
  if (v4 >= 0x17)
  {
    goto LABEL_13;
  }

LABEL_11:
  a2[23] = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  result = memmove(a2, v5, v4);
  a2[v4] = 0;
  return result;
}

void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::ServiceDescriptor>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(*(a4 + 16) + 144);
  *(a4 + 32) = &google::protobuf::_FeatureSet_default_instance_;
  *(a4 + 40) = &google::protobuf::_FeatureSet_default_instance_;
  if ((*(a1 + 96) & 1) == 0)
  {
    google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(&v24);
  }

  if (!a5)
  {
    google::protobuf::FeatureSet::FeatureSet(v26, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((*(a5 + 40) & 1) == 0)
  {
    google::protobuf::FeatureSet::FeatureSet(v26, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v17 = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), *(a5 + 72));
  *(a4 + 32) = v17;
  v19 = *(a5 + 72);
  if (v19)
  {
    google::protobuf::FeatureSet::Clear(v19);
    v17 = *(a4 + 32);
  }

  *(a5 + 40) &= ~1u;
  google::protobuf::FeatureSet::FeatureSet(v26, 0, v17, v18);
  if (a2 <= 999)
  {
LABEL_11:
    if (*(a4 + 32) != &google::protobuf::_FeatureSet_default_instance_)
    {
      google::protobuf::DescriptorBuilder::AddError(a1, *(a4 + 8), a3, a8, "Features are only valid under editions.");
    }
  }

LABEL_13:
  if (google::protobuf::FeatureSet::ByteSizeLong(v26) || (a9 & 1) != 0)
  {
    google::protobuf::FeatureResolver::MergeFeatures((a1 + 24), v9, v26, &v24, v20);
    if (v24 == 1)
    {
      *(a4 + 40) = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), v25);
    }

    else
    {
      v22 = *(a4 + 8);
      v23 = &v24;
      google::protobuf::DescriptorBuilder::AddError(a1, v22, a3, a8, &v23, absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::ServiceDescriptor>(google::protobuf::Edition,google::protobuf::ServiceDescriptor::Proto const&,google::protobuf::ServiceDescriptor::Proto*,google::protobuf::ServiceDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>);
    }

    if (v24 == 1)
    {
      google::protobuf::FeatureSet::~FeatureSet(v25);
    }

    else if ((v24 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v24, v21);
    }
  }

  else
  {
    *(a4 + 40) = v9;
  }

  google::protobuf::FeatureSet::~FeatureSet(v26);
}

void sub_23CD9E6E4(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
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

void sub_23CD9E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void sub_23CD9E718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

uint64_t **absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::ServiceDescriptor>(google::protobuf::Edition,google::protobuf::ServiceDescriptor::Proto const&,google::protobuf::ServiceDescriptor::Proto*,google::protobuf::ServiceDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>@<X0>(uint64_t **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = **result;
  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      a2[23] = 0;
LABEL_7:
      *a2 = 0;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(v3 + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 16);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = *(v3 + 8);
    if (v4 < 0x17)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator new();
  }

  v5 = (v3 + 8);
  if (v4 >= 0x17)
  {
    goto LABEL_13;
  }

LABEL_11:
  a2[23] = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  result = memmove(a2, v5, v4);
  a2[v4] = 0;
  return result;
}

void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::MethodDescriptor>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(*(a4 + 16) + 40);
  *(a4 + 64) = &google::protobuf::_FeatureSet_default_instance_;
  *(a4 + 72) = &google::protobuf::_FeatureSet_default_instance_;
  if ((*(a1 + 96) & 1) == 0)
  {
    google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(&v24);
  }

  if (!a5)
  {
    google::protobuf::FeatureSet::FeatureSet(v26, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((*(a5 + 40) & 1) == 0)
  {
    google::protobuf::FeatureSet::FeatureSet(v26, 0, &google::protobuf::_FeatureSet_default_instance_, a6);
    if (a2 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v17 = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), *(a5 + 72));
  *(a4 + 64) = v17;
  v19 = *(a5 + 72);
  if (v19)
  {
    google::protobuf::FeatureSet::Clear(v19);
    v17 = *(a4 + 64);
  }

  *(a5 + 40) &= ~1u;
  google::protobuf::FeatureSet::FeatureSet(v26, 0, v17, v18);
  if (a2 <= 999)
  {
LABEL_11:
    if (*(a4 + 64) != &google::protobuf::_FeatureSet_default_instance_)
    {
      google::protobuf::DescriptorBuilder::AddError(a1, *(a4 + 8), a3, a8, "Features are only valid under editions.");
    }
  }

LABEL_13:
  if (google::protobuf::FeatureSet::ByteSizeLong(v26) || (a9 & 1) != 0)
  {
    google::protobuf::FeatureResolver::MergeFeatures((a1 + 24), v9, v26, &v24, v20);
    if (v24 == 1)
    {
      *(a4 + 72) = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), v25);
    }

    else
    {
      v22 = *(a4 + 8);
      v23 = &v24;
      google::protobuf::DescriptorBuilder::AddError(a1, v22, a3, a8, &v23, absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::MethodDescriptor>(google::protobuf::Edition,google::protobuf::MethodDescriptor::Proto const&,google::protobuf::MethodDescriptor::Proto*,google::protobuf::MethodDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>);
    }

    if (v24 == 1)
    {
      google::protobuf::FeatureSet::~FeatureSet(v25);
    }

    else if ((v24 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v24, v21);
    }
  }

  else
  {
    *(a4 + 72) = v9;
  }

  google::protobuf::FeatureSet::~FeatureSet(v26);
}

void sub_23CD9EA10(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
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

void sub_23CD9EA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void sub_23CD9EA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

uint64_t **absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::MethodDescriptor>(google::protobuf::Edition,google::protobuf::MethodDescriptor::Proto const&,google::protobuf::MethodDescriptor::Proto*,google::protobuf::MethodDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>@<X0>(uint64_t **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = **result;
  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      a2[23] = 0;
LABEL_7:
      *a2 = 0;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(v3 + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 16);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = *(v3 + 8);
    if (v4 < 0x17)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator new();
  }

  v5 = (v3 + 8);
  if (v4 >= 0x17)
  {
    goto LABEL_13;
  }

LABEL_11:
  a2[23] = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  result = memmove(a2, v5, v4);
  a2[v4] = 0;
  return result;
}

uint64_t google::protobuf::internal::VisitImpl<google::protobuf::internal::VisitorImpl<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_4>>::Visit<>(uint64_t result)
{
  v1 = result;
  if (*(result + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(result + 56) + v2;
      v5 = *(v4 + 72);
      if (*(v5 + 48) == 3)
      {
        v6 = *(v4 + 1);
        if ((v6 & 0x60) == 0x20)
        {
          *(v4 + 1) = v6 & 0x9F | 0x40;
        }
      }

      if (*(v4 + 2) == 11 && *(v5 + 64) == 2)
      {
        *(v4 + 2) = 10;
      }

      ++v3;
      v2 += 88;
    }

    while (v3 < *(result + 4));
  }

  if (*(result + 128) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = google::protobuf::internal::VisitImpl<google::protobuf::internal::VisitorImpl<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_4>>::Visit<>(*(v1 + 72) + v7);
      ++v8;
      v7 += 152;
    }

    while (v8 < *(v1 + 128));
  }

  if (*(v1 + 140) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(v1 + 96) + v9;
      v12 = *(v11 + 72);
      if (*(v12 + 48) == 3)
      {
        v13 = *(v11 + 1);
        if ((v13 & 0x60) == 0x20)
        {
          *(v11 + 1) = v13 & 0x9F | 0x40;
        }
      }

      if (*(v11 + 2) == 11 && *(v12 + 64) == 2)
      {
        *(v11 + 2) = 10;
      }

      ++v10;
      v9 += 88;
    }

    while (v10 < *(v1 + 140));
  }

  return result;
}

void google::protobuf::internal::VisitImpl<google::protobuf::internal::VisitorImpl<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_5>>::Visit<google::protobuf::DescriptorProto const>(google::protobuf::DescriptorBuilder **a1, uint64_t a2, const google::protobuf::DescriptorProto *a3)
{
  v6 = *a1;
  google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(*a1, a3, a2);
  google::protobuf::DescriptorBuilder::ValidateExtensionRangeOptions(v6, a3, a2, v7, v8);
  if (*(a2 + 132) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = (a3 + 72);
    v12 = 8;
    do
    {
      if (*v11)
      {
        v13 = (*v11 + v12 - 1);
      }

      else
      {
        v13 = (a3 + 72);
      }

      google::protobuf::DescriptorBuilder::ValidateOptions(*a1, (*(a2 + 80) + v9), *v13);
      ++v10;
      v12 += 8;
      v9 += 88;
    }

    while (v10 < *(a2 + 132));
  }

  if (*(a2 + 4) > 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = (a3 + 24);
    v17 = 8;
    do
    {
      if (*v16)
      {
        v18 = (*v16 + v17 - 1);
      }

      else
      {
        v18 = (a3 + 24);
      }

      google::protobuf::DescriptorBuilder::ValidateOptions(*a1, (*(a2 + 56) + v14), *v18);
      ++v15;
      v17 += 8;
      v14 += 88;
    }

    while (v15 < *(a2 + 4));
  }

  if (*(a2 + 128) >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = (a3 + 48);
    v22 = 8;
    do
    {
      if (*v21)
      {
        v23 = (*v21 + v22 - 1);
      }

      else
      {
        v23 = (a3 + 48);
      }

      google::protobuf::internal::VisitImpl<google::protobuf::internal::VisitorImpl<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_5>>::Visit<google::protobuf::DescriptorProto const>(a1, *(a2 + 72) + v19, *v23);
      ++v20;
      v22 += 8;
      v19 += 152;
    }

    while (v20 < *(a2 + 128));
  }

  if (*(a2 + 140) >= 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = (a3 + 120);
    v27 = 8;
    do
    {
      if (*v26)
      {
        v28 = (*v26 + v27 - 1);
      }

      else
      {
        v28 = v26;
      }

      google::protobuf::DescriptorBuilder::ValidateOptions(*a1, (*(a2 + 96) + v24), *v28);
      ++v25;
      v27 += 8;
      v24 += 88;
    }

    while (v25 < *(a2 + 140));
  }
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::Descriptor>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v63[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 2) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 224);
  v14 = *(a11 + 40);
  v15 = *(a11 + 188);
  *(a11 + 188) = v15 + 1;
  v16 = *(a11 + 132);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::MessageOptions::IsInitialized(v13) & 1) == 0)
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
  v22 = (v14 + 88 * v15);
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

void sub_23CD9F284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CD9F298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_0,std::string>@<X0>(void *a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 24), v20, a2);
  *&v19 = v20;
  *(&v19 + 1) = v5 - v20;
  v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(*a1 + 28) - 1), v18, v6);
  *&v17 = v18;
  *(&v17 + 1) = v7 - v18;
  v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1[1] + 24), v16, v8);
  *&v15 = v16;
  *(&v15 + 1) = v9 - v16;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(a1[1] + 28) - 1), v14, v10) - v14;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v21[0] = v19;
  v21[1] = v17;
  v21[2] = v15;
  v22 = v14;
  v23 = v13;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Reserved range $0 to $1 overlaps with already-defined range $2 to $3.", 0x45uLL, v21, 4uLL);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD9F3F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_1,std::string>@<X0>(void **a1@<X0>, std::string *a2@<X8>)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v3 = **a1;
    v4 = (*a1)[1];
  }

  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v7[0] = v3;
  v7[1] = v4;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a2, "Field name $0 is reserved multiple times.", 0x2BuLL, v7, 1uLL);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD9F4B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,true,false,8ul>(&v2, a1);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_2,std::string>@<X0>(unsigned int ***a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(***a1, v21, a2);
  *&v20 = v21;
  *(&v20 + 1) = v5 - v21;
  v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((**a1)[1] - 1), v19, v6);
  *&v18 = v19;
  *(&v18 + 1) = v7 - v19;
  v9 = *a1[1];
  v10 = *(v9 + 8);
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = *(v9 + 8);
  }

  else
  {
    v12 = *v10;
  }

  if (v11 >= 0)
  {
    v13 = *(v10 + 23);
  }

  else
  {
    v13 = v10[1];
  }

  v16 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v9 + 4), v17, v8) - v17;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v22[0] = v20;
  v22[1] = v18;
  v23 = v12;
  v24 = v13;
  v25 = v17;
  v26 = v16;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Extension range $0 to $1 includes field $2 ($3).", 0x32uLL, v22, 4uLL);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD9F868(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_3,std::string>@<X0>(uint64_t **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = *(v4 + 4);
  v6 = *(v4 + 8);
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = v6[1];
  }

  v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v13, a2) - v13;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v13;
  v14[3] = v12;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Field $0 uses reserved number $1.", 0x23uLL, v14, 2uLL);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD9F958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find<std::string>(uint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
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
    v22 = vdup_n_s8(v21 & 0x7F);
    v23 = a1[2];
    v24 = *(v18 + 23);
    if (v24 >= 0)
    {
      v25 = *(v18 + 23);
    }

    else
    {
      v25 = v18[1];
    }

    v26 = *a1;
    v27 = (v21 >> 7) ^ (v23 >> 12);
    if (v24 < 0)
    {
      v18 = *v18;
    }

    v28 = v27 & v26;
    v29 = *(v23 + (v27 & v26));
    v30 = vceq_s8(v29, v22);
    if (!v30)
    {
LABEL_26:
      while (!*&vceq_s8(v29, 0x8080808080808080))
      {
        v20 += 8;
        v28 = (v20 + v28) & v26;
        v29 = *(v23 + v28);
        v30 = vceq_s8(v29, v22);
        if (v30)
        {
          goto LABEL_22;
        }
      }

      return 0;
    }

LABEL_22:
    v31 = a1[3];
    v34 = v20;
    while (1)
    {
      v32 = (v28 + (__clz(__rbit64(v30)) >> 3)) & v26;
      v33 = v31 + 16 * v32;
      if (*(v33 + 8) == v25 && !memcmp(*v33, v18, v25))
      {
        return (v23 + v32);
      }

      v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v20 = v34;
      if (!v30)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (a1[1] < 2)
    {
      return 0;
    }

    v6 = a1[3];
    v7 = *(a2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = a2[1];
    }

    if (v6 != v7)
    {
      return 0;
    }

    if (v8 < 0)
    {
      a2 = *a2;
    }

    if (memcmp(a1[2], a2, v6))
    {
      return 0;
    }

    return &absl::lts_20240722::container_internal::kSooControl;
  }
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_4,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = *(**a1 + 8);
  v4 = *(v3 + 23);
  v5 = v3[1];
  if (v4 < 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v8[0] = v3;
  v8[1] = v4;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a2, "Field name $0 is reserved.", 0x1CuLL, v8, 1uLL);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD9FC0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_5,std::string>@<X0>(unsigned int ***a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(***a1, v20, a2);
  *&v19 = v20;
  *(&v19 + 1) = v5 - v20;
  v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((**a1)[1] - 1), v18, v6);
  *&v17 = v18;
  *(&v17 + 1) = v7 - v18;
  v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(**a1[1], v16, v8);
  *&v15 = v16;
  *(&v15 + 1) = v9 - v16;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((*a1[1])[1] - 1), v14, v10) - v14;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v21[0] = v19;
  v21[1] = v17;
  v21[2] = v15;
  v22 = v14;
  v23 = v13;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Extension range $0 to $1 overlaps with reserved range $2 to $3.", 0x3FuLL, v21, 4uLL);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD9FD5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_6,std::string>@<X0>(unsigned int ***a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(***a1, v20, a2);
  *&v19 = v20;
  *(&v19 + 1) = v5 - v20;
  v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((**a1)[1] - 1), v18, v6);
  *&v17 = v18;
  *(&v17 + 1) = v7 - v18;
  v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(**a1[1], v16, v8);
  *&v15 = v16;
  *(&v15 + 1) = v9 - v16;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((*a1[1])[1] - 1), v14, v10) - v14;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v21[0] = v19;
  v21[1] = v17;
  v21[2] = v15;
  v22 = v14;
  v23 = v13;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Extension range $0 to $1 overlaps with already-defined range $2 to $3.", 0x46uLL, v21, 4uLL);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD9FEB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(std::string const&,google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,BOOL)::$_0,std::string>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = a1[1] + 8;
  v5[0] = *(*a1 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v5[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v5[2] = v2;
  v5[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  result = absl::lts_20240722::str_format_internal::FormatPack("The custom JSON name of field %s (%s) is invalid: JSON names may not start with '[' and end with ']'.", 105, v5, 2uLL, a2);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::anonymous namespace::JsonNameDetails>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::anonymous namespace::JsonNameDetails>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,64ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::anonymous namespace::JsonNameDetails>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::anonymous namespace::JsonNameDetails>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v4;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 3);
  v5 = a3[2];
  *(a2 + 48) = *(a3 + 6);
  *(a2 + 32) = v5;
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = 0;
  *(a2 + 56) = *(a3 + 56);
  if (*(a3 + 55) < 0)
  {
    operator delete(*(a3 + 4));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a3 + 23) & 0x80000000) == 0)
  {
    return;
  }

  v6 = *a3;

  operator delete(v6);
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckFieldJsonNameUniqueness(std::string const&,google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,BOOL)::$_1,std::string>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = "default";
  if (*(*a1 + 32))
  {
    v6 = "custom";
  }

  else
  {
    v6 = "default";
  }

  if (*(*a1 + 32))
  {
    v7 = 6;
  }

  else
  {
    v7 = 7;
  }

  v22[0] = v6;
  v22[1] = v7;
  v8 = a1[1];
  if (*(v8 + 32))
  {
    v5 = "custom";
    v9 = 6;
  }

  else
  {
    v9 = 7;
  }

  v21[0] = v5;
  v21[1] = v9;
  *(&__p.__r_.__value_.__s + 23) = 0;
  v10 = *(v8 + 8);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v11 = *(v4 + 31);
  if (v11 >= 0)
  {
    v12 = *(v4 + 31);
  }

  else
  {
    v12 = *(v4 + 16);
  }

  v13 = *(v8 + 31);
  if (v13 >= 0)
  {
    v14 = *(v8 + 31);
  }

  else
  {
    v14 = *(v8 + 16);
  }

  if (v12 == v14)
  {
    if (v11 >= 0)
    {
      v15 = (v4 + 8);
    }

    else
    {
      v15 = *(v4 + 8);
    }

    if (v13 >= 0)
    {
      v16 = (v8 + 8);
    }

    else
    {
      v16 = v10;
    }

    if (!memcmp(v15, v16, v12))
    {
      goto LABEL_29;
    }
  }

  else if (v13 >= 0)
  {
    v16 = (v8 + 8);
  }

  else
  {
    v16 = v10;
  }

  v25 = " (";
  v26 = 3;
  v24[0] = v16;
  v24[1] = v14;
  v23[0] = ")";
  v23[1] = 2;
  absl::lts_20240722::StrCat(&v25, v24, v23, &__p);
  v4 = *a1;
  v8 = a1[1];
LABEL_29:
  v17 = *(a1[2] + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(*v8 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v25 = v22;
  v26 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v27 = v17;
  v28 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v29 = v4 + 8;
  v30 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v31 = v21;
  v32 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v33 = v18;
  v34 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  p_p = &__p;
  v36 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("The %s JSON name of field %s (%s) conflicts with the %s JSON name of field %s%s.", 86, &v25, 6uLL, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_23CDA0590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateFieldNames(std::string const&,std::string const&,std::string const*)::{lambda(std::string)#1}::operator()(const void ***a1, __int128 *a2)
{
  v2 = a2;
  v4 = *a1;
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    goto LABEL_33;
  }

  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6[23];
  }

  else
  {
    v9 = *(v6 + 1);
  }

  v10 = *(a2 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 1);
  }

  if (v9 == v10)
  {
    if (v8 >= 0)
    {
      v12 = **a1;
    }

    else
    {
      v12 = *v6;
    }

    v13 = *a2;
    if (v11 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(v12, a2, v9))
    {
      return 0;
    }
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  if (v14 < 2 || v7 == 48)
  {
LABEL_33:
    std::vector<std::string>::push_back[abi:ne200100](v4, v2);
    return 0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - **a1) >> 3) - 1;
  }

  else
  {
    v15 = *(v2 + 23);
    if (v15 >= 0)
    {
      v16 = *(v2 + 23);
    }

    else
    {
      v16 = *(v2 + 1);
    }

    v17 = v6 + 48;
    v18 = 2;
    while (1)
    {
      v19 = v17[23];
      v20 = v19 >= 0 ? v17[23] : *(v17 + 1);
      if (v20 == v16)
      {
        v21 = v19 >= 0 ? v17 : *v17;
        v22 = *v2;
        v23 = v15 >= 0 ? v2 : *v2;
        if (!memcmp(v21, v23, v20))
        {
          break;
        }
      }

      ++v18;
      v17 += 24;
      if (v14 == v18)
      {
        goto LABEL_33;
      }
    }
  }

  return v18;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v11[0] = "The [proto3_optional=true] option may only be set on proto3fields, not ";
  v11[1] = 71;
  v5 = *(v2 + 24);
  v3 = v2 + 24;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  v10[0] = v3;
  v10[1] = v7;
  result = absl::lts_20240722::StrCat(v11, v10, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_1,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v12[0] = "The extension ";
  v12[1] = 14;
  v5 = *(v2 + 24);
  v3 = v2 + 24;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  v11[0] = v3;
  v11[1] = v7;
  v10[0] = " cannot be required.";
  v10[1] = 20;
  result = absl::lts_20240722::StrCat(v12, v11, v10, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_2,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 48);
  v10[0] = "Couldn't parse default value ";
  v10[1] = 30;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v9[0] = v3;
  v9[1] = v4;
  v8[0] = ".";
  v8[1] = 2;
  result = absl::lts_20240722::StrCat(v10, v9, v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_3,std::string>@<X0>(char *a1@<X2>, std::string *a2@<X8>)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0x1FFFFFFF, v6, a1) - v6;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v7[0] = v6;
  v7[1] = v5;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a2, "Field numbers cannot be greater than $0.", 0x28uLL, v7, 1uLL);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA097C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::FieldDescriptorProto const&,google::protobuf::Descriptor *,google::protobuf::FieldDescriptor *,BOOL,google::protobuf::internal::FlatAllocator &)::$_4,std::string>@<X0>(void **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 19), v11, a2);
  v6 = *(*a1[1] + 8);
  v7 = *(v6 + 23);
  v8 = v6[1];
  if (v7 < 0)
  {
    v6 = *v6;
    v7 = v8;
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v12[0] = v11;
  v12[1] = v5 - v11;
  v12[2] = v6;
  v12[3] = v7;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "FieldDescriptorProto.oneof_index $0 is out of range for type $1.", 0x42uLL, v12, 2uLL);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA0A74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::FieldDescriptor>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v63[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 0x20) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 64);
  v14 = *(a11 + 48);
  v15 = *(a11 + 192);
  *(a11 + 192) = v15 + 1;
  v16 = *(a11 + 136);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::FieldOptions::IsInitialized(v13) & 1) == 0)
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
  v22 = (v14 + 144 * v15);
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
    if (v22[24] < 1)
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
  if (v22[24] >= 1)
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

void sub_23CDA0E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CDA0EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::Descriptor::ExtensionRange>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v63[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 1) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 24);
  v14 = *(a11 + 72);
  v15 = *(a11 + 204);
  *(a11 + 204) = v15 + 1;
  v16 = *(a11 + 148);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::ExtensionRangeOptions::IsInitialized(v13) & 1) == 0)
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
  v22 = (v14 + 112 * v15);
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
    if (v22[20] < 1)
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
  if (v22[20] >= 1)
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

void sub_23CDA12E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CDA12F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::OneofDescriptor>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v63[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 2) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 32);
  v14 = *(a11 + 80);
  v15 = *(a11 + 208);
  *(a11 + 208) = v15 + 1;
  v16 = *(a11 + 152);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::OneofOptions::IsInitialized(v13) & 1) == 0)
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
  v22 = (v14 + 80 * v15);
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

void sub_23CDA172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CDA1740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::EnumValueDescriptor const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::EnumValueDescriptor const*>>>::find_or_prepare_insert_non_soo<std::string>@<X0>(uint64_t *a1@<X0>, absl::lts_20240722::hash_internal::MixingHashState *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v13, a3, a4);
  v15 = 0;
  v16 = (((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13));
  v17 = a1[2];
  v18 = *a1;
  v19 = vdup_n_s8(v16 & 0x7F);
  v20 = *(v5 + 23);
  _NF = (v20 & 0x80u) != 0;
  if ((v20 & 0x80u) == 0)
  {
    v22 = *(v5 + 23);
  }

  else
  {
    v22 = *(v5 + 1);
  }

  v23 = (v16 >> 7) ^ (v17 >> 12);
  if (_NF)
  {
    v24 = *v5;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 & v18;
  v26 = *(v17 + (v23 & v18));
  v27 = vceq_s8(v26, v19);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v18;
      v30 = v28 + 32 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        result = memcmp(v33, v24, v22);
        if (!result)
        {
          break;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v28 = v38;
      v15 = v39;
      if (!v27)
      {
        goto LABEL_20;
      }
    }

    v36 = 0;
    v37 = v17 + v29;
  }

  else
  {
LABEL_20:
    while (1)
    {
      v35 = vceq_s8(v26, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v15 += 8;
      v25 = (v15 + v25) & v18;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v19);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v18, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::EnumValueDescriptor const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::EnumValueDescriptor const*>>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 32 * result;
    v36 = 1;
  }

  *a5 = v37;
  *(a5 + 8) = v30;
  *(a5 + 16) = v36;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::EnumValueDescriptor const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::EnumValueDescriptor const*>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::EnumValueDescriptor const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::EnumValueDescriptor const*>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckEnumValueUniqueness(google::protobuf::EnumDescriptorProto const&,google::protobuf::EnumDescriptor const*)::$_0,std::string>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1[1] + 8) + 24) + 8);
  v5[0] = *(**a1 + 8);
  v5[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v5[2] = v2;
  v5[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Enum name %s has the same name as %s if you ignore case and strip out the enum name prefix (if any). (If you are using allow_alias, please assign the same number to each enum value name.)", 187, v5, 2uLL, a2);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::EnumDescriptor>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v63[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 2) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 104);
  v14 = *(a11 + 56);
  v15 = *(a11 + 196);
  *(a11 + 196) = v15 + 1;
  v16 = *(a11 + 140);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::EnumOptions::IsInitialized(v13) & 1) == 0)
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
  v22 = (v14 + 88 * v15);
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

void sub_23CDA1F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CDA1F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_0,std::string>@<X0>(void *a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 24), v20, a2);
  *&v19 = v20;
  *(&v19 + 1) = v5 - v20;
  v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 28), v18, v6);
  *&v17 = v18;
  *(&v17 + 1) = v7 - v18;
  v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1[1] + 24), v16, v8);
  *&v15 = v16;
  *(&v15 + 1) = v9 - v16;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1[1] + 28), v14, v10) - v14;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v21[0] = v19;
  v21[1] = v17;
  v21[2] = v15;
  v22 = v14;
  v23 = v13;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Reserved range $0 to $1 overlaps with already-defined range $2 to $3.", 0x45uLL, v21, 4uLL);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA20D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_1,std::string>@<X0>(void **a1@<X0>, std::string *a2@<X8>)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v3 = **a1;
    v4 = (*a1)[1];
  }

  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v7[0] = v3;
  v7[1] = v4;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a2, "Enum value $0 is reserved multiple times.", 0x2BuLL, v7, 1uLL);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA2194(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_2,std::string>@<X0>(uint64_t **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = *(v4 + 4);
  v6 = *(v4 + 8);
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = v6[1];
  }

  v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v13, a2) - v13;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v13;
  v14[3] = v12;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Enum value $0 uses reserved number $1.", 0x28uLL, v14, 2uLL);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA2278(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_3,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = *(**a1 + 8);
  v4 = *(v3 + 23);
  v5 = v3[1];
  if (v4 < 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v8[0] = v3;
  v8[1] = v4;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a2, "Enum value $0 is reserved.", 0x1CuLL, v8, 1uLL);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA2340(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::EnumValueDescriptor>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v63[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 2) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 32);
  v14 = *(a11 + 64);
  v15 = *(a11 + 200);
  *(a11 + 200) = v15 + 1;
  v16 = *(a11 + 144);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::EnumValueOptions::IsInitialized(v13) & 1) == 0)
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
  v22 = (v14 + 88 * v15);
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

void sub_23CDA275C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CDA2770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnumValue(google::protobuf::EnumValueDescriptorProto const&,google::protobuf::EnumDescriptor const*,google::protobuf::EnumValueDescriptor *,google::protobuf::internal::FlatAllocator &)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v13[14] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(**a1 + 8);
  v4 = *(v3 + 23);
  v5 = v3[1];
  if (v4 < 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v6 = *(v2 + 23);
  v7 = v2[1];
  if (v6 < 0)
  {
    v2 = *v2;
    v6 = v7;
  }

  v8 = *(**(a1 + 16) + 8);
  v13[0] = "Note that enum values use C++ scoping rules, meaning that enum values are siblings of their type, not children of it.  Therefore, ";
  v13[1] = 131;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = " must be unique within ";
  v13[5] = 24;
  v13[6] = v2;
  v13[7] = v6;
  v13[8] = ", not just within ";
  v13[9] = 19;
  v9 = *(v8 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = v8[1];
  }

  v13[10] = v10;
  v13[11] = v9;
  v13[12] = ".";
  v13[13] = 2;
  result = absl::lts_20240722::strings_internal::CatPieces(v13, 7, a2);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::ServiceDescriptor>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v63[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 2) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 56);
  v14 = *(a11 + 88);
  v15 = *(a11 + 212);
  *(a11 + 212) = v15 + 1;
  v16 = *(a11 + 156);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::ServiceOptions::IsInitialized(v13) & 1) == 0)
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
  v22 = (v14 + 88 * v15);
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

void sub_23CDA2CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CDA2CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::MethodDescriptor>(uint64_t a1, void *a2, void *a3, void *a4, size_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
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

  v13 = *(a6 + 48);
  v14 = *(a11 + 96);
  v15 = *(a11 + 216);
  *(a11 + 216) = v15 + 1;
  v16 = *(a11 + 160);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::MethodOptions::IsInitialized(v13) & 1) == 0)
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
  v22 = (v14 + 88 * v15);
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

void sub_23CDA30EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Unwind_Resume(a1);
}

void sub_23CDA3100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkMessage(google::protobuf::Descriptor *,google::protobuf::DescriptorProto const&)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = *(*(**a1 + 56) + 88 * **(a1 + 8) - 80);
  v4 = *(v3 + 23);
  v5 = v3[1];
  if (v4 < 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v6 = *(**(a1 + 16) + 8);
  v7 = *(v6 + 23);
  v8 = v6[1];
  if (v7 < 0)
  {
    v6 = *v6;
    v7 = v8;
  }

  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v6;
  v11[3] = v7;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a2, "Fields in the same oneof must be defined consecutively. $0 cannot be defined before the completion of the $1 oneof definition.", 0x82uLL, v11, 2uLL);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA320C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckExtensionDeclarationFieldType(google::protobuf::FieldDescriptor const&,google::protobuf::FieldDescriptorProto const&,std::string_view)::$_0,std::string>@<X0>(void *a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v5 = *(*(*a1 + 32) + 8);
  v8 = *(v5 + 24);
  v6 = v5 + 24;
  v7 = v8;
  v9 = *(v6 + 23);
  if (v9 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >= 0)
  {
    v11 = *(v6 + 23);
  }

  else
  {
    v11 = *(v6 + 8);
  }

  v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 4), v21, a2);
  v13 = a1[1];
  v14 = a1[2];
  v15 = *(v13 + 23);
  v16 = v13[1];
  if (v15 < 0)
  {
    v13 = *v13;
    v15 = v16;
  }

  v17 = *(v14 + 23);
  v18 = v14[1];
  if (v17 < 0)
  {
    v14 = *v14;
    v17 = v18;
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v22[0] = v10;
  v22[1] = v11;
  v22[2] = v21;
  v22[3] = v12 - v21;
  v22[4] = v13;
  v22[5] = v15;
  v22[6] = v14;
  v22[7] = v17;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0 extension field $1 is expected to be type $2, not $3.", 0x3EuLL, v22, 4uLL);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA333C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckExtensionDeclaration(google::protobuf::FieldDescriptor const&,google::protobuf::FieldDescriptorProto const&,std::string_view,std::string_view,BOOL)::$_0,std::string>@<X0>(void *a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(*(*a1 + 32) + 8);
  v8 = *(v5 + 24);
  v6 = v5 + 24;
  v7 = v8;
  v9 = *(v6 + 23);
  if (v9 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >= 0)
  {
    v11 = *(v6 + 23);
  }

  else
  {
    v11 = *(v6 + 8);
  }

  v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 4), v20, a2);
  v13 = a1[1];
  v14 = a1[2];
  v15 = *(v14 + 23);
  v16 = v14[1];
  if ((v15 & 0x80u) != 0)
  {
    v14 = *v14;
    v15 = v16;
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v17 = *v13;
  v21[0] = v10;
  v21[1] = v11;
  v21[2] = v20;
  v21[3] = v12 - v20;
  v22 = v17;
  v23 = v14;
  v24 = v15;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0 extension field $1 is expected to have field name $2, not $3.", 0x46uLL, v21, 4uLL);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA3464(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CheckExtensionDeclaration(google::protobuf::FieldDescriptor const&,google::protobuf::FieldDescriptorProto const&,std::string_view,std::string_view,BOOL)::$_1,std::string>@<X0>(_BYTE **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v5 = *(*(*a1 + 4) + 8);
  v8 = *(v5 + 24);
  v6 = v5 + 24;
  v7 = v8;
  v9 = *(v6 + 23);
  if (v9 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >= 0)
  {
    v11 = *(v6 + 23);
  }

  else
  {
    v11 = *(v6 + 8);
  }

  v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 1), v16, a2);
  if (*a1[1])
  {
    v13 = "repeated";
  }

  else
  {
    v13 = "optional";
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v16;
  v17[3] = v12 - v16;
  v17[4] = v13;
  v17[5] = 8;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0 extension field $1 is expected to be $2.", 0x2DuLL, v17, 3uLL);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA358C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 32);
  v10[0] = "";
  v10[1] = 1;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v9[0] = v3;
  v9[1] = v4;
  v8[0] = " is not a message type.";
  v8[1] = 24;
  result = absl::lts_20240722::StrCat(v10, v9, v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_1,std::string>@<X0>(uint64_t **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = *(v4 + 4);
  v6 = *(*(v4 + 32) + 8);
  v9 = *(v6 + 24);
  v7 = v6 + 24;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v16, a2) - v16;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v16;
  v17[3] = v15;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0 does not declare $1 as an extension number.", 0x30uLL, v17, 2uLL);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA3724(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_2,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v10[0] = "";
  v10[1] = 1;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v9[0] = v3;
  v9[1] = v4;
  v8[0] = " is not a type.";
  v8[1] = 16;
  result = absl::lts_20240722::StrCat(v10, v9, v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_3,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v10[0] = "";
  v10[1] = 1;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v9[0] = v3;
  v9[1] = v4;
  v8[0] = " is not a message type.";
  v8[1] = 24;
  result = absl::lts_20240722::StrCat(v10, v9, v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_4,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v10[0] = "";
  v10[1] = 1;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v9[0] = v3;
  v9[1] = v4;
  v8[0] = " is not an enum type.";
  v8[1] = 22;
  result = absl::lts_20240722::StrCat(v10, v9, v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_5,std::string>@<X0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v17[10] = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = *(v2 + 24);
  if (v3)
  {
    v17[0] = **a1;
    if (atomic_load_explicit(v3, memory_order_acquire) != 221)
    {
      v15 = a1;
      v16 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, google::protobuf::FieldDescriptor::TypeOnceInit, v17);
      a1 = v15;
      a2 = v16;
    }
  }

  v4 = *(*(v2 + 48) + 8);
  v7 = *(v4 + 24);
  v5 = v4 + 24;
  v6 = v7;
  v8 = *(v5 + 8);
  if (*(v5 + 23) >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v5 = v6;
    v9 = v8;
  }

  v10 = a1[1][6] & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 23);
  v12 = *(v10 + 8);
  if ((v11 & 0x80u) != 0)
  {
    v10 = *v10;
    v11 = v12;
  }

  v17[0] = "Enum type ";
  v17[1] = 11;
  v17[2] = v5;
  v17[3] = v9;
  v17[4] = " has no value named ";
  v17[5] = 22;
  v17[6] = v10;
  v17[7] = v11;
  v17[8] = ".";
  v17[9] = 2;
  result = absl::lts_20240722::strings_internal::CatPieces(v17, 5, a2);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_6,std::string>@<X0>(uint64_t a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(**a1 + 4), v17, a2);
  v6 = *(a1 + 8);
  v7 = *(v6 + 23);
  v8 = v6[1];
  if (v7 < 0)
  {
    v6 = *v6;
    v7 = v8;
  }

  v9 = *(**(a1 + 16) + 8);
  v12 = *(v9 + 24);
  v10 = v9 + 24;
  v11 = v12;
  v13 = *(v10 + 8);
  if (*(v10 + 23) >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v10 = v11;
    v14 = v13;
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v18[0] = v17;
  v18[1] = v5 - v17;
  v18[2] = v6;
  v18[3] = v7;
  v18[4] = v10;
  v18[5] = v14;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Extension number $0 has already been used in $1 by extension $2.", 0x44uLL, v18, 3uLL);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA3B58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_7,std::string>@<X0>(uint64_t a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(**a1 + 4), v14, a2);
  v6 = *(a1 + 8);
  v7 = *(v6 + 23);
  v8 = v6[1];
  if (v7 < 0)
  {
    v6 = *v6;
    v7 = v8;
  }

  v9 = *(**(a1 + 16) + 8);
  v10 = *(v9 + 23);
  v11 = v9[1];
  if (v10 < 0)
  {
    v9 = *v9;
    v10 = v11;
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v15[0] = v14;
  v15[1] = v5 - v14;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v9;
  v15[5] = v10;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Field number $0 has already been used in $1 by field $2.", 0x3CuLL, v15, 3uLL);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA3C70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::FieldDescriptor *,google::protobuf::FieldDescriptorProto const&)::$_8,std::string>(void **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v5 = (*a1)[1];
  v6 = *a1[1];
  v7 = *(v6 + 32);
  v8 = *(v6 + 4);
  v9 = *(v5 + 264);
  v10 = *(v9 + 10);
  if (*(v9 + 10))
  {
    goto LABEL_4;
  }

LABEL_11:
  LODWORD(v12) = 0;
  while (!*(v9 + 11))
  {
    v9 = v9[v12 + 32];
    v10 = *(v9 + 10);
    if (!*(v9 + 10))
    {
      goto LABEL_11;
    }

LABEL_4:
    v11 = 0;
    do
    {
      v12 = (v10 + v11) >> 1;
      v13 = &v9[3 * v12 + 2];
      if (*v13 < v7 || *v13 <= v7 && *(v13 + 8) < v8)
      {
        v11 = v12 + 1;
        v12 = v10;
      }

      v10 = v12;
    }

    while (v11 != v12);
  }

  while (v12 == *(v9 + 10))
  {
    LODWORD(v12) = *(v9 + 8);
    v9 = *v9;
    if (*(v9 + 11))
    {
      goto LABEL_17;
    }
  }

  v14 = &v9[3 * v12];
  v16 = v14[2];
  v15 = v14 + 2;
  v17 = v16 >= v7;
  if (v16 > v7 || v17 && *(v15 + 2) > v8)
  {
LABEL_17:
    v9 = *(v5 + 272);
    LODWORD(v12) = *(v9 + 10);
  }

  v18 = *(v5 + 272);
  if (v9 == v18 && v12 == *(v18 + 10))
  {
    v19 = 0;
    if (!v7)
    {
LABEL_21:
      *(&__p.__r_.__value_.__s + 23) = 7;
      strcpy(&__p, "unknown");
      goto LABEL_30;
    }
  }

  else
  {
    v19 = v9[3 * v12 + 4];
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  v20 = *(v7 + 8);
  if (*(v20 + 47) < 0)
  {
    v21 = a1;
    std::string::__init_copy_ctor_external(&__p, *(v20 + 24), *(v20 + 32));
    v8 = *(*v21[1] + 4);
  }

  else
  {
    __p = *(v20 + 24);
  }

LABEL_30:
  v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v8, v38, a2);
  v36 = v38;
  v37 = v22 - v38;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v25 = *(v19 + 8);
  v28 = *(v25 + 24);
  v26 = v25 + 24;
  v27 = v28;
  v29 = *(v26 + 8);
  if (*(v26 + 23) >= 0)
  {
    v30 = *(v26 + 23);
  }

  else
  {
    v26 = v27;
    v30 = v29;
  }

  v31 = *(*(v19 + 16) + 8);
  v32 = *(v31 + 23);
  v33 = v31[1];
  if (v32 < 0)
  {
    v31 = *v31;
    v32 = v33;
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v39[0] = v38;
  v39[1] = v22 - v38;
  v39[2] = p_p;
  v39[3] = size;
  v39[4] = v26;
  v39[5] = v30;
  v39[6] = v31;
  v39[7] = v32;
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Extension number $0 has already been used in $1 by extension $2 defined in $3.", 0x52uLL, v39, 4uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_23CDA3F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkMethod(google::protobuf::MethodDescriptor *,google::protobuf::MethodDescriptorProto const&)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 32);
  v10[0] = "";
  v10[1] = 1;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v9[0] = v3;
  v9[1] = v4;
  v8[0] = " is not a message type.";
  v8[1] = 24;
  result = absl::lts_20240722::StrCat(v10, v9, v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::CrossLinkMethod(google::protobuf::MethodDescriptor *,google::protobuf::MethodDescriptorProto const&)::$_1,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v10[0] = "";
  v10[1] = 1;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v9[0] = v3;
  v9[1] = v4;
  v8[0] = " is not a message type.";
  v8[1] = 24;
  result = absl::lts_20240722::StrCat(v10, v9, v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v93 = *v9;
          v94 = v9[1];
          if (v94 < *v9 || (v93 >= v94 ? (v95 = SHIDWORD(v94) < SHIDWORD(v93)) : (v95 = 0), v95))
          {
            v157 = *(a2 - 1);
            if (v157 >= v94 && (v94 < v157 || SHIDWORD(v157) >= SHIDWORD(v94)))
            {
              *v9 = v94;
              v9[1] = v93;
              v167 = *(a2 - 1);
              if (v167 >= v93 && (v93 < v167 || SHIDWORD(v167) >= SHIDWORD(v93)))
              {
                return result;
              }

              v9[1] = v167;
            }

            else
            {
              *v9 = v157;
            }

            *(a2 - 1) = v93;
            return result;
          }

          v96 = *(a2 - 1);
          if (v96 >= v94 && (v94 < v96 || SHIDWORD(v96) >= SHIDWORD(v94)))
          {
            return result;
          }

          v9[1] = v96;
          *(a2 - 1) = v94;
          v98 = *v9;
          v97 = v9[1];
          if (v97 >= *v9)
          {
            goto LABEL_240;
          }

          goto LABEL_242;
        case 4:

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,0>(v9, v9 + 1, v9 + 2, a2 - 1);
        case 5:
          result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,0>(v9, v9 + 1, v9 + 2, v9 + 3);
          v99 = *(a2 - 1);
          v100 = v9[3];
          if (v99 >= v100 && (v100 < v99 || SHIDWORD(v99) >= SHIDWORD(v100)))
          {
            return result;
          }

          v9[3] = v99;
          *(a2 - 1) = v100;
          v101 = v9[2];
          v97 = v9[3];
          if (v97 >= v101 && (v101 < v97 || SHIDWORD(v97) >= SHIDWORD(v101)))
          {
            return result;
          }

          v9[2] = v97;
          v9[3] = v101;
          v102 = v9[1];
          if (v97 >= v102 && (v102 < v97 || SHIDWORD(v97) >= SHIDWORD(v102)))
          {
            return result;
          }

          v9[1] = v97;
          v9[2] = v102;
          v98 = *v9;
          if (v97 >= *v9)
          {
LABEL_240:
            if (v98 < v97 || SHIDWORD(v97) >= SHIDWORD(v98))
            {
              return result;
            }
          }

LABEL_242:
          *v9 = v97;
          v9[1] = v98;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v91 = *(a2 - 1);
        v92 = *v9;
        if (v91 < *v9 || v92 >= v91 && SHIDWORD(v91) < SHIDWORD(v92))
        {
          *v9 = v91;
          *(a2 - 1) = v92;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v116 = (v10 - 2) >> 1;
        v117 = v116;
        do
        {
          v118 = v117;
          if (v116 >= v117)
          {
            v119 = (2 * v117) | 1;
            v120 = &v9[v119];
            if (2 * v118 + 2 < v10)
            {
              v121 = *v120;
              v122 = v120[1];
              if (*v120 < v122 || ((result = HIDWORD(v121), v122 >= v121) ? (v123 = SHIDWORD(v121) < SHIDWORD(v122)) : (v123 = 0), v123))
              {
                ++v120;
                v119 = 2 * v118 + 2;
              }
            }

            v124 = &v9[v118];
            v125 = *v120;
            v126 = *v124;
            if (*v120 >= *v124 && (v126 < v125 || SHIDWORD(v125) >= SHIDWORD(v126)))
            {
              do
              {
                v128 = v120;
                *v124 = v125;
                if (v116 < v119)
                {
                  break;
                }

                v129 = 2 * v119;
                v119 = (2 * v119) | 1;
                v120 = &v9[v119];
                v130 = v129 + 2;
                if (v130 < v10)
                {
                  result = *v120;
                  v131 = v120[1];
                  if (*v120 < v131 || (v131 >= result ? (v132 = SHIDWORD(result) < SHIDWORD(v131)) : (v132 = 0), v132))
                  {
                    ++v120;
                    v119 = v130;
                  }
                }

                v125 = *v120;
                if (*v120 < v126)
                {
                  break;
                }

                v133 = v126 >= v125 && SHIDWORD(v125) < SHIDWORD(v126);
                v124 = v128;
              }

              while (!v133);
              *v128 = v126;
            }
          }

          v117 = v118 - 1;
        }

        while (v118);
        do
        {
          v134 = 0;
          v135 = *v9;
          v136 = v9;
          do
          {
            v137 = v136;
            v138 = &v136[v134];
            v136 = v138 + 1;
            v139 = 2 * v134;
            v134 = (2 * v134) | 1;
            v140 = v139 + 2;
            if (v140 < v10)
            {
              v143 = v138[2];
              v141 = v138 + 2;
              v142 = v143;
              v144 = *(v141 - 1);
              if (v144 < v143 || ((result = HIDWORD(v142), v142 >= v144) ? (v145 = SHIDWORD(v144) < SHIDWORD(v142)) : (v145 = 0), v145))
              {
                v136 = v141;
                v134 = v140;
              }
            }

            *v137 = *v136;
          }

          while (v134 <= ((v10 - 2) >> 1));
          if (v136 == --a2)
          {
            *v136 = v135;
          }

          else
          {
            *v136 = *a2;
            *a2 = v135;
            v146 = (v136 - v9 + 8) >> 3;
            v147 = v146 - 2;
            if (v146 >= 2)
            {
              v148 = v147 >> 1;
              v149 = &v9[v147 >> 1];
              v150 = *v149;
              v151 = *v136;
              if (*v149 < *v136 || (v151 >= v150 ? (v152 = SHIDWORD(v150) < SHIDWORD(v151)) : (v152 = 0), v152))
              {
                *v136 = v150;
                if (v147 >= 2)
                {
                  while (1)
                  {
                    v153 = v148 - 1;
                    v148 = (v148 - 1) >> 1;
                    v154 = &v9[v148];
                    v155 = *v154;
                    if (*v154 >= v151 && (v151 < v155 || SHIDWORD(v155) >= SHIDWORD(v151)))
                    {
                      break;
                    }

                    *v149 = v155;
                    v149 = &v9[v148];
                    if (v153 <= 1)
                    {
                      goto LABEL_336;
                    }
                  }
                }

                v154 = v149;
LABEL_336:
                *v154 = v151;
              }
            }
          }

          v16 = v10-- <= 2;
        }

        while (!v16);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = &v9[v10 >> 1];
    v13 = v12;
    if (v10 >= 0x81)
    {
      v14 = *v12;
      v15 = *v9;
      if (*v12 < *v9 || (v15 >= v14 ? (v16 = SHIDWORD(v14) < SHIDWORD(v15)) : (v16 = 0), v16))
      {
        v26 = *v8;
        if (*v8 < v14 || (v14 >= v26 ? (v27 = SHIDWORD(v26) < SHIDWORD(v14)) : (v27 = 0), v27))
        {
          *v9 = v26;
        }

        else
        {
          *v9 = v14;
          *v12 = v15;
          v28 = *v8;
          if (*v8 >= v15 && (v15 < v28 || SHIDWORD(v28) >= SHIDWORD(v15)))
          {
            goto LABEL_53;
          }

          *v12 = v28;
        }

        *v8 = v15;
        goto LABEL_53;
      }

      v17 = *v8;
      if (*v8 < v14 || v14 >= v17 && SHIDWORD(v17) < SHIDWORD(v14))
      {
        *v12 = v17;
        *v8 = v14;
        v18 = *v12;
        v19 = *v9;
        if (*v12 < *v9 || v19 >= v18 && SHIDWORD(v18) < SHIDWORD(v19))
        {
          *v9 = v18;
          *v12 = v19;
        }
      }

LABEL_53:
      v30 = v11 - 1;
      v31 = v9[v11 - 1];
      v32 = v9[1];
      if (v31 >= v32 && (v32 < v31 || SHIDWORD(v31) >= SHIDWORD(v32)))
      {
        v66 = *(a2 - 2);
        if (v66 < v31 || v31 >= v66 && SHIDWORD(v66) < SHIDWORD(v31))
        {
          v9[v30] = v66;
          *(a2 - 2) = v31;
          v67 = v9[v30];
          v68 = v9[1];
          if (v67 < v68 || v68 >= v67 && SHIDWORD(v67) < SHIDWORD(v68))
          {
            v9[1] = v67;
            v9[v30] = v68;
          }
        }
      }

      else
      {
        v33 = *(a2 - 2);
        if (v33 < v31 || v31 >= v33 && SHIDWORD(v33) < SHIDWORD(v31))
        {
          v9[1] = v33;
          goto LABEL_60;
        }

        v9[1] = v31;
        v9[v30] = v32;
        v73 = *(a2 - 2);
        if (v73 < v32 || v32 >= v73 && SHIDWORD(v73) < SHIDWORD(v32))
        {
          v9[v30] = v73;
LABEL_60:
          *(a2 - 2) = v32;
        }
      }

      v36 = v12[1];
      v34 = v12 + 1;
      v35 = v36;
      v37 = v9[2];
      if (v36 >= v37 && (v37 < v35 || SHIDWORD(v35) >= SHIDWORD(v37)))
      {
        v69 = *(a2 - 3);
        if (v69 < v35 || v35 >= v69 && SHIDWORD(v69) < SHIDWORD(v35))
        {
          *v34 = v69;
          *(a2 - 3) = v35;
          v70 = *v34;
          v71 = v9[2];
          if (*v34 < v71 || v71 >= v70 && SHIDWORD(v70) < SHIDWORD(v71))
          {
            v9[2] = v70;
            *v34 = v71;
          }
        }
      }

      else
      {
        v38 = *(a2 - 3);
        if (v38 < v35 || v35 >= v38 && SHIDWORD(v38) < SHIDWORD(v35))
        {
          v9[2] = v38;
          goto LABEL_68;
        }

        v9[2] = v35;
        *v34 = v37;
        v74 = *(a2 - 3);
        if (v74 < v37 || v37 >= v74 && SHIDWORD(v74) < SHIDWORD(v37))
        {
          *v34 = v74;
LABEL_68:
          *(a2 - 3) = v37;
        }
      }

      v39 = *v13;
      v40 = v9[v30];
      if (*v13 < v40)
      {
        v41 = *v34;
        goto LABEL_73;
      }

      v41 = *v34;
      if (v40 < v39 || SHIDWORD(v39) >= SHIDWORD(v40))
      {
        if (v41 < v39 || v39 >= v41 && SHIDWORD(v41) < SHIDWORD(v39))
        {
          *v13 = v41;
          *v34 = v39;
          if (v41 < v40 || v40 >= v41 && SHIDWORD(v41) < SHIDWORD(v40))
          {
            v9[v30] = v41;
            v34 = v13;
            v39 = v40;
            goto LABEL_77;
          }

          v39 = v41;
        }
      }

      else
      {
LABEL_73:
        if (v41 < v39 || v39 >= v41 && SHIDWORD(v41) < SHIDWORD(v39))
        {
          v9[v30] = v41;
          goto LABEL_77;
        }

        v9[v30] = v39;
        *v13 = v40;
        if (v41 >= v40 && (v40 < v41 || SHIDWORD(v41) >= SHIDWORD(v40)))
        {
          v39 = v40;
        }

        else
        {
          *v13 = v41;
          v39 = v41;
LABEL_77:
          *v34 = v40;
        }
      }

      v42 = *v9;
      *v9 = v39;
      *v13 = v42;
      goto LABEL_79;
    }

    v20 = *v9;
    v21 = *v12;
    if (*v9 >= *v13 && (v21 < v20 || SHIDWORD(v20) >= SHIDWORD(v21)))
    {
      v23 = *v8;
      if (*v8 < v20 || v20 >= v23 && SHIDWORD(v23) < SHIDWORD(v20))
      {
        *v9 = v23;
        *v8 = v20;
        v24 = *v9;
        v25 = *v13;
        if (*v9 < *v13 || v25 >= v24 && SHIDWORD(v24) < SHIDWORD(v25))
        {
          *v13 = v24;
          *v9 = v25;
        }
      }

      goto LABEL_79;
    }

    v29 = *v8;
    if (*v8 >= v20 && (v20 < v29 || SHIDWORD(v29) >= SHIDWORD(v20)))
    {
      *v13 = v20;
      *v9 = v21;
      v72 = *v8;
      if (*v8 >= v21 && (v21 < v72 || SHIDWORD(v72) >= SHIDWORD(v21)))
      {
        goto LABEL_79;
      }

      *v9 = v72;
    }

    else
    {
      *v13 = v29;
    }

    *v8 = v21;
LABEL_79:
    --a3;
    v43 = *v9;
    v44 = HIDWORD(*v9);
    if ((a4 & 1) != 0 || (v45 = *(v9 - 1), v45 < v43) || v43 >= v45 && SHIDWORD(v45) < v44)
    {
      for (i = 0; ; ++i)
      {
        v47 = v9[i + 1];
        if (v43 <= v47 && (v43 < v47 || SHIDWORD(v47) >= v44))
        {
          break;
        }
      }

      v49 = &v9[i];
      v50 = &v9[i + 1];
      v51 = a2 - 1;
      if (i * 8)
      {
        do
        {
          v52 = v51;
          v53 = *v51;
          if (v43 > *v51)
          {
            break;
          }

          --v51;
        }

        while (v43 < v53 || SHIDWORD(v53) >= v44);
LABEL_106:
        if (v50 < v52)
        {
          v59 = *v52;
          v60 = v50;
          v61 = v52;
          do
          {
            *v60++ = v59;
            *v61 = v47;
            while (1)
            {
              v47 = *v60;
              if (v43 <= *v60 && (v43 < *v60 || SHIDWORD(v47) >= v44))
              {
                break;
              }

              ++v60;
            }

            v63 = v61 - 1;
            do
            {
              v61 = v63;
              v59 = *v63;
              if (v43 > *v63)
              {
                break;
              }

              --v63;
            }

            while (v43 < v59 || SHIDWORD(v59) >= v44);
          }

          while (v60 < v61);
          v49 = v60 - 1;
        }
      }

      else
      {
        v55 = a2 - 1;
        while (1)
        {
          v52 = v55;
          v56 = v55 + 1;
          if (v50 >= v56)
          {
            break;
          }

          v57 = *v52;
          if (v43 <= *v52)
          {
            v55 = v52 - 1;
            if (v43 < v57 || SHIDWORD(v57) >= v44)
            {
              continue;
            }
          }

          goto LABEL_106;
        }

        v52 = v56;
      }

      if (v49 != v9)
      {
        *v9 = *v49;
      }

      *v49 = v43;
      if (v50 < v52)
      {
        goto LABEL_130;
      }

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *>(v9, v49);
      v9 = v49 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *>(v49 + 1, a2);
      if (result)
      {
        a2 = v49;
        if (v65)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v65)
      {
LABEL_130:
        result = std::__introsort<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,false>(v7, v49, a3, a4 & 1);
        a4 = 0;
        v9 = v49 + 1;
      }
    }

    else
    {
      v75 = *v8;
      if (v43 >= *v8 && (v75 < v43 || v44 >= SHIDWORD(v75)))
      {
        v88 = v9 + 1;
        do
        {
          v9 = v88;
          if (v88 >= a2)
          {
            break;
          }

          v89 = *v88;
          if (v43 < *v88)
          {
            break;
          }

          ++v88;
        }

        while (v89 < v43 || v44 >= SHIDWORD(v89));
      }

      else
      {
        v76 = v9 + 1;
        do
        {
          v9 = v76;
          v77 = *v76;
          if (v43 < *v76)
          {
            break;
          }

          ++v76;
        }

        while (v77 < v43 || v44 >= SHIDWORD(v77));
      }

      v79 = a2;
      if (v9 < a2)
      {
        v79 = a2 - 1;
        while (v43 < v75 || v75 >= v43 && v44 < SHIDWORD(v75))
        {
          v80 = *--v79;
          v75 = v80;
        }
      }

      if (v9 < v79)
      {
        v81 = *v9;
        v82 = *v79;
        do
        {
          *v9 = v82;
          *v79 = v81;
          v83 = v9 + 1;
          do
          {
            v9 = v83;
            v81 = *v83;
            if (v43 < *v83)
            {
              break;
            }

            ++v83;
          }

          while (v81 < v43 || v44 >= SHIDWORD(v81));
          do
          {
            do
            {
              v85 = *--v79;
              v82 = v85;
            }

            while (v43 < v85);
          }

          while (v82 >= v43 && v44 < SHIDWORD(v82));
        }

        while (v9 < v79);
      }

      v87 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v87;
      }

      a4 = 0;
      *v87 = v43;
    }
  }

  v103 = v9 + 1;
  v105 = v9 == a2 || v103 == a2;
  if ((a4 & 1) == 0)
  {
    if (v105)
    {
      return result;
    }

    while (1)
    {
      v158 = v103;
      v160 = *v7;
      v159 = v7[1];
      if (v159 < *v7)
      {
        break;
      }

      v161 = HIDWORD(v159);
      if (v160 >= v159 && SHIDWORD(v159) < SHIDWORD(v160))
      {
        goto LABEL_352;
      }

LABEL_344:
      v103 = v158 + 1;
      v7 = v158;
      if (v158 + 1 == a2)
      {
        return result;
      }
    }

    v161 = HIDWORD(v159);
    do
    {
      do
      {
LABEL_352:
        v163 = v7;
        v164 = v160;
        v165 = *--v7;
        v160 = v165;
        v7[2] = v164;
      }

      while (v159 < v165);
    }

    while (v160 >= v159 && v161 < SHIDWORD(v160));
    *v163 = v159;
    goto LABEL_344;
  }

  if (!v105)
  {
    v106 = 0;
    v107 = v9;
    do
    {
      v109 = v103;
      v111 = *v107;
      v110 = v107[1];
      if (v110 < *v107 || (v111 >= v110 ? (v112 = SHIDWORD(v110) < SHIDWORD(v111)) : (v112 = 0), v112))
      {
        v107[1] = v111;
        v108 = v9;
        if (v107 != v9)
        {
          v113 = v106;
          while (1)
          {
            v114 = *(v9 + v113 - 8);
            if (v110 >= v114 && (v114 < v110 || SHIDWORD(v110) >= SHIDWORD(v114)))
            {
              break;
            }

            *(v9 + v113) = v114;
            v113 -= 8;
            if (!v113)
            {
              v108 = v9;
              goto LABEL_256;
            }
          }

          v108 = (v9 + v113);
        }

LABEL_256:
        *v108 = v110;
      }

      v103 = v109 + 1;
      v106 += 8;
      v107 = v109;
    }

    while (v109 + 1 != a2);
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *a2;
  if (*a2 < *result || (v5 >= v6 ? (v7 = SHIDWORD(v4) < SHIDWORD(v5)) : (v7 = 0), v7))
  {
    v12 = *a3;
    if (*a3 < v6 || (v6 >= v12 ? (v13 = SHIDWORD(v12) < SHIDWORD(v4)) : (v13 = 0), v13))
    {
      *result = v12;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v6 = *a3;
      if (*a3 >= v5 && (v5 < v6 || SHIDWORD(v6) >= SHIDWORD(v5)))
      {
        v4 = *a3;
        v11 = *a4;
        if (v6 <= *a4)
        {
          goto LABEL_30;
        }

        goto LABEL_32;
      }

      *a2 = v6;
    }

    *a3 = v5;
    goto LABEL_28;
  }

  v5 = *a3;
  if (*a3 >= v6 && (v6 < v5 || SHIDWORD(v5) >= SHIDWORD(v4)))
  {
LABEL_28:
    LODWORD(v6) = v5;
    v4 = v5;
    goto LABEL_29;
  }

  *a2 = v5;
  *a3 = v4;
  v9 = *a2;
  v10 = *result;
  if (*a2 < *result || v10 >= v9 && SHIDWORD(v9) < SHIDWORD(v10))
  {
    *result = v9;
    *a2 = v10;
    v4 = *a3;
    v6 = *a3;
    v11 = *a4;
    if (*a3 <= *a4)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_29:
  v11 = *a4;
  if (v6 <= *a4)
  {
LABEL_30:
    if (v6 < v11 || SHIDWORD(v11) >= SHIDWORD(v4))
    {
      return result;
    }
  }

LABEL_32:
  *a3 = v11;
  *a4 = v4;
  v14 = *a3;
  v15 = *a2;
  if (*a3 < *a2 || v15 >= v14 && SHIDWORD(v14) < SHIDWORD(v15))
  {
    *a2 = v14;
    *a3 = v15;
    v16 = *a2;
    v17 = *result;
    if (*a2 < *result || v17 >= v16 && SHIDWORD(v16) < SHIDWORD(v17))
    {
      *result = v16;
      *a2 = v17;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = *(a2 - 1);
        v4 = *a1;
        if (v3 < *a1 || v4 >= v3 && SHIDWORD(v3) < SHIDWORD(v4))
        {
          *a1 = v3;
          *(a2 - 1) = v4;
        }

        return 1;
      }

      goto LABEL_36;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      v13 = *a1;
      v14 = a1[1];
      if (v14 >= *a1 && (v13 < v14 || SHIDWORD(v14) >= SHIDWORD(v13)))
      {
        v16 = *(a2 - 1);
        if (v16 < v14 || v14 >= v16 && SHIDWORD(v16) < SHIDWORD(v14))
        {
          a1[1] = v16;
          *(a2 - 1) = v14;
          v18 = *a1;
          v17 = a1[1];
          if (v17 < *a1 || v18 >= v17 && SHIDWORD(v17) < SHIDWORD(v18))
          {
            *a1 = v17;
            a1[1] = v18;
          }
        }

        return 1;
      }

      v35 = *(a2 - 1);
      if (v35 >= v14 && (v14 < v35 || SHIDWORD(v35) >= SHIDWORD(v14)))
      {
        *a1 = v14;
        a1[1] = v13;
        v37 = *(a2 - 1);
        if (v37 >= v13 && (v13 < v37 || SHIDWORD(v37) >= SHIDWORD(v13)))
        {
          return 1;
        }

        a1[1] = v37;
      }

      else
      {
        *a1 = v35;
      }

      *(a2 - 1) = v13;
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,0>(a1, a1 + 1, a1 + 2, a1 + 3);
      v7 = *(a2 - 1);
      v8 = a1[3];
      if (v7 < v8 || v8 >= v7 && SHIDWORD(v7) < SHIDWORD(v8))
      {
        a1[3] = v7;
        *(a2 - 1) = v8;
        v10 = a1[2];
        v9 = a1[3];
        if (v9 < v10 || v10 >= v9 && SHIDWORD(v9) < SHIDWORD(v10))
        {
          a1[2] = v9;
          a1[3] = v10;
          v11 = a1[1];
          if (v9 < v11 || v11 >= v9 && SHIDWORD(v9) < SHIDWORD(v11))
          {
            a1[1] = v9;
            a1[2] = v11;
            v12 = *a1;
            if (v9 < *a1 || v12 >= v9 && SHIDWORD(v9) < SHIDWORD(v12))
            {
              *a1 = v9;
              a1[1] = v12;
            }
          }
        }
      }

      return 1;
  }

LABEL_36:
  v19 = a1 + 2;
  v20 = *a1;
  v21 = a1 + 1;
  v22 = a1[1];
  if (v22 >= *a1 && (v20 < v22 || SHIDWORD(v22) >= SHIDWORD(v20)))
  {
    v36 = *v19;
    if (*v19 < v22 || v22 >= v36 && SHIDWORD(v36) < SHIDWORD(v22))
    {
      *v21 = v36;
      *v19 = v22;
      if (v36 < v20 || v20 >= v36 && SHIDWORD(v36) < SHIDWORD(v20))
      {
        *a1 = v36;
        goto LABEL_44;
      }
    }
  }

  else
  {
    v23 = *v19;
    if (*v19 < v22 || v22 >= v23 && SHIDWORD(v23) < SHIDWORD(v22))
    {
      *a1 = v23;
LABEL_43:
      v21 = a1 + 2;
LABEL_44:
      *v21 = v20;
      goto LABEL_45;
    }

    *a1 = v22;
    a1[1] = v20;
    if (v23 < v20 || v20 >= v23 && SHIDWORD(v23) < SHIDWORD(v20))
    {
      *v21 = v23;
      goto LABEL_43;
    }
  }

LABEL_45:
  v24 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    v27 = *v24;
    v28 = *v19;
    if (*v24 < *v19)
    {
      break;
    }

    v29 = HIDWORD(v27);
    if (v28 >= v27 && SHIDWORD(v27) < SHIDWORD(v28))
    {
      goto LABEL_56;
    }

LABEL_48:
    v19 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }

  v29 = HIDWORD(v27);
LABEL_56:
  *v24 = v28;
  v31 = v25;
  while (1)
  {
    v32 = *(a1 + v31 + 8);
    if (v27 >= v32 && (v32 < v27 || v29 >= SHIDWORD(v32)))
    {
      break;
    }

    *(a1 + v31 + 16) = v32;
    v31 -= 8;
    if (v31 == -16)
    {
      *a1 = v27;
      if (++v26 != 8)
      {
        goto LABEL_48;
      }

      return v24 + 1 == a2;
    }
  }

  *(a1 + v31 + 16) = v27;
  if (++v26 != 8)
  {
    goto LABEL_48;
  }

  return v24 + 1 == a2;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_0,std::string>(void *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v32);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Suggested field numbers for ", 28);
  v3 = *(**a1 + 8);
  v6 = *(v3 + 24);
  v4 = v3 + 24;
  v5 = v6;
  v7 = *(v4 + 23);
  if (v7 >= 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v4 + 23);
  }

  else
  {
    v9 = *(v4 + 8);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
  v11 = a1[1];
  v12 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    v15 = a1[2];
    v14 = a1[3];
    v16 = *v15;
    v17 = &byte_23CE7F131;
    do
    {
      v18 = *v14;
      if (v16 < *v12 && v18 >= 1)
      {
        v20 = strlen(v17);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v17, v20);
        ++*a1[2];
        MEMORY[0x23EED9180](v21);
        v15 = a1[2];
        v14 = a1[3];
        v22 = *v14;
        v18 = *v14 - 1;
        *v14 = v18;
        v16 = *v15;
        if (*v15 < *v12 && v22 >= 2)
        {
          do
          {
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ", ", 2);
            ++*a1[2];
            MEMORY[0x23EED9180](v24);
            v15 = a1[2];
            v14 = a1[3];
            v25 = *v14;
            v18 = *v14 - 1;
            *v14 = v18;
            v16 = *v15;
          }

          while (*v15 < *v12 && v25 > 1);
        }

        v17 = ", ";
      }

      if (!v18)
      {
        break;
      }

      v28 = v12[1];
      v27 = v12 + 1;
      v29 = v16 >= v28 ? v15 : v27;
      v16 = *v29;
      *v15 = v16;
      v12 = v27 + 1;
    }

    while (v12 != v13);
  }

  std::stringbuf::str();
  v32[0] = *MEMORY[0x277D82818];
  v30 = *(MEMORY[0x277D82818] + 72);
  *(v32 + *(v32[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v33 = v30;
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED93A0](&v37);
}

void sub_23CDA56E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_23CDA56F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_23CDA570C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_23CDA5720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::FileDescriptor const*,google::protobuf::FileDescriptorProto const&)::$_0,std::string>@<X0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = *a1[1];
  v13[0] = "Files that do not use optimize_for = LITE_RUNTIME cannot import files which do use this option.  This file is not lite, but it imports ";
  v13[1] = 136;
  v4 = *(v2 + 40);
  if (v4)
  {
    v12[0] = v2;
    if (atomic_load_explicit(v4, memory_order_acquire) != 221)
    {
      v10 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v4, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, v12);
      a2 = v10;
    }
  }

  v5 = *(*(*(v2 + 72) + 8 * v3) + 8);
  v6 = *(v5 + 23);
  v7 = v5[1];
  if (v6 < 0)
  {
    v5 = *v5;
    v6 = v7;
  }

  v12[0] = v5;
  v12[1] = v6;
  v11[0] = " which is.";
  v11[1] = 11;
  result = absl::lts_20240722::StrCat(v13, v12, v11, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateProto3Field(google::protobuf::FieldDescriptor const*,google::protobuf::FieldDescriptorProto const&)::$_0,std::string>@<X0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v21[10] = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = *(v2 + 24);
  v4 = v2;
  if (v3)
  {
    v21[0] = **a1;
    if (atomic_load_explicit(v3, memory_order_acquire) != 221)
    {
      v19 = a1;
      v20 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, google::protobuf::FieldDescriptor::TypeOnceInit, v21);
      a1 = v19;
      a2 = v20;
    }

    v4 = **a1;
  }

  v5 = *(*(v2 + 48) + 8);
  v8 = *(v5 + 24);
  v6 = v5 + 24;
  v7 = v8;
  v9 = *(v6 + 8);
  if (*(v6 + 23) >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v6 = v7;
    v10 = v9;
  }

  v11 = *(*(v4 + 32) + 8);
  v14 = *(v11 + 24);
  v12 = v11 + 24;
  v13 = v14;
  v15 = *(v12 + 23);
  v16 = *(v12 + 8);
  if ((v15 & 0x80u) != 0)
  {
    v12 = v13;
    v15 = v16;
  }

  v21[0] = "Enum type ";
  v21[1] = 11;
  v21[2] = v6;
  v21[3] = v10;
  v21[4] = " is not an open enum, but is used in ";
  v21[5] = 39;
  v21[6] = v12;
  v21[7] = v15;
  v21[8] = " which is a proto3 message type.";
  v21[9] = 33;
  result = absl::lts_20240722::strings_internal::CatPieces(v21, 5, a2);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::FieldDescriptor const*,google::protobuf::FieldDescriptorProto const&)::$_0,std::string>@<X0>(uint64_t **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(**a1 + 4), v21, a2);
  v6 = **a1;
  v7 = *(v6 + 8);
  v10 = *(v7 + 24);
  v8 = v7 + 24;
  v9 = v10;
  v11 = *(v8 + 8);
  if (*(v8 + 23) >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v8 = v9;
    v12 = v11;
  }

  v13 = *(*(v6 + 32) + 8);
  v16 = *(v13 + 24);
  v14 = v13 + 24;
  v15 = v16;
  v17 = *(v14 + 8);
  if (*(v14 + 23) >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v14 = v15;
    v18 = v17;
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v22[0] = v21;
  v22[1] = v5 - v21;
  v22[2] = v8;
  v22[3] = v12;
  v22[4] = v14;
  v22[5] = v18;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Cannot use number $0 for extension field $1, as it is reserved in the extension declarations for message $2.", 0x6CuLL, v22, 3uLL);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA5A74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::FieldDescriptor const*,google::protobuf::FieldDescriptorProto const&)::$_1,std::string>@<X0>(uint64_t **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v5 = **a1;
  v6 = *(v5 + 8);
  v9 = *(v6 + 24);
  v7 = v6 + 24;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v5 + 4), v22, a2);
  v14 = *(*(**a1 + 32) + 8);
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

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v23[0] = v11;
  v23[1] = v12;
  v23[2] = v22;
  v23[3] = v13 - v22;
  v23[4] = v15;
  v23[5] = v19;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Missing extension declaration for field $0 with number $1 in extendee message $2. An extension range must declare for all extension fields if its verification state is DECLARATION or there's any declaration in the range already. Otherwise, consider splitting up the range.", 0x110uLL, v23, 3uLL);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA5BA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::memory_internal::DecomposePairImpl<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::EmplaceDecomposable,int &&,std::tuple<std::string const&>>(uint64_t **a1@<X0>, _DWORD *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0;
  v5 = *a1;
  _X10 = (*a1)[2];
  __asm { PRFM            #4, [X10] }

  v12 = *a2;
  v13 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12));
  v14 = **a1;
  v15 = vdup_n_s8(v13 & 0x7F);
  v16 = ((v13 >> 7) ^ (_X10 >> 12)) & v14;
  v17 = *(_X10 + v16);
  v18 = vceq_s8(v17, v15);
  if (v18)
  {
LABEL_2:
    v19 = v5[3];
    while (1)
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v14;
      if (*(v19 + 32 * v20) == v12)
      {
        break;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    *a4 = _X10 + v20;
    *(a4 + 8) = v19 + 32 * v20;
    *(a4 + 16) = 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v4 += 8;
      v16 = (v4 + v16) & v14;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_2;
      }
    }

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(*a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12)), (v16 + (__clz(__rbit64(v21)) >> 3)) & v14, v4, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::GetPolicyFunctions(void)::value);
    v26 = v5[2] + inserted;
    v27 = (v5[3] + 32 * inserted);
    *a4 = v26;
    *(a4 + 8) = v27;
    *(a4 + 16) = 1;
    *v27 = *a2;
    v28 = (v27 + 2);
    if (*(a3 + 23) < 0)
    {
      v30 = *a3;
      v31 = *(a3 + 1);

      std::string::__init_copy_ctor_external(v28, v30, v31);
    }

    else
    {
      v29 = *a3;
      v28->__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&v28->__r_.__value_.__l.__data_ = v29;
    }
  }
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateOptions(google::protobuf::EnumDescriptor const*,google::protobuf::EnumDescriptorProto const&)::$_0,std::string>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = xmmword_23CE306D0;
  _X8 = **a1;
  if (*(_X8 + 4) < 1)
  {
    v7 = **(a1 + 8);
    v8 = *(v7 + 4);
  }

  else
  {
    v5 = 0;
    v6 = 4;
    do
    {
      LODWORD(v43[0]) = *(*(_X8 + 56) + v6);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<int>(&v39, v43, &v45);
      if (v47 == 1)
      {
        *v46 = SLODWORD(v43[0]);
      }

      ++v5;
      _X8 = **a1;
      v6 += 48;
    }

    while (v5 < *(_X8 + 4));
    _X8 = v40;
    v7 = **(a1 + 8);
    v8 = *(v7 + 4);
    if (v39 > 1)
    {
      while (1)
      {
        v30 = 0;
        v11 = v8 + 1;
        __asm { PRFM            #4, [X8] }

        v37 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8 + 1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8 + 1));
        v31 = (v40 >> 12) ^ (v37 >> 7);
        v38 = vdup_n_s8(v37 & 0x7F);
        while (1)
        {
          v27 = v31 & v39;
          v28 = *(v40 + v27);
          v29 = vceq_s8(v28, v38);
          if (v29)
          {
            break;
          }

LABEL_33:
          if (vceq_s8(v28, 0x8080808080808080))
          {
            goto LABEL_18;
          }

          v30 += 8;
          v31 = v30 + v27;
        }

        while (*(v41 + 8 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v39)) != v11)
        {
          v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v29)
          {
            goto LABEL_33;
          }
        }

        ++v8;
      }
    }
  }

  if (_X8 == v8 + 1)
  {
    v9 = _X8;
  }

  else
  {
    v9 = v8;
  }

  if (_X8 == v8 + 1)
  {
    v10 = _X8 + 1;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (*(&v39 + 1) < 2uLL)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v10;
  }

  if (*(&v39 + 1) >= 2uLL)
  {
    v8 = v9;
  }

LABEL_18:
  v12 = *(v7 + 8);
  v15 = *(v12 + 24);
  v13 = v12 + 24;
  v14 = v15;
  v16 = *(v13 + 8);
  if (*(v13 + 23) >= 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v13 = v14;
    v17 = v16;
  }

  v18 = *(*(a1 + 16) + 8);
  v21 = *(v18 + 8);
  v19 = v18 + 8;
  v20 = v21;
  v22 = *(v19 + 23);
  v23 = *(v19 + 8);
  if ((v22 & 0x80u) != 0)
  {
    v19 = v20;
    v22 = v23;
  }

  v45 = "";
  v46 = 1;
  v47 = v13;
  v48 = v17;
  v49 = " uses the same enum value as ";
  v50 = 31;
  v51 = v19;
  v52 = v22;
  v53 = ". If this is intended, set 'option allow_alias = true;' to the enum definition.";
  v54 = 80;
  absl::lts_20240722::strings_internal::CatPieces(&v45, 5, a2);
  if (v8 <= 2147483645)
  {
    v45 = " The next available enum value is ";
    v46 = 34;
    v25 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v11, v44, v24);
    v43[0] = v44;
    v43[1] = v25 - v44;
    v42[0] = ".";
    v42[1] = 1;
    absl::lts_20240722::StrAppend(a2, &v45, v43, v42);
  }

  if (v39 >= 2)
  {
    operator delete((v40 - (BYTE8(v39) & 1) - 8));
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_23CDA6064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
    if (a9 < 2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (a9 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a11 - (a10 & 1) - 8));
  _Unwind_Resume(exception_object);
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<int>@<X0>(uint64_t *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 8 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 8 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 8 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_0,std::string>@<X0>(uint64_t a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v6 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 40), v7, a2) - v7;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v8[0] = v7;
  v8[1] = v6;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Extension declaration number $0 is not in the extension range.", 0x3EuLL, v8, 1uLL);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA6368(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_1,std::string>@<X0>(uint64_t a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v6 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*a1 + 40), v7, a2) - v7;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v8[0] = v7;
  v8[1] = v6;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Extension declaration number $0 is declared multiple times.", 0x3BuLL, v8, 1uLL);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA642C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_2,std::string>@<X0>(uint64_t a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 40);
  v10[0] = "Extension declaration #";
  v10[1] = 23;
  v8[0] = v9;
  v8[1] = absl::lts_20240722::numbers_internal::FastIntToBuffer(v4, v9, a2) - v9;
  v7[0] = " should have both full_name and type set.";
  v7[1] = 45;
  result = absl::lts_20240722::StrCat(v10, v8, v7, a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_3,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) != 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v8[0] = v3;
  v8[1] = v4;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a2, "Extension field name $0 is declared multiple times.", 0x35uLL, v8, 1uLL);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA659C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_4,std::string>(__int128 *a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 1));
  }

  else
  {
    v2 = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 2);
    *&a2->__r_.__value_.__l.__data_ = v2;
  }
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionDeclaration(std::string const&,google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration> const&,google::protobuf::DescriptorProto_ExtensionRange const&,absl::lts_20240722::flat_hash_set<std::string_view,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>> &)::$_5,std::string>(__int128 *a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 1));
  }

  else
  {
    v2 = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 2);
    *&a2->__r_.__value_.__l.__data_ = v2;
  }
}

std::string *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateExtensionRangeOptions(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const&)::$_0,std::string>@<X0>(unint64_t **a1@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v6 = absl::lts_20240722::numbers_internal::FastIntToBuffer(**a1, v7, a2) - v7;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v8[0] = v7;
  v8[1] = v6;
  result = absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "Extension numbers cannot be greater than $0.", 0x2CuLL, v8, 1uLL);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDA66A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,google::protobuf::anonymous namespace::DescriptorsByNameHash<google::protobuf::Descriptor>,google::protobuf::anonymous namespace::DescriptorsByNameEq<google::protobuf::Descriptor>,std::allocator<google::protobuf::Descriptor const*>>::resize_impl(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = *a1;
  v9 = *a1 < 2 && a1[1] > 1;
  if (v9)
  {
    v10 = *(a1[2] + 8);
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = *(a1[2] + 8);
    }

    else
    {
      v12 = *v10;
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v12, v13, a4, a5);
    v15 = *a1;
    v14 = a1[1];
  }

  else
  {
    v14 = a1[1];
    v15 = *a1;
  }

  v17 = v15;
  v18 = v14 & 1;
  v19 = v7 < 2;
  v20 = v9;
  v16 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(&v16, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::anonymous namespace::DescriptorsByNameHash<google::protobuf::Descriptor>,google::protobuf::Descriptor const*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(*a2 + 8);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(*a2 + 8);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v7, v8, a4, a5);
  return (((v9 + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v8));
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v9[0] = "Expanded map entry type ";
  v9[1] = 24;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v8[0] = v2;
  v8[1] = v3;
  v7[0] = " conflicts with an existing nested message type.";
  v7[1] = 48;
  result = absl::lts_20240722::StrCat(v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_1,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *(**(*a1 + 8) + 8);
  v9[0] = "Expanded map entry type ";
  v9[1] = 24;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v8[0] = v2;
  v8[1] = v3;
  v7[0] = " conflicts with an existing field.";
  v7[1] = 34;
  result = absl::lts_20240722::StrCat(v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_2,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *(**(*a1 + 8) + 8);
  v9[0] = "Expanded map entry type ";
  v9[1] = 24;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v8[0] = v2;
  v8[1] = v3;
  v7[0] = " conflicts with an existing enum type.";
  v7[1] = 38;
  result = absl::lts_20240722::StrCat(v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_3,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *(**(*a1 + 8) + 8);
  v9[0] = "Expanded map entry type ";
  v9[1] = 24;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v8[0] = v2;
  v8[1] = v3;
  v7[0] = " conflicts with an existing oneof type.";
  v7[1] = 39;
  result = absl::lts_20240722::StrCat(v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateJSType(google::protobuf::FieldDescriptor const*,google::protobuf::FieldDescriptorProto const&)::$_0,std::string>@<X0>(google::protobuf *a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v9[0] = "Illegal jstype for int64, uint64, sint64, fixed64 or sfixed64 field: ";
  v9[1] = 69;
  v3 = *(*(google::protobuf::FieldOptions_JSType_descriptor(a1) + 56) + 48 * **a1 + 8);
  v4 = *(v3 + 23);
  v5 = v3[1];
  if (v4 < 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v8[0] = v3;
  v8[1] = v4;
  result = absl::lts_20240722::StrCat(v9, v8, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_2,std::string>(void **a1@<X0>, std::string *a2@<X8>)
{
  v21[14] = *MEMORY[0x277D85DE8];
  v3 = *a1[1];
  v4 = *(*a1 + 23);
  v6 = **a1;
  v5 = (*a1)[1];
  if (v4 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if (v4 >= 0)
  {
    v8 = *(*a1 + 23);
  }

  else
  {
    v8 = (*a1)[1];
  }

  v9 = v3 + 304;
  v10 = *(v3 + 327);
  v12 = *(v3 + 304);
  v11 = *(v3 + 312);
  if ((v10 & 0x80u) == 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if ((v10 & 0x80u) == 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = *(*a1 + 23);
    v6 = *a1;
    if (*(*a1 + 23))
    {
      goto LABEL_15;
    }

LABEL_27:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_15:
  v15 = v5 - 1;
  if ((v5 - 1) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v20 = v5 - 1;
  if (v5 != 1)
  {
    memmove(__p, v6 + 1, v15);
  }

  *(__p + v15) = 0;
  v21[0] = "Option ";
  v21[1] = 8;
  v21[2] = v7;
  v21[3] = v8;
  v21[4] = " is resolved to (";
  v21[5] = 19;
  v21[6] = v13;
  v21[7] = v14;
  v21[8] = "), which is not defined. The innermost scope is searched first in name resolution. Consider using a leading '.'(i.e., (.";
  v21[9] = 122;
  v16 = v20;
  v17 = __p;
  if ((v20 & 0x80u) != 0)
  {
    v17 = __p[0];
    v16 = __p[1];
  }

  v21[10] = v17;
  v21[11] = v16;
  v21[12] = ") to start from the outermost scope.";
  v21[13] = 37;
  absl::lts_20240722::strings_internal::CatPieces(v21, 7, a2);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_23CDA70AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_3,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v10[0] = "Option ";
  v10[1] = 8;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v9[0] = v2;
  v9[1] = v3;
  v8[0] = " unknown. Ensure that your proto";
  v8[1] = 33;
  v7[0] = " definition file imports the proto which defines the option.";
  v7[1] = 60;
  result = absl::lts_20240722::StrCat(v10, v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_4,std::string>@<X0>(void **a1@<X0>, std::string *a2@<X8>)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1[1] + 8);
  v4 = *(*a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v2 = **a1;
    v4 = (*a1)[1];
  }

  v5 = *(v3 + 23);
  v6 = v3[1];
  if (v5 < 0)
  {
    v3 = *v3;
    v5 = v6;
  }

  v9[0] = "Option field ";
  v9[1] = 14;
  v9[2] = v2;
  v9[3] = v4;
  v9[4] = " is not a field or extension of message ";
  v9[5] = 42;
  v9[6] = v3;
  v9[7] = v5;
  v9[8] = ".";
  v9[9] = 2;
  result = absl::lts_20240722::strings_internal::CatPieces(v9, 5, a2);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_5,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v9[0] = "Option ";
  v9[1] = 8;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v8[0] = v2;
  v8[1] = v3;
  v7[0] = " is an atomic type, not a message.";
  v7[1] = 35;
  result = absl::lts_20240722::StrCat(v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(google::protobuf::Message *,std::vector<int> const&,std::vector<int> const&,BOOL)::$_6,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v9[0] = "Option field ";
  v9[1] = 14;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v8[0] = v2;
  v8[1] = v3;
  v7[0] = " is a repeated message. Repeated message options must be initialized using an aggregate value.";
  v7[1] = 95;
  result = absl::lts_20240722::StrCat(v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,int>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,int>>>::try_emplace_impl<std::vector<int> const&>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, *(a2 + 8) - *a2, a3, a4);
  v15 = 0;
  v16 = *a2;
  v17 = *(a2 + 8) - *a2;
  v18 = (((v14 + (v17 >> 2)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + (v17 >> 2)));
  v19 = a1[2];
  v20 = *a1;
  v21 = vdup_n_s8(v18 & 0x7F);
  v22 = ((v18 >> 7) ^ (v19 >> 12)) & *a1;
  v23 = *(v19 + v22);
  v24 = vceq_s8(v23, v21);
  if (v24)
  {
LABEL_2:
    v25 = a1[3];
    v35 = v15;
    v36 = a5;
    v33 = v25;
    v34 = v20;
    while (1)
    {
      v26 = (v22 + (__clz(__rbit64(v24)) >> 3)) & v20;
      v27 = v25 + 32 * v26;
      if (*(v27 + 8) - *v27 == v17)
      {
        result = memcmp(*v27, v16, v17);
        if (!result)
        {
          break;
        }
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v15 = v35;
      a5 = v36;
      v25 = v33;
      v20 = v34;
      if (!v24)
      {
        goto LABEL_6;
      }
    }

    *v36 = v19 + v26;
    *(v36 + 8) = v27;
    *(v36 + 16) = 0;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v29 = vceq_s8(v23, 0x8080808080808080);
      if (v29)
      {
        break;
      }

      v15 += 8;
      v22 = (v15 + v22) & v20;
      v23 = *(v19 + v22);
      v24 = vceq_s8(v23, v21);
      if (v24)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v18, (v22 + (__clz(__rbit64(v29)) >> 3)) & v20, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,int>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,int>>>::GetPolicyFunctions(void)::value);
    v30 = a1[2] + result;
    v31 = a1[3] + 32 * result;
    *a5 = v30;
    *(a5 + 8) = v31;
    *(a5 + 16) = 1;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 0;
    v32 = *(a2 + 8) - *a2;
    if (v32)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    *(v31 + 24) = 0;
  }

  return result;
}

void sub_23CDA7578(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,int>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,int>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,int>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,int>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *a3;
  *a2 = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  *(a2 + 24) = a3[1].n128_u32[2];
  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::vector<int>>>>::try_emplace_impl<std::vector<int> const&>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, *(a2 + 8) - *a2, a3, a4);
  v15 = 0;
  v16 = *a2;
  v17 = *(a2 + 8) - *a2;
  v18 = (((v14 + (v17 >> 2)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + (v17 >> 2)));
  v19 = a1[2];
  v20 = *a1;
  v21 = vdup_n_s8(v18 & 0x7F);
  v22 = ((v18 >> 7) ^ (v19 >> 12)) & *a1;
  v23 = *(v19 + v22);
  v24 = vceq_s8(v23, v21);
  if (v24)
  {
LABEL_2:
    v25 = a1[3];
    v35 = v15;
    v36 = a5;
    v33 = v25;
    v34 = v20;
    while (1)
    {
      v26 = (v22 + (__clz(__rbit64(v24)) >> 3)) & v20;
      v27 = v25 + 48 * v26;
      if (*(v27 + 8) - *v27 == v17)
      {
        result = memcmp(*v27, v16, v17);
        if (!result)
        {
          break;
        }
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v15 = v35;
      a5 = v36;
      v25 = v33;
      v20 = v34;
      if (!v24)
      {
        goto LABEL_6;
      }
    }

    *v36 = v19 + v26;
    *(v36 + 8) = v27;
    *(v36 + 16) = 0;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v29 = vceq_s8(v23, 0x8080808080808080);
      if (v29)
      {
        break;
      }

      v15 += 8;
      v22 = (v15 + v22) & v20;
      v23 = *(v19 + v22);
      v24 = vceq_s8(v23, v21);
      if (v24)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v18, (v22 + (__clz(__rbit64(v29)) >> 3)) & v20, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::vector<int>>>>::GetPolicyFunctions(void)::value);
    v30 = a1[2] + result;
    v31 = (a1[3] + 48 * result);
    *a5 = v30;
    *(a5 + 8) = v31;
    *(a5 + 16) = 1;
    v31[1] = 0;
    v31[2] = 0;
    *v31 = 0;
    v32 = *(a2 + 8) - *a2;
    if (v32)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
  }

  return result;
}

void sub_23CDA7A04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::vector<int>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,48ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::vector<int>>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::vector<int>,std::vector<int>> *)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, *(a2 + 8) - *a2, a4, a5) + ((*(a2 + 8) - *a2) >> 2);
  v8 = ((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v7);
  v9 = *(a1 + 8);
  v10 = v9[2];
  v11 = *v9;
  v12 = ((v8 >> 7) ^ (v10 >> 12)) & *v9;
  if (*(v10 + v12) >= -1)
  {
    v13 = 0;
    for (i = *(v10 + v12) & ~(*(v10 + v12) << 7) & 0x8080808080808080; !i; i = *(v10 + v12) & ~(*(v10 + v12) << 7) & 0x8080808080808080)
    {
      v13 += 8;
      v12 = (v13 + v12) & v11;
    }

    v12 = (v12 + (__clz(__rbit64(i)) >> 3)) & v11;
  }

  else
  {
    v13 = 0;
  }

  v15 = v8 & 0x7F;
  *(v10 + v12) = v15;
  *(v10 + ((v12 - 7) & v11) + (v11 & 7)) = v15;
  v16 = (**(a1 + 16) + 48 * v12);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  *v16 = *a2;
  v16[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v16[3] = 0;
  v16[4] = 0;
  v16[5] = 0;
  *(v16 + 3) = *(a2 + 24);
  v16[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v17 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v17;
    operator delete(v17);
  }

  return v13;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<int>,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::vector<int>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 3) = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v3 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v3;
    operator delete(v3);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo_Location>(google::protobuf::Arena *a1, const google::protobuf::SourceCodeInfo_Location *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    v5 = a1;
    v6 = a2;
  }

  else
  {
    v4 = operator new(0x70uLL);
    v5 = 0;
    v6 = a2;
  }

  return google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(v4, v5, v6);
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(std::__wrap_iter<google::protobuf::FieldDescriptor const* const*>,std::__wrap_iter<google::protobuf::FieldDescriptor const* const*>,google::protobuf::FieldDescriptor const*,std::string const&,google::protobuf::UnknownFieldSet const&)::$_0,std::string>@<X0>(uint64_t ***a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v9[0] = "Option ";
  v9[1] = 8;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v8[0] = v2;
  v8[1] = v3;
  v7[0] = " was already set.";
  v7[1] = 18;
  result = absl::lts_20240722::StrCat(v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_0,std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if (v3 < 0)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2 + 24;
  }

  v8[0] = "int32";
  v8[1] = 5;
  v7[0] = v4;
  v7[1] = v3;
  v9[0] = 0x80000000;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v9[2] = 0x7FFFFFFFLL;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v9[4] = v8;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v9[6] = v7;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Value out of range, %d to %d, for %s option %s.", 49, v9, 4uLL, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_1,std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if (v3 < 0)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2 + 24;
  }

  v8[0] = "int32";
  v8[1] = 5;
  v7[0] = v4;
  v7[1] = v3;
  v9[0] = 0x80000000;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v9[2] = 0x7FFFFFFFLL;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v9[4] = v8;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v9[6] = v7;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Value out of range, %d to %d, for %s option %s.", 49, v9, 4uLL, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_2,std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if (v3 < 0)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2 + 24;
  }

  v8[0] = "int32";
  v8[1] = 5;
  v7[0] = v4;
  v7[1] = v3;
  v9[0] = 0x80000000;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v9[2] = 0x7FFFFFFFLL;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v9[4] = v8;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v9[6] = v7;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Value must be integer, from %d to %d, for %s option %s.", 57, v9, 4uLL, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_3,std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if (v3 < 0)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2 + 24;
  }

  v8[0] = "int64";
  v8[1] = 5;
  v7[0] = v4;
  v7[1] = v3;
  v9[0] = 0x8000000000000000;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v9[2] = 0x7FFFFFFFFFFFFFFFLL;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v9[4] = v8;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v9[6] = v7;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Value out of range, %d to %d, for %s option %s.", 49, v9, 4uLL, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_4,std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if (v3 < 0)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2 + 24;
  }

  v8[0] = "int64";
  v8[1] = 5;
  v7[0] = v4;
  v7[1] = v3;
  v9[0] = 0x8000000000000000;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v9[2] = 0x7FFFFFFFFFFFFFFFLL;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v9[4] = v8;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v9[6] = v7;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Value must be integer, from %d to %d, for %s option %s.", 57, v9, 4uLL, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_5,std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if (v3 < 0)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2 + 24;
  }

  v8[0] = "uint32";
  v8[1] = 6;
  v7[0] = v4;
  v7[1] = v3;
  v9[0] = 0;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned int>;
  v9[2] = 0xFFFFFFFFLL;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned int>;
  v9[4] = v8;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v9[6] = v7;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Value out of range, %d to %d, for %s option %s.", 49, v9, 4uLL, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_6,std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if (v3 < 0)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2 + 24;
  }

  v8[0] = "uint32";
  v8[1] = 6;
  v7[0] = v4;
  v7[1] = v3;
  v9[0] = 0;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned int>;
  v9[2] = 0xFFFFFFFFLL;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned int>;
  v9[4] = v8;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v9[6] = v7;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Value must be integer, from %d to %d, for %s option %s.", 57, v9, 4uLL, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_7,std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if (v3 < 0)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2 + 24;
  }

  v8[0] = "uint64";
  v8[1] = 6;
  v7[0] = v4;
  v7[1] = v3;
  v9[0] = 0;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
  v9[2] = -1;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
  v9[4] = v8;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v9[6] = v7;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  result = absl::lts_20240722::str_format_internal::FormatPack("Value must be integer, from %d to %d, for %s option %s.", 57, v9, 4uLL, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_8,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v12[0] = "Value must be number for float option ";
  v12[1] = 39;
  v5 = *(v2 + 24);
  v3 = v2 + 24;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  v11[0] = v3;
  v11[1] = v7;
  v10[0] = ".";
  v10[1] = 2;
  result = absl::lts_20240722::StrCat(v12, v11, v10, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_9,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v12[0] = "Value must be number for double option ";
  v12[1] = 40;
  v5 = *(v2 + 24);
  v3 = v2 + 24;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  v11[0] = v3;
  v11[1] = v7;
  v10[0] = ".";
  v10[1] = 2;
  result = absl::lts_20240722::StrCat(v12, v11, v10, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_10,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v12[0] = "Value must be identifier for BOOLean option ";
  v12[1] = 45;
  v5 = *(v2 + 24);
  v3 = v2 + 24;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  v11[0] = v3;
  v11[1] = v7;
  v10[0] = ".";
  v10[1] = 2;
  result = absl::lts_20240722::StrCat(v12, v11, v10, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_11,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v12[0] = "Value must be true or false for BOOLean option ";
  v12[1] = 52;
  v5 = *(v2 + 24);
  v3 = v2 + 24;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  v11[0] = v3;
  v11[1] = v7;
  v10[0] = ".";
  v10[1] = 2;
  result = absl::lts_20240722::StrCat(v12, v11, v10, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_12,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v12[0] = "Value must be identifier for enum-valued option ";
  v12[1] = 49;
  v5 = *(v2 + 24);
  v3 = v2 + 24;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  v11[0] = v3;
  v11[1] = v7;
  v10[0] = ".";
  v10[1] = 2;
  result = absl::lts_20240722::StrCat(v12, v11, v10, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_13,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v18[14] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(**a1 + 8);
  v6 = *(v3 + 24);
  v4 = v3 + 24;
  v5 = v6;
  v7 = *(v4 + 8);
  if (*(v4 + 23) >= 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v4 = v5;
    v8 = v7;
  }

  v9 = *(v2 + 23);
  v10 = v2[1];
  if (v9 < 0)
  {
    v2 = *v2;
    v9 = v10;
  }

  v11 = *(**(a1 + 16) + 8);
  v18[0] = "Enum type ";
  v18[1] = 11;
  v18[2] = v4;
  v18[3] = v8;
  v18[4] = " has no value named ";
  v18[5] = 22;
  v18[6] = v2;
  v18[7] = v9;
  v18[8] = " for option ";
  v18[9] = 14;
  v14 = *(v11 + 24);
  v13 = v11 + 24;
  v12 = v14;
  v15 = *(v13 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v13 + 8);
  }

  else
  {
    v12 = v13;
  }

  v18[10] = v12;
  v18[11] = v15;
  v18[12] = ". This appears to be a value from a sibling type.";
  v18[13] = 50;
  result = absl::lts_20240722::strings_internal::CatPieces(v18, 7, a2);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_14,std::string>@<X0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v23[14] = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = *(v2 + 24);
  v4 = v2;
  if (v3)
  {
    v23[0] = **a1;
    if (atomic_load_explicit(v3, memory_order_acquire) != 221)
    {
      v21 = a1;
      v22 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, google::protobuf::FieldDescriptor::TypeOnceInit, v23);
      a1 = v21;
      a2 = v22;
    }

    v4 = **a1;
  }

  v5 = *(*(v2 + 48) + 8);
  v8 = *(v5 + 24);
  v6 = v5 + 24;
  v7 = v8;
  v9 = *(v6 + 8);
  if (*(v6 + 23) >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v6 = v7;
    v10 = v9;
  }

  v11 = a1[1];
  v12 = *(v11 + 23);
  v13 = v11[1];
  if ((v12 & 0x80u) != 0)
  {
    v11 = *v11;
    v12 = v13;
  }

  v14 = *(v4 + 8);
  v23[0] = "Enum type ";
  v23[1] = 11;
  v23[2] = v6;
  v23[3] = v10;
  v23[4] = " has no value named ";
  v23[5] = 22;
  v23[6] = v11;
  v23[7] = v12;
  v23[8] = " for option ";
  v23[9] = 14;
  v17 = *(v14 + 24);
  v16 = v14 + 24;
  v15 = v17;
  if (*(v16 + 23) < 0)
  {
    v18 = *(v16 + 8);
  }

  else
  {
    v15 = v16;
    v18 = *(v16 + 23);
  }

  v23[10] = v15;
  v23[11] = v18;
  v23[12] = ".";
  v23[13] = 2;
  result = absl::lts_20240722::strings_internal::CatPieces(v23, 7, a2);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_15,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v12[0] = "Value must be quoted string for string option ";
  v12[1] = 47;
  v5 = *(v2 + 24);
  v3 = v2 + 24;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  v11[0] = v3;
  v11[1] = v7;
  v10[0] = ".";
  v10[1] = 2;
  result = absl::lts_20240722::StrCat(v12, v11, v10, a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

char *absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9[14] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v3 = *(v2 + 47);
  if ((v3 & 0x80u) == 0)
  {
    v4 = v2 + 3;
  }

  else
  {
    v4 = v2[3];
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = v2[4];
  }

  v5 = *(v2 + 23);
  v6 = v2[1];
  if ((v5 & 0x80u) != 0)
  {
    v2 = *v2;
    v5 = v6;
  }

  v9[0] = "Option ";
  v9[1] = 8;
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = " is a message. To set the entire message, use syntax like ";
  v9[5] = 60;
  v9[6] = v2;
  v9[7] = v5;
  v9[8] = " = { <proto text format> }. To set fields within it, use syntax like ";
  v9[9] = 71;
  v9[10] = v2;
  v9[11] = v5;
  v9[12] = ".foo = value.";
  v9[13] = 14;
  result = absl::lts_20240722::strings_internal::CatPieces(v9, 7, a2);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(google::protobuf::FieldDescriptor const*,google::protobuf::UnknownFieldSet *)::$_1,std::string>@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(**a1 + 8);
  v15[0] = "Error while parsing option value for ";
  v15[1] = 38;
  v4 = *(v3 + 23);
  v5 = v3[1];
  if (v4 < 0)
  {
    v3 = *v3;
    v4 = v5;
  }

  v14[0] = v3;
  v14[1] = v4;
  v13[0] = ": ";
  v13[1] = 3;
  v8 = *(v2 + 8);
  v7 = v2 + 8;
  v6 = v8;
  if (*(v7 + 23) < 0)
  {
    v9 = *(v7 + 8);
  }

  else
  {
    v6 = v7;
    v9 = *(v7 + 23);
  }

  v12[0] = v6;
  v12[1] = v9;
  result = absl::lts_20240722::StrCat(v15, v14, v13, v12, a2);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

const void **absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::LogUnusedDependency(google::protobuf::FileDescriptorProto const&,google::protobuf::FileDescriptor const*)::$_0,std::string>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 8);
  v9[0] = "Import ";
  v9[1] = 7;
  v3 = *(v2 + 23);
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v8[0] = v2;
  v8[1] = v3;
  v7[0] = " is unused.";
  v7[1] = 11;
  result = absl::lts_20240722::StrCat(v9, v8, v7, a2);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(atomic_uint *a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v7 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v7, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v7 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (&)(google::protobuf::FieldDescriptor const*) &&,google::protobuf::FieldDescriptor const* &&)::trans))
  {
    a3(*a4);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(atomic_uint *a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v7 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v7, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v7 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (&)(google::protobuf::FileDescriptor const*) &&,google::protobuf::FileDescriptor const* &&)::trans))
  {
    a3(*a4);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

void absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::LazyDescriptor::Once(google::protobuf::ServiceDescriptor const*)::$_0>(atomic_uint *a1, void *a2)
{
  v4 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v4, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v4 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::LazyDescriptor::Once(google::protobuf::ServiceDescriptor const*)::$_0>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,google::protobuf::internal::LazyDescriptor::Once(google::protobuf::ServiceDescriptor const*)::$_0 &&)::trans))
  {
    v5 = *(**a2 + 16);
    if ((*(v5 + 2) & 1) == 0)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v13, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 9534);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v13);
    }

    v6 = a2[1];
    v7 = v6[1];
    v8 = *(v5 + 24);
    v9 = strlen((v7 + 4));
    v11 = google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(v8, (v7 + 4), v9, 0, v10);
    if (*v11 == 1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    *v6 = v12;
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(a1, a2, 390);
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v2, a2, 396);
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(a1, a2, 5305);
}

void OUTLINED_FUNCTION_7_3()
{

  operator new();
}

__n128 OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, unint64_t a10, uint64_t a11, __n128 *a12)
{
  result = a9;
  *a12 = a9;
  a12[1].n128_u64[0] = a10;
  a12[1].n128_u64[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(a1, a2, 369);
}

uint64_t OUTLINED_FUNCTION_10_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = a2 + 16;
  v3 = *(v2 + 8);
  return result;
}

unint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  a11 = a1;

  return absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<void const*,std::string_view>,google::protobuf::FieldDescriptor const*>,absl::lts_20240722::hash_internal::Hash<std::pair<void const*,std::string_view>>,std::equal_to<std::pair<void const*,std::string_view>>,std::allocator<std::pair<std::pair<void const*,std::string_view> const,google::protobuf::FieldDescriptor const*>>>::find_or_prepare_insert_non_soo<std::pair<void const*,std::string_view>>(v12, &a9, a4, a5, &a12);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(a1, a2, 701);
}

void google::protobuf::FileDescriptorSet::~FileDescriptorSet(google::protobuf::FileDescriptorSet *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }

  JUMPOUT(0x23EED9460);
}

int *google::protobuf::FileDescriptorSet::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  if (*(a2 + 6))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<google::protobuf::FileDescriptorProto>);
  }

  v5 = *(a2 + 1);
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorSet::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 6) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 4);
  }

  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  if (v3)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v2);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorSet::_InternalSerialize(google::protobuf::FileDescriptorSet *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 6);
  if (v9)
  {
    v10 = 0;
    v11 = (this + 16);
    do
    {
      if (*v11)
      {
        v12 = (*v11 + 8 * v10 + 7);
      }

      else
      {
        v12 = (this + 16);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *v12, *(*v12 + 20), a2, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

char *google::protobuf::FileDescriptorSet::ByteSizeLong(google::protobuf::FileDescriptorSet *this)
{
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 16);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::FileDescriptorProto::ByteSizeLong(v6);
      v3 = (v3 + v7 + ((352 - 9 * __clz(v7)) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 10);
}

BOOL google::protobuf::FileDescriptorSet::IsInitialized(google::protobuf::FileDescriptorSet *this)
{
  v1 = (this + 16);
  v2 = *(this + 6);
  v3 = 8 * v2;
  v4 = v2 + 1;
  do
  {
    if (--v4 < 1)
    {
      break;
    }

    v5 = v3 - 8;
    v6 = (*v1 + v3 - 1);
    if ((*v1 & 1) == 0)
    {
      v6 = v1;
    }

    IsInitialized = google::protobuf::FileDescriptorProto::IsInitialized(*v6);
    v3 = v5;
  }

  while ((IsInitialized & 1) != 0);
  return v4 < 1;
}

double google::protobuf::FileDescriptorProto::FileDescriptorProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F461A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  result = 0.0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 184) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 192) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return result;
}

google::protobuf::FileDescriptorProto *google::protobuf::FileDescriptorProto::FileDescriptorProto(google::protobuf::FileDescriptorProto *this, google::protobuf::Arena *a2, const google::protobuf::FileDescriptorProto *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F461A0;
  v7 = *(a3 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 4) = *(a3 + 4);
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
  *(this + 5) = a2;
  if (*(a3 + 8))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 24, a3 + 24);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto>);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = a2;
  if (*(a3 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 18, (a3 + 72), google::protobuf::Arena::CopyConstruct<google::protobuf::EnumDescriptorProto>);
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = a2;
  if (*(a3 + 26))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 24, (a3 + 96), google::protobuf::Arena::CopyConstruct<google::protobuf::ServiceDescriptorProto>);
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = a2;
  if (*(a3 + 32))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 30, (a3 + 120), google::protobuf::Arena::CopyConstruct<google::protobuf::FieldDescriptorProto>);
  }

  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 19) = a2;
  v8 = *(a3 + 36);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 144, 0, *(a3 + 36));
    *(this + 36) = v8;
    if (v8 >= 1)
    {
      v9 = *(this + 19);
      v10 = *(a3 + 19);
      if (v8 < 8)
      {
        goto LABEL_20;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_20;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_20:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 21) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 160, 0, *(a3 + 40));
    *(this + 40) = v21;
    if (v21 >= 1)
    {
      v22 = *(this + 21);
      v23 = *(a3 + 21);
      if (v21 < 8)
      {
        goto LABEL_29;
      }

      if ((v22 - v23) < 0x20)
      {
        goto LABEL_29;
      }

      v24 = v21;
      v25 = v21 & 0x7FFFFFF8;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFF8);
      v26 = &v22[v25];
      v27 = &v23[v25];
      v28 = (v23 + 4);
      v29 = v22 + 4;
      v30 = v25;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 8;
      }

      while (v30);
      v22 = v26;
      v23 = v27;
      if (v25 != v24)
      {
LABEL_29:
        v32 = v21 + 1;
        do
        {
          v33 = *v23++;
          *v22++ = v33;
          --v32;
        }

        while (v32 > 1);
      }
    }
  }

  v34 = *(a3 + 22);
  if ((v34 & 3) != 0)
  {
    v34 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 176), a2);
  }

  *(this + 22) = v34;
  v35 = *(a3 + 23);
  if ((v35 & 3) != 0)
  {
    v35 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 184), a2);
  }

  *(this + 23) = v35;
  v36 = *(a3 + 24);
  if ((v36 & 3) != 0)
  {
    v36 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 192), a2);
  }

  *(this + 24) = v36;
  v37 = *(this + 4);
  if ((v37 & 8) != 0)
  {
    *(this + 25) = google::protobuf::Arena::CopyConstruct<google::protobuf::FileOptions>(a2, *(a3 + 25));
    if ((v37 & 0x10) != 0)
    {
      goto LABEL_39;
    }

LABEL_41:
    v38 = 0;
    goto LABEL_42;
  }

  *(this + 25) = 0;
  if ((v37 & 0x10) == 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  v38 = google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo>(a2, *(a3 + 26));
LABEL_42:
  *(this + 26) = v38;
  *(this + 54) = *(a3 + 54);
  return this;
}

void sub_23CDA9A14(_Unwind_Exception *a1)
{
  if (*(v1 + 148) >= 1)
  {
    v7 = *(v1 + 152);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  google::protobuf::RepeatedPtrField<google::protobuf::FieldDescriptorProto>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<google::protobuf::ServiceDescriptorProto>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<google::protobuf::EnumDescriptorProto>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<google::protobuf::DescriptorProto>::~RepeatedPtrField(v2);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField((v1 + 24));
  _Unwind_Resume(a1);
}

void google::protobuf::FileDescriptorProto::SharedDtor(google::protobuf::FileDescriptorProto *this)
{
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 22);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 23);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 24);
  v2 = *(this + 25);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2 + 1);
    }

    google::protobuf::FileOptions::SharedDtor(v2);
    MEMORY[0x23EED9460](v2, 0x10A1C40312A1AA6);
  }

  v3 = *(this + 26);
  if (v3)
  {
    if (*(v3 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v3 + 8));
    }

    if (*(v3 + 16))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((v3 + 16));
    }

    MEMORY[0x23EED9460](v3, 0x10A1C405AF40B0ELL);
  }

  google::protobuf::FileDescriptorProto::Impl_::~Impl_((this + 16));
}

void google::protobuf::FileDescriptorProto::~FileDescriptorProto(google::protobuf::FileDescriptorProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::FileDescriptorProto::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::FileDescriptorProto::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::FileDescriptorProto::MergeImpl(google::protobuf::FileDescriptorProto *this, google::protobuf::MessageLite *a2, unint64_t a3, __n128 a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 8))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 24, a2 + 24);
  }

LABEL_4:
  if (*(a2 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto>);
  }

  if (*(a2 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 18, (a2 + 72), google::protobuf::Arena::CopyConstruct<google::protobuf::EnumDescriptorProto>);
  }

  if (*(a2 + 26))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 24, (a2 + 96), google::protobuf::Arena::CopyConstruct<google::protobuf::ServiceDescriptorProto>);
  }

  if (*(a2 + 32))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 30, (a2 + 120), google::protobuf::Arena::CopyConstruct<google::protobuf::FieldDescriptorProto>);
  }

  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = *(this + 36);
    a3 = (v9 + v8);
    if (*(this + 37) < a3)
    {
      google::protobuf::RepeatedField<int>::Grow(this + 144, v9, a3);
      LODWORD(v9) = *(this + 36);
      a3 = (v9 + v8);
      v10 = *(this + 19);
      *(this + 36) = a3;
      if (v8 < 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v10 = *(this + 19);
      *(this + 36) = a3;
      if (v8 < 1)
      {
        goto LABEL_22;
      }
    }

    v11 = *(a2 + 19);
    v12 = (v10 + 4 * v9);
    if (v8 < 8)
    {
      goto LABEL_20;
    }

    v13 = (4 * v9 + v10);
    if ((v13 - v11) < 0x20)
    {
      goto LABEL_20;
    }

    v14 = v8;
    v15 = v8 & 0x7FFFFFF8;
    LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
    v12 += v15;
    v16 = (v11 + 4 * v15);
    v17 = v11 + 1;
    v18 = v13 + 1;
    v19 = v15;
    do
    {
      a4 = v17[-1];
      v20 = *v17;
      v18[-1] = a4;
      *v18 = v20;
      v17 += 2;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    v11 = v16;
    if (v15 != v14)
    {
LABEL_20:
      v21 = v8 + 1;
      do
      {
        v22 = v11->n128_u32[0];
        v11 = (v11 + 4);
        *v12++ = v22;
        --v21;
      }

      while (v21 > 1);
    }
  }

LABEL_22:
  v23 = *(a2 + 40);
  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = *(this + 40);
  a3 = (v24 + v23);
  if (*(this + 41) < a3)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 160, v24, a3);
    LODWORD(v24) = *(this + 40);
    a3 = (v24 + v23);
    v25 = *(this + 21);
    *(this + 40) = a3;
    if (v23 < 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v25 = *(this + 21);
    *(this + 40) = a3;
    if (v23 < 1)
    {
      goto LABEL_32;
    }
  }

  v26 = *(a2 + 21);
  v27 = (v25 + 4 * v24);
  if (v23 < 8)
  {
    goto LABEL_30;
  }

  v28 = (4 * v24 + v25);
  if ((v28 - v26) < 0x20)
  {
    goto LABEL_30;
  }

  v29 = v23;
  v30 = v23 & 0x7FFFFFF8;
  LODWORD(v23) = v23 - (v23 & 0x7FFFFFF8);
  v27 += v30;
  v31 = (v26 + 4 * v30);
  v32 = v26 + 1;
  v33 = v28 + 1;
  v34 = v30;
  do
  {
    a4 = v32[-1];
    v35 = *v32;
    v33[-1] = a4;
    *v33 = v35;
    v32 += 2;
    v33 += 2;
    v34 -= 8;
  }

  while (v34);
  v26 = v31;
  if (v30 != v29)
  {
LABEL_30:
    v36 = v23 + 1;
    do
    {
      v37 = v26->n128_u32[0];
      v26 = (v26 + 4);
      *v27++ = v37;
      --v36;
    }

    while (v36 > 1);
  }

LABEL_32:
  v38 = *(a2 + 4);
  if ((v38 & 0x3F) == 0)
  {
    goto LABEL_56;
  }

  if (v38)
  {
    v39 = *(a2 + 22);
    *(this + 4) |= 1u;
    v40 = *(this + 1);
    if (v40)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 22, (v39 & 0xFFFFFFFFFFFFFFFCLL), *(v40 & 0xFFFFFFFFFFFFFFFELL));
      if ((v38 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 22, (v39 & 0xFFFFFFFFFFFFFFFCLL), v40);
      if ((v38 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_35:
    if ((v38 & 4) == 0)
    {
      goto LABEL_36;
    }

LABEL_43:
    v43 = *(a2 + 24);
    *(this + 4) |= 4u;
    v44 = *(this + 1);
    if (v44)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 24, (v43 & 0xFFFFFFFFFFFFFFFCLL), *(v44 & 0xFFFFFFFFFFFFFFFELL));
      if ((v38 & 8) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 24, (v43 & 0xFFFFFFFFFFFFFFFCLL), v44);
      if ((v38 & 8) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_37:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if ((v38 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_41:
  v41 = *(a2 + 23);
  *(this + 4) |= 2u;
  v42 = *(this + 1);
  if (v42)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 23, (v41 & 0xFFFFFFFFFFFFFFFCLL), *(v42 & 0xFFFFFFFFFFFFFFFELL));
    if ((v38 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 23, (v41 & 0xFFFFFFFFFFFFFFFCLL), v42);
    if ((v38 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_36:
  if ((v38 & 8) == 0)
  {
    goto LABEL_37;
  }

LABEL_45:
  v45 = *(this + 25);
  v46 = *(a2 + 25);
  if (v45)
  {
    google::protobuf::FileOptions::MergeImpl(v45, v46, a3, a4.n128_f64[0]);
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *(this + 25) = google::protobuf::Arena::CopyConstruct<google::protobuf::FileOptions>(v7, v46);
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_54;
    }
  }

LABEL_49:
  v47 = *(this + 26);
  v48 = *(a2 + 26);
  if (v47)
  {
    if (*(v48 + 24))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v47 + 16), (v48 + 16), google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo_Location>);
    }

    v49 = *(v48 + 8);
    if (v49)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v47 + 8), ((v49 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

LABEL_54:
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  *(this + 26) = google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo>(v7, *(a2 + 26));
  if ((v38 & 0x20) != 0)
  {
LABEL_55:
    *(this + 54) = *(a2 + 54);
  }

LABEL_56:
  *(this + 4) |= v38;
  v50 = *(a2 + 1);
  if (v50)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v50 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(this + 24);
  }

  if (*(v1 + 56) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 48));
  }

  if (*(v1 + 80) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 72));
  }

  if (*(v1 + 104) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 96));
  }

  if (*(v1 + 128) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 120));
  }

  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  v2 = *(v1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_26:
    v6 = *(v1 + 184) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v5 = *(v1 + 176) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_14:
  if ((v2 & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_30:
  v7 = *(v1 + 192) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_34;
    }

LABEL_16:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *v7 = 0;
  *(v7 + 23) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  this = google::protobuf::FileOptions::Clear(*(v1 + 200));
  if ((v2 & 0x10) != 0)
  {
LABEL_17:
    this = google::protobuf::SourceCodeInfo::Clear(*(v1 + 208));
  }

LABEL_18:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 208) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}
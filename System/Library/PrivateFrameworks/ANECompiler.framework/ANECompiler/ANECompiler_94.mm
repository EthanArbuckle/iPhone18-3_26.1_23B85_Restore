void sub_23CDC827C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::anonymous namespace::ValidateMergedFeatures(google::protobuf::_anonymous_namespace_ *this, const google::protobuf::FeatureSet *a2)
{
  if (!google::protobuf::FeatureSet_FieldPresence_IsValid(*(a2 + 12)) || *(a2 + 12) == 0)
  {
    v6 = this;

    goto LABEL_8;
  }

  if (!google::protobuf::FeatureSet_EnumType_IsValid(*(a2 + 13)) || *(a2 + 13) == 0)
  {
    v6 = this;

    goto LABEL_8;
  }

  IsValid = google::protobuf::FeatureSet_EnumType_IsValid(*(a2 + 14));
  if (!IsValid || !*(a2 + 14))
  {
    v6 = this;

    goto LABEL_8;
  }

  if (!google::protobuf::FeatureSet_Utf8Validation_IsValid(*(a2 + 15)) || !*(a2 + 15))
  {
    v6 = this;

    goto LABEL_8;
  }

  if (!google::protobuf::FeatureSet_EnumType_IsValid(*(a2 + 16)) || !*(a2 + 16))
  {
    v6 = this;

    goto LABEL_8;
  }

  if (!google::protobuf::FeatureSet_EnumType_IsValid(*(a2 + 17)) || !*(a2 + 17))
  {
    v6 = this;

LABEL_8:
    return;
  }

  *this = 1;
}

absl::lts_20240722::status_internal::StatusRep **absl::lts_20240722::StatusOr<google::protobuf::FeatureResolver>::StatusOr<absl::lts_20240722::Status const,0>(absl::lts_20240722::status_internal::StatusRep **a1, atomic_uint **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 1) == 0)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
    v3 = *a1;
  }

  if (v3 == 1)
  {
    absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a1);
  }

  return a1;
}

void google::protobuf::FeatureResolver::MergeFeatures(google::protobuf::FeatureResolver *this@<X0>, const google::protobuf::FeatureSet *a2@<X1>, const google::protobuf::FeatureSet *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  google::protobuf::FeatureSet::FeatureSet(v17, 0, this, a5);
  google::protobuf::FeatureSet::MergeImpl(v17, a2, v8, v9);
  google::protobuf::FeatureSet::MergeImpl(v17, a3, v10, v11);
  if (v16 == 1)
  {
    google::protobuf::FeatureSet::FeatureSet(a4 + 8, 0);
    if (v12 == v17)
    {
LABEL_11:
      *a4 = 1;
      goto LABEL_12;
    }

    v13 = *(a4 + 16);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      v14 = v18;
      if ((v18 & 1) == 0)
      {
LABEL_5:
        if (v13 != v14)
        {
LABEL_6:
          google::protobuf::FeatureSet::CopyFrom(v12, v17);
          goto LABEL_11;
        }

LABEL_10:
        google::protobuf::FeatureSet::InternalSwap(v12, v17);
        goto LABEL_11;
      }
    }

    else
    {
      v14 = v18;
      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if (v13 != *(v14 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  absl::lts_20240722::StatusOr<google::protobuf::FeatureSet>::StatusOr<absl::lts_20240722::Status const,0>(a4, &v16);
  absl::lts_20240722::Status::~Status(&v16, v15);
LABEL_12:
  google::protobuf::FeatureSet::~FeatureSet(v17);
}

void sub_23CDC8774(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  absl::lts_20240722::Status::~Status(&a9, a2);
  google::protobuf::FeatureSet::~FeatureSet(&a10);
  _Unwind_Resume(a1);
}

void sub_23CDC8798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void sub_23CDC87AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

absl::lts_20240722::status_internal::StatusRep **absl::lts_20240722::StatusOr<google::protobuf::FeatureSet>::StatusOr<absl::lts_20240722::Status const,0>(absl::lts_20240722::status_internal::StatusRep **a1, atomic_uint **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 1) == 0)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
    v3 = *a1;
  }

  if (v3 == 1)
  {
    absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a1);
  }

  return a1;
}

BOOL google::protobuf::internal::ParseNamedEnum(uint64_t a1, void *a2, size_t a3, _DWORD *a4, const unint64_t *a5)
{
  ValueByName = google::protobuf::EnumDescriptor::FindValueByName(a1, a2, a3, a4, a5);
  if (ValueByName)
  {
    *a4 = *(ValueByName + 1);
  }

  return ValueByName != 0;
}

uint64_t *google::protobuf::internal::NameOfEnum(google::protobuf::internal *this, const google::protobuf::EnumDescriptor *a2)
{
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(this, a2);
  if (ValueByNumber)
  {
    return ValueByNumber[1];
  }

  if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::internal::InitProtobufDefaultsSlow(0);
  }

  return &google::protobuf::internal::fixed_address_empty_string;
}

const google::protobuf::Descriptor **google::protobuf::Reflection::Reflection(const google::protobuf::Descriptor **this, const google::protobuf::Descriptor *a2, const google::protobuf::internal::ReflectionSchema *a3, const google::protobuf::DescriptorPool *a4, google::protobuf::MessageFactory *a5)
{
  *this = a2;
  *(this + 1) = *a3;
  v6 = *(a3 + 1);
  v7 = *(a3 + 2);
  v8 = *(a3 + 3);
  this[9] = *(a3 + 8);
  *(this + 7) = v8;
  *(this + 5) = v7;
  *(this + 3) = v6;
  if (!a4)
  {
    v9 = this;
    a4 = google::protobuf::DescriptorPool::internal_generated_pool(this);
    this = v9;
    a2 = *v9;
  }

  this[10] = a4;
  this[11] = a5;
  this[13] = 0;
  this[12] = (*(a2 + 1) - 1);
  return this;
}

unint64_t google::protobuf::Reflection::GetUnknownFields(unsigned int *a1, uint64_t a2)
{
  v2 = *(a2 + a1[9]);
  if (v2)
  {
    return (v2 & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    return google::protobuf::UnknownFieldSet::default_instance(a1);
  }
}

uint64_t google::protobuf::Reflection::MutableUnknownFields(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  v3 = *(a2 + v2);
  if (v3)
  {
    return (v3 & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    return google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a2 + v2));
  }
}

uint64_t google::protobuf::Reflection::SpaceUsedLong(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + *(a1 + 36));
  if ((v5 & 1) == 0)
  {
    v6 = google::protobuf::UnknownFieldSet::default_instance(a1);
    v7 = google::protobuf::UnknownFieldSet::SpaceUsedExcludingSelfLong(v6) + v4;
    v8 = *(a1 + 40);
    if (v8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = google::protobuf::UnknownFieldSet::SpaceUsedExcludingSelfLong(((v5 & 0xFFFFFFFFFFFFFFFELL) + 8)) + v4;
  v8 = *(a1 + 40);
  if (v8 != -1)
  {
LABEL_3:
    v7 += google::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelfLong((a2 + v8));
  }

LABEL_4:
  if ((*(a1 + 96) & 0x80000000) == 0)
  {
    v9 = 0;
    v10 = -1;
    while (1)
    {
      v13 = *(*a1 + 56);
      v14 = v13 + v9;
      v15 = *(v13 + v9 + 1);
      if ((~v15 & 0x60) != 0)
      {
        break;
      }

      v16 = *(v14 + 24);
      if (v16 && (v76 = v13 + v9, v77 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v16, memory_order_acquire) != 221))
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, &v77, &v76);
        v14 = v13 + v9;
        v17 = v13 + v9;
        v18 = *(v13 + v9 + 2);
        v19 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v13 + v9 + 2)];
        if (v19 > 5)
        {
LABEL_95:
          if (v19 <= 7)
          {
            if (v19 != 6)
            {
              if ((*(v14 + 1) & 0x10) != 0 && (v54 = *(v13 + v9 + 40)) != 0 && (*(v54 + 4) != 1 || (*(*(v54 + 48) + 1) & 2) == 0))
              {
                v55 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14);
              }

              else
              {
                v55 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, v14);
              }

              v56 = *(v55 + 4);
              if (v56 <= 0)
              {
                v57 = 0;
              }

              else
              {
                v57 = (v56 + 8);
              }

              v7 += v57;
              goto LABEL_8;
            }

            if ((*(v14 + 1) & 0x10) != 0)
            {
              v59 = *(v13 + v9 + 40);
              if (v59)
              {
                if (*(v59 + 4) != 1 || (*(*(v59 + 48) + 1) & 2) == 0)
                {
                  goto LABEL_155;
                }
              }
            }

LABEL_129:
            v60 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, v14);
            goto LABEL_130;
          }

          if (v19 == 8)
          {
LABEL_120:
            if ((*(v14 + 1) & 0x10) == 0)
            {
              goto LABEL_129;
            }

            v58 = *(v13 + v9 + 40);
            if (!v58 || *(v58 + 4) == 1 && (*(*(v58 + 48) + 1) & 2) != 0)
            {
              goto LABEL_129;
            }

LABEL_155:
            v60 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14);
LABEL_130:
            v36 = *(v60 + 4);
            v37 = 4 * v36;
            goto LABEL_131;
          }

          if (v19 == 9)
          {
            if ((*(v14 + 1) & 0x10) != 0 && (v63 = *(v13 + v9 + 40)) != 0 && (*(v63 + 4) != 1 || (*(*(v63 + 48) + 1) & 2) == 0))
            {
              v64 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14);
            }

            else
            {
              v64 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, v14);
            }

            EstimatedMemoryUsage = google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<std::string>>(v64);
            goto LABEL_7;
          }

          if (v19 != 10)
          {
            goto LABEL_8;
          }

          v48 = *(v14 + 24);
          if (v48)
          {
            v76 = v14;
            v77 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v48, memory_order_acquire) != 221)
            {
              v72 = v14;
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v48, 1, &v77, &v76);
              v14 = v72;
            }

            v18 = *(v17 + 2);
          }

          if (v18 == 11)
          {
            v49 = v14;
            is_map_message_type = google::protobuf::FieldDescriptor::is_map_message_type(v14);
            v14 = v49;
            v51 = *(v49 + 1);
            if (is_map_message_type)
            {
              if ((*(v49 + 1) & 0x10) != 0 && (v52 = *(v13 + v9 + 40)) != 0 && (*(v52 + 4) != 1 || (*(*(v52 + 48) + 1) & 2) == 0))
              {
                FieldOffset = google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v49);
                EstimatedMemoryUsage = google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfLong((a2 + FieldOffset));
              }

              else
              {
                v53 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, v49);
                EstimatedMemoryUsage = google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfLong(v53);
              }

LABEL_7:
              v7 += EstimatedMemoryUsage;
              goto LABEL_8;
            }
          }

          else
          {
            v51 = *(v14 + 1);
          }

          if ((v51 & 0x10) != 0 && (v65 = *(v13 + v9 + 40)) != 0 && (*(v65 + 4) != 1 || (*(*(v65 + 48) + 1) & 2) == 0))
          {
            v71 = google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14);
            EstimatedMemoryUsage = google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(a2 + v71);
          }

          else
          {
            v66 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, v14);
            EstimatedMemoryUsage = google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(v66);
          }

          goto LABEL_7;
        }
      }

      else
      {
        v17 = v13 + v9;
        v18 = *(v13 + v9 + 2);
        v19 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v13 + v9 + 2)];
        if (v19 > 5)
        {
          goto LABEL_95;
        }
      }

      if (v19 > 2)
      {
        if (v19 != 3)
        {
          if (v19 == 4)
          {
            if ((*(v14 + 1) & 0x10) == 0)
            {
              goto LABEL_65;
            }

            v34 = *(v13 + v9 + 40);
            if (!v34 || *(v34 + 4) == 1 && (*(*(v34 + 48) + 1) & 2) != 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if ((*(v14 + 1) & 0x10) == 0)
            {
              goto LABEL_65;
            }

            v20 = *(v13 + v9 + 40);
            if (!v20 || *(v20 + 4) == 1 && (*(*(v20 + 48) + 1) & 2) != 0)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_156;
        }

        if ((*(v14 + 1) & 0x10) != 0)
        {
          v33 = *(v13 + v9 + 40);
          if (v33)
          {
            if (*(v33 + 4) != 1 || (*(*(v33 + 48) + 1) & 2) == 0)
            {
              goto LABEL_155;
            }
          }
        }

        goto LABEL_129;
      }

      if (v19 == 1)
      {
        goto LABEL_120;
      }

      if (v19 == 2)
      {
        if ((*(v14 + 1) & 0x10) == 0 || (v31 = *(v13 + v9 + 40)) == 0 || *(v31 + 4) == 1 && (*(*(v31 + 48) + 1) & 2) != 0)
        {
LABEL_65:
          v35 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, v14);
          goto LABEL_66;
        }

LABEL_156:
        v35 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14);
LABEL_66:
        v36 = *(v35 + 4);
        v37 = 8 * v36;
LABEL_131:
        v61 = v37 + 8;
        if (v36 <= 0)
        {
          v62 = 0;
        }

        else
        {
          v62 = v61;
        }

        v7 += v62;
      }

LABEL_8:
      ++v10;
      v9 += 88;
      if (v10 >= *(a1 + 96))
      {
        return v7;
      }
    }

    if ((v15 & 0x10) != 0)
    {
      v21 = *(v13 + v9 + 40);
      if (v21)
      {
        if ((*(v21 + 4) != 1 || (*(*(v21 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v21 - *(*(v21 + 16) + 64)) >> 3)) != *(v13 + v9 + 4))
        {
          goto LABEL_8;
        }
      }
    }

    v22 = v13 + v9;
    v23 = *(v13 + v9 + 24);
    if (v23 && (v76 = v13 + v9, v77 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v23, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v23, 1, &v77, &v76);
      v14 = v13 + v9;
      v24 = *(v22 + 2);
      v25 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v22 + 2)];
      if (v25 != 10)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v24 = *(v22 + 2);
      v25 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v22 + 2)];
      if (v25 != 10)
      {
LABEL_29:
        if (v25 != 9)
        {
          goto LABEL_8;
        }

        v26 = *(v22 + 24);
        if (v26)
        {
          v76 = v14;
          v77 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v26, memory_order_acquire) != 221)
          {
            v69 = v14;
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v26, 1, &v77, &v76);
            v14 = v69;
          }

          v24 = *(v22 + 2);
        }

        if (v24 != 12 || (*(v14 + 1) & 0x60) == 0x60 || (*(v14 + 1) & 8) != 0 || *(*(v13 + v9 + 56) + 120) != 1)
        {
          if ((*(v14 + 1) & 8) != 0)
          {
            v32 = *(v13 + v9 + 40);
            if (v32)
            {
              v30 = (v32 + 96);
            }

            else
            {
              v30 = (*(v13 + v9 + 16) + 120);
            }
          }

          else
          {
            v30 = (*(v13 + v9 + 32) + 56);
          }

          v39 = *(*(a1 + 16) + ((0xBA2E8BA300000000 * ((v9 + v13 - *v30) >> 3)) >> 30));
          v40 = *(v22 + 24);
          if (v40)
          {
            v76 = v14;
            v77 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v40, memory_order_acquire) != 221)
            {
              v75 = v14;
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v40, 1, &v77, &v76);
              v14 = v75;
            }

            v24 = *(v22 + 2);
          }

          if (v24 != 9 && v24 != 12)
          {
            v44 = *(v14 + 1);
LABEL_85:
            if ((v44 & 0x10) != 0 && (v45 = *(v13 + v9 + 40)) != 0 && (*(v45 + 4) != 1 || (*(*(v45 + 48) + 1) & 2) == 0))
            {
              v46 = v14;
              v47 = *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14));
              if ((v47 & 3) != 0)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v46 = v14;
              v47 = *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, v14);
              if ((v47 & 3) != 0)
              {
LABEL_90:
                v7 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(v47 & 0xFFFFFFFFFFFFFFFCLL) + 24;
                goto LABEL_8;
              }
            }

            if ((*(v46 + 1) & 0x10) == 0)
            {
              goto LABEL_8;
            }

            v70 = *(v13 + v9 + 40);
            if (!v70 || *(v70 + 4) == 1 && (*(*(v70 + 48) + 1) & 2) != 0)
            {
              goto LABEL_8;
            }

            goto LABEL_90;
          }

          v44 = *(v14 + 1);
          if ((v39 & 1) == 0)
          {
            goto LABEL_85;
          }

          if ((*(v14 + 1) & 0x10) == 0 || (v42 = *(v13 + v9 + 40)) == 0 || *(v42 + 4) == 1 && (*(*(v42 + 48) + 1) & 2) != 0)
          {
            v11 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, v14);
            EstimatedMemoryUsage = google::protobuf::internal::StringSpaceUsedExcludingSelfLong(v11);
          }

          else
          {
            v43 = google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14);
            EstimatedMemoryUsage = google::protobuf::internal::StringSpaceUsedExcludingSelfLong(a2 + v43);
          }
        }

        else
        {
          if ((*(v14 + 1) & 0x10) != 0)
          {
            v27 = *(v13 + v9 + 40);
            if (v27)
            {
              if (*(v27 + 4) != 1 || (*(*(v27 + 48) + 1) & 2) == 0)
              {
                v28 = *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14));
                if ((*v28 & 1) != 0 && (v29 = *(v28 + 8)) != 0)
                {
                  v7 += absl::lts_20240722::cord_internal::GetEstimatedMemoryUsage(v29) + 16;
                }

                else
                {
                  v7 += 16;
                }

                goto LABEL_8;
              }
            }
          }

          v38 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, v14);
          if (*v38)
          {
            EstimatedMemoryUsage = *(v38 + 8);
            if (EstimatedMemoryUsage)
            {
              EstimatedMemoryUsage = absl::lts_20240722::cord_internal::GetEstimatedMemoryUsage(EstimatedMemoryUsage);
            }
          }

          else
          {
            EstimatedMemoryUsage = 0;
          }
        }

        goto LABEL_7;
      }
    }

    if (*(a1 + 8) == a2)
    {
      goto LABEL_8;
    }

    if ((*(v14 + 1) & 0x10) != 0 && (v67 = *(v13 + v9 + 40)) != 0 && (*(v67 + 4) != 1 || (*(*(v67 + 48) + 1) & 2) == 0))
    {
      v68 = *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v14));
      if (!v68)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v68 = *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, v14);
      if (!v68)
      {
        goto LABEL_8;
      }
    }

    EstimatedMemoryUsage = google::protobuf::Message::SpaceUsedLong(v68);
    goto LABEL_7;
  }

  return v7;
}

uint64_t google::protobuf::FieldDescriptor::cpp_type(google::protobuf::FieldDescriptor *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v4 = this;
    v5 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v1, memory_order_acquire) != 221)
    {
      v3 = this;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v1, 1, &v5, &v4);
      this = v3;
    }
  }

  return google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 2)];
}

BOOL google::protobuf::internal::cpp::EffectiveStringCType<google::protobuf::FieldDescriptor,google::protobuf::FieldOptions>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v5 = a1;
    v6 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v1, memory_order_acquire) != 221)
    {
      v4 = a1;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v1, 1, &v6, &v5);
      a1 = v4;
      if (*(v4 + 2) == 12)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  if (*(a1 + 2) != 12)
  {
    return 0;
  }

LABEL_4:
  v2 = *(a1 + 1);
  return (~v2 & 0x60) != 0 && (v2 & 8) == 0 && *(*(a1 + 56) + 120) == 1;
}

uint64_t google::protobuf::Reflection::IsInlined(google::protobuf::Reflection *this, const google::protobuf::FieldDescriptor *a2)
{
  v4 = *(this + 2);
  if ((*(a2 + 1) & 8) != 0)
  {
    v6 = *(a2 + 5);
    if (v6)
    {
      v5 = (v6 + 96);
    }

    else
    {
      v5 = (*(a2 + 2) + 120);
    }
  }

  else
  {
    v5 = (*(a2 + 4) + 56);
  }

  v16[3] = v2;
  v16[4] = v3;
  v7 = *(v4 + ((0xBA2E8BA300000000 * ((a2 - *v5) >> 3)) >> 30));
  v8 = *(a2 + 3);
  if (v8)
  {
    v15 = a2;
    v16[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, v16, &v15);
      v13 = *(a2 + 2);
      if (v13 != 12 && v13 != 9)
      {
        return 0;
      }

      return v7 & 1;
    }
  }

  v9 = *(a2 + 2);
  if (v9 == 12 || v9 == 9)
  {
    return v7 & 1;
  }

  return 0;
}

uint64_t google::protobuf::Reflection::GetField<google::protobuf::internal::InlinedStringField>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3)
{
  if ((*(a3 + 1) & 0x10) != 0)
  {
    v4 = *(a3 + 5);
    if (v4)
    {
      if (*(v4 + 4) != 1 || (*(*(v4 + 48) + 1) & 2) == 0)
      {
        return a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
      }
    }
  }

  return google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
}

void *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3)
{
  if ((*(a3 + 1) & 0x10) != 0)
  {
    v4 = *(a3 + 5);
    if (v4)
    {
      if (*(v4 + 4) != 1 || (*(*(v4 + 48) + 1) & 2) == 0)
      {
        return (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      }
    }
  }

  return google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
}

void google::protobuf::Reflection::Swap(unsigned int *a1, const google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  if (a2 == a3)
  {
    return;
  }

  v3 = a3;
  v4 = a2;
  while (1)
  {
    v6 = *(v4 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
      v7 = *(v3 + 1);
      if ((v7 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(v3 + 1);
      if ((v7 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
LABEL_5:
    (*(*v4 + 80))(v4);
    if (v8 != a1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<void const*,void const*>(v8, a1, "lhs->GetReflection() == this");
    }

    (*(*v3 + 80))(v3);
    if (v9 != a1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<void const*,void const*>(v9, a1, "rhs->GetReflection() == this");
    }

    if (v6 == v7)
    {
      break;
    }

    if (v6)
    {
      v12 = v3;
    }

    else
    {
      v12 = v4;
    }

    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v4 = v3;
      v13 = v7;
    }

    v3 = (*(*v4 + 16))(v4, v13);
    google::protobuf::Message::MergeFrom(v3, v12);
    google::protobuf::Message::CopyFrom(v12, v4);
    if (v4 == v3)
    {
      return;
    }
  }

  google::protobuf::Reflection::InternalSwap(a1, v4, v3, v10, v11);
}

uint64_t google::protobuf::Reflection::HasBit(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3)
{
  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    v4 = *(a1 + 24);
    if ((*(a3 + 1) & 8) != 0)
    {
      v6 = *(a3 + 5);
      v5 = (v6 ? v6 + 96 : *(a3 + 2) + 120);
    }

    else
    {
      v5 = (*(a3 + 4) + 56);
    }

    if (*(v4 + ((0xBA2E8BA300000000 * ((a3 - *v5) >> 3)) >> 30)) != -1)
    {
      v7 = a2 + v3;
      if ((*(a3 + 1) & 8) != 0)
      {
        v13 = *(a3 + 5);
        if (v13)
        {
          v8 = (v13 + 96);
        }

        else
        {
          v8 = (*(a3 + 2) + 120);
        }
      }

      else
      {
        v8 = (*(a3 + 4) + 56);
      }

      v15 = *(v4 + ((0xBA2E8BA300000000 * ((a3 - *v8) >> 3)) >> 30));
      return (*(v7 + ((v15 >> 3) & 0x1FFFFFFC)) >> v15) & 1;
    }
  }

  v9 = *(a3 + 3);
  if (v9 && (v48[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v49 = a3, atomic_load_explicit(v9, memory_order_acquire) != 221))
  {
    v16 = a3;
    v17 = a1;
    v18 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, v48, &v49);
    a1 = v17;
    a2 = v18;
    a3 = v16;
    v10 = v16[2];
    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v16[2]];
    if (v11 == 10)
    {
LABEL_13:
      if (*(a1 + 8) == a2)
      {
        return 0;
      }

      if ((*(a3 + 1) & 0x10) == 0)
      {
        goto LABEL_73;
      }

      v12 = *(a3 + 5);
      if (!v12 || *(v12 + 4) == 1 && (*(*(v12 + 48) + 1) & 2) != 0)
      {
        goto LABEL_73;
      }

LABEL_100:
      v32 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      goto LABEL_74;
    }
  }

  else
  {
    v10 = *(a3 + 2);
    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v11 == 10)
    {
      goto LABEL_13;
    }
  }

  v19 = *(a3 + 3);
  if (v19)
  {
    v48[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v49 = a3;
    if (atomic_load_explicit(v19, memory_order_acquire) != 221)
    {
      v47 = a3;
      v42 = a1;
      v43 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v19, 1, v48, &v49);
      a1 = v42;
      a2 = v43;
      a3 = v47;
    }

    v10 = *(a3 + 2);
    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
  }

  if (v11 <= 4)
  {
    if (v11 > 2)
    {
      if (v11 == 3)
      {
LABEL_59:
        if ((*(a3 + 1) & 0x10) != 0)
        {
          v29 = *(a3 + 5);
          if (v29)
          {
            if (*(v29 + 4) != 1 || (*(*(v29 + 48) + 1) & 2) == 0)
            {
              goto LABEL_101;
            }
          }
        }

LABEL_80:
        v35 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
LABEL_81:
        v33 = *v35 == 0;
        goto LABEL_82;
      }

      if ((*(a3 + 1) & 0x10) != 0)
      {
        v28 = *(a3 + 5);
        if (v28)
        {
          if (*(v28 + 4) != 1 || (*(*(v28 + 48) + 1) & 2) == 0)
          {
            goto LABEL_100;
          }
        }
      }
    }

    else
    {
      if (v11 == 1)
      {
        if ((*(a3 + 1) & 0x10) != 0)
        {
          v30 = *(a3 + 5);
          if (v30)
          {
            if (*(v30 + 4) != 1 || (*(*(v30 + 48) + 1) & 2) == 0)
            {
              goto LABEL_101;
            }
          }
        }

        goto LABEL_80;
      }

      if (v11 != 2)
      {
        goto LABEL_99;
      }

      if ((*(a3 + 1) & 0x10) != 0)
      {
        v27 = *(a3 + 5);
        if (v27)
        {
          if (*(v27 + 4) != 1 || (*(*(v27 + 48) + 1) & 2) == 0)
          {
            goto LABEL_100;
          }
        }
      }
    }

LABEL_73:
    v32 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
LABEL_74:
    v26 = *v32;
LABEL_75:
    v33 = v26 == 0;
LABEL_82:
    v36 = !v33;
    return v36 & 1;
  }

  if (v11 <= 6)
  {
    if (v11 != 5)
    {
      goto LABEL_59;
    }

    if ((*(a3 + 1) & 0x10) != 0)
    {
      v31 = *(a3 + 5);
      if (v31)
      {
        if (*(v31 + 4) != 1 || (*(*(v31 + 48) + 1) & 2) == 0)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_73;
  }

  if (v11 != 7)
  {
    if (v11 != 8)
    {
      if (v11 == 9)
      {
        v20 = *(a3 + 3);
        if (v20)
        {
          v48[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v49 = a3;
          if (atomic_load_explicit(v20, memory_order_acquire) != 221)
          {
            v44 = a3;
            v45 = a1;
            v46 = a2;
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, v48, &v49);
            a1 = v45;
            a2 = v46;
            a3 = v44;
          }

          v10 = *(a3 + 2);
        }

        if (v10 == 12 && (v21 = *(a3 + 1), (~v21 & 0x60) != 0) && (v21 & 8) == 0 && *(*(a3 + 7) + 120) == 1)
        {
          v40 = google::protobuf::Reflection::GetField<google::protobuf::internal::InlinedStringField>(a1, a2, a3);
          v41 = *v40;
          if (v41)
          {
            v26 = **(v40 + 1);
          }

          else
          {
            v26 = v41 >> 1;
          }
        }

        else
        {
          v22 = a2;
          v23 = a1;
          v24 = a3;
          if (google::protobuf::Reflection::IsInlined(a1, a3))
          {
            v25 = google::protobuf::Reflection::GetField<google::protobuf::internal::InlinedStringField>(v23, v22, v24);
            v26 = *(v25 + 23);
            if ((v26 & 0x80u) != 0)
            {
              v26 = *(v25 + 8);
            }
          }

          else
          {
            v39 = *google::protobuf::Reflection::GetField<google::protobuf::internal::InlinedStringField>(v23, v22, v24) & 0xFFFFFFFFFFFFFFFCLL;
            v26 = *(v39 + 23);
            if ((v26 & 0x8000000000000000) != 0)
            {
              v26 = *(v39 + 8);
            }
          }
        }

        goto LABEL_75;
      }

LABEL_99:
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v48, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 2905);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v48, "Reached impossible case in HasBit().");
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v48);
    }

    if ((*(a3 + 1) & 0x10) == 0)
    {
      goto LABEL_80;
    }

    v34 = *(a3 + 5);
    if (!v34 || *(v34 + 4) == 1 && (*(*(v34 + 48) + 1) & 2) != 0)
    {
      goto LABEL_80;
    }

LABEL_101:
    v35 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
    goto LABEL_81;
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v37 = *(a3 + 5)) != 0 && (*(v37 + 4) != 1 || (*(*(v37 + 48) + 1) & 2) == 0))
  {
    v38 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
  }

  else
  {
    v38 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  return *v38 & 1;
}

void google::protobuf::Reflection::ClearField(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  v5 = *(a3 + 1);
  if ((v5 & 8) != 0)
  {
    v10 = (a2 + *(a1 + 40));
    v11 = *(a3 + 1);

    google::protobuf::internal::ExtensionSet::ClearExtension(v10, v11);
    return;
  }

  if ((~v5 & 0x60) != 0)
  {
    if ((v5 & 0x10) != 0)
    {
      v12 = *(a3 + 5);
      if (v12)
      {
        if (*(v12 + 4) != 1 || (*(*(v12 + 48) + 1) & 2) == 0)
        {
          if (*(a2 + *(a1 + 44) - 613566756 * ((v12 - *(*(v12 + 16) + 64)) >> 3)) == *(a3 + 1))
          {
            v13 = *(a3 + 5);

            google::protobuf::Reflection::ClearOneof(a1, a2);
          }

          return;
        }
      }
    }

    v14 = a1;
    v15 = a2;
    v16 = a3;
    if (!google::protobuf::Reflection::HasBit(a1, a2, a3))
    {
      return;
    }

    v17 = v16;
    v18 = v15;
    v19 = v14;
    v20 = *(v14 + 32);
    if (v20 != -1)
    {
      if ((*(v16 + 1) & 8) != 0)
      {
        v22 = *(v16 + 5);
        v21 = (v22 ? v22 + 96 : *(v16 + 2) + 120);
      }

      else
      {
        v21 = (*(v16 + 4) + 56);
      }

      v23 = *(*(v14 + 24) + ((0xBA2E8BA300000000 * ((v16 - *v21) >> 3)) >> 30));
      if (v23 != -1)
      {
        *(v15 + v20 + ((v23 >> 3) & 0x1FFFFFFC)) &= ~(1 << v23);
      }
    }

    v24 = *(v16 + 3);
    if (v24 && (v69 = v16, v70 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v24, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v24, 1, &v70, &v69);
      v19 = v14;
      v17 = v16;
      v18 = v15;
      v25 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v16 + 2)];
      if (v25 <= 5)
      {
LABEL_41:
        if (v25 <= 2)
        {
          if (v25 != 1)
          {
            if (v25 != 2)
            {
              return;
            }

LABEL_49:
            v28 = *(v17 + 10);
            *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v19, v18, v17) = v28;
            return;
          }
        }

        else if (v25 != 3)
        {
          if (v25 != 4)
          {
            v26 = *(v17 + 10);
            *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v19, v18, v17) = v26;
            return;
          }

          goto LABEL_49;
        }

        v27 = *(v17 + 20);
        *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v19, v18, v17) = v27;
        return;
      }
    }

    else
    {
      v25 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v16 + 2)];
      if (v25 <= 5)
      {
        goto LABEL_41;
      }
    }

    if (v25 <= 7)
    {
      if (v25 == 6)
      {
        v46 = *(v17 + 20);
        *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v19, v18, v17) = v46;
      }

      else
      {
        v45 = *(v17 + 80);
        *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v19, v18, v17) = v45;
      }

      return;
    }

    if (v25 == 8)
    {
      v47 = v18;
      v48 = v17;
      v49 = *(google::protobuf::FieldDescriptor::default_value_enum(v17) + 4);
      *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v14, v47, v48) = v49;
      return;
    }

    if (v25 == 9)
    {
      if (google::protobuf::internal::cpp::EffectiveStringCType<google::protobuf::FieldDescriptor,google::protobuf::FieldOptions>(v17))
      {
        v50 = v16;
        v51 = v14;
        if (*(v16 + 1))
        {
          v52 = *(v16 + 10);
          v53 = v52[23];
          if ((v53 & 0x8000000000000000) != 0)
          {
            v52 = *v52;
            v53 = *(*(v50 + 10) + 8);
          }

          v54 = google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v51, v15, v50);
          absl::lts_20240722::Cord::operator=(v54, v52, v53);
        }

        else
        {
          v63 = google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v14, v15, v16);
          absl::lts_20240722::Cord::Clear(v63, v64);
        }
      }

      else if (google::protobuf::Reflection::IsInlined(v14, v16))
      {
        v55 = google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v14, v15, v16);
        if (*(v55 + 23) < 0)
        {
          **v55 = 0;
          v55[1] = 0;
        }

        else
        {
          *v55 = 0;
          *(v55 + 23) = 0;
        }
      }

      else
      {
        v65 = google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v14, v15, v16);
        google::protobuf::internal::ArenaStringPtr::Destroy(v65);
        *v65 = &google::protobuf::internal::fixed_address_empty_string;
      }

      return;
    }

    if (v25 != 10)
    {
      return;
    }

    if (google::protobuf::internal::ReflectionSchema::HasBitIndex((v14 + 8), v17) != -1)
    {
      v44 = google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v14, v15, v16);
      (*(**v44 + 24))(*v44);
      return;
    }

    v56 = v15;
    v57 = *(v15 + 8);
    if (v57)
    {
      v58 = v16;
      v59 = v14;
      if (!*(v57 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_97:
        v60 = google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v14, v15, v16);
        v58 = v16;
        v56 = v15;
        v61 = v60;
        v59 = v14;
        v62 = *v61;
        if (v62)
        {
          (*(*v62 + 8))(v62, v15, v16);
          v59 = v14;
          v58 = v16;
          v56 = v15;
        }
      }
    }

    else
    {
      v58 = v16;
      v59 = v14;
      if (!v57)
      {
        goto LABEL_97;
      }
    }

    *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v59, v56, v58) = 0;
    return;
  }

  v6 = *(a3 + 3);
  if (v6 && (v69 = a3, v70 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) != 221))
  {
    v29 = a3;
    v30 = a1;
    v31 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v70, &v69);
    a1 = v30;
    a3 = v29;
    a2 = v31;
    v7 = v29[2];
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v29[2]];
    if (v8 <= 5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = *(a3 + 2);
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v8 <= 5)
    {
LABEL_7:
      if (v8 > 2)
      {
        if (v8 != 3 && v8 != 4)
        {
          if ((*(a3 + 1) & 0x10) == 0 || (v9 = *(a3 + 5)) == 0 || *(v9 + 4) == 1 && (*(*(v9 + 48) + 1) & 2) != 0)
          {
            *google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3) = 0;
            return;
          }

          goto LABEL_75;
        }

LABEL_61:
        if ((*(a3 + 1) & 0x10) == 0 || (v39 = *(a3 + 5)) == 0 || *(v39 + 4) == 1 && (*(*(v39 + 48) + 1) & 2) != 0)
        {
          v40 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
LABEL_66:
          *v40 = 0;
          return;
        }

LABEL_75:
        v40 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
        goto LABEL_66;
      }

      if (v8 == 1 || v8 == 2)
      {
        goto LABEL_61;
      }

      return;
    }
  }

  if (v8 <= 8)
  {
    goto LABEL_61;
  }

  if (v8 == 9)
  {
    if ((*(a3 + 1) & 0x10) != 0 && (v41 = *(a3 + 5)) != 0 && (*(v41 + 4) != 1 || (*(*(v41 + 48) + 1) & 2) == 0))
    {
      v42 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      if (v42[2] < 1)
      {
        return;
      }
    }

    else
    {
      v42 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      if (v42[2] < 1)
      {
        return;
      }
    }

    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(v42);
    return;
  }

  if (v8 == 10)
  {
    v32 = *(a3 + 3);
    if (v32)
    {
      v69 = a3;
      v70 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v32, memory_order_acquire) != 221)
      {
        v66 = a3;
        v67 = a1;
        v68 = a2;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v32, 1, &v70, &v69);
        a1 = v67;
        a3 = v66;
        a2 = v68;
      }

      v7 = *(a3 + 2);
    }

    if (v7 != 11)
    {
      goto LABEL_73;
    }

    v33 = a1;
    v34 = a2;
    v35 = a3;
    is_map_message_type = google::protobuf::FieldDescriptor::is_map_message_type(a3);
    a3 = v35;
    a2 = v34;
    v37 = is_map_message_type;
    a1 = v33;
    if (v37)
    {
      v38 = google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(v33, v34, v35);
      google::protobuf::internal::MapFieldBase::Clear(v38);
    }

    else
    {
LABEL_73:
      v43 = google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(a1, a2, a3);
      if (v43[2] >= 1)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v43);
      }
    }
  }
}

uint64_t *google::protobuf::internal::SwapFieldHelper::SwapNonMessageNonStringField(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FieldDescriptor *a4)
{
  v7 = *(a4 + 3);
  if (v7 && (v31[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v32 = a4, atomic_load_explicit(v7, memory_order_acquire) != 221))
  {
    v14 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, v31, &v32);
    a2 = v14;
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
    if (v8 <= 4)
    {
LABEL_4:
      if (v8 > 2)
      {
        if (v8 != 3)
        {
          goto LABEL_9;
        }
      }

      else if (v8 != 1)
      {
        if (v8 != 2)
        {
LABEL_64:
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v31, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 817);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, "Unimplemented type: ", 0x14uLL);
          LODWORD(v32) = google::protobuf::FieldDescriptor::cpp_type(a4);
          absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::CppType,0>(v31, &v32);
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v31);
        }

LABEL_9:
        if ((*(a4 + 1) & 0x10) != 0 && (v9 = *(a4 + 5)) != 0 && (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0))
        {
          v10 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
          if ((*(a4 + 1) & 0x10) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v10 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
          if ((*(a4 + 1) & 0x10) == 0)
          {
            goto LABEL_17;
          }
        }

        v11 = *(a4 + 5);
        if (v11 && (*(v11 + 4) != 1 || (*(*(v11 + 48) + 1) & 2) == 0))
        {
          result = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
          goto LABEL_18;
        }

LABEL_17:
        result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_18:
        v13 = *v10;
        *v10 = *result;
        *result = v13;
        return result;
      }

LABEL_34:
      if ((*(a4 + 1) & 0x10) != 0 && (v19 = *(a4 + 5)) != 0 && (*(v19 + 4) != 1 || (*(*(v19 + 48) + 1) & 2) == 0))
      {
        v20 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
        if ((*(a4 + 1) & 0x10) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v20 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
        if ((*(a4 + 1) & 0x10) == 0)
        {
          goto LABEL_42;
        }
      }

      v21 = *(a4 + 5);
      if (v21 && (*(v21 + 4) != 1 || (*(*(v21 + 48) + 1) & 2) == 0))
      {
        result = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
        goto LABEL_43;
      }

LABEL_42:
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_43:
      v22 = *v20;
      *v20 = *result;
      *result = v22;
      return result;
    }
  }

  else
  {
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
    if (v8 <= 4)
    {
      goto LABEL_4;
    }
  }

  if (v8 <= 6)
  {
    if (v8 != 5)
    {
      if ((*(a4 + 1) & 0x10) != 0 && (v15 = *(a4 + 5)) != 0 && (*(v15 + 4) != 1 || (*(*(v15 + 48) + 1) & 2) == 0))
      {
        v16 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
        if ((*(a4 + 1) & 0x10) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v16 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
        if ((*(a4 + 1) & 0x10) == 0)
        {
          goto LABEL_30;
        }
      }

      v17 = *(a4 + 5);
      if (v17 && (*(v17 + 4) != 1 || (*(*(v17 + 48) + 1) & 2) == 0))
      {
        result = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
        goto LABEL_31;
      }

LABEL_30:
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_31:
      v18 = *v16;
      *v16 = *result;
      *result = v18;
      return result;
    }

    if ((*(a4 + 1) & 0x10) != 0 && (v23 = *(a4 + 5)) != 0 && (*(v23 + 4) != 1 || (*(*(v23 + 48) + 1) & 2) == 0))
    {
      v24 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
      if ((*(a4 + 1) & 0x10) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v24 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
      if ((*(a4 + 1) & 0x10) == 0)
      {
        goto LABEL_52;
      }
    }

    v25 = *(a4 + 5);
    if (v25 && (*(v25 + 4) != 1 || (*(*(v25 + 48) + 1) & 2) == 0))
    {
      result = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
      goto LABEL_53;
    }

LABEL_52:
    result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_53:
    v26 = *v24;
    *v24 = *result;
    *result = v26;
    return result;
  }

  if (v8 != 7)
  {
    if (v8 != 8)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  if ((*(a4 + 1) & 0x10) != 0 && (v27 = *(a4 + 5)) != 0 && (*(v27 + 4) != 1 || (*(*(v27 + 48) + 1) & 2) == 0))
  {
    v28 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    if ((*(a4 + 1) & 0x10) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v28 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
    if ((*(a4 + 1) & 0x10) == 0)
    {
      goto LABEL_62;
    }
  }

  v29 = *(a4 + 5);
  if (v29 && (*(v29 + 4) != 1 || (*(*(v29 + 48) + 1) & 2) == 0))
  {
    result = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    goto LABEL_63;
  }

LABEL_62:
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_63:
  v30 = *v28;
  *v28 = *result;
  *result = v30;
  return result;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::CppType,0>(uint64_t a1, unsigned int *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9180](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CDCAC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CDCAC84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Swap(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = (a1 + 2);
  v5 = (a1 + 2);
  if (a1[1])
  {
    v5 = (*v4 - 8);
  }

  v6 = *v5;
  v7 = *(a2 + 1);
  if (a2[1])
  {
    v7 = *(v7 - 8);
  }

  if (v6 == v7)
  {
    v25 = *a1;
    *a1 = *a2;
    *a2 = v25;
    v26 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v26;
    v27 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v27;
    v28 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v28;
    v29 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v29;
    v30 = *(a1 + 5);
    *(a1 + 5) = *(a2 + 5);
    *(a2 + 5) = v30;
    v31 = *(a1 + 6);
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 6) = v31;
    v32 = *(a1 + 7);
    *(a1 + 7) = *(a2 + 7);
    *(a2 + 7) = v32;
    v33 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v33;
    v34 = *(a1 + 9);
    *(a1 + 9) = *(a2 + 9);
    *(a2 + 9) = v34;
    v35 = *(a1 + 10);
    *(a1 + 10) = *(a2 + 10);
    *(a2 + 10) = v35;
    v36 = *(a1 + 11);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 11) = v36;
    v37 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v37;
    v38 = *(a1 + 13);
    *(a1 + 13) = *(a2 + 13);
    *(a2 + 13) = v38;
    v39 = *(a1 + 14);
    *(a1 + 14) = *(a2 + 14);
    *(a2 + 14) = v39;
    v40 = *(a1 + 15);
    *(a1 + 15) = *(a2 + 15);
    *(a2 + 15) = v40;
    return;
  }

  *&v43 = 0;
  *(&v43 + 1) = v7;
  v8 = *a1;
  if (!v8)
  {
LABEL_10:
    *a1 = 0;
    v9 = *a2;
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v8 < 1)
  {
    LODWORD(v43) = *a1;
    goto LABEL_10;
  }

  v42 = *a1;
  google::protobuf::RepeatedField<int>::Grow(&v43, 0, v8);
  google::protobuf::RepeatedField<int>::Swap(&v43, v42, &v43 + 1, v4);
  *a1 = 0;
  v9 = *a2;
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a1[1] < v9)
  {
    v41 = v9;
    google::protobuf::RepeatedField<int>::Grow(a1, 0, v9);
    v10 = *a1;
    v9 = v41;
    v11 = *(a1 + 1);
    *a1 = v10 + v41;
    if (v41 >= 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = *(a1 + 1);
    *a1 = v9;
    if (v9 >= 1)
    {
LABEL_13:
      v12 = *(a2 + 1);
      v13 = (v11 + 4 * v10);
      if (v9 < 8)
      {
        goto LABEL_18;
      }

      v14 = 4 * v10 + v11;
      if ((v14 - v12) < 0x20)
      {
        goto LABEL_18;
      }

      v15 = v9;
      v16 = v9 & 0x7FFFFFF8;
      LODWORD(v9) = v9 - (v9 & 0x7FFFFFF8);
      v13 += v16;
      v17 = &v12[v16];
      v18 = (v12 + 4);
      v19 = (v14 + 16);
      v20 = v16;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 8;
      }

      while (v20);
      v12 = v17;
      if (v16 != v15)
      {
LABEL_18:
        v22 = v9 + 1;
        do
        {
          v23 = *v12++;
          *v13++ = v23;
          --v22;
        }

        while (v22 > 1);
      }
    }
  }

LABEL_20:
  if (&v43 != a2)
  {
    v24 = *a2;
    *a2 = v43;
    v43 = v24;
  }

  if (SDWORD1(v43) >= 1 && !*(*(&v43 + 1) - 8))
  {
    operator delete((*(&v43 + 1) - 8));
  }
}

void sub_23CDCAF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13)
{
  if (a12 >= 1)
  {
    google::protobuf::RepeatedField<int>::Swap(&a13);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<long long>::Swap(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = (a1 + 2);
  v5 = (a1 + 2);
  if (a1[1])
  {
    v5 = (*v4 - 8);
  }

  v6 = *v5;
  v7 = *(a2 + 1);
  if (a2[1])
  {
    v7 = *(v7 - 8);
  }

  if (v6 == v7)
  {
    v24 = *a1;
    *a1 = *a2;
    *a2 = v24;
    v25 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v25;
    v26 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v26;
    v27 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v27;
    v28 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v28;
    v29 = *(a1 + 5);
    *(a1 + 5) = *(a2 + 5);
    *(a2 + 5) = v29;
    v30 = *(a1 + 6);
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 6) = v30;
    v31 = *(a1 + 7);
    *(a1 + 7) = *(a2 + 7);
    *(a2 + 7) = v31;
    v32 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v32;
    v33 = *(a1 + 9);
    *(a1 + 9) = *(a2 + 9);
    *(a2 + 9) = v33;
    v34 = *(a1 + 10);
    *(a1 + 10) = *(a2 + 10);
    *(a2 + 10) = v34;
    v35 = *(a1 + 11);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 11) = v35;
    v36 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v36;
    v37 = *(a1 + 13);
    *(a1 + 13) = *(a2 + 13);
    *(a2 + 13) = v37;
    v38 = *(a1 + 14);
    *(a1 + 14) = *(a2 + 14);
    *(a2 + 14) = v38;
    v39 = *(a1 + 15);
    *(a1 + 15) = *(a2 + 15);
    *(a2 + 15) = v39;
    return;
  }

  *&v42 = 0;
  *(&v42 + 1) = v7;
  if (!*a1)
  {
LABEL_10:
    *a1 = 0;
    v8 = *a2;
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (*a1 < 1)
  {
    LODWORD(v42) = *a1;
    goto LABEL_10;
  }

  v41 = *a1;
  google::protobuf::RepeatedField<long long>::Grow(&v42, 0);
  google::protobuf::RepeatedField<long long>::Swap(&v42, v41, &v42 + 1, v4);
  *a1 = 0;
  v8 = *a2;
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a1[1] < v8)
  {
    v40 = v8;
    google::protobuf::RepeatedField<long long>::Grow(a1, 0);
    v9 = *a1;
    v8 = v40;
    v10 = *(a1 + 1);
    *a1 = v9 + v40;
    if (v40 >= 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 1);
    *a1 = v8;
    if (v8 >= 1)
    {
LABEL_13:
      v11 = *(a2 + 1);
      v12 = (v10 + 8 * v9);
      if (v8 < 8)
      {
        goto LABEL_18;
      }

      v13 = 8 * v9 + v10;
      if ((v13 - v11) < 0x20)
      {
        goto LABEL_18;
      }

      v14 = v8;
      v15 = v8 & 0x7FFFFFFC;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFFC);
      v12 += v15;
      v16 = &v11[v15];
      v17 = (v11 + 2);
      v18 = (v13 + 16);
      v19 = v15;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      v11 = v16;
      if (v15 != v14)
      {
LABEL_18:
        v21 = v8 + 1;
        do
        {
          v22 = *v11++;
          *v12++ = v22;
          --v21;
        }

        while (v21 > 1);
      }
    }
  }

LABEL_20:
  if (&v42 != a2)
  {
    v23 = *a2;
    *a2 = v42;
    v42 = v23;
  }

  if (SDWORD1(v42) >= 1 && !*(*(&v42 + 1) - 8))
  {
    operator delete((*(&v42 + 1) - 8));
  }
}

void sub_23CDCB2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13)
{
  if (a12 >= 1)
  {
    google::protobuf::RepeatedField<int>::Swap(&a13);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<unsigned int>::Swap(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = (a1 + 2);
  v5 = (a1 + 2);
  if (a1[1])
  {
    v5 = (*v4 - 8);
  }

  v6 = *v5;
  v7 = *(a2 + 1);
  if (a2[1])
  {
    v7 = *(v7 - 8);
  }

  if (v6 == v7)
  {
    v25 = *a1;
    *a1 = *a2;
    *a2 = v25;
    v26 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v26;
    v27 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v27;
    v28 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v28;
    v29 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v29;
    v30 = *(a1 + 5);
    *(a1 + 5) = *(a2 + 5);
    *(a2 + 5) = v30;
    v31 = *(a1 + 6);
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 6) = v31;
    v32 = *(a1 + 7);
    *(a1 + 7) = *(a2 + 7);
    *(a2 + 7) = v32;
    v33 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v33;
    v34 = *(a1 + 9);
    *(a1 + 9) = *(a2 + 9);
    *(a2 + 9) = v34;
    v35 = *(a1 + 10);
    *(a1 + 10) = *(a2 + 10);
    *(a2 + 10) = v35;
    v36 = *(a1 + 11);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 11) = v36;
    v37 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v37;
    v38 = *(a1 + 13);
    *(a1 + 13) = *(a2 + 13);
    *(a2 + 13) = v38;
    v39 = *(a1 + 14);
    *(a1 + 14) = *(a2 + 14);
    *(a2 + 14) = v39;
    v40 = *(a1 + 15);
    *(a1 + 15) = *(a2 + 15);
    *(a2 + 15) = v40;
    return;
  }

  *&v43 = 0;
  *(&v43 + 1) = v7;
  v8 = *a1;
  if (!v8)
  {
LABEL_10:
    *a1 = 0;
    v9 = *a2;
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v8 < 1)
  {
    LODWORD(v43) = *a1;
    goto LABEL_10;
  }

  v42 = *a1;
  google::protobuf::RepeatedField<int>::Grow(&v43, 0, v8);
  google::protobuf::RepeatedField<int>::Swap(&v43, v42, &v43 + 1, v4);
  *a1 = 0;
  v9 = *a2;
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a1[1] < v9)
  {
    v41 = v9;
    google::protobuf::RepeatedField<int>::Grow(a1, 0, v9);
    v10 = *a1;
    v9 = v41;
    v11 = *(a1 + 1);
    *a1 = v10 + v41;
    if (v41 >= 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = *(a1 + 1);
    *a1 = v9;
    if (v9 >= 1)
    {
LABEL_13:
      v12 = *(a2 + 1);
      v13 = (v11 + 4 * v10);
      if (v9 < 8)
      {
        goto LABEL_18;
      }

      v14 = 4 * v10 + v11;
      if ((v14 - v12) < 0x20)
      {
        goto LABEL_18;
      }

      v15 = v9;
      v16 = v9 & 0x7FFFFFF8;
      LODWORD(v9) = v9 - (v9 & 0x7FFFFFF8);
      v13 += v16;
      v17 = &v12[v16];
      v18 = (v12 + 4);
      v19 = (v14 + 16);
      v20 = v16;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 8;
      }

      while (v20);
      v12 = v17;
      if (v16 != v15)
      {
LABEL_18:
        v22 = v9 + 1;
        do
        {
          v23 = *v12++;
          *v13++ = v23;
          --v22;
        }

        while (v22 > 1);
      }
    }
  }

LABEL_20:
  if (&v43 != a2)
  {
    v24 = *a2;
    *a2 = v43;
    v43 = v24;
  }

  if (SDWORD1(v43) >= 1 && !*(*(&v43 + 1) - 8))
  {
    operator delete((*(&v43 + 1) - 8));
  }
}

void sub_23CDCB5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13)
{
  if (a12 >= 1)
  {
    google::protobuf::RepeatedField<int>::Swap(&a13);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<unsigned long long>::Swap(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = (a1 + 2);
  v5 = (a1 + 2);
  if (a1[1])
  {
    v5 = (*v4 - 8);
  }

  v6 = *v5;
  v7 = *(a2 + 1);
  if (a2[1])
  {
    v7 = *(v7 - 8);
  }

  if (v6 == v7)
  {
    v24 = *a1;
    *a1 = *a2;
    *a2 = v24;
    v25 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v25;
    v26 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v26;
    v27 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v27;
    v28 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v28;
    v29 = *(a1 + 5);
    *(a1 + 5) = *(a2 + 5);
    *(a2 + 5) = v29;
    v30 = *(a1 + 6);
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 6) = v30;
    v31 = *(a1 + 7);
    *(a1 + 7) = *(a2 + 7);
    *(a2 + 7) = v31;
    v32 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v32;
    v33 = *(a1 + 9);
    *(a1 + 9) = *(a2 + 9);
    *(a2 + 9) = v33;
    v34 = *(a1 + 10);
    *(a1 + 10) = *(a2 + 10);
    *(a2 + 10) = v34;
    v35 = *(a1 + 11);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 11) = v35;
    v36 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v36;
    v37 = *(a1 + 13);
    *(a1 + 13) = *(a2 + 13);
    *(a2 + 13) = v37;
    v38 = *(a1 + 14);
    *(a1 + 14) = *(a2 + 14);
    *(a2 + 14) = v38;
    v39 = *(a1 + 15);
    *(a1 + 15) = *(a2 + 15);
    *(a2 + 15) = v39;
    return;
  }

  *&v42 = 0;
  *(&v42 + 1) = v7;
  if (!*a1)
  {
LABEL_10:
    *a1 = 0;
    v8 = *a2;
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (*a1 < 1)
  {
    LODWORD(v42) = *a1;
    goto LABEL_10;
  }

  v41 = *a1;
  google::protobuf::RepeatedField<long long>::Grow(&v42, 0);
  google::protobuf::RepeatedField<long long>::Swap(&v42, v41, &v42 + 1, v4);
  *a1 = 0;
  v8 = *a2;
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a1[1] < v8)
  {
    v40 = v8;
    google::protobuf::RepeatedField<long long>::Grow(a1, 0);
    v9 = *a1;
    v8 = v40;
    v10 = *(a1 + 1);
    *a1 = v9 + v40;
    if (v40 >= 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 1);
    *a1 = v8;
    if (v8 >= 1)
    {
LABEL_13:
      v11 = *(a2 + 1);
      v12 = (v10 + 8 * v9);
      if (v8 < 8)
      {
        goto LABEL_18;
      }

      v13 = 8 * v9 + v10;
      if ((v13 - v11) < 0x20)
      {
        goto LABEL_18;
      }

      v14 = v8;
      v15 = v8 & 0x7FFFFFFC;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFFC);
      v12 += v15;
      v16 = &v11[v15];
      v17 = (v11 + 2);
      v18 = (v13 + 16);
      v19 = v15;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      v11 = v16;
      if (v15 != v14)
      {
LABEL_18:
        v21 = v8 + 1;
        do
        {
          v22 = *v11++;
          *v12++ = v22;
          --v21;
        }

        while (v21 > 1);
      }
    }
  }

LABEL_20:
  if (&v42 != a2)
  {
    v23 = *a2;
    *a2 = v42;
    v42 = v23;
  }

  if (SDWORD1(v42) >= 1 && !*(*(&v42 + 1) - 8))
  {
    operator delete((*(&v42 + 1) - 8));
  }
}

void sub_23CDCB914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13)
{
  if (a12 >= 1)
  {
    google::protobuf::RepeatedField<int>::Swap(&a13);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<float>::Swap(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = (a1 + 2);
  v5 = (a1 + 2);
  if (a1[1])
  {
    v5 = (*v4 - 8);
  }

  v6 = *v5;
  v7 = *(a2 + 1);
  if (a2[1])
  {
    v7 = *(v7 - 8);
  }

  if (v6 == v7)
  {
    v25 = *a1;
    *a1 = *a2;
    *a2 = v25;
    v26 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v26;
    v27 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v27;
    v28 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v28;
    v29 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v29;
    v30 = *(a1 + 5);
    *(a1 + 5) = *(a2 + 5);
    *(a2 + 5) = v30;
    v31 = *(a1 + 6);
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 6) = v31;
    v32 = *(a1 + 7);
    *(a1 + 7) = *(a2 + 7);
    *(a2 + 7) = v32;
    v33 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v33;
    v34 = *(a1 + 9);
    *(a1 + 9) = *(a2 + 9);
    *(a2 + 9) = v34;
    v35 = *(a1 + 10);
    *(a1 + 10) = *(a2 + 10);
    *(a2 + 10) = v35;
    v36 = *(a1 + 11);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 11) = v36;
    v37 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v37;
    v38 = *(a1 + 13);
    *(a1 + 13) = *(a2 + 13);
    *(a2 + 13) = v38;
    v39 = *(a1 + 14);
    *(a1 + 14) = *(a2 + 14);
    *(a2 + 14) = v39;
    v40 = *(a1 + 15);
    *(a1 + 15) = *(a2 + 15);
    *(a2 + 15) = v40;
    return;
  }

  *&v43 = 0;
  *(&v43 + 1) = v7;
  v8 = *a1;
  if (!v8)
  {
LABEL_10:
    *a1 = 0;
    v9 = *a2;
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v8 < 1)
  {
    LODWORD(v43) = *a1;
    goto LABEL_10;
  }

  v42 = *a1;
  google::protobuf::RepeatedField<int>::Grow(&v43, 0, v8);
  google::protobuf::RepeatedField<float>::Swap(&v43, v42, &v43 + 1, v4);
  *a1 = 0;
  v9 = *a2;
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a1[1] < v9)
  {
    v41 = v9;
    google::protobuf::RepeatedField<int>::Grow(a1, 0, v9);
    v10 = *a1;
    v9 = v41;
    v11 = *(a1 + 1);
    *a1 = v10 + v41;
    if (v41 >= 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = *(a1 + 1);
    *a1 = v9;
    if (v9 >= 1)
    {
LABEL_13:
      v12 = *(a2 + 1);
      v13 = (v11 + 4 * v10);
      if (v9 < 8)
      {
        goto LABEL_18;
      }

      v14 = 4 * v10 + v11;
      if ((v14 - v12) < 0x20)
      {
        goto LABEL_18;
      }

      v15 = v9;
      v16 = v9 & 0x7FFFFFF8;
      LODWORD(v9) = v9 - (v9 & 0x7FFFFFF8);
      v13 += v16;
      v17 = &v12[v16];
      v18 = (v12 + 4);
      v19 = (v14 + 16);
      v20 = v16;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 8;
      }

      while (v20);
      v12 = v17;
      if (v16 != v15)
      {
LABEL_18:
        v22 = v9 + 1;
        do
        {
          v23 = *v12++;
          *v13++ = v23;
          --v22;
        }

        while (v22 > 1);
      }
    }
  }

LABEL_20:
  if (&v43 != a2)
  {
    v24 = *a2;
    *a2 = v43;
    v43 = v24;
  }

  if (SDWORD1(v43) >= 1 && !*(*(&v43 + 1) - 8))
  {
    operator delete((*(&v43 + 1) - 8));
  }
}

void sub_23CDCBC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13)
{
  if (a12 >= 1)
  {
    google::protobuf::RepeatedField<int>::Swap(&a13);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<double>::Swap(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = (a1 + 2);
  v5 = (a1 + 2);
  if (a1[1])
  {
    v5 = (*v4 - 8);
  }

  v6 = *v5;
  v7 = *(a2 + 1);
  if (a2[1])
  {
    v7 = *(v7 - 8);
  }

  if (v6 == v7)
  {
    v24 = *a1;
    *a1 = *a2;
    *a2 = v24;
    v25 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v25;
    v26 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v26;
    v27 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v27;
    v28 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v28;
    v29 = *(a1 + 5);
    *(a1 + 5) = *(a2 + 5);
    *(a2 + 5) = v29;
    v30 = *(a1 + 6);
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 6) = v30;
    v31 = *(a1 + 7);
    *(a1 + 7) = *(a2 + 7);
    *(a2 + 7) = v31;
    v32 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v32;
    v33 = *(a1 + 9);
    *(a1 + 9) = *(a2 + 9);
    *(a2 + 9) = v33;
    v34 = *(a1 + 10);
    *(a1 + 10) = *(a2 + 10);
    *(a2 + 10) = v34;
    v35 = *(a1 + 11);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 11) = v35;
    v36 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v36;
    v37 = *(a1 + 13);
    *(a1 + 13) = *(a2 + 13);
    *(a2 + 13) = v37;
    v38 = *(a1 + 14);
    *(a1 + 14) = *(a2 + 14);
    *(a2 + 14) = v38;
    v39 = *(a1 + 15);
    *(a1 + 15) = *(a2 + 15);
    *(a2 + 15) = v39;
    return;
  }

  *&v42 = 0;
  *(&v42 + 1) = v7;
  if (!*a1)
  {
LABEL_10:
    *a1 = 0;
    v8 = *a2;
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (*a1 < 1)
  {
    LODWORD(v42) = *a1;
    goto LABEL_10;
  }

  v41 = *a1;
  google::protobuf::RepeatedField<long long>::Grow(&v42, 0);
  google::protobuf::RepeatedField<double>::Swap(&v42, v41, &v42 + 1, v4);
  *a1 = 0;
  v8 = *a2;
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a1[1] < v8)
  {
    v40 = v8;
    google::protobuf::RepeatedField<long long>::Grow(a1, 0);
    v9 = *a1;
    v8 = v40;
    v10 = *(a1 + 1);
    *a1 = v9 + v40;
    if (v40 >= 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 1);
    *a1 = v8;
    if (v8 >= 1)
    {
LABEL_13:
      v11 = *(a2 + 1);
      v12 = (v10 + 8 * v9);
      if (v8 < 8)
      {
        goto LABEL_18;
      }

      v13 = 8 * v9 + v10;
      if ((v13 - v11) < 0x20)
      {
        goto LABEL_18;
      }

      v14 = v8;
      v15 = v8 & 0x7FFFFFFC;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFFC);
      v12 += v15;
      v16 = &v11[v15];
      v17 = (v11 + 2);
      v18 = (v13 + 16);
      v19 = v15;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      v11 = v16;
      if (v15 != v14)
      {
LABEL_18:
        v21 = v8 + 1;
        do
        {
          v22 = *v11++;
          *v12++ = v22;
          --v21;
        }

        while (v21 > 1);
      }
    }
  }

LABEL_20:
  if (&v42 != a2)
  {
    v23 = *a2;
    *a2 = v42;
    v42 = v23;
  }

  if (SDWORD1(v42) >= 1 && !*(*(&v42 + 1) - 8))
  {
    operator delete((*(&v42 + 1) - 8));
  }
}

void sub_23CDCBF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13)
{
  if (a12 >= 1)
  {
    google::protobuf::RepeatedField<int>::Swap(&a13);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::RepeatedField<BOOL>::Swap(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = (a1 + 2);
  v5 = (a1 + 2);
  if (a1[1])
  {
    v5 = *v4 - 8;
  }

  v6 = *v5;
  v7 = *(a2 + 1);
  if (a2[1])
  {
    v7 = *(v7 - 8);
  }

  if (v6 == v7)
  {
    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    v16 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v16;
    v17 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v17;
    v18 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v18;
    v19 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v19;
    v20 = *(a1 + 5);
    *(a1 + 5) = *(a2 + 5);
    *(a2 + 5) = v20;
    v21 = *(a1 + 6);
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 6) = v21;
    v22 = *(a1 + 7);
    *(a1 + 7) = *(a2 + 7);
    *(a2 + 7) = v22;
    v23 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v23;
    v24 = *(a1 + 9);
    *(a1 + 9) = *(a2 + 9);
    *(a2 + 9) = v24;
    v25 = *(a1 + 10);
    *(a1 + 10) = *(a2 + 10);
    *(a2 + 10) = v25;
    v26 = *(a1 + 11);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 11) = v26;
    v27 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v27;
    v28 = *(a1 + 13);
    *(a1 + 13) = *(a2 + 13);
    *(a2 + 13) = v28;
    v29 = *(a1 + 14);
    *(a1 + 14) = *(a2 + 14);
    *(a2 + 14) = v29;
    v30 = *(a1 + 15);
    *(a1 + 15) = *(a2 + 15);
    *(a2 + 15) = v30;
    return;
  }

  *&v46 = 0;
  *(&v46 + 1) = v7;
  v8 = *a1;
  if (!v8)
  {
LABEL_10:
    *a1 = 0;
    v9 = *a2;
    if (!v9)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (v8 < 1)
  {
    LODWORD(v46) = *a1;
    goto LABEL_10;
  }

  v45 = *a1;
  google::protobuf::RepeatedField<BOOL>::Grow(&v46, 0, v8);
  google::protobuf::RepeatedField<BOOL>::Swap(&v46, v45, &v46 + 1, v4);
  *a1 = 0;
  v9 = *a2;
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_11:
  if (a1[1] < v9)
  {
    v44 = v9;
    google::protobuf::RepeatedField<BOOL>::Grow(a1, 0, v9);
    v10 = *a1;
    v9 = v44;
    v11 = *(a1 + 1);
    *a1 = v10 + v44;
    if (v44 >= 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = *(a1 + 1);
    *a1 = v9;
    if (v9 >= 1)
    {
LABEL_13:
      v12 = *(a2 + 1);
      v13 = (v11 + v10);
      if (v9 >= 8 && (v10 + v11 - v12) >= 0x20)
      {
        if (v9 < 0x20)
        {
          v14 = 0;
          goto LABEL_23;
        }

        v14 = v9 & 0x7FFFFFE0;
        v31 = (v12 + 16);
        v32 = (v10 + v11 + 16);
        v33 = v14;
        do
        {
          v34 = *v31;
          *(v32 - 1) = *(v31 - 1);
          *v32 = v34;
          v31 += 2;
          v32 += 2;
          v33 -= 32;
        }

        while (v33);
        if (v14 == v9)
        {
          goto LABEL_31;
        }

        if ((v9 & 0x18) != 0)
        {
LABEL_23:
          v13 += v9 & 0x7FFFFFF8;
          v35 = &v12[v9 & 0x7FFFFFF8];
          v36 = &v12[v14];
          v37 = (v11 + v14 + v10);
          v38 = v14 - (v9 & 0x7FFFFFF8);
          do
          {
            v39 = *v36++;
            *v37++ = v39;
            v38 += 8;
          }

          while (v38);
          v12 = v35;
          v40 = (v9 & 0x7FFFFFF8) == v9;
          LODWORD(v9) = v9 - (v9 & 0x7FFFFFF8);
          if (v40)
          {
            goto LABEL_31;
          }

          goto LABEL_29;
        }

        v12 += v14;
        v13 += v14;
        LODWORD(v9) = v9 - v14;
      }

LABEL_29:
      v41 = v9 + 1;
      do
      {
        v42 = *v12++;
        *v13++ = v42;
        --v41;
      }

      while (v41 > 1);
    }
  }

LABEL_31:
  if (&v46 != a2)
  {
    v43 = *a2;
    *a2 = v46;
    v46 = v43;
  }

  if (SDWORD1(v46) >= 1 && !*(*(&v46 + 1) - 8))
  {
    operator delete((*(&v46 + 1) - 8));
  }
}

void sub_23CDCC2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13)
{
  if (a12 >= 1)
  {
    google::protobuf::RepeatedField<int>::Swap(&a13);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Reflection::UnsafeShallowSwapField(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FieldDescriptor *a4)
{
  v4 = *(a4 + 3);
  if ((~*(a4 + 1) & 0x60) != 0)
  {
    if (v4 && (v47[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v48 = a4, atomic_load_explicit(v4, memory_order_acquire) != 221))
    {
      *v45 = a3;
      v37 = a4;
      v38 = a1;
      v39 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, v47, &v48);
      a2 = v39;
      a1 = v38;
      a3 = *v45;
      a4 = v37;
      v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v37[2]];
      if (v6 == 10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
      if (v6 == 10)
      {
LABEL_10:
        google::protobuf::internal::SwapFieldHelper::SwapMessageField<true>(a1, a2, a3, a4);
        return;
      }
    }

    v40 = *(a4 + 3);
    if (v40)
    {
      v47[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v48 = a4;
      if (atomic_load_explicit(v40, memory_order_acquire) != 221)
      {
        *v46 = a3;
        v41 = a4;
        v42 = a1;
        v43 = a2;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v40, 1, v47, &v48);
        a2 = v43;
        a1 = v42;
        a3 = *v46;
        a4 = v41;
      }

      v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
    }

    if (v6 == 9)
    {
      google::protobuf::internal::SwapFieldHelper::SwapStringField<true>(a1, a2, a3, a4);
    }

    else
    {
      google::protobuf::internal::SwapFieldHelper::SwapNonMessageNonStringField(a1, a2, a3, a4);
    }

    return;
  }

  if (v4 && (v47[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v48 = a4, atomic_load_explicit(v4, memory_order_acquire) != 221))
  {
    *v44 = a3;
    v7 = a4;
    v8 = a1;
    v9 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, v47, &v48);
    a2 = v9;
    a1 = v8;
    a3 = *v44;
    a4 = v7;
    v5 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7[2]];
    if (v5 <= 5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
    if (v5 <= 5)
    {
LABEL_5:
      if (v5 <= 2 && v5 != 1 && v5 != 2)
      {
LABEL_30:
        v35 = a4;
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v47, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 916);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v47, "Unimplemented type: ", 0x14uLL);
        LODWORD(v48) = google::protobuf::FieldDescriptor::cpp_type(v35);
        absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::CppType,0>(v47, &v48);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v47);
      }

LABEL_19:
      v10 = a3;
      if ((*(a4 + 1) & 0x10) != 0 && (v11 = *(a4 + 5)) != 0 && (*(v11 + 4) != 1 || (*(*(v11 + 48) + 1) & 2) == 0))
      {
        v12 = a1;
        v36 = a4;
        v14 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
        v15 = v36;
        v16 = v10;
        if ((*(v36 + 1) & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v12 = a1;
        v13 = a4;
        v14 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
        v15 = v13;
        v16 = v10;
        if ((*(v13 + 1) & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

      v17 = *(v15 + 5);
      if (v17 && (*(v17 + 4) != 1 || (*(*(v17 + 48) + 1) & 2) == 0))
      {
        v18 = (v16 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((v12 + 8), v15));
        goto LABEL_28;
      }

LABEL_27:
      v18 = google::protobuf::Reflection::MutableRawNonOneofImpl(v12, v16, v15);
LABEL_28:
      v19 = *v14;
      *v14 = *v18;
      *v18 = v19;
      v20 = v14[1];
      v14[1] = v18[1];
      v18[1] = v20;
      v21 = v14[2];
      v14[2] = v18[2];
      v18[2] = v21;
      v22 = v14[3];
      v14[3] = v18[3];
      v18[3] = v22;
      v23 = v14[4];
      v14[4] = v18[4];
      v18[4] = v23;
      v24 = v14[5];
      v14[5] = v18[5];
      v18[5] = v24;
      v25 = v14[6];
      v14[6] = v18[6];
      v18[6] = v25;
      v26 = v14[7];
      v14[7] = v18[7];
      v18[7] = v26;
      v27 = v14[8];
      v14[8] = v18[8];
      v18[8] = v27;
      v28 = v14[9];
      v14[9] = v18[9];
      v18[9] = v28;
      v29 = v14[10];
      v14[10] = v18[10];
      v18[10] = v29;
      v30 = v14[11];
      v14[11] = v18[11];
      v18[11] = v30;
      v31 = v14[12];
      v14[12] = v18[12];
      v18[12] = v31;
      v32 = v14[13];
      v14[13] = v18[13];
      v18[13] = v32;
      v33 = v14[14];
      v14[14] = v18[14];
      v18[14] = v33;
      v34 = v14[15];
      v14[15] = v18[15];
      v18[15] = v34;
      return;
    }
  }

  if (v5 <= 8)
  {
    goto LABEL_19;
  }

  if (v5 == 9)
  {
    google::protobuf::internal::SwapFieldHelper::SwapRepeatedStringField<true>(a1, a2, a3, a4);
  }

  else
  {
    if (v5 != 10)
    {
      goto LABEL_30;
    }

    google::protobuf::internal::SwapFieldHelper::SwapRepeatedMessageField<true>(a1, a2, a3, a4);
  }
}

uint64_t *google::protobuf::internal::SwapFieldHelper::SwapMessageField<true>(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FieldDescriptor *a4)
{
  if ((*(a4 + 1) & 0x10) != 0 && (v7 = *(a4 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    if ((*(a4 + 1) & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
    if ((*(a4 + 1) & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

  v9 = *(a4 + 5);
  if (v9 && (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0))
  {
    result = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    goto LABEL_10;
  }

LABEL_9:
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_10:
  v11 = *v8;
  *v8 = *result;
  *result = v11;
  return result;
}

double google::protobuf::internal::SwapFieldHelper::SwapStringField<true>(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FieldDescriptor *a4)
{
  v4 = *(a4 + 3);
  if (v4 && (v31 = a4, v32 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v4, memory_order_acquire) != 221))
  {
    v17 = a3;
    v18 = a4;
    v19 = a1;
    v20 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, &v32, &v31);
    a2 = v20;
    a1 = v19;
    a4 = v18;
    a3 = v17;
    v5 = *(v18 + 2);
    v6 = *(v18 + 1);
    if (v5 != 12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *(a4 + 2);
    v6 = *(a4 + 1);
    if (v5 != 12)
    {
      goto LABEL_18;
    }
  }

  if ((v6 & 0x60) != 0x60 && (v6 & 8) == 0 && *(*(a4 + 7) + 120) == 1)
  {
    v7 = a3;
    if ((v6 & 0x10) != 0 && (v8 = *(a4 + 5)) != 0 && (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0))
    {
      v9 = a1;
      v28 = a4;
      v11 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
      v12 = v28;
      v13 = v7;
      if ((*(v28 + 1) & 0x10) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = a1;
      v10 = a4;
      v11 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
      v12 = v10;
      v13 = v7;
      if ((*(v10 + 1) & 0x10) == 0)
      {
        goto LABEL_15;
      }
    }

    v14 = *(v12 + 5);
    if (v14 && (*(v14 + 4) != 1 || (*(*(v14 + 48) + 1) & 2) == 0))
    {
      v15 = (v13 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((v9 + 8), v12));
      goto LABEL_16;
    }

LABEL_15:
    v15 = google::protobuf::Reflection::MutableRawNonOneofImpl(v9, v13, v12);
LABEL_16:
    v16 = *v11;
    *v11 = 0;
    v11[1] = 0;
    *v11 = *v15;
    *v15 = v16;
    return *&v16;
  }

LABEL_18:
  if ((v6 & 8) != 0)
  {
    v22 = *(a4 + 5);
    if (v22)
    {
      v21 = (v22 + 96);
    }

    else
    {
      v21 = (*(a4 + 2) + 120);
    }
  }

  else
  {
    v21 = (*(a4 + 4) + 56);
  }

  v23 = *(*(a1 + 16) + ((0xBA2E8BA300000000 * ((a4 - *v21) >> 3)) >> 30));
  v24 = *(a4 + 3);
  if (v24)
  {
    v31 = a4;
    v32 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v24, memory_order_acquire) != 221)
    {
      v30 = a3;
      v25 = a4;
      v26 = a1;
      v27 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v24, 1, &v32, &v31);
      a2 = v27;
      a1 = v26;
      a4 = v25;
      a3 = v30;
    }

    v5 = *(a4 + 2);
  }

  if (v5 == 12 || v5 == 9) && (v23)
  {
    *&v16 = google::protobuf::internal::SwapFieldHelper::SwapInlinedStrings<true>(a1, a2, a3, a4).n128_u64[0];
  }

  else
  {
    google::protobuf::internal::SwapFieldHelper::SwapNonInlinedStrings<true>(a1, a2, a3, a4);
  }

  return *&v16;
}

char *google::protobuf::internal::SwapFieldHelper::SwapRepeatedStringField<true>(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FieldDescriptor *a4)
{
  if ((*(a4 + 1) & 0x10) != 0 && (v7 = *(a4 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    if ((*(a4 + 1) & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
    if ((*(a4 + 1) & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

  v9 = *(a4 + 5);
  if (v9 && (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0))
  {
    result = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    goto LABEL_10;
  }

LABEL_9:
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_10:
  v11 = *v8;
  *v8 = *result;
  *result = v11;
  v12 = v8[1];
  v8[1] = result[1];
  result[1] = v12;
  v13 = v8[2];
  v8[2] = result[2];
  result[2] = v13;
  v14 = v8[3];
  v8[3] = result[3];
  result[3] = v14;
  v15 = v8[4];
  v8[4] = result[4];
  result[4] = v15;
  v16 = v8[5];
  v8[5] = result[5];
  result[5] = v16;
  v17 = v8[6];
  v8[6] = result[6];
  result[6] = v17;
  v18 = v8[7];
  v8[7] = result[7];
  result[7] = v18;
  v19 = v8[8];
  v8[8] = result[8];
  result[8] = v19;
  v20 = v8[9];
  v8[9] = result[9];
  result[9] = v20;
  v21 = v8[10];
  v8[10] = result[10];
  result[10] = v21;
  v22 = v8[11];
  v8[11] = result[11];
  result[11] = v22;
  v23 = v8[12];
  v8[12] = result[12];
  result[12] = v23;
  v24 = v8[13];
  v8[13] = result[13];
  result[13] = v24;
  v25 = v8[14];
  v8[14] = result[14];
  result[14] = v25;
  v26 = v8[15];
  v8[15] = result[15];
  result[15] = v26;
  return result;
}

char *google::protobuf::internal::SwapFieldHelper::SwapRepeatedMessageField<true>(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FieldDescriptor *a4)
{
  v7 = *(a4 + 3);
  if (v7 && (v35 = a4, v36 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v7, memory_order_acquire) != 221))
  {
    v15 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, &v36, &v35);
    a2 = v15;
    if (*(a4 + 2) != 11)
    {
      goto LABEL_16;
    }
  }

  else if (*(a4 + 2) != 11)
  {
    goto LABEL_16;
  }

  v8 = a2;
  is_map_message_type = google::protobuf::FieldDescriptor::is_map_message_type(a4);
  a2 = v8;
  if (is_map_message_type)
  {
    if ((*(a4 + 1) & 0x10) != 0 && (v10 = *(a4 + 5)) != 0 && (*(v10 + 4) != 1 || (*(*(v10 + 48) + 1) & 2) == 0))
    {
      v11 = (v8 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
      if ((*(a4 + 1) & 0x10) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, v8, a4);
      if ((*(a4 + 1) & 0x10) == 0)
      {
        goto LABEL_13;
      }
    }

    v12 = *(a4 + 5);
    if (v12 && (*(v12 + 4) != 1 || (*(*(v12 + 48) + 1) & 2) == 0))
    {
      v13 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
      return (*(*v11 + 64))(v11, v13);
    }

LABEL_13:
    v13 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
    return (*(*v11 + 64))(v11, v13);
  }

LABEL_16:
  if ((*(a4 + 1) & 0x10) != 0 && (v16 = *(a4 + 5)) != 0 && (*(v16 + 4) != 1 || (*(*(v16 + 48) + 1) & 2) == 0))
  {
    v17 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    if ((*(a4 + 1) & 0x10) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v17 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
    if ((*(a4 + 1) & 0x10) == 0)
    {
      goto LABEL_24;
    }
  }

  v18 = *(a4 + 5);
  if (v18 && (*(v18 + 4) != 1 || (*(*(v18 + 48) + 1) & 2) == 0))
  {
    result = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    goto LABEL_25;
  }

LABEL_24:
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_25:
  v19 = *v17;
  *v17 = *result;
  *result = v19;
  v20 = v17[1];
  v17[1] = result[1];
  result[1] = v20;
  v21 = v17[2];
  v17[2] = result[2];
  result[2] = v21;
  v22 = v17[3];
  v17[3] = result[3];
  result[3] = v22;
  v23 = v17[4];
  v17[4] = result[4];
  result[4] = v23;
  v24 = v17[5];
  v17[5] = result[5];
  result[5] = v24;
  v25 = v17[6];
  v17[6] = result[6];
  result[6] = v25;
  v26 = v17[7];
  v17[7] = result[7];
  result[7] = v26;
  v27 = v17[8];
  v17[8] = result[8];
  result[8] = v27;
  v28 = v17[9];
  v17[9] = result[9];
  result[9] = v28;
  v29 = v17[10];
  v17[10] = result[10];
  result[10] = v29;
  v30 = v17[11];
  v17[11] = result[11];
  result[11] = v30;
  v31 = v17[12];
  v17[12] = result[12];
  result[12] = v31;
  v32 = v17[13];
  v17[13] = result[13];
  result[13] = v32;
  v33 = v17[14];
  v17[14] = result[14];
  result[14] = v33;
  v34 = v17[15];
  v17[15] = result[15];
  result[15] = v34;
  return result;
}

uint64_t google::protobuf::Reflection::HasField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 32) != *a1)
  {
  }

  v5 = *(a3 + 1);
  if ((~v5 & 0x60) == 0)
  {
  }

  if ((v5 & 8) != 0)
  {
    v8 = (a2 + *(a1 + 40));
    v9 = *(a3 + 4);

    return google::protobuf::internal::ExtensionSet::Has(v8, v9);
  }

  else if ((v5 & 0x10) == 0 || (v6 = *(a3 + 40)) == 0 || *(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0)
  {

    return google::protobuf::Reflection::HasBit(a1, a2, a3);
  }

  else
  {
    return *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) == *(a3 + 4);
  }
}

void google::protobuf::anonymous namespace::ReportReflectionUsageError(google::protobuf::_anonymous_namespace_ *this, const google::protobuf::Descriptor *a2, const google::protobuf::FieldDescriptor *a3, const char *a4, const char *a5)
{
  v11 = a4;
  v12 = a3;
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v10, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 179);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, "Protocol Buffer reflection usage error:\n  Method      : google::protobuf::Reflection::", 0x56uLL);
  v7 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v10, &v12);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "\n  Message type: ", 0x11uLL);
  v8 = absl::lts_20240722::log_internal::LogMessage::operator<<(v7, (*(this + 1) + 24));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "\n  Field       : ", 0x11uLL);
  v9 = absl::lts_20240722::log_internal::LogMessage::operator<<(v8, (*(a2 + 1) + 24));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "\n  Problem     : ", 0x11uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v9, &v11);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v10);
}

void google::protobuf::Reflection::InternalSwap(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 == a3)
  {
    return;
  }

  v8 = a1[9];
  v9 = *(a2 + v8);
  *(a2 + v8) = *(a3 + v8);
  *(a3 + v8) = v9;
  v10 = a1[24];
  if ((v10 & 0x80000000) == 0)
  {
    v11 = 0;
    v12 = -1;
    do
    {
      v13 = *(*a1 + 56);
      v14 = (v13 + v11);
      if ((*(v13 + v11 + 1) & 0x10) == 0 || (v15 = *(v14 + 5)) == 0 || *(v15 + 4) == 1 && (*(*(v15 + 48) + 1) & 2) != 0)
      {
        if (a1[17] == -1 || ((*(v13 + v11 + 1) & 8) != 0 ? ((v17 = *(v13 + v11 + 40)) == 0 ? (v16 = (*(v13 + v11 + 16) + 120)) : (v16 = (v17 + 96))) : (v16 = (*(v13 + v11 + 32) + 56)), (*(*(a1 + 2) + ((0xBA2E8BA300000000 * ((v11 + v13 - *v16) >> 3)) >> 30)) & 0x80000000) == 0))
        {
          google::protobuf::Reflection::UnsafeShallowSwapField(a1, a2, a3, v14);
          v10 = a1[24];
        }
      }

      ++v12;
      v11 += 88;
    }

    while (v12 < v10);
  }

  v18 = a1[17];
  if (v18 != -1)
  {
    v19 = *(a2 + v18);
    *(a2 + v18) = *(a3 + v18);
    *(a3 + v18) = v19;
  }

  v20 = *(*a1 + 124);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = 56 * v20;
    do
    {
      google::protobuf::Reflection::SwapOneofField<true>(a1, a2, a3, *(*a1 + 64) + v21, a5);
      v21 += 56;
    }

    while (v22 != v21);
  }

  v23 = a1[8];
  if (v23 == -1)
  {
    goto LABEL_48;
  }

  v24 = *(*a1 + 4);
  if (v24 < 1)
  {
    goto LABEL_48;
  }

  v25 = 0;
  v26 = a2 + v23;
  v27 = a3 + v23;
  v28 = (*(*a1 + 56) + 40);
  do
  {
    v29 = *(v28 - 39);
    if ((~v29 & 0x60) != 0 && ((v29 & 0x10) == 0 || (v30 = *v28) == 0 || *(v30 + 4) == 1 && (*(*(v30 + 48) + 1) & 2) != 0))
    {
      ++v25;
    }

    v28 += 11;
    --v24;
  }

  while (v24);
  if (v25 < 1)
  {
    goto LABEL_48;
  }

  v31 = (v25 + 31) >> 5;
  if (v25 > 0xE0 && (v26 < v27 + 4 * v31 ? (v32 = v27 >= v26 + 4 * v31) : (v32 = 1), v32))
  {
    v33 = v31 & 0x3FFFFF8;
    v34 = (a2 + v23 + 16);
    v35 = (a3 + v23 + 16);
    v36 = v33;
    do
    {
      v37 = *(v34 - 1);
      v38 = *v34;
      v39 = *v35;
      *(v34 - 1) = *(v35 - 1);
      *v34 = v39;
      *(v35 - 1) = v37;
      *v35 = v38;
      v34 += 2;
      v35 += 2;
      v36 -= 8;
    }

    while (v36);
    if (v33 == v31)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v33 = 0;
  }

  v40 = v23 + 4 * v33;
  v41 = (a3 + v40);
  v42 = (a2 + v40);
  v43 = v31 - v33;
  do
  {
    v44 = *v42;
    *v42++ = *v41;
    *v41++ = v44;
    --v43;
  }

  while (v43);
LABEL_48:
  v45 = a1[16];
  if (v45 == -1)
  {
    goto LABEL_86;
  }

  v46 = (a2 + v45);
  v47 = (a3 + v45);
  v48 = *a1;
  if (*(*a1 + 4) < 1)
  {
    v63 = 0;
    v64 = *v46;
    v65 = *v47;
    if (((*v47 ^ *v46) & 1) == 0)
    {
      goto LABEL_79;
    }

LABEL_90:
    google::protobuf::Reflection::InternalSwap(v64, v65);
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  do
  {
    v53 = *(v48 + 56);
    if ((*(v53 + v49 + 1) & 8) == 0 && (*(v53 + v49 + 1) & 0x60) != 0x60 && ((*(v53 + v49 + 1) & 0x10) == 0 || (v54 = *(v53 + v49 + 40)) == 0 || *(v54 + 4) == 1 && (*(*(v54 + 48) + 1) & 2) != 0))
    {
      v52 = v53 + v49;
      if (!*(*(v53 + v49 + 56) + 120))
      {
        v55 = *(v52 + 24);
        v56 = *(*(a1 + 2) + ((0xBA2E8BA300000000 * ((v49 + v53 - *(*(v52 + 32) + 56)) >> 3)) >> 30));
        if (v55 && (v83 = google::protobuf::FieldDescriptor::TypeOnceInit, v84 = v53 + v49, atomic_load_explicit(v55, memory_order_acquire) != 221))
        {
          v81 = v46;
          v82 = v47;
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v55, 1, &v83, &v84);
          v46 = v81;
          v47 = v82;
          v59 = *(v53 + v49 + 2);
          if (v59 == 12 || v59 == 9)
          {
LABEL_67:
            v51 += v56 & 1;
          }
        }

        else
        {
          v57 = *(v53 + v49 + 2);
          if (v57 == 12 || v57 == 9)
          {
            goto LABEL_67;
          }
        }
      }
    }

    ++v50;
    v48 = *a1;
    v49 += 88;
  }

  while (v50 < *(*a1 + 4));
  v61 = v51 + 32;
  if (v51 < -32)
  {
    v61 = v51 + 63;
  }

  v62 = v61 >> 5;
  if (v51)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  v64 = *v46;
  v65 = *v47;
  if ((*v47 ^ *v46))
  {
    goto LABEL_90;
  }

LABEL_79:
  if (v63 >= 1)
  {
    v66 = v63;
    if (v63 <= 7 || (v67 = v45 + 4 * v63, v46 < a3 + v67) && v47 < a2 + v67)
    {
      v68 = 0;
      goto LABEL_84;
    }

    v68 = v66 & 0x7FFFFFF8;
    v75 = (a2 + v45 + 16);
    v76 = (a3 + v45 + 16);
    v77 = v68;
    do
    {
      v78 = *(v75 - 1);
      v79 = *v75;
      v80 = *v76;
      *(v75 - 1) = *(v76 - 1);
      *v75 = v80;
      *(v76 - 1) = v78;
      *v76 = v79;
      v75 += 2;
      v76 += 2;
      v77 -= 8;
    }

    while (v77);
    if (v68 != v66)
    {
LABEL_84:
      v69 = v45 + 4 * v68;
      v70 = (a3 + v69);
      v71 = (a2 + v69);
      v72 = v66 - v68;
      do
      {
        v73 = *v71;
        *v71++ = *v70;
        *v70++ = v73;
        --v72;
      }

      while (v72);
    }
  }

LABEL_86:
  v74 = a1[10];
  if (v74 != -1)
  {
    google::protobuf::internal::ExtensionSet::InternalSwap((a2 + v74), (a3 + v74));
  }
}

void google::protobuf::Reflection::SwapOneofField<true>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 44) - 613566756 * ((a4 - *(*(a4 + 16) + 64)) >> 3);
  v11 = *(a2 + v10);
  v12 = *(a3 + v10);
  if (v11)
  {
    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(*a1, *(a2 + v10));
    v15 = *(FieldByNumber + 24);
    if (v15 && (v70[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v71 = FieldByNumber, atomic_load_explicit(v15, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, v70, &v71);
      v16 = *(FieldByNumber + 2);
      v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 2)];
      if (v17 <= 5)
      {
LABEL_5:
        if (v17 > 2)
        {
          if (v17 != 3)
          {
            if (v17 == 4)
            {
              if ((*(FieldByNumber + 1) & 0x10) == 0)
              {
                goto LABEL_75;
              }

              v21 = *(FieldByNumber + 40);
              if (!v21 || *(v21 + 4) == 1 && (*(*(v21 + 48) + 1) & 2) != 0)
              {
                goto LABEL_75;
              }
            }

            else if ((*(FieldByNumber + 1) & 0x10) == 0 || (v18 = *(FieldByNumber + 40)) == 0 || *(v18 + 4) == 1 && (*(*(v18 + 48) + 1) & 2) != 0)
            {
LABEL_75:
              v33 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, FieldByNumber);
LABEL_76:
              v5 = *v33;
              v69 = v33[1];
              v19 = *v33 & 0xFFFFFF00;
LABEL_77:
              *(a2 + *(a1 + 44) - 613566756 * ((*(FieldByNumber + 40) - *(*(*(FieldByNumber + 40) + 16) + 64)) >> 3)) = 0;
              if (v12)
              {
                goto LABEL_78;
              }

              goto LABEL_14;
            }

LABEL_190:
            v33 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), FieldByNumber));
            goto LABEL_76;
          }

          if ((*(FieldByNumber + 1) & 0x10) == 0)
          {
            goto LABEL_55;
          }

          v22 = *(FieldByNumber + 40);
          if (!v22 || *(v22 + 4) == 1 && (*(*(v22 + 48) + 1) & 2) != 0)
          {
            goto LABEL_55;
          }

          goto LABEL_191;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            if ((*(FieldByNumber + 1) & 0x10) == 0)
            {
              goto LABEL_75;
            }

            v20 = *(FieldByNumber + 40);
            if (!v20 || *(v20 + 4) == 1 && (*(*(v20 + 48) + 1) & 2) != 0)
            {
              goto LABEL_75;
            }

            goto LABEL_190;
          }

          goto LABEL_188;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v16 = *(FieldByNumber + 2);
      v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 2)];
      if (v17 <= 5)
      {
        goto LABEL_5;
      }
    }

    if (v17 <= 7)
    {
      if (v17 != 6)
      {
        if ((*(FieldByNumber + 1) & 0x10) != 0 && (v25 = *(FieldByNumber + 40)) != 0 && (*(v25 + 4) != 1 || (*(*(v25 + 48) + 1) & 2) == 0))
        {
          v26 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), FieldByNumber));
        }

        else
        {
          v26 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, FieldByNumber);
        }

        v19 = 0;
        LOBYTE(v5) = *v26;
        goto LABEL_57;
      }

      if ((*(FieldByNumber + 1) & 0x10) == 0)
      {
        goto LABEL_55;
      }

      v28 = *(FieldByNumber + 40);
      if (!v28 || *(v28 + 4) == 1 && (*(*(v28 + 48) + 1) & 2) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_191;
    }

    if (v17 != 8)
    {
      if (v17 == 9)
      {
        v30 = *(FieldByNumber + 24);
        if (v30)
        {
          v70[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v71 = FieldByNumber;
          if (atomic_load_explicit(v30, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v30, 1, v70, &v71);
          }

          v16 = *(FieldByNumber + 2);
        }

        if (v16 != 12 || (*(FieldByNumber + 1) & 0x60) == 0x60 || (*(FieldByNumber + 1) & 8) != 0 || *(*(FieldByNumber + 56) + 120) != 1)
        {
          if ((*(FieldByNumber + 1) & 0x10) == 0)
          {
            goto LABEL_75;
          }

          v32 = *(FieldByNumber + 40);
          if (!v32 || *(v32 + 4) == 1 && (*(*(v32 + 48) + 1) & 2) != 0)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if ((*(FieldByNumber + 1) & 0x10) == 0)
          {
            goto LABEL_75;
          }

          v31 = *(FieldByNumber + 40);
          if (!v31 || *(v31 + 4) == 1 && (*(*(v31 + 48) + 1) & 2) != 0)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_190;
      }

      if (v17 == 10)
      {
        v23 = google::protobuf::Reflection::UnsafeArenaReleaseMessage(a1, a2, FieldByNumber, 0, v13);
        LOBYTE(v5) = v23;
        v19 = v23 & 0xFFFFFF00;
        v24 = HIDWORD(v23);
LABEL_57:
        v69 = v24;
        goto LABEL_77;
      }

LABEL_188:
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v70, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 558);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v70, "unimplemented type: ", 0x14uLL);
      LODWORD(v71) = google::protobuf::FieldDescriptor::cpp_type(FieldByNumber);
      absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::CppType,0>(v70, &v71);
LABEL_189:
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v70);
    }

LABEL_46:
    if ((*(FieldByNumber + 1) & 0x10) == 0 || (v27 = *(FieldByNumber + 40)) == 0 || *(v27 + 4) == 1 && (*(*(v27 + 48) + 1) & 2) != 0)
    {
LABEL_55:
      v29 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, FieldByNumber);
LABEL_56:
      v5 = *v29;
      v19 = *v29 & 0xFFFFFF00;
      goto LABEL_57;
    }

LABEL_191:
    v29 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), FieldByNumber));
    goto LABEL_56;
  }

  v19 = 0;
  FieldByNumber = 0;
  v69 = *(a1 + 44) - 613566756 * ((a4 - *(*(a4 + 16) + 64)) >> 3);
  if (v12)
  {
LABEL_78:
    v35 = google::protobuf::Descriptor::FindFieldByNumber(*a1, v12);
    v36 = *(v35 + 24);
    if (v36 && (v70[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v71 = v35, atomic_load_explicit(v36, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v36, 1, v70, &v71);
      v37 = *(v35 + 2);
      v38 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v35 + 2)];
      if (v38 <= 5)
      {
LABEL_81:
        if (v38 > 2)
        {
          if (v38 != 3)
          {
            if (v38 != 4)
            {
              if ((*(v35 + 1) & 0x10) != 0 && (v39 = *(v35 + 40)) != 0 && (*(v39 + 4) != 1 || (*(*(v39 + 48) + 1) & 2) == 0))
              {
                v40 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v35));
              }

              else
              {
                v40 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a3, v35);
              }

              v70[0] = *v40;
              google::protobuf::Reflection::SetField<double>(a1, a2, v35, v70, v41);
              goto LABEL_153;
            }

            if ((*(v35 + 1) & 0x10) == 0)
            {
              goto LABEL_145;
            }

            v43 = *(v35 + 40);
            if (!v43 || *(v43 + 4) == 1 && (*(*(v43 + 48) + 1) & 2) != 0)
            {
              goto LABEL_145;
            }

LABEL_201:
            v58 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v35));
            goto LABEL_146;
          }

          if ((*(v35 + 1) & 0x10) == 0)
          {
            goto LABEL_106;
          }

          v44 = *(v35 + 40);
          if (!v44 || *(v44 + 4) == 1 && (*(*(v44 + 48) + 1) & 2) != 0)
          {
            goto LABEL_106;
          }

          goto LABEL_199;
        }

        if (v38 != 1)
        {
          if (v38 == 2)
          {
            if ((*(v35 + 1) & 0x10) != 0)
            {
              v42 = *(v35 + 40);
              if (v42)
              {
                if (*(v42 + 4) != 1 || (*(*(v42 + 48) + 1) & 2) == 0)
                {
                  goto LABEL_201;
                }
              }
            }

LABEL_145:
            v58 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a3, v35);
LABEL_146:
            v70[0] = *v58;
            google::protobuf::Reflection::SetField<long long>(a1, a2, v35, v70, v59);
            goto LABEL_153;
          }

LABEL_166:
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v70, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 558);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v70, "unimplemented type: ", 0x14uLL);
          LODWORD(v71) = google::protobuf::FieldDescriptor::cpp_type(v35);
          absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::internal::FieldDescriptorLite::CppType,0>(v70, &v71);
          goto LABEL_189;
        }

LABEL_122:
        if ((*(v35 + 1) & 0x10) == 0 || (v52 = *(v35 + 40)) == 0 || *(v52 + 4) == 1 && (*(*(v52 + 48) + 1) & 2) != 0)
        {
LABEL_106:
          v45 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a3, v35);
LABEL_107:
          LODWORD(v70[0]) = *v45;
          google::protobuf::Reflection::SetField<int>(a1, a2, v35, v70, v46);
          goto LABEL_153;
        }

LABEL_199:
        v45 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v35));
        goto LABEL_107;
      }
    }

    else
    {
      v37 = *(v35 + 2);
      v38 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v35 + 2)];
      if (v38 <= 5)
      {
        goto LABEL_81;
      }
    }

    if (v38 <= 7)
    {
      if (v38 == 6)
      {
        if ((*(v35 + 1) & 0x10) != 0 && (v53 = *(v35 + 40)) != 0 && (*(v53 + 4) != 1 || (*(*(v53 + 48) + 1) & 2) == 0))
        {
          v54 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v35));
        }

        else
        {
          v54 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a3, v35);
        }

        LODWORD(v70[0]) = *v54;
        google::protobuf::Reflection::SetField<float>(a1, a2, v35, v70, v55);
      }

      else
      {
        if ((*(v35 + 1) & 0x10) != 0 && (v49 = *(v35 + 40)) != 0 && (*(v49 + 4) != 1 || (*(*(v49 + 48) + 1) & 2) == 0))
        {
          v50 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v35));
        }

        else
        {
          v50 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a3, v35);
        }

        LOBYTE(v70[0]) = *v50;
        google::protobuf::Reflection::SetField<BOOL>(a1, a2, v35, v70, v51);
      }
    }

    else
    {
      if (v38 == 8)
      {
        goto LABEL_122;
      }

      if (v38 != 9)
      {
        if (v38 == 10)
        {
          v47 = google::protobuf::Reflection::UnsafeArenaReleaseMessage(a1, a3, v35, 0, v34);
          google::protobuf::Reflection::UnsafeArenaSetAllocatedMessage(a1, a2, v47, v35, v48);
          goto LABEL_153;
        }

        goto LABEL_166;
      }

      v56 = *(v35 + 24);
      if (v56)
      {
        v70[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v71 = v35;
        if (atomic_load_explicit(v56, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v56, 1, v70, &v71);
        }

        v37 = *(v35 + 2);
      }

      if (v37 == 12 && (*(v35 + 1) & 0x60) != 0x60 && (*(v35 + 1) & 8) == 0 && *(*(v35 + 56) + 120) == 1)
      {
        if ((*(v35 + 1) & 0x10) != 0)
        {
          v57 = *(v35 + 40);
          if (v57)
          {
            if (*(v57 + 4) != 1 || (*(*(v57 + 48) + 1) & 2) == 0)
            {
              goto LABEL_201;
            }
          }
        }

        goto LABEL_145;
      }

      if ((*(v35 + 1) & 0x10) != 0 && (v60 = *(v35 + 40)) != 0 && (*(v60 + 4) != 1 || (*(*(v60 + 48) + 1) & 2) == 0))
      {
        v61 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v35));
      }

      else
      {
        v61 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a3, v35);
      }

      v70[0] = *v61;
      google::protobuf::Reflection::SetField<google::protobuf::internal::ArenaStringPtr>(a1, a2, v35, v70, v62);
    }

LABEL_153:
    *(a3 + *(a1 + 44) - 613566756 * ((*(v35 + 40) - *(*(*(v35 + 40) + 16) + 64)) >> 3)) = 0;
    if (!v11)
    {
      goto LABEL_184;
    }

    goto LABEL_154;
  }

LABEL_14:
  if (!v11)
  {
    goto LABEL_184;
  }

LABEL_154:
  v63 = *(FieldByNumber + 24);
  if (v63 && (v70[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v71 = FieldByNumber, atomic_load_explicit(v63, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v63, 1, v70, &v71);
    v64 = *(FieldByNumber + 2);
    v65 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 2)];
    if (v65 <= 5)
    {
      goto LABEL_157;
    }
  }

  else
  {
    v64 = *(FieldByNumber + 2);
    v65 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 2)];
    if (v65 <= 5)
    {
LABEL_157:
      if (v65 > 2)
      {
        if (v65 != 3)
        {
          if (v65 != 4)
          {
            v70[0] = (v19 | v5 | (v69 << 32));
            google::protobuf::Reflection::SetField<double>(a1, a3, FieldByNumber, v70, a5);
            goto LABEL_184;
          }

LABEL_163:
          LODWORD(v70[0]) = v19 | v5;
          HIDWORD(v70[0]) = v69;
          google::protobuf::Reflection::SetField<long long>(a1, a3, FieldByNumber, v70, a5);
          goto LABEL_184;
        }

LABEL_165:
        LODWORD(v70[0]) = v19 | v5;
        google::protobuf::Reflection::SetField<int>(a1, a3, FieldByNumber, v70, a5);
        goto LABEL_184;
      }

      if (v65 == 1)
      {
        goto LABEL_165;
      }

      if (v65 == 2)
      {
        goto LABEL_163;
      }

      goto LABEL_188;
    }
  }

  if (v65 <= 7)
  {
    if (v65 == 6)
    {
      LODWORD(v70[0]) = v19 | v5;
      google::protobuf::Reflection::SetField<float>(a1, a3, FieldByNumber, v70, a5);
    }

    else
    {
      LOBYTE(v70[0]) = v5;
      google::protobuf::Reflection::SetField<BOOL>(a1, a3, FieldByNumber, v70, a5);
    }
  }

  else
  {
    if (v65 == 8)
    {
      goto LABEL_165;
    }

    if (v65 != 9)
    {
      if (v65 == 10)
      {
        google::protobuf::Reflection::UnsafeArenaSetAllocatedMessage(a1, a3, (v19 | v5 | (v69 << 32)), FieldByNumber, a5);
        goto LABEL_184;
      }

      goto LABEL_188;
    }

    v66 = *(FieldByNumber + 24);
    if (v66)
    {
      v70[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v71 = FieldByNumber;
      if (atomic_load_explicit(v66, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v66, 1, v70, &v71);
      }

      v64 = *(FieldByNumber + 2);
    }

    if (v64 == 12 && (v67 = *(FieldByNumber + 1), (~v67 & 0x60) != 0) && (v67 & 8) == 0 && *(*(FieldByNumber + 56) + 120) == 1)
    {
      v70[0] = (v19 | v5 | (v69 << 32));
      google::protobuf::Reflection::SetField<long long>(a1, a3, FieldByNumber, v70, a5);
    }

    else
    {
      v70[0] = (v19 | v5 | (v69 << 32));
      google::protobuf::Reflection::SetField<google::protobuf::internal::ArenaStringPtr>(a1, a3, FieldByNumber, v70, a5);
    }
  }

LABEL_184:
  v68 = -613566756 * ((a4 - *(*(a4 + 16) + 64)) >> 3);
  *(a2 + (v68 + *(a1 + 44))) = v12;
  *(a3 + (v68 + *(a1 + 44))) = v11;
}

uint64_t google::protobuf::Reflection::FieldSize(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  v5 = *(a3 + 1);
  if ((~v5 & 0x60) != 0)
  {
  }

  if ((v5 & 8) != 0)
  {
    v10 = (a2 + *(a1 + 40));
    v11 = *(a3 + 1);

    return google::protobuf::internal::ExtensionSet::ExtensionSize(v10, v11);
  }

  v6 = *(a3 + 3);
  if (v6 && (v35[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v36 = a3, atomic_load_explicit(v6, memory_order_acquire) != 221))
  {
    v33 = a3;
    v17 = a1;
    v18 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, v35, &v36);
    a1 = v17;
    a3 = v33;
    a2 = v18;
    v7 = v33[2];
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v33[2]];
    if (v8 <= 5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = *(a3 + 2);
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v8 <= 5)
    {
LABEL_7:
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          if ((*(a3 + 1) & 0x10) == 0)
          {
            return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
          }

          v16 = *(a3 + 5);
          if (!v16 || *(v16 + 4) == 1 && (*(*(v16 + 48) + 1) & 2) != 0)
          {
            return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
          }
        }

        else if (v8 == 4)
        {
          if ((*(a3 + 1) & 0x10) == 0)
          {
            return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
          }

          v15 = *(a3 + 5);
          if (!v15 || *(v15 + 4) == 1 && (*(*(v15 + 48) + 1) & 2) != 0)
          {
            return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
          }
        }

        else
        {
          if ((*(a3 + 1) & 0x10) == 0)
          {
            return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
          }

          v9 = *(a3 + 5);
          if (!v9 || *(v9 + 4) == 1 && (*(*(v9 + 48) + 1) & 2) != 0)
          {
            return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
          }
        }

        return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      }

      if (v8 != 1)
      {
        if (v8 == 2)
        {
          if ((*(a3 + 1) & 0x10) == 0)
          {
            return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
          }

          v13 = *(a3 + 5);
          if (!v13 || *(v13 + 4) == 1 && (*(*(v13 + 48) + 1) & 2) != 0)
          {
            return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
          }

          return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
        }

LABEL_79:
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v35, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 1335);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v35, "Can't get here.");
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v35);
      }

      if ((*(a3 + 1) & 0x10) == 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
      }

      v14 = *(a3 + 5);
      if (!v14 || *(v14 + 4) == 1 && (*(*(v14 + 48) + 1) & 2) != 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
      }

      return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
    }
  }

  if (v8 <= 8)
  {
    if (v8 == 6)
    {
      if ((*(a3 + 1) & 0x10) == 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
      }

      v29 = *(a3 + 5);
      if (!v29 || *(v29 + 4) == 1 && (*(*(v29 + 48) + 1) & 2) != 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
      }
    }

    else if (v8 == 7)
    {
      if ((*(a3 + 1) & 0x10) == 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
      }

      v28 = *(a3 + 5);
      if (!v28 || *(v28 + 4) == 1 && (*(*(v28 + 48) + 1) & 2) != 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
      }
    }

    else
    {
      if ((*(a3 + 1) & 0x10) == 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
      }

      v19 = *(a3 + 5);
      if (!v19 || *(v19 + 4) == 1 && (*(*(v19 + 48) + 1) & 2) != 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
      }
    }

    return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
  }

  if ((v8 - 9) >= 2)
  {
    goto LABEL_79;
  }

  v20 = *(a3 + 3);
  if (v20)
  {
    v35[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v36 = a3;
    if (atomic_load_explicit(v20, memory_order_acquire) != 221)
    {
      v34 = a3;
      v31 = a1;
      v32 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, v35, &v36);
      a1 = v31;
      a3 = v34;
      a2 = v32;
    }

    v7 = *(a3 + 2);
  }

  if (v7 != 11)
  {
    if ((*(a3 + 1) & 0x10) == 0)
    {
      return *(google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3) + 8);
    }

LABEL_75:
    v30 = *(a3 + 5);
    if (v30 && (*(v30 + 4) != 1 || (*(*(v30 + 48) + 1) & 2) == 0))
    {
      return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3) + 8);
    }

    return *(google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3) + 8);
  }

  v21 = a1;
  v22 = a2;
  v23 = a3;
  is_map_message_type = google::protobuf::FieldDescriptor::is_map_message_type(a3);
  a3 = v23;
  v25 = *(v23 + 1);
  a2 = v22;
  if (!is_map_message_type)
  {
    a1 = v21;
    if ((*(v23 + 1) & 0x10) == 0)
    {
      return *(google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3) + 8);
    }

    goto LABEL_75;
  }

  if ((*(v23 + 1) & 0x10) != 0 && (v26 = *(v23 + 5)) != 0 && (*(v26 + 4) != 1 || (*(*(v26 + 48) + 1) & 2) == 0))
  {
    v27 = (v22 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((v21 + 8), v23));
    if (google::protobuf::internal::MapFieldBase::IsRepeatedFieldValid(v27))
    {
      return *(google::protobuf::internal::MapFieldBase::GetRepeatedField(v27) + 8);
    }
  }

  else
  {
    v27 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(v21, v22, v23);
    if (google::protobuf::internal::MapFieldBase::IsRepeatedFieldValid(v27))
    {
      return *(google::protobuf::internal::MapFieldBase::GetRepeatedField(v27) + 8);
    }
  }

  return google::protobuf::internal::MapFieldBase::size(v27);
}

uint64_t google::protobuf::internal::ReflectionSchema::HasBitIndex(google::protobuf::internal::ReflectionSchema *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(this + 6) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 1) & 8) != 0)
  {
    v4 = *(a2 + 5);
    if (v4)
    {
      v2 = (v4 + 96);
    }

    else
    {
      v2 = (*(a2 + 2) + 120);
    }
  }

  else
  {
    v2 = (*(a2 + 4) + 56);
  }

  return *(*(this + 2) + ((0xBA2E8BA300000000 * ((a2 - *v2) >> 3)) >> 30));
}

unsigned __int8 *google::protobuf::Reflection::RemoveLast(unsigned __int8 *result, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *result)
  {
  }

  v5 = *(a3 + 1);
  if ((~v5 & 0x60) != 0)
  {
  }

  if ((v5 & 8) != 0)
  {
    v9 = (a2 + *(result + 10));
    v10 = *(a3 + 1);

    return google::protobuf::internal::ExtensionSet::RemoveLast(v9, v10);
  }

  else
  {
    v6 = *(a3 + 3);
    if (v6 && (v35 = a3, v36 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) != 221))
    {
      v33 = a3;
      v11 = result;
      v12 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v36, &v35);
      result = v11;
      a3 = v33;
      a2 = v12;
      v7 = v33[2];
      v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v33[2]];
      if (v8 <= 5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = *(a3 + 2);
      v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
      if (v8 <= 5)
      {
LABEL_7:
        if (v8 <= 2 && v8 != 1 && v8 != 2)
        {
          return result;
        }

        goto LABEL_30;
      }
    }

    if (v8 <= 8)
    {
LABEL_30:
      if ((*(a3 + 1) & 0x10) != 0 && (v22 = *(a3 + 5)) != 0 && (*(v22 + 4) != 1 || (*(*(v22 + 48) + 1) & 2) == 0))
      {
        result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((result + 8), a3));
      }

      else
      {
        result = google::protobuf::Reflection::MutableRawNonOneofImpl(result, a2, a3);
      }

      --*result;
      return result;
    }

    if (v8 != 9)
    {
      if (v8 != 10)
      {
        return result;
      }

      v13 = *(a3 + 3);
      if (v13)
      {
        v35 = a3;
        v36 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v13, memory_order_acquire) != 221)
        {
          v34 = a3;
          v30 = result;
          v31 = a2;
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v13, 1, &v36, &v35);
          result = v30;
          a3 = v34;
          a2 = v31;
        }

        v7 = *(a3 + 2);
      }

      if (v7 == 11)
      {
        v14 = result;
        v15 = a2;
        v16 = a3;
        is_map_message_type = google::protobuf::FieldDescriptor::is_map_message_type(a3);
        a3 = v16;
        v18 = *(v16 + 1);
        a2 = v15;
        if (is_map_message_type)
        {
          if ((*(v16 + 1) & 0x10) != 0 && (v19 = *(v16 + 5)) != 0 && (*(v19 + 4) != 1 || (*(*(v19 + 48) + 1) & 2) == 0))
          {
            FieldOffset = google::protobuf::internal::ReflectionSchema::GetFieldOffset((v14 + 8), v16);
            v21 = google::protobuf::internal::MapFieldBase::MutableRepeatedField((v15 + FieldOffset));
          }

          else
          {
            v20 = google::protobuf::Reflection::MutableRawNonOneofImpl(v14, v15, v16);
            v21 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(v20);
          }

          goto LABEL_54;
        }

        result = v14;
        if ((*(v16 + 1) & 0x10) == 0)
        {
          goto LABEL_53;
        }
      }

      else if ((*(a3 + 1) & 0x10) == 0)
      {
        goto LABEL_53;
      }

      v27 = *(a3 + 5);
      if (v27 && (*(v27 + 4) != 1 || (*(*(v27 + 48) + 1) & 2) == 0))
      {
        v21 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((result + 8), a3);
        goto LABEL_54;
      }

LABEL_53:
      v21 = google::protobuf::Reflection::MutableRawNonOneofImpl(result, a2, a3);
LABEL_54:
      v28 = *(v21 + 8) - 1;
      *(v21 + 8) = v28;
      v29 = *v21 + 8 * v28 + 7;
      if ((*v21 & 1) == 0)
      {
        v29 = v21;
      }

      return (*(**v29 + 24))();
    }

    if ((*(a3 + 1) & 0x10) != 0 && (v23 = *(a3 + 5)) != 0 && (*(v23 + 4) != 1 || (*(*(v23 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((result + 8), a3));
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(result, a2, a3);
    }

    v24 = *(result + 2) - 1;
    *(result + 2) = v24;
    v25 = (*result + 8 * v24 + 7);
    if ((*result & 1) == 0)
    {
      v25 = result;
    }

    v26 = *v25;
    if (*(v26 + 23) < 0)
    {
      **v26 = 0;
      *(v26 + 8) = 0;
    }

    else
    {
      *v26 = 0;
      *(v26 + 23) = 0;
    }
  }

  return result;
}

void google::protobuf::anonymous namespace::ReportReflectionUsageTypeError(uint64_t a1, google::protobuf::FieldDescriptor *a2, const char *a3, int a4)
{
  v13 = a3;
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v12, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 217);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "Protocol Buffer reflection usage error:\n  Method      : google::protobuf::Reflection::", 0x56uLL);
  v7 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v12, &v13);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "\n  Message type: ", 0x11uLL);
  v8 = absl::lts_20240722::log_internal::LogMessage::operator<<(v7, (*(a1 + 8) + 24));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "\n  Field       : ", 0x11uLL);
  v9 = absl::lts_20240722::log_internal::LogMessage::operator<<(v8, (*(a2 + 1) + 24));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "\n  Problem     : Field is not the right type for this message:\n    Expected  : ", 0x4FuLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, "\n    Field type: ", 0x11uLL);
  v11 = google::protobuf::FieldDescriptor::cpp_type(a2);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v12);
}

uint64_t google::protobuf::Reflection::ListFields(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v5 = *a3;
  a3[1] = *a3;
  if (*(result + 8) == a2)
  {
    return result;
  }

  v8 = result;
  v9 = *(result + 32);
  v10 = a2 + v9;
  if (v9 == -1)
  {
    v10 = 0;
  }

  v32 = v10;
  v33 = *(result + 32);
  v11 = *(result + 24);
  v12 = *(*result + 4);
  if (v12 > (a3[2] - v5) >> 3)
  {
    if ((v12 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(result + 96);
  if ((v13 & 0x80000000) != 0)
  {
    v15 = 0;
    result = *a3;
    v23 = a3[1];
    v24 = v8[10];
    if (v24 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  v14 = 0;
  v15 = 0;
  v16 = 88 * v13 + 88;
  do
  {
    v17 = *(*v8 + 56);
    v18 = *(v17 + v14 + 1);
    if ((~v18 & 0x60) == 0)
    {
      if (google::protobuf::Reflection::FieldSize(v8, a2, (v17 + v14), a4, a5) < 1)
      {
        goto LABEL_14;
      }

LABEL_10:
      v34 = v17 + v14;
      if (v15 > *(v17 + v14 + 4))
      {
        v15 = -1;
      }

      else
      {
        v15 = *(v17 + v14 + 4);
      }

LABEL_13:
      std::vector<google::protobuf::Symbol>::push_back[abi:ne200100](a3, &v34);
      goto LABEL_14;
    }

    if ((v18 & 0x10) == 0 || (v19 = *(v17 + v14 + 40)) == 0 || *(v19 + 4) == 1 && (*(*(v19 + 48) + 1) & 2) != 0)
    {
      if (v33 == -1 || (v22 = *v11, v22 == -1))
      {
        if (google::protobuf::Reflection::HasBit(v8, a2, (v17 + v14)))
        {
          goto LABEL_10;
        }
      }

      else if ((*(v32 + ((v22 >> 3) & 0x1FFFFFFC)) >> v22))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v20 = *(a2 + v8[11] + ((0xB6DB6DB700000000 * ((v19 - *(*(v19 + 16) + 64)) >> 3)) >> 30));
      v21 = *(v17 + v14 + 4);
      if (v20 == v21)
      {
        v34 = v17 + v14;
        if (v15 > v21)
        {
          v15 = -1;
        }

        else
        {
          v15 = v21;
        }

        goto LABEL_13;
      }
    }

LABEL_14:
    ++v11;
    v14 += 88;
  }

  while (v16 != v14);
  result = *a3;
  v23 = a3[1];
  if (v15 == -1)
  {
    v25 = 126 - 2 * __clz((v23 - result) >> 3);
    if (v23 == result)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    result = *a3;
    v23 = a3[1];
    v15 = *(*(v23 - 1) + 4);
    v24 = v8[10];
    if (v24 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  v24 = v8[10];
  if (v24 == -1)
  {
    goto LABEL_41;
  }

LABEL_39:
  v27 = v23 - result;
  google::protobuf::internal::ExtensionSet::AppendToList(a2 + v24, *v8, *(v8 + 10), a3);
  result = *a3;
  v23 = a3[1];
  v28 = v23 - *a3;
  if (v28 != v27 && (v29 = v15 > *(*&v27[result] + 4), v15 = *(*&v27[result] + 4), v29))
  {
LABEL_43:
    v30 = 126 - 2 * __clz(v28 >> 3);
    if (v23 == result)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }
  }

  else
  {
LABEL_41:
    if (v15 == -1)
    {
      v28 = v23 - result;
      goto LABEL_43;
    }
  }

  return result;
}

google::protobuf::internal::ExtensionSet *google::protobuf::Reflection::GetInt32(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v11 = a3, v12 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 1)
    {
      goto LABEL_6;
    }

LABEL_18:
  }

  v8 = a3;
  v9 = a1;
  v10 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v12, &v11);
  a1 = v9;
  a2 = v10;
  a3 = v8;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8[2]] != 1)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetInt32((a2 + *(a1 + 40)), *(a3 + 1), *(a3 + 20));
  }

  if ((*(a3 + 1) & 0x10) == 0)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  v6 = *(a3 + 5);
  if (!v6)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  if ((*(v6 + 4) != 1 || (*(*(v6 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) != *(a3 + 1))
  {
    return *(a3 + 20);
  }

  if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
}

char *google::protobuf::Reflection::SetInt32(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  v17 = a4;
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v18 = a3, v19 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    v6 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] == 1)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v12 = a3;
  v13 = a1;
  v14 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v19, &v18);
  a1 = v13;
  a2 = v14;
  a3 = v12;
  v6 = v12[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] != 1)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    return google::protobuf::Reflection::SetField<int>(a1, a2, a3, &v17, a5);
  }

  v8 = *(a1 + 40);
  v9 = *(a3 + 1);
  v10 = *(a3 + 3);
  if (v10)
  {
    v18 = a3;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v16 = a3;
      v15 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v19, &v18);
      a2 = v15;
      a3 = v16;
    }

    v11 = a3;
    LOBYTE(v6) = *(a3 + 2);
  }

  else
  {
    v11 = a3;
  }

  return google::protobuf::internal::ExtensionSet::SetInt32((a2 + v8), v9, v6, v17, v11);
}

void *google::protobuf::Reflection::SetField<int>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, int *a4, const char *a5)
{
  if ((*(a3 + 1) & 0x10) != 0)
  {
    v8 = *(a3 + 5);
    if (v8)
    {
      if (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0)
      {
        if (*(a2 + *(a1 + 44) - 613566756 * ((v8 - *(*(v8 + 16) + 64)) >> 3)) == *(a3 + 1))
        {
          v9 = *a4;
        }

        else
        {
          google::protobuf::Reflection::ClearOneof(a1, a2, v8, a4, a5);
          v9 = *a4;
          if ((*(a3 + 1) & 0x10) == 0)
          {
            goto LABEL_16;
          }
        }

        v16 = *(a3 + 5);
        if (v16 && (*(v16 + 4) != 1 || (*(*(v16 + 48) + 1) & 2) == 0))
        {
          result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
          goto LABEL_17;
        }

LABEL_16:
        result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
LABEL_17:
        *result = v9;
        *(a2 + *(a1 + 44) - 613566756 * ((*(a3 + 5) - *(*(*(a3 + 5) + 16) + 64)) >> 3)) = *(a3 + 1);
        return result;
      }
    }
  }

  v10 = *a4;
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
  *result = v10;
  v12 = *(a1 + 32);
  if (v12 != -1)
  {
    if ((*(a3 + 1) & 8) != 0)
    {
      v14 = *(a3 + 5);
      if (v14)
      {
        v13 = (v14 + 96);
      }

      else
      {
        v13 = (*(a3 + 2) + 120);
      }
    }

    else
    {
      v13 = (*(a3 + 4) + 56);
    }

    v17 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *v13) >> 3)) >> 30));
    if (v17 != -1)
    {
      *(a2 + v12 + ((v17 >> 3) & 0x1FFFFFFC)) |= 1 << v17;
    }
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetRepeatedInt32(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v13 = a3, v14 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 1)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v10 = a3;
  v11 = a1;
  v12 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v14, &v13);
  a1 = v11;
  a2 = v12;
  a3 = v10;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]] != 1)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedInt32((a2 + *(a1 + 40)), *(a3 + 1), a4);
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v7 = *(a3 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  else
  {
    v8 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
  }

  return *(*(v8 + 8) + 4 * a4);
}

void *google::protobuf::Reflection::AddInt32(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v22 = a3, v23 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 1)
    {
      goto LABEL_6;
    }

LABEL_19:
  }

  v16 = a3;
  v17 = a1;
  v18 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v23, &v22);
  a1 = v17;
  a2 = v18;
  a3 = v16;
  v7 = v16[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 1)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    if ((*(a3 + 1) & 0x10) != 0 && (v8 = *(a3 + 5)) != 0 && (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v10 = HIDWORD(*result);
      v11 = *result;
      if (v11 != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      v10 = HIDWORD(*result);
      v11 = *result;
      if (v11 != v10)
      {
LABEL_12:
        v12 = result[1];
        *result = v11 + 1;
        *(v12 + 4 * v11) = a4;
        return result;
      }
    }

    v19 = result;
    google::protobuf::RepeatedField<int>::Grow(result, v10, (v10 + 1));
    result = v19;
    v11 = *v19;
    goto LABEL_12;
  }

  v13 = *(a1 + 40);
  v14 = *(a3 + 1);
  v15 = *(a3 + 3);
  if (v15)
  {
    v22 = a3;
    v23 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v15, memory_order_acquire) != 221)
    {
      v21 = a3;
      v20 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v23, &v22);
      a2 = v20;
      a3 = v21;
    }

    LOBYTE(v7) = *(a3 + 2);
  }

  return google::protobuf::internal::ExtensionSet::AddInt32((a2 + v13), v14, v7, *(*(a3 + 7) + 128), a4, a3);
}

google::protobuf::internal::ExtensionSet *google::protobuf::Reflection::GetInt64(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v11 = a3, v12 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 2)
    {
      goto LABEL_6;
    }

LABEL_18:
  }

  v8 = a3;
  v9 = a1;
  v10 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v12, &v11);
  a1 = v9;
  a2 = v10;
  a3 = v8;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8[2]] != 2)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetInt64((a2 + *(a1 + 40)), *(a3 + 1), *(a3 + 10));
  }

  if ((*(a3 + 1) & 0x10) == 0)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  v6 = *(a3 + 5);
  if (!v6)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  if ((*(v6 + 4) != 1 || (*(*(v6 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) != *(a3 + 1))
  {
    return *(a3 + 10);
  }

  if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
}

char *google::protobuf::Reflection::SetInt64(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  v17 = a4;
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v18 = a3, v19 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    v6 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] == 2)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v12 = a3;
  v13 = a1;
  v14 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v19, &v18);
  a1 = v13;
  a2 = v14;
  a3 = v12;
  v6 = v12[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] != 2)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    return google::protobuf::Reflection::SetField<long long>(a1, a2, a3, &v17, a5);
  }

  v8 = *(a1 + 40);
  v9 = *(a3 + 1);
  v10 = *(a3 + 3);
  if (v10)
  {
    v18 = a3;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v16 = a3;
      v15 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v19, &v18);
      a2 = v15;
      a3 = v16;
    }

    v11 = a3;
    LOBYTE(v6) = *(a3 + 2);
  }

  else
  {
    v11 = a3;
  }

  return google::protobuf::internal::ExtensionSet::SetInt64((a2 + v8), v9, v6, v17, v11);
}

void *google::protobuf::Reflection::SetField<long long>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, uint64_t *a4, const char *a5)
{
  if ((*(a3 + 1) & 0x10) != 0)
  {
    v8 = *(a3 + 5);
    if (v8)
    {
      if (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0)
      {
        if (*(a2 + *(a1 + 44) - 613566756 * ((v8 - *(*(v8 + 16) + 64)) >> 3)) == *(a3 + 1))
        {
          v9 = *a4;
        }

        else
        {
          google::protobuf::Reflection::ClearOneof(a1, a2, v8, a4, a5);
          v9 = *a4;
          if ((*(a3 + 1) & 0x10) == 0)
          {
            goto LABEL_16;
          }
        }

        v16 = *(a3 + 5);
        if (v16 && (*(v16 + 4) != 1 || (*(*(v16 + 48) + 1) & 2) == 0))
        {
          result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
          goto LABEL_17;
        }

LABEL_16:
        result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
LABEL_17:
        *result = v9;
        *(a2 + *(a1 + 44) - 613566756 * ((*(a3 + 5) - *(*(*(a3 + 5) + 16) + 64)) >> 3)) = *(a3 + 1);
        return result;
      }
    }
  }

  v10 = *a4;
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
  *result = v10;
  v12 = *(a1 + 32);
  if (v12 != -1)
  {
    if ((*(a3 + 1) & 8) != 0)
    {
      v14 = *(a3 + 5);
      if (v14)
      {
        v13 = (v14 + 96);
      }

      else
      {
        v13 = (*(a3 + 2) + 120);
      }
    }

    else
    {
      v13 = (*(a3 + 4) + 56);
    }

    v17 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *v13) >> 3)) >> 30));
    if (v17 != -1)
    {
      *(a2 + v12 + ((v17 >> 3) & 0x1FFFFFFC)) |= 1 << v17;
    }
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetRepeatedInt64(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v13 = a3, v14 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 2)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v10 = a3;
  v11 = a1;
  v12 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v14, &v13);
  a1 = v11;
  a2 = v12;
  a3 = v10;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]] != 2)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedInt64((a2 + *(a1 + 40)), *(a3 + 1), a4);
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v7 = *(a3 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  else
  {
    v8 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
  }

  return *(*(v8 + 8) + 8 * a4);
}

void *google::protobuf::Reflection::AddInt64(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v22 = a3, v23 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 2)
    {
      goto LABEL_6;
    }

LABEL_19:
  }

  v16 = a3;
  v17 = a1;
  v18 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v23, &v22);
  a1 = v17;
  a2 = v18;
  a3 = v16;
  v7 = v16[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 2)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    if ((*(a3 + 1) & 0x10) != 0 && (v8 = *(a3 + 5)) != 0 && (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v11 = *result;
      v10 = *(result + 1);
      if (*result != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      v11 = *result;
      v10 = *(result + 1);
      if (*result != v10)
      {
LABEL_12:
        v12 = result[1];
        *result = v11 + 1;
        *(v12 + 8 * v11) = a4;
        return result;
      }
    }

    v19 = result;
    google::protobuf::RepeatedField<long long>::Grow(result, v10);
    result = v19;
    v11 = *v19;
    goto LABEL_12;
  }

  v13 = *(a1 + 40);
  v14 = *(a3 + 1);
  v15 = *(a3 + 3);
  if (v15)
  {
    v22 = a3;
    v23 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v15, memory_order_acquire) != 221)
    {
      v21 = a3;
      v20 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v23, &v22);
      a2 = v20;
      a3 = v21;
    }

    LOBYTE(v7) = *(a3 + 2);
  }

  return google::protobuf::internal::ExtensionSet::AddInt64((a2 + v13), v14, v7, *(*(a3 + 7) + 128), a4, a3);
}

google::protobuf::internal::ExtensionSet *google::protobuf::Reflection::GetUInt32(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v11 = a3, v12 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 3)
    {
      goto LABEL_6;
    }

LABEL_18:
  }

  v8 = a3;
  v9 = a1;
  v10 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v12, &v11);
  a1 = v9;
  a2 = v10;
  a3 = v8;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8[2]] != 3)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetInt32((a2 + *(a1 + 40)), *(a3 + 1), *(a3 + 20));
  }

  if ((*(a3 + 1) & 0x10) == 0)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  v6 = *(a3 + 5);
  if (!v6)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  if ((*(v6 + 4) != 1 || (*(*(v6 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) != *(a3 + 1))
  {
    return *(a3 + 20);
  }

  if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
}

char *google::protobuf::Reflection::SetUInt32(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  v17 = a4;
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v18 = a3, v19 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    v6 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] == 3)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v12 = a3;
  v13 = a1;
  v14 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v19, &v18);
  a1 = v13;
  a2 = v14;
  a3 = v12;
  v6 = v12[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] != 3)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    return google::protobuf::Reflection::SetField<int>(a1, a2, a3, &v17, a5);
  }

  v8 = *(a1 + 40);
  v9 = *(a3 + 1);
  v10 = *(a3 + 3);
  if (v10)
  {
    v18 = a3;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v16 = a3;
      v15 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v19, &v18);
      a2 = v15;
      a3 = v16;
    }

    v11 = a3;
    LOBYTE(v6) = *(a3 + 2);
  }

  else
  {
    v11 = a3;
  }

  return google::protobuf::internal::ExtensionSet::SetInt32((a2 + v8), v9, v6, v17, v11);
}

uint64_t google::protobuf::Reflection::GetRepeatedUInt32(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v13 = a3, v14 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 3)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v10 = a3;
  v11 = a1;
  v12 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v14, &v13);
  a1 = v11;
  a2 = v12;
  a3 = v10;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]] != 3)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedUInt32((a2 + *(a1 + 40)), *(a3 + 1), a4);
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v7 = *(a3 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  else
  {
    v8 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
  }

  return *(*(v8 + 8) + 4 * a4);
}

void *google::protobuf::Reflection::AddUInt32(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v22 = a3, v23 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 3)
    {
      goto LABEL_6;
    }

LABEL_19:
  }

  v16 = a3;
  v17 = a1;
  v18 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v23, &v22);
  a1 = v17;
  a2 = v18;
  a3 = v16;
  v7 = v16[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 3)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    if ((*(a3 + 1) & 0x10) != 0 && (v8 = *(a3 + 5)) != 0 && (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v10 = HIDWORD(*result);
      v11 = *result;
      if (v11 != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      v10 = HIDWORD(*result);
      v11 = *result;
      if (v11 != v10)
      {
LABEL_12:
        v12 = result[1];
        *result = v11 + 1;
        *(v12 + 4 * v11) = a4;
        return result;
      }
    }

    v19 = result;
    google::protobuf::RepeatedField<int>::Grow(result, v10, (v10 + 1));
    result = v19;
    v11 = *v19;
    goto LABEL_12;
  }

  v13 = *(a1 + 40);
  v14 = *(a3 + 1);
  v15 = *(a3 + 3);
  if (v15)
  {
    v22 = a3;
    v23 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v15, memory_order_acquire) != 221)
    {
      v21 = a3;
      v20 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v23, &v22);
      a2 = v20;
      a3 = v21;
    }

    LOBYTE(v7) = *(a3 + 2);
  }

  return google::protobuf::internal::ExtensionSet::AddInt32((a2 + v13), v14, v7, *(*(a3 + 7) + 128), a4, a3);
}

google::protobuf::internal::ExtensionSet *google::protobuf::Reflection::GetUInt64(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v11 = a3, v12 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 4)
    {
      goto LABEL_6;
    }

LABEL_18:
  }

  v8 = a3;
  v9 = a1;
  v10 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v12, &v11);
  a1 = v9;
  a2 = v10;
  a3 = v8;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8[2]] != 4)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetInt64((a2 + *(a1 + 40)), *(a3 + 1), *(a3 + 10));
  }

  if ((*(a3 + 1) & 0x10) == 0)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  v6 = *(a3 + 5);
  if (!v6)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  if ((*(v6 + 4) != 1 || (*(*(v6 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) != *(a3 + 1))
  {
    return *(a3 + 10);
  }

  if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0)
  {
    return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
}

char *google::protobuf::Reflection::SetUInt64(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  v17 = a4;
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v18 = a3, v19 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    v6 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] == 4)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v12 = a3;
  v13 = a1;
  v14 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v19, &v18);
  a1 = v13;
  a2 = v14;
  a3 = v12;
  v6 = v12[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] != 4)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    return google::protobuf::Reflection::SetField<long long>(a1, a2, a3, &v17, a5);
  }

  v8 = *(a1 + 40);
  v9 = *(a3 + 1);
  v10 = *(a3 + 3);
  if (v10)
  {
    v18 = a3;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v16 = a3;
      v15 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v19, &v18);
      a2 = v15;
      a3 = v16;
    }

    v11 = a3;
    LOBYTE(v6) = *(a3 + 2);
  }

  else
  {
    v11 = a3;
  }

  return google::protobuf::internal::ExtensionSet::SetInt64((a2 + v8), v9, v6, v17, v11);
}

uint64_t google::protobuf::Reflection::GetRepeatedUInt64(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v13 = a3, v14 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 4)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v10 = a3;
  v11 = a1;
  v12 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v14, &v13);
  a1 = v11;
  a2 = v12;
  a3 = v10;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]] != 4)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedUInt64((a2 + *(a1 + 40)), *(a3 + 1), a4);
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v7 = *(a3 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  else
  {
    v8 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
  }

  return *(*(v8 + 8) + 8 * a4);
}

void *google::protobuf::Reflection::AddUInt64(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v22 = a3, v23 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 4)
    {
      goto LABEL_6;
    }

LABEL_19:
  }

  v16 = a3;
  v17 = a1;
  v18 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v23, &v22);
  a1 = v17;
  a2 = v18;
  a3 = v16;
  v7 = v16[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 4)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    if ((*(a3 + 1) & 0x10) != 0 && (v8 = *(a3 + 5)) != 0 && (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v11 = *result;
      v10 = *(result + 1);
      if (*result != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      v11 = *result;
      v10 = *(result + 1);
      if (*result != v10)
      {
LABEL_12:
        v12 = result[1];
        *result = v11 + 1;
        *(v12 + 8 * v11) = a4;
        return result;
      }
    }

    v19 = result;
    google::protobuf::RepeatedField<long long>::Grow(result, v10);
    result = v19;
    v11 = *v19;
    goto LABEL_12;
  }

  v13 = *(a1 + 40);
  v14 = *(a3 + 1);
  v15 = *(a3 + 3);
  if (v15)
  {
    v22 = a3;
    v23 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v15, memory_order_acquire) != 221)
    {
      v21 = a3;
      v20 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v23, &v22);
      a2 = v20;
      a3 = v21;
    }

    LOBYTE(v7) = *(a3 + 2);
  }

  return google::protobuf::internal::ExtensionSet::AddInt64((a2 + v13), v14, v7, *(*(a3 + 7) + 128), a4, a3);
}

float google::protobuf::Reflection::GetFloat(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v11 = a3, v12 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 6)
    {
      goto LABEL_6;
    }

LABEL_18:
  }

  v8 = a3;
  v9 = a1;
  v10 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v12, &v11);
  a1 = v9;
  a2 = v10;
  a3 = v8;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8[2]] != 6)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    google::protobuf::internal::ExtensionSet::GetFloat((a2 + *(a1 + 40)), *(a3 + 1), *(a3 + 20));
  }

  else
  {
    if ((*(a3 + 1) & 0x10) == 0)
    {
      return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
    }

    v6 = *(a3 + 5);
    if (!v6)
    {
      return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
    }

    if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0 || *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) == *(a3 + 1))
    {
      if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
      }

      return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
    }

    else
    {
      return *(a3 + 20);
    }
  }

  return result;
}

char *google::protobuf::Reflection::SetFloat(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, float a4, uint64_t a5, const char *a6)
{
  v18 = a4;
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v19 = a3, v20 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 6)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v13 = a3;
  v14 = a1;
  v15 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v20, &v19);
  a1 = v14;
  a2 = v15;
  a3 = v13;
  v7 = v13[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 6)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    return google::protobuf::Reflection::SetField<float>(a1, a2, a3, &v18, a6);
  }

  v9 = *(a1 + 40);
  v10 = *(a3 + 1);
  v11 = *(a3 + 3);
  if (v11)
  {
    v19 = a3;
    v20 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != 221)
    {
      v17 = a3;
      v16 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, &v20, &v19);
      a2 = v16;
      a3 = v17;
    }

    v12 = a3;
    LOBYTE(v7) = *(a3 + 2);
  }

  else
  {
    v12 = a3;
  }

  return google::protobuf::internal::ExtensionSet::SetFloat((a2 + v9), v10, v7, v18, v12);
}

void *google::protobuf::Reflection::SetField<float>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, int *a4, const char *a5)
{
  if ((*(a3 + 1) & 0x10) != 0)
  {
    v8 = *(a3 + 5);
    if (v8)
    {
      if (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0)
      {
        if (*(a2 + *(a1 + 44) - 613566756 * ((v8 - *(*(v8 + 16) + 64)) >> 3)) == *(a3 + 1))
        {
          v9 = *a4;
        }

        else
        {
          google::protobuf::Reflection::ClearOneof(a1, a2, v8, a4, a5);
          v9 = *a4;
          if ((*(a3 + 1) & 0x10) == 0)
          {
            goto LABEL_16;
          }
        }

        v16 = *(a3 + 5);
        if (v16 && (*(v16 + 4) != 1 || (*(*(v16 + 48) + 1) & 2) == 0))
        {
          result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
          goto LABEL_17;
        }

LABEL_16:
        result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
LABEL_17:
        *result = v9;
        *(a2 + *(a1 + 44) - 613566756 * ((*(a3 + 5) - *(*(*(a3 + 5) + 16) + 64)) >> 3)) = *(a3 + 1);
        return result;
      }
    }
  }

  v10 = *a4;
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
  *result = v10;
  v12 = *(a1 + 32);
  if (v12 != -1)
  {
    if ((*(a3 + 1) & 8) != 0)
    {
      v14 = *(a3 + 5);
      if (v14)
      {
        v13 = (v14 + 96);
      }

      else
      {
        v13 = (*(a3 + 2) + 120);
      }
    }

    else
    {
      v13 = (*(a3 + 4) + 56);
    }

    v17 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *v13) >> 3)) >> 30));
    if (v17 != -1)
    {
      *(a2 + v12 + ((v17 >> 3) & 0x1FFFFFFC)) |= 1 << v17;
    }
  }

  return result;
}

float google::protobuf::Reflection::GetRepeatedFloat(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v13 = a3, v14 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 6)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v10 = a3;
  v11 = a1;
  v12 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v14, &v13);
  a1 = v11;
  a2 = v12;
  a3 = v10;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]] != 6)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedFloat((a2 + *(a1 + 40)), *(a3 + 1), a4);
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v7 = *(a3 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  else
  {
    v8 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
  }

  return *(*(v8 + 8) + 4 * a4);
}

void *google::protobuf::Reflection::AddFloat(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, float a4, uint64_t a5, const char *a6)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v26 = a3, v27 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 6)
    {
      goto LABEL_6;
    }

LABEL_19:
  }

  v18 = a3;
  v19 = a1;
  v20 = a2;
  v21 = a4;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v27, &v26);
  a1 = v19;
  a2 = v20;
  a3 = v18;
  a4 = v21;
  v7 = v18[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 6)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    v8 = a4;
    if ((*(a3 + 1) & 0x10) != 0 && (v9 = *(a3 + 5)) != 0 && (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v12 = *result;
      v11 = *(result + 1);
      v13 = v8;
      if (*result != v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      v12 = *result;
      v11 = *(result + 1);
      v13 = v8;
      if (*result != v11)
      {
LABEL_12:
        v14 = result[1];
        *result = v12 + 1;
        *(v14 + 4 * v12) = v13;
        return result;
      }
    }

    v22 = result;
    google::protobuf::RepeatedField<int>::Grow(result, v11, (v11 + 1));
    result = v22;
    v13 = v8;
    v12 = *v22;
    goto LABEL_12;
  }

  v15 = *(a1 + 40);
  v16 = *(a3 + 1);
  v17 = *(a3 + 3);
  if (v17)
  {
    v26 = a3;
    v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v17, memory_order_acquire) != 221)
    {
      v25 = a3;
      v23 = a2;
      v24 = a4;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v17, 1, &v27, &v26);
      a2 = v23;
      a3 = v25;
      a4 = v24;
    }

    LOBYTE(v7) = *(a3 + 2);
  }

  return google::protobuf::internal::ExtensionSet::AddFloat((a2 + v15), v16, v7, *(*(a3 + 7) + 128), a4, a3);
}

double google::protobuf::Reflection::GetDouble(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v11 = a3, v12 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 5)
    {
      goto LABEL_6;
    }

LABEL_18:
  }

  v8 = a3;
  v9 = a1;
  v10 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v12, &v11);
  a1 = v9;
  a2 = v10;
  a3 = v8;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8[2]] != 5)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    google::protobuf::internal::ExtensionSet::GetDouble((a2 + *(a1 + 40)), *(a3 + 1), *(a3 + 10));
  }

  else
  {
    if ((*(a3 + 1) & 0x10) == 0)
    {
      return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
    }

    v6 = *(a3 + 5);
    if (!v6)
    {
      return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
    }

    if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0 || *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) == *(a3 + 1))
    {
      if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
      }

      return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
    }

    else
    {
      return *(a3 + 10);
    }
  }

  return result;
}

char *google::protobuf::Reflection::SetDouble(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, double a4, uint64_t a5, const char *a6)
{
  v18 = a4;
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v19 = a3, v20 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 5)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v13 = a3;
  v14 = a1;
  v15 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v20, &v19);
  a1 = v14;
  a2 = v15;
  a3 = v13;
  v7 = v13[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 5)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    return google::protobuf::Reflection::SetField<double>(a1, a2, a3, &v18, a6);
  }

  v9 = *(a1 + 40);
  v10 = *(a3 + 1);
  v11 = *(a3 + 3);
  if (v11)
  {
    v19 = a3;
    v20 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != 221)
    {
      v17 = a3;
      v16 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, &v20, &v19);
      a2 = v16;
      a3 = v17;
    }

    v12 = a3;
    LOBYTE(v7) = *(a3 + 2);
  }

  else
  {
    v12 = a3;
  }

  return google::protobuf::internal::ExtensionSet::SetDouble((a2 + v9), v10, v7, v18, v12);
}

void *google::protobuf::Reflection::SetField<double>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, uint64_t *a4, const char *a5)
{
  if ((*(a3 + 1) & 0x10) != 0)
  {
    v8 = *(a3 + 5);
    if (v8)
    {
      if (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0)
      {
        if (*(a2 + *(a1 + 44) - 613566756 * ((v8 - *(*(v8 + 16) + 64)) >> 3)) == *(a3 + 1))
        {
          v9 = *a4;
        }

        else
        {
          google::protobuf::Reflection::ClearOneof(a1, a2, v8, a4, a5);
          v9 = *a4;
          if ((*(a3 + 1) & 0x10) == 0)
          {
            goto LABEL_16;
          }
        }

        v16 = *(a3 + 5);
        if (v16 && (*(v16 + 4) != 1 || (*(*(v16 + 48) + 1) & 2) == 0))
        {
          result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
          goto LABEL_17;
        }

LABEL_16:
        result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
LABEL_17:
        *result = v9;
        *(a2 + *(a1 + 44) - 613566756 * ((*(a3 + 5) - *(*(*(a3 + 5) + 16) + 64)) >> 3)) = *(a3 + 1);
        return result;
      }
    }
  }

  v10 = *a4;
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
  *result = v10;
  v12 = *(a1 + 32);
  if (v12 != -1)
  {
    if ((*(a3 + 1) & 8) != 0)
    {
      v14 = *(a3 + 5);
      if (v14)
      {
        v13 = (v14 + 96);
      }

      else
      {
        v13 = (*(a3 + 2) + 120);
      }
    }

    else
    {
      v13 = (*(a3 + 4) + 56);
    }

    v17 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *v13) >> 3)) >> 30));
    if (v17 != -1)
    {
      *(a2 + v12 + ((v17 >> 3) & 0x1FFFFFFC)) |= 1 << v17;
    }
  }

  return result;
}

double google::protobuf::Reflection::GetRepeatedDouble(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v13 = a3, v14 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 5)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v10 = a3;
  v11 = a1;
  v12 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v14, &v13);
  a1 = v11;
  a2 = v12;
  a3 = v10;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]] != 5)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedDouble((a2 + *(a1 + 40)), *(a3 + 1), a4);
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v7 = *(a3 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  else
  {
    v8 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
  }

  return *(*(v8 + 8) + 8 * a4);
}

void *google::protobuf::Reflection::AddDouble(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, double a4, uint64_t a5, const char *a6)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v26 = a3, v27 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 5)
    {
      goto LABEL_6;
    }

LABEL_19:
  }

  v18 = a3;
  v19 = a1;
  v20 = a2;
  v21 = a4;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v27, &v26);
  a1 = v19;
  a2 = v20;
  a3 = v18;
  a4 = v21;
  v7 = v18[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 5)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    v8 = a4;
    if ((*(a3 + 1) & 0x10) != 0 && (v9 = *(a3 + 5)) != 0 && (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v12 = *result;
      v11 = *(result + 1);
      v13 = v8;
      if (*result != v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      v12 = *result;
      v11 = *(result + 1);
      v13 = v8;
      if (*result != v11)
      {
LABEL_12:
        v14 = result[1];
        *result = v12 + 1;
        *(v14 + 8 * v12) = v13;
        return result;
      }
    }

    v22 = result;
    google::protobuf::RepeatedField<long long>::Grow(result, v11);
    result = v22;
    v13 = v8;
    v12 = *v22;
    goto LABEL_12;
  }

  v15 = *(a1 + 40);
  v16 = *(a3 + 1);
  v17 = *(a3 + 3);
  if (v17)
  {
    v26 = a3;
    v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v17, memory_order_acquire) != 221)
    {
      v25 = a3;
      v23 = a2;
      v24 = a4;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v17, 1, &v27, &v26);
      a2 = v23;
      a3 = v25;
      a4 = v24;
    }

    LOBYTE(v7) = *(a3 + 2);
  }

  return google::protobuf::internal::ExtensionSet::AddDouble((a2 + v15), v16, v7, *(*(a3 + 7) + 128), a4, a3);
}

uint64_t google::protobuf::Reflection::GetBool(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v12 = a3, v13 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 7)
    {
      goto LABEL_6;
    }

LABEL_19:
  }

  v9 = a3;
  v10 = a1;
  v11 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v13, &v12);
  a1 = v10;
  a2 = v11;
  a3 = v9;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v9[2]] != 7)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetBool((a2 + *(a1 + 40)), *(a3 + 1), *(a3 + 80)) & 1;
  }

  if ((*(a3 + 1) & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v6 = *(a3 + 5);
  if (!v6)
  {
    goto LABEL_14;
  }

  if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0 || *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) == *(a3 + 1))
  {
    if (*(v6 + 4) != 1 || (*(*(v6 + 48) + 1) & 2) == 0)
    {
      v7 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      return *v7 & 1;
    }

LABEL_14:
    v7 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
    return *v7 & 1;
  }

  return *(a3 + 80) & 1;
}

char *google::protobuf::Reflection::SetBool(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, BOOL a4, const char *a5)
{
  v17 = a4;
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v18 = a3, v19 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    v6 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] == 7)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v12 = a3;
  v13 = a1;
  v14 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v19, &v18);
  a1 = v13;
  a2 = v14;
  a3 = v12;
  v6 = v12[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6] != 7)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    return google::protobuf::Reflection::SetField<BOOL>(a1, a2, a3, &v17, a5);
  }

  v8 = *(a1 + 40);
  v9 = *(a3 + 1);
  v10 = *(a3 + 3);
  if (v10)
  {
    v18 = a3;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v16 = a3;
      v15 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v19, &v18);
      a2 = v15;
      a3 = v16;
    }

    v11 = a3;
    LOBYTE(v6) = *(a3 + 2);
  }

  else
  {
    v11 = a3;
  }

  return google::protobuf::internal::ExtensionSet::SetBool((a2 + v8), v9, v6, v17, v11);
}

void *google::protobuf::Reflection::SetField<BOOL>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, char *a4, const char *a5)
{
  if ((*(a3 + 1) & 0x10) != 0)
  {
    v8 = *(a3 + 5);
    if (v8)
    {
      if (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0)
      {
        if (*(a2 + *(a1 + 44) - 613566756 * ((v8 - *(*(v8 + 16) + 64)) >> 3)) == *(a3 + 1))
        {
          v9 = *a4;
        }

        else
        {
          google::protobuf::Reflection::ClearOneof(a1, a2, v8, a4, a5);
          v9 = *a4;
          if ((*(a3 + 1) & 0x10) == 0)
          {
            goto LABEL_16;
          }
        }

        v16 = *(a3 + 5);
        if (v16 && (*(v16 + 4) != 1 || (*(*(v16 + 48) + 1) & 2) == 0))
        {
          result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
          goto LABEL_17;
        }

LABEL_16:
        result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
LABEL_17:
        *result = v9;
        *(a2 + *(a1 + 44) - 613566756 * ((*(a3 + 5) - *(*(*(a3 + 5) + 16) + 64)) >> 3)) = *(a3 + 1);
        return result;
      }
    }
  }

  v10 = *a4;
  result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
  *result = v10;
  v12 = *(a1 + 32);
  if (v12 != -1)
  {
    if ((*(a3 + 1) & 8) != 0)
    {
      v14 = *(a3 + 5);
      if (v14)
      {
        v13 = (v14 + 96);
      }

      else
      {
        v13 = (*(a3 + 2) + 120);
      }
    }

    else
    {
      v13 = (*(a3 + 4) + 56);
    }

    v17 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *v13) >> 3)) >> 30));
    if (v17 != -1)
    {
      *(a2 + v12 + ((v17 >> 3) & 0x1FFFFFFC)) |= 1 << v17;
    }
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetRepeatedBool(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v13 = a3, v14 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 7)
    {
      goto LABEL_6;
    }

LABEL_15:
  }

  v10 = a3;
  v11 = a1;
  v12 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v14, &v13);
  a1 = v11;
  a2 = v12;
  a3 = v10;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]] != 7)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedBool((a2 + *(a1 + 40)), *(a3 + 1), a4) & 1;
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v7 = *(a3 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  else
  {
    v8 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
  }

  return *(*(v8 + 8) + a4) & 1;
}

void *google::protobuf::Reflection::AddBool(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, char a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v22 = a3, v23 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] == 7)
    {
      goto LABEL_6;
    }

LABEL_19:
  }

  v16 = a3;
  v17 = a1;
  v18 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v23, &v22);
  a1 = v17;
  a2 = v18;
  a3 = v16;
  v7 = v16[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7] != 7)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) == 0)
  {
    if ((*(a3 + 1) & 0x10) != 0 && (v8 = *(a3 + 5)) != 0 && (*(v8 + 4) != 1 || (*(*(v8 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v11 = *result;
      v10 = *(result + 1);
      if (*result != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      v11 = *result;
      v10 = *(result + 1);
      if (*result != v10)
      {
LABEL_12:
        v12 = result[1];
        *result = v11 + 1;
        *(v12 + v11) = a4;
        return result;
      }
    }

    v19 = result;
    google::protobuf::RepeatedField<BOOL>::Grow(result, v10, (v10 + 1));
    result = v19;
    v11 = *v19;
    goto LABEL_12;
  }

  v13 = *(a1 + 40);
  v14 = *(a3 + 1);
  v15 = *(a3 + 3);
  if (v15)
  {
    v22 = a3;
    v23 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v15, memory_order_acquire) != 221)
    {
      v21 = a3;
      v20 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v23, &v22);
      a2 = v20;
      a3 = v21;
    }

    LOBYTE(v7) = *(a3 + 2);
  }

  return google::protobuf::internal::ExtensionSet::AddBool((a2 + v13), v14, v7, *(*(a3 + 7) + 128), a4, a3);
}

void google::protobuf::Reflection::GetString(google::protobuf::Descriptor *a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, const char *a4@<X4>, std::string *a5@<X8>)
{
  if (*(a1 + 4) != *a2)
  {
  }

  if ((~*(a1 + 1) & 0x60) == 0)
  {
  }

  v6 = *(a1 + 3);
  if (!v6 || (v37 = a1, v38 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a1 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a1 + 2)] == 9)
    {
      goto LABEL_6;
    }

LABEL_60:
  }

  v28 = a1;
  v29 = a2;
  v30 = a3;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v38, &v37);
  a2 = v29;
  a3 = v30;
  a1 = v28;
  v7 = v28[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v28[2]] != 9)
  {
    goto LABEL_60;
  }

LABEL_6:
  v8 = *(a1 + 1);
  if ((v8 & 8) != 0)
  {
    Int64 = google::protobuf::internal::ExtensionSet::GetInt64((a3 + *(a2 + 40)), *(a1 + 1), *(a1 + 10));
LABEL_26:
    if ((*(Int64 + 23) & 0x80000000) == 0)
    {
      v14 = *Int64;
      v15 = *(Int64 + 16);
LABEL_64:
      a5->__r_.__value_.__r.__words[2] = v15;
      *&a5->__r_.__value_.__l.__data_ = v14;
      return;
    }

    v17 = *Int64;
    v18 = *(Int64 + 8);
LABEL_58:
    std::string::__init_copy_ctor_external(a5, v17, v18);
    return;
  }

  if ((*(a1 + 1) & 0x10) != 0)
  {
    v9 = *(a1 + 5);
    if (v9)
    {
      if ((*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0) && *(a3 + *(a2 + 44) - 613566756 * ((v9 - *(*(v9 + 16) + 64)) >> 3)) != *(a1 + 1))
      {
        v27 = *(a1 + 10);
        if ((*(v27 + 23) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_57;
      }
    }
  }

  v10 = *(a1 + 3);
  if (v10)
  {
    v37 = a1;
    v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v31 = a1;
      v32 = a2;
      v33 = a3;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v38, &v37);
      a2 = v32;
      a3 = v33;
      a1 = v31;
    }

    v7 = *(a1 + 2);
    v8 = *(a1 + 1);
  }

  if (v7 != 12 || (v8 & 0x60) == 0x60 || (v8 & 8) != 0 || *(*(a1 + 7) + 120) != 1)
  {
    if ((v8 & 8) != 0)
    {
      v19 = *(a1 + 5);
      if (v19)
      {
        v16 = (v19 + 96);
      }

      else
      {
        v16 = (*(a1 + 2) + 120);
      }
    }

    else
    {
      v16 = (*(a1 + 4) + 56);
    }

    v20 = *(*(a2 + 16) + ((0xBA2E8BA300000000 * ((a1 - *v16) >> 3)) >> 30));
    v21 = *(a1 + 3);
    if (v21)
    {
      v37 = a1;
      v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v21, memory_order_acquire) != 221)
      {
        v36 = a1;
        v34 = a2;
        v35 = a3;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, &v38, &v37);
        a2 = v34;
        a3 = v35;
        a1 = v36;
      }

      v7 = *(a1 + 2);
    }

    if (v7 == 9 || v7 == 12)
    {
      v22 = *(a1 + 1);
      if (v20)
      {
        if ((*(a1 + 1) & 0x10) != 0 && (v23 = *(a1 + 5)) != 0 && (*(v23 + 4) != 1 || (*(*(v23 + 48) + 1) & 2) == 0))
        {
          Int64 = a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 8), a1);
        }

        else
        {
          Int64 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a2, a3, a1);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v22 = *(a1 + 1);
    }

    if ((v22 & 0x10) != 0 && (v24 = *(a1 + 5)) != 0 && (*(v24 + 4) != 1 || (*(*(v24 + 48) + 1) & 2) == 0))
    {
      v25 = a1;
      v26 = *(a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 8), a1));
      if ((v26 & 3) != 0)
      {
LABEL_54:
        v27 = v26 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v27 + 23) < 0)
        {
          goto LABEL_57;
        }

LABEL_63:
        v14 = *v27;
        v15 = *(v27 + 16);
        goto LABEL_64;
      }
    }

    else
    {
      v25 = a1;
      v26 = *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a2, a3, a1);
      if ((v26 & 3) != 0)
      {
        goto LABEL_54;
      }
    }

    v27 = *(v25 + 10);
    if ((*(v27 + 23) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_57:
    v17 = *v27;
    v18 = *(v27 + 8);
    goto LABEL_58;
  }

  if ((v8 & 0x10) == 0 || (v11 = *(a1 + 5)) == 0 || *(v11 + 4) == 1 && (*(*(v11 + 48) + 1) & 2) != 0)
  {
    v12 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a2, a3, a1);
  }

  else
  {
    v12 = *(a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 8), a1));
  }

  absl::lts_20240722::Cord::operator std::string(v12, a5);
}

google::protobuf::internal::ExtensionSet *google::protobuf::Reflection::GetStringReference(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, std::string *a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v32 = a3, v33 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 9)
    {
      goto LABEL_6;
    }

LABEL_54:
  }

  v23 = a3;
  v24 = a1;
  v25 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v33, &v32);
  a1 = v24;
  a2 = v25;
  a3 = v23;
  v7 = v23[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v23[2]] != 9)
  {
    goto LABEL_54;
  }

LABEL_6:
  v8 = *(a3 + 1);
  if ((v8 & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetInt64((a2 + *(a1 + 40)), *(a3 + 1), *(a3 + 10));
  }

  if ((*(a3 + 1) & 0x10) != 0)
  {
    v9 = *(a3 + 5);
    if (v9)
    {
      if ((*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v9 - *(*(v9 + 16) + 64)) >> 3)) != *(a3 + 1))
      {
        return *(a3 + 10);
      }
    }
  }

  v10 = *(a3 + 3);
  if (v10)
  {
    v32 = a3;
    v33 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v26 = a3;
      v27 = a1;
      v28 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v33, &v32);
      a1 = v27;
      a2 = v28;
      a3 = v26;
    }

    v7 = *(a3 + 2);
    v8 = *(a3 + 1);
  }

  if (v7 != 12 || (v8 & 0x60) == 0x60 || (v8 & 8) != 0 || *(*(a3 + 7) + 120) != 1)
  {
    if ((v8 & 8) != 0)
    {
      v15 = *(a3 + 5);
      if (v15)
      {
        v14 = (v15 + 96);
      }

      else
      {
        v14 = (*(a3 + 2) + 120);
      }
    }

    else
    {
      v14 = (*(a3 + 4) + 56);
    }

    v16 = *(*(a1 + 16) + ((0xBA2E8BA300000000 * ((a3 - *v14) >> 3)) >> 30));
    v17 = *(a3 + 3);
    if (v17)
    {
      v32 = a3;
      v33 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v17, memory_order_acquire) != 221)
      {
        v29 = a3;
        v30 = a1;
        v31 = a2;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v17, 1, &v33, &v32);
        a1 = v30;
        a2 = v31;
        a3 = v29;
      }

      v7 = *(a3 + 2);
    }

    if (v7 == 9 || v7 == 12)
    {
      v18 = *(a3 + 1);
      if (v16)
      {
        if ((*(a3 + 1) & 0x10) != 0 && (v19 = *(a3 + 5)) != 0 && (*(v19 + 4) != 1 || (*(*(v19 + 48) + 1) & 2) == 0))
        {
          return (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
        }

        else
        {
          return google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
        }
      }
    }

    else
    {
      v18 = *(a3 + 1);
    }

    if ((v18 & 0x10) != 0 && (v20 = *(a3 + 5)) != 0 && (*(v20 + 4) != 1 || (*(*(v20 + 48) + 1) & 2) == 0))
    {
      v21 = a3;
      v22 = *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      if ((v22 & 3) != 0)
      {
        return (v22 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }

    else
    {
      v21 = a3;
      v22 = *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
      if ((v22 & 3) != 0)
      {
        return (v22 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }

    return *(v21 + 10);
  }

  if ((v8 & 0x10) == 0 || (v11 = *(a3 + 5)) == 0 || *(v11 + 4) == 1 && (*(*(v11 + 48) + 1) & 2) != 0)
  {
    v12 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  else
  {
    v12 = *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
  }

  absl::lts_20240722::CopyCordToString(v12, a4);
  return a4;
}

void google::protobuf::Reflection::GetCord(google::protobuf::Descriptor *a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, const char *a4@<X4>, void *a5@<X8>)
{
  if (*(a1 + 4) != *a2)
  {
  }

  if ((~*(a1 + 1) & 0x60) == 0)
  {
  }

  v6 = *(a1 + 3);
  if (!v6 || (v37 = a1, v38 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a1 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a1 + 2)] == 9)
    {
      goto LABEL_6;
    }

LABEL_66:
  }

  v27 = a1;
  v28 = a2;
  v29 = a3;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v38, &v37);
  a2 = v28;
  a3 = v29;
  a1 = v27;
  v7 = v27[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v27[2]] != 9)
  {
    goto LABEL_66;
  }

LABEL_6:
  v8 = *(a1 + 1);
  if ((v8 & 8) != 0)
  {
    Int64 = google::protobuf::internal::ExtensionSet::GetInt64((a3 + *(a2 + 40)), *(a1 + 1), *(a1 + 10));
    v14 = *(Int64 + 23);
    if (v14 >= 0)
    {
      v15 = Int64;
    }

    else
    {
      v15 = *Int64;
    }

    if (v14 >= 0)
    {
      v16 = *(Int64 + 23);
    }

    else
    {
      v16 = *(Int64 + 1);
    }

    goto LABEL_70;
  }

  if ((*(a1 + 1) & 0x10) != 0)
  {
    v9 = *(a1 + 5);
    if (v9)
    {
      if ((*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0) && *(a3 + *(a2 + 44) - 613566756 * ((v9 - *(*(v9 + 16) + 64)) >> 3)) != *(a1 + 1))
      {
        v15 = *(a1 + 10);
        v16 = v15[23];
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }
  }

  v10 = *(a1 + 3);
  if (v10)
  {
    v37 = a1;
    v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v30 = a1;
      v31 = a2;
      v32 = a3;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v38, &v37);
      a2 = v31;
      a3 = v32;
      a1 = v30;
    }

    v7 = *(a1 + 2);
    v8 = *(a1 + 1);
  }

  if (v7 != 12 || (v8 & 0x60) == 0x60 || (v8 & 8) != 0 || *(*(a1 + 7) + 120) != 1)
  {
    if ((v8 & 8) != 0)
    {
      v18 = *(a1 + 5);
      if (v18)
      {
        v17 = (v18 + 96);
      }

      else
      {
        v17 = (*(a1 + 2) + 120);
      }
    }

    else
    {
      v17 = (*(a1 + 4) + 56);
    }

    v20 = *(*(a2 + 16) + ((0xBA2E8BA300000000 * ((a1 - *v17) >> 3)) >> 30));
    v21 = *(a1 + 3);
    if (v21)
    {
      v37 = a1;
      v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v21, memory_order_acquire) != 221)
      {
        v36 = a1;
        v34 = a2;
        v35 = a3;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, &v38, &v37);
        a2 = v34;
        a3 = v35;
        a1 = v36;
      }

      v7 = *(a1 + 2);
    }

    if (v7 == 9 || v7 == 12)
    {
      v22 = *(a1 + 1);
      if (v20)
      {
        if ((*(a1 + 1) & 0x10) != 0)
        {
          v23 = *(a1 + 5);
          if (v23)
          {
            if (*(v23 + 4) != 1 || (*(*(v23 + 48) + 1) & 2) == 0)
            {
              v15 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 8), a1));
              v16 = v15[23];
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_70;
              }

              goto LABEL_69;
            }
          }
        }

        v15 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a2, a3, a1);
        v16 = v15[23];
        if ((v16 & 0x8000000000000000) != 0)
        {
LABEL_69:
          v33 = v15;
          v15 = *v15;
          v16 = *(v33 + 1);
        }

LABEL_70:
        absl::lts_20240722::Cord::Cord(a5, v15, v16);
        return;
      }
    }

    else
    {
      v22 = *(a1 + 1);
    }

    if ((v22 & 0x10) != 0 && (v24 = *(a1 + 5)) != 0 && (*(v24 + 4) != 1 || (*(*(v24 + 48) + 1) & 2) == 0))
    {
      v25 = a1;
      v26 = *(a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 8), a1));
      if ((v26 & 3) != 0)
      {
LABEL_61:
        v15 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        v16 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 23);
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v25 = a1;
      v26 = *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a2, a3, a1);
      if ((v26 & 3) != 0)
      {
        goto LABEL_61;
      }
    }

    v15 = *(v25 + 10);
    v16 = v15[23];
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  if ((v8 & 0x10) == 0 || (v11 = *(a1 + 5)) == 0 || *(v11 + 4) == 1 && (*(*(v11 + 48) + 1) & 2) != 0)
  {
    v12 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a2, a3, a1);
    if ((*v12 & 1) == 0)
    {
LABEL_40:
      *a5 = *v12;
      return;
    }
  }

  else
  {
    v12 = *(a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 8), a1));
    if ((*v12 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  v19 = v12[1];
  if (!v19)
  {
    goto LABEL_40;
  }

  atomic_fetch_add_explicit((v19 + 8), 2u, memory_order_relaxed);
  *a5 = 1;
  a5[1] = v19;
  if (*v12 >= 2uLL)
  {
    absl::lts_20240722::cord_internal::CordzInfo::MaybeTrackCordImpl(a5, v12);
  }
}

void google::protobuf::Reflection::SetString(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (*(a3 + 4) != v7)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v8 = a4;
  v10 = *(a3 + 3);
  if (v10)
  {
    v42 = a3;
    v43 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v43, &v42);
    }
  }

  v11 = *(a3 + 2);
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v11] != 9)
  {
  }

  v12 = *(a3 + 1);
  if ((v12 & 8) != 0)
  {
    v20 = *(a1 + 40);
    v21 = *(a3 + 1);
    v22 = *(a3 + 3);
    if (v22)
    {
      v42 = a3;
      v43 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v22, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v22, 1, &v43, &v42);
      }

      LOBYTE(v11) = *(a3 + 2);
    }

    v23 = *v8;
    v44[0] = *(v8 + 8);
    *(v44 + 7) = *(v8 + 15);
    v24 = *(v8 + 23);
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 0;
    v25 = google::protobuf::internal::ExtensionSet::MutableString((a2 + v20), v21, v11, a3);
    if (*(v25 + 23) < 0)
    {
      v26 = v25;
      operator delete(*v25);
      v25 = v26;
    }

    v27 = v44[0];
    *v25 = v23;
    v25[1] = v27;
    *(v25 + 15) = *(v44 + 7);
    *(v25 + 23) = v24;
  }

  else
  {
    v13 = *(a3 + 3);
    if (v13)
    {
      v42 = a3;
      v43 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v13, 1, &v43, &v42);
      }

      LODWORD(v11) = *(a3 + 2);
      v12 = *(a3 + 1);
    }

    if (v11 != 12 || (v12 & 0x60) == 0x60 || (v12 & 8) != 0 || *(*(a3 + 7) + 120) != 1)
    {
      if ((v12 & 8) != 0)
      {
        v29 = *(a3 + 5);
        if (v29)
        {
          v28 = (v29 + 96);
        }

        else
        {
          v28 = (*(a3 + 2) + 120);
        }
      }

      else
      {
        v28 = (*(a3 + 4) + 56);
      }

      v33 = *(*(a1 + 16) + ((0xBA2E8BA300000000 * ((a3 - *v28) >> 3)) >> 30));
      v34 = *(a3 + 3);
      if (v34)
      {
        v42 = a3;
        v43 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v34, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v34, 1, &v43, &v42);
        }

        LODWORD(v11) = *(a3 + 2);
      }

      if (v11 == 12 || v11 == 9) && (v33)
      {
        v38 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
        v39 = *(v8 + 23);
        if (v39 < 0)
        {
          v40 = v8;
          v8 = *v8;
          v39 = *(v40 + 8);
        }

        MEMORY[0x23EED9030](v38, v8, v39);
      }

      else
      {
        if ((*(a3 + 1) & 0x10) != 0)
        {
          v35 = *(a3 + 5);
          if (v35)
          {
            if ((*(v35 + 4) != 1 || (*(*(v35 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v35 - *(*(v35 + 16) + 64)) >> 3)) != *(a3 + 1))
            {
              google::protobuf::Reflection::ClearOneof(a1, a2, v35, a4, a5);
              *google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3) = &google::protobuf::internal::fixed_address_empty_string;
            }
          }
        }

        v36 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
        v37 = *(a2 + 8);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Set(v36, v8, v37);
      }
    }

    else
    {
      if ((v12 & 0x10) != 0)
      {
        v14 = *(a3 + 5);
        if (v14)
        {
          if (*(v14 + 4) != 1 || (*(*(v14 + 48) + 1) & 2) == 0)
          {
            if (*(a2 + *(a1 + 44) - 613566756 * ((v14 - *(*(v14 + 16) + 64)) >> 3)) == *(a3 + 1))
            {
LABEL_24:
              v17 = *(v8 + 23);
              if ((v17 & 0x8000000000000000) != 0)
              {
                v18 = v8;
                v8 = *v8;
                v17 = *(v18 + 8);
              }

              v19 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
              absl::lts_20240722::Cord::operator=(*v19, v8, v17);
              goto LABEL_61;
            }

            google::protobuf::Reflection::ClearOneof(a1, a2, v14, a4, a5);
            v15 = *(a2 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              if (v15)
              {
                goto LABEL_23;
              }
            }

            else if (v15)
            {
LABEL_23:
              AlignedWithCleanup = google::protobuf::Arena::AllocateAlignedWithCleanup(v15, 0x10uLL, 8uLL, google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>);
              *AlignedWithCleanup = 0;
              AlignedWithCleanup[1] = 0;
              *google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3) = AlignedWithCleanup;
              goto LABEL_24;
            }

            operator new();
          }
        }
      }

      v30 = *(v8 + 23);
      if ((v30 & 0x8000000000000000) != 0)
      {
        v31 = v8;
        v8 = *v8;
        v30 = *(v31 + 8);
      }

      v32 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
      absl::lts_20240722::Cord::operator=(v32, v8, v30);
    }
  }

LABEL_61:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_23CDD4468(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Reflection::ClearOneof(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != 1 || (v8 = *(a3 + 48), (*(v8 + 1) & 2) == 0))
  {
    v9 = *(a2 + *(a1 + 44) - 613566756 * ((a3 - *(*(a3 + 16) + 64)) >> 3));
    if (!v9)
    {
      return;
    }

    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(*a1, v9);
    v11 = *(a2 + 8);
    if (v11)
    {
      if (*(v11 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_6;
      }
    }

    else if (v11)
    {
LABEL_6:
      *(a2 + *(a1 + 44) - 613566756 * ((a3 - *(*(a3 + 16) + 64)) >> 3)) = 0;
      return;
    }

    v12 = *(FieldByNumber + 24);
    if (v12 && (v24 = FieldByNumber, v25 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v12, memory_order_acquire) != 221))
    {
      v22 = FieldByNumber;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, &v25, &v24);
      FieldByNumber = v22;
      v13 = *(v22 + 2);
      v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v22 + 2)];
      if (v14 != 10)
      {
LABEL_15:
        if (v14 == 9)
        {
          v15 = *(FieldByNumber + 24);
          if (v15)
          {
            v24 = FieldByNumber;
            v25 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v15, memory_order_acquire) != 221)
            {
              v23 = FieldByNumber;
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v25, &v24);
              FieldByNumber = v23;
            }

            v13 = *(FieldByNumber + 2);
          }

          if (v13 == 12 && (v16 = *(FieldByNumber + 1), (~v16 & 0x60) != 0) && (v16 & 8) == 0 && *(*(FieldByNumber + 56) + 120) == 1)
          {
            v18 = *google::protobuf::Reflection::MutableRaw<google::protobuf::Message *>(a1, a2, FieldByNumber);
            if (v18)
            {
              absl::lts_20240722::Cord::~Cord(v18, v19);
              MEMORY[0x23EED9460]();
            }
          }

          else
          {
            v17 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, FieldByNumber);
            google::protobuf::internal::ArenaStringPtr::Destroy(v17);
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      v13 = *(FieldByNumber + 2);
      v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 2)];
      if (v14 != 10)
      {
        goto LABEL_15;
      }
    }

    if ((*(FieldByNumber + 1) & 0x10) != 0 && (v20 = *(FieldByNumber + 40)) != 0 && (*(v20 + 4) != 1 || (*(*(v20 + 48) + 1) & 2) == 0))
    {
      v21 = *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), FieldByNumber));
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v21 = *google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, FieldByNumber);
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    (*(*v21 + 8))(v21);
    goto LABEL_6;
  }

  google::protobuf::Reflection::ClearField(a1, a2, v8, a4, a5);
}

void *google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3)
{
  if ((*(a3 + 1) & 0x10) == 0 || (v4 = *(a3 + 5)) == 0 || *(v4 + 4) == 1 && (*(*(v4 + 48) + 1) & 2) != 0)
  {
    v5 = *(a1 + 32);
    if (v5 != -1)
    {
      if ((*(a3 + 1) & 8) != 0)
      {
        v7 = *(a3 + 5);
        v6 = (v7 ? v7 + 96 : *(a3 + 2) + 120);
      }

      else
      {
        v6 = (*(a3 + 4) + 56);
      }

      v8 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *v6) >> 3)) >> 30));
      if (v8 != -1)
      {
        *(a2 + v5 + ((v8 >> 3) & 0x1FFFFFFC)) |= 1 << v8;
      }
    }
  }

  else
  {
    *(a2 + *(a1 + 44) - 613566756 * ((v4 - *(*(v4 + 16) + 64)) >> 3)) = *(a3 + 1);
  }

  if ((*(a3 + 1) & 0x10) != 0)
  {
    v9 = *(a3 + 5);
    if (v9)
    {
      if (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0)
      {
        return (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      }
    }
  }

  return google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
}

void google::protobuf::Reflection::SetString(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, absl::lts_20240722::cord_internal::CordRepBtree *a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v8 = *(a3 + 3);
  if (!v8 || (__p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v50 = a3, atomic_load_explicit(v8, memory_order_acquire) == 221))
  {
    v9 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v9] == 9)
    {
      goto LABEL_6;
    }

LABEL_63:
  }

  v41 = a1;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, &__p, &v50);
  a1 = v41;
  v9 = *(a3 + 2);
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v9] != 9)
  {
    goto LABEL_63;
  }

LABEL_6:
  v10 = *(a3 + 1);
  if ((v10 & 8) == 0)
  {
    v11 = *(a3 + 3);
    if (v11)
    {
      __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v50 = a3;
      if (atomic_load_explicit(v11, memory_order_acquire) != 221)
      {
        v42 = a1;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, &__p, &v50);
        a1 = v42;
      }

      LODWORD(v9) = *(a3 + 2);
      v10 = *(a3 + 1);
    }

    if (v9 == 12 && (v10 & 0x60) != 0x60 && (v10 & 8) == 0 && *(*(a3 + 7) + 120) == 1)
    {
      if ((v10 & 0x10) == 0 || (v12 = *(a3 + 5)) == 0 || *(v12 + 4) == 1 && (*(*(v12 + 48) + 1) & 2) != 0)
      {
        v17 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
LABEL_40:
        if (v17 != a4)
        {
          if (*v17 & 1) != 0 || (*a4)
          {
            absl::lts_20240722::Cord::InlineRep::AssignSlow(v17, a4);
          }

          else
          {
            *v17 = *a4;
          }
        }

        return;
      }

      if (*(a2 + *(a1 + 44) - 613566756 * ((v12 - *(*(v12 + 16) + 64)) >> 3)) == *(a3 + 1))
      {
LABEL_23:
        v17 = *google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
        goto LABEL_40;
      }

      v13 = a1;
      google::protobuf::Reflection::ClearOneof(a1, a2, v12, a4, a5);
      v14 = *(a2 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        if (v14)
        {
          goto LABEL_22;
        }
      }

      else if (v14)
      {
LABEL_22:
        AlignedWithCleanup = google::protobuf::Arena::AllocateAlignedWithCleanup(v14, 0x10uLL, 8uLL, google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>);
        *AlignedWithCleanup = 0;
        AlignedWithCleanup[1] = 0;
        v16 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(v13, a2, a3);
        a1 = v13;
        *v16 = AlignedWithCleanup;
        goto LABEL_23;
      }

      operator new();
    }

    if ((v10 & 0x10) != 0)
    {
      v22 = *(a3 + 5);
      if (v22)
      {
        if ((*(v22 + 4) != 1 || (*(*(v22 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v22 - *(*(v22 + 16) + 64)) >> 3)) != *(a3 + 1))
        {
          v23 = a1;
          google::protobuf::Reflection::ClearOneof(a1, a2, v22, a4, a5);
          v24 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(v23, a2, a3);
          a1 = v23;
          *v24 = &google::protobuf::internal::fixed_address_empty_string;
          v10 = *(a3 + 1);
        }
      }
    }

    if ((v10 & 8) != 0)
    {
      v26 = *(a3 + 5);
      if (v26)
      {
        v25 = (v26 + 96);
      }

      else
      {
        v25 = (*(a3 + 2) + 120);
      }
    }

    else
    {
      v25 = (*(a3 + 4) + 56);
    }

    v27 = *(*(a1 + 16) + ((0xBA2E8BA300000000 * ((a3 - *v25) >> 3)) >> 30));
    v28 = *(a3 + 3);
    if (v28 && (__p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v50 = a3, atomic_load_explicit(v28, memory_order_acquire) != 221))
    {
      v44 = a1;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v28, 1, &__p, &v50);
      a1 = v44;
      v29 = *(a3 + 2);
      if (v29 == 12)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v29 = *(a3 + 2);
      if (v29 == 12)
      {
        goto LABEL_49;
      }
    }

    if (v29 != 9)
    {
LABEL_50:
      v30 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
      absl::lts_20240722::Cord::operator std::string(a4, &__p);
      v31 = *(a2 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(v30, &__p, v31);
      goto LABEL_71;
    }

LABEL_49:
    if ((v27 & 1) == 0)
    {
      goto LABEL_50;
    }

    v32 = a1;
    v33 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
    if ((*(a3 + 1) & 8) != 0)
    {
      v35 = *(a3 + 5);
      if (v35)
      {
        v34 = (v35 + 96);
      }

      else
      {
        v34 = (*(a3 + 2) + 120);
      }
    }

    else
    {
      v34 = (*(a3 + 4) + 56);
    }

    v36 = *(v32 + 64);
    v37 = *(*(v32 + 56) + ((0xBA2E8BA300000000 * ((a3 - *v34) >> 3)) >> 30)) >> 3;
    absl::lts_20240722::Cord::operator std::string(a4, &__p);
    v38 = *(a2 + 8);
    if (v38)
    {
      v45 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      v39 = *(v32 + 56);
      if ((*(a3 + 1) & 8) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v39 = *(v32 + 56);
      if ((*(a3 + 1) & 8) == 0)
      {
LABEL_61:
        v40 = (*(a3 + 4) + 56);
LABEL_70:
        v47 = *(v39 + ((0xBA2E8BA300000000 * ((a3 - *v40) >> 3)) >> 30));
        v48 = (*(a2 + *(v32 + 64) + ((v47 >> 3) & 0x1FFFFFFC)) >> v47) & 1;
        google::protobuf::internal::InlinedStringField::Set(v33, &__p);
LABEL_71:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    v46 = *(a3 + 5);
    if (v46)
    {
      v40 = (v46 + 96);
    }

    else
    {
      v40 = (*(a3 + 2) + 120);
    }

    goto LABEL_70;
  }

  v18 = *(a1 + 40);
  v19 = *(a3 + 1);
  v20 = *(a3 + 3);
  if (v20)
  {
    __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v50 = a3;
    if (atomic_load_explicit(v20, memory_order_acquire) != 221)
    {
      v43 = v19;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, &__p, &v50);
      v19 = v43;
    }

    LOBYTE(v9) = *(a3 + 2);
  }

  v21 = google::protobuf::internal::ExtensionSet::MutableString((a2 + v18), v19, v9, a3);
  absl::lts_20240722::CopyCordToString(a4, v21);
}

void sub_23CDD4E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Reflection::GetRepeatedString(google::protobuf::Descriptor *a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, int a4@<W3>, const char *a5@<X4>, std::string *a6@<X8>)
{
  if (*(a1 + 4) != *a2)
  {
  }

  if ((~*(a1 + 1) & 0x60) != 0)
  {
  }

  v8 = *(a1 + 3);
  if (!v8 || (v21 = a1, v22 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v8, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a1 + 2)] == 9)
    {
      goto LABEL_6;
    }

LABEL_24:
  }

  v18 = a1;
  v19 = a2;
  v20 = a3;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, &v22, &v21);
  a2 = v19;
  a3 = v20;
  a1 = v18;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v18[2]] != 9)
  {
    goto LABEL_24;
  }

LABEL_6:
  if ((*(a1 + 1) & 8) != 0)
  {
    RepeatedString = google::protobuf::internal::ExtensionSet::GetRepeatedString((a3 + *(a2 + 40)), *(a1 + 1), a4);
    if ((*(RepeatedString + 23) & 0x80000000) == 0)
    {
      v13 = *RepeatedString;
      v14 = *(RepeatedString + 16);
      goto LABEL_19;
    }

    v16 = *RepeatedString;
    v17 = *(RepeatedString + 8);
  }

  else
  {
    if ((*(a1 + 1) & 0x10) != 0 && (v9 = *(a1 + 5)) != 0 && (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0))
    {
      v10 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 8), a1));
    }

    else
    {
      v10 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a2, a3, a1);
    }

    if (*v10)
    {
      v11 = (*v10 + 8 * a4 + 7);
    }

    else
    {
      v11 = v10;
    }

    v12 = *v11;
    if ((*(v12 + 23) & 0x80000000) == 0)
    {
      v13 = *v12;
      v14 = *(v12 + 2);
LABEL_19:
      a6->__r_.__value_.__r.__words[2] = v14;
      *&a6->__r_.__value_.__l.__data_ = v13;
      return;
    }

    v16 = *v12;
    v17 = *(v12 + 1);
  }

  std::string::__init_copy_ctor_external(a6, v16, v17);
}

uint64_t google::protobuf::Reflection::GetRepeatedStringReference(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v14 = a3, v15 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 9)
    {
      goto LABEL_6;
    }

LABEL_18:
  }

  v11 = a3;
  v12 = a1;
  v13 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v15, &v14);
  a1 = v12;
  a2 = v13;
  a3 = v11;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v11[2]] != 9)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedString((a2 + *(a1 + 40)), *(a3 + 1), a4);
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v7 = *(a3 + 5)) != 0 && (*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0))
  {
    v8 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
  }

  else
  {
    v8 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
  }

  if (*v8)
  {
    v9 = *v8 + 8 * a4 + 7;
  }

  else
  {
    v9 = v8;
  }

  return *v9;
}

void *google::protobuf::Reflection::AddString(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t *a4, const char *a5)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (*(a3 + 4) != v7)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v10 = *(a3 + 3);
  if (v10)
  {
    v25 = a3;
    v26 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v26, &v25);
    }
  }

  v11 = *(a3 + 2);
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v11] != 9)
  {
  }

  if ((*(a3 + 1) & 8) != 0)
  {
    v17 = *(a1 + 40);
    v18 = *(a3 + 1);
    v19 = *(a3 + 3);
    if (v19)
    {
      v25 = a3;
      v26 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v19, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v19, 1, &v26, &v25);
      }

      LOBYTE(v11) = *(a3 + 2);
    }

    v20 = *a4;
    v27[0] = a4[1];
    *(v27 + 7) = *(a4 + 15);
    v21 = *(a4 + 23);
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    result = google::protobuf::internal::ExtensionSet::AddString((a2 + v17), v18, v11, a3);
    if (*(result + 23) < 0)
    {
      v22 = result;
      operator delete(*result);
      result = v22;
    }

    v23 = v27[0];
    *result = v20;
    result[1] = v23;
    *(result + 15) = *(v27 + 7);
    *(result + 23) = v21;
  }

  else
  {
    if ((*(a3 + 1) & 0x10) != 0 && (v12 = *(a3 + 5)) != 0 && (*(v12 + 4) != 1 || (*(*(v12 + 48) + 1) & 2) == 0))
    {
      v13 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
    }

    else
    {
      v13 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
    }

    result = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v13);
    if (*(result + 23) < 0)
    {
      v15 = result;
      operator delete(*result);
      result = v15;
    }

    v16 = *a4;
    result[2] = a4[2];
    *result = v16;
    *(a4 + 23) = 0;
    *a4 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDD54B8(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Reflection::GetEnum(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  EnumValue = google::protobuf::Reflection::GetEnumValue(a1, a2, a3, a4, a5);
  v7 = google::protobuf::FieldDescriptor::enum_type(a3);

  return google::protobuf::EnumDescriptor::FindValueByNumberCreatingIfUnknown(v7, EnumValue);
}

google::protobuf::internal::ExtensionSet *google::protobuf::Reflection::GetEnumValue(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v15 = a3, v16 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 8)
    {
      goto LABEL_6;
    }

LABEL_18:
  }

  v12 = a3;
  v13 = a1;
  v14 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v16, &v15);
  a1 = v13;
  a2 = v14;
  a3 = v12;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v12[2]] != 8)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    v8 = *(a1 + 40);
    v9 = *(a3 + 1);
    v10 = a2;
    v11 = google::protobuf::FieldDescriptor::default_value_enum(a3);
    return google::protobuf::internal::ExtensionSet::GetInt32((v10 + v8), v9, *(v11 + 4));
  }

  else
  {
    if ((*(a3 + 1) & 0x10) == 0)
    {
      return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
    }

    v6 = *(a3 + 5);
    if (!v6)
    {
      return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
    }

    if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0 || *(a2 + *(a1 + 44) - 613566756 * ((v6 - *(*(v6 + 16) + 64)) >> 3)) == *(a3 + 1))
    {
      if (*(v6 + 4) == 1 && (*(*(v6 + 48) + 1) & 2) != 0)
      {
        return *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
      }

      return *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
    }

    else
    {
      return *(google::protobuf::FieldDescriptor::default_value_enum(a3) + 4);
    }
  }
}

char *google::protobuf::Reflection::SetEnum(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *this, uint64_t a4)
{
  v8 = *(a4 + 16);
  if (v8 != google::protobuf::FieldDescriptor::enum_type(this))
  {
  }

  v10 = *(a4 + 4);
  v16 = v10;
  if ((*(this + 1) & 8) == 0)
  {
    return google::protobuf::Reflection::SetField<int>(a1, a2, this, &v16, v9);
  }

  v12 = *(a1 + 40);
  v13 = *(this + 1);
  v14 = *(this + 3);
  if (v14)
  {
    v17 = this;
    v18 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v14, memory_order_acquire) != 221)
    {
      v15 = v13;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v14, 1, &v18, &v17);
      v13 = v15;
    }

    v10 = v16;
  }

  return google::protobuf::internal::ExtensionSet::SetInt32((a2 + v12), v13, *(this + 2), v10, this);
}

void google::protobuf::anonymous namespace::ReportReflectionUsageEnumTypeError(google::protobuf::_anonymous_namespace_ *this, const google::protobuf::Descriptor *a2, const google::protobuf::FieldDescriptor *a3, const char *a4, const google::protobuf::EnumValueDescriptor *a5)
{
  v14 = a3;
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v13, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 239);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Protocol Buffer reflection usage error:\n  Method      : google::protobuf::Reflection::", 0x56uLL);
  v8 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v13, &v14);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "\n  Message type: ", 0x11uLL);
  v9 = absl::lts_20240722::log_internal::LogMessage::operator<<(v8, (*(this + 1) + 24));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "\n  Field       : ", 0x11uLL);
  v10 = absl::lts_20240722::log_internal::LogMessage::operator<<(v9, (*(a2 + 1) + 24));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, "\n  Problem     : Enum value did not match field type:\n    Expected  : ", 0x46uLL);
  v11 = google::protobuf::FieldDescriptor::enum_type(a2);
  v12 = absl::lts_20240722::log_internal::LogMessage::operator<<(v10, (*(v11 + 8) + 24));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "\n    Actual    : ", 0x11uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<(v12, (*(a4 + 1) + 24));
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v13);
}

void google::protobuf::Reflection::SetEnumValue(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  v7 = *a1;
  if (*(a3 + 4) != v7)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v10 = *(a3 + 3);
  if (v10)
  {
    v21 = a3;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v22, &v21);
      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 8)
      {
        goto LABEL_6;
      }

LABEL_19:
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] != 8)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (google::protobuf::FieldDescriptor::legacy_enum_field_treated_as_closed(a3) && (v12 = google::protobuf::FieldDescriptor::enum_type(a3), !google::protobuf::EnumDescriptor::FindValueByNumber(v12, a4)))
  {
    v16 = *(a1 + 36);
    v17 = *(a2 + v16);
    if (v17)
    {
      v18 = ((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v18 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a2 + v16));
    }

    google::protobuf::UnknownFieldSet::AddVarint(v18, *(a3 + 1), a4);
  }

  else
  {
    v20 = a4;
    if ((*(a3 + 1) & 8) != 0)
    {
      v13 = *(a1 + 40);
      v14 = *(a3 + 1);
      v15 = *(a3 + 3);
      if (v15)
      {
        v21 = a3;
        v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v15, memory_order_acquire) != 221)
        {
          v19 = v14;
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, &v22, &v21);
          v14 = v19;
        }

        a4 = v20;
      }

      google::protobuf::internal::ExtensionSet::SetInt32((a2 + v13), v14, *(a3 + 2), a4, a3);
    }

    else
    {
      google::protobuf::Reflection::SetField<int>(a1, a2, a3, &v20, v11);
    }
  }
}
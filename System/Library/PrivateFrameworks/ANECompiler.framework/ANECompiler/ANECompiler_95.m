uint64_t google::protobuf::Reflection::GetRepeatedEnum(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  RepeatedEnumValue = google::protobuf::Reflection::GetRepeatedEnumValue(a1, a2, a3, a4, a5);
  v7 = google::protobuf::FieldDescriptor::enum_type(a3);

  return google::protobuf::EnumDescriptor::FindValueByNumberCreatingIfUnknown(v7, RepeatedEnumValue);
}

uint64_t google::protobuf::Reflection::GetRepeatedEnumValue(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
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
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 8)
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
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]] != 8)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedEnum((a2 + *(a1 + 40)), *(a3 + 1), a4);
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

void *google::protobuf::Reflection::AddEnum(google::protobuf::_anonymous_namespace_ **a1, uint64_t a2, google::protobuf::FieldDescriptor *this, uint64_t a4)
{
  v8 = *(a4 + 16);
  if (v8 != google::protobuf::FieldDescriptor::enum_type(this))
  {
  }

  v10 = *(a4 + 4);

  return google::protobuf::Reflection::AddEnumValueInternal(a1, a2, this, v10);
}

void *google::protobuf::Reflection::AddEnumValueInternal(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, int a4)
{
  if ((*(a3 + 1) & 8) == 0)
  {
    if ((*(a3 + 1) & 0x10) != 0 && (v5 = *(a3 + 5)) != 0 && (*(v5 + 4) != 1 || (*(*(v5 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      v7 = HIDWORD(*result);
      v8 = *result;
      if (v8 != v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
      v7 = HIDWORD(*result);
      v8 = *result;
      if (v8 != v7)
      {
LABEL_7:
        v9 = result[1];
        *result = v8 + 1;
        *(v9 + 4 * v8) = a4;
        return result;
      }
    }

    v13 = result;
    google::protobuf::RepeatedField<int>::Grow(result, v7, (v7 + 1));
    result = v13;
    v8 = *v13;
    goto LABEL_7;
  }

  v10 = *(a1 + 40);
  v11 = *(a3 + 1);
  v12 = *(a3 + 3);
  if (v12)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v12, memory_order_acquire) != 221)
    {
      v14 = a2;
      v15 = a3;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, &v17, &v16);
      a2 = v14;
      a3 = v15;
    }
  }

  return google::protobuf::internal::ExtensionSet::AddInt32((a2 + v10), v11, *(a3 + 2), *(*(a3 + 7) + 128), a4, a3);
}

void google::protobuf::Reflection::AddEnumValue(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
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
    v15 = a3;
    v16 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v16, &v15);
      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 8)
      {
        goto LABEL_6;
      }

LABEL_13:
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] != 8)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (google::protobuf::FieldDescriptor::legacy_enum_field_treated_as_closed(a3) && (v11 = google::protobuf::FieldDescriptor::enum_type(a3), !google::protobuf::EnumDescriptor::FindValueByNumber(v11, a4)))
  {
    v12 = *(a1 + 36);
    v13 = *(a2 + v12);
    if (v13)
    {
      v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v14 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a2 + v12));
    }

    google::protobuf::UnknownFieldSet::AddVarint(v14, *(a3 + 1), a4);
  }

  else
  {
    google::protobuf::Reflection::AddEnumValueInternal(a1, a2, a3, a4);
  }
}

unint64_t google::protobuf::Reflection::GetDefaultMessageInstance(google::protobuf::Reflection *this, atomic_ullong *a2)
{
  v4 = *(this + 11);
  if (v4 == google::protobuf::MessageFactory::generated_factory(this))
  {
    result = atomic_load_explicit(a2 + 10, memory_order_acquire);
    if (!result)
    {
      v9 = *(this + 11);
      v10 = google::protobuf::FieldDescriptor::message_type(a2);
      result = (*(*v9 + 16))(v9, v10);
      atomic_store(result, a2 + 10);
    }

    return result;
  }

  v5 = *(a2 + 1);
  if ((v5 & 8) != 0)
  {
    goto LABEL_32;
  }

  v6 = a2[7];
  if (v6[132] & 1) != 0 || (v6[130])
  {
    goto LABEL_32;
  }

  v7 = a2[3];
  if (v6[129] == 1)
  {
    if (v7)
    {
      v22 = a2;
      v23 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v7, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, &v23, &v22);
      }
    }

    goto LABEL_32;
  }

  if (v7)
  {
    v22 = a2;
    v23 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, &v23, &v22);
    }

    v5 = *(a2 + 1);
  }

  if ((v5 & 0x10) != 0)
  {
    v11 = a2[5];
    if (v11)
    {
      if (*(v11 + 4) != 1 || (*(*(v11 + 48) + 1) & 2) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  if ((v5 & 8) != 0)
  {
    v13 = a2[5];
    if (v13)
    {
      v12 = (v13 + 96);
    }

    else
    {
      v12 = (a2[2] + 120);
    }
  }

  else
  {
    v12 = (a2[4] + 56);
  }

  v14 = *(this + 1);
  v15 = *(*(this + 2) + ((0xBA2E8BA300000000 * ((a2 - *v12) >> 3)) >> 30));
  v16 = a2[3];
  if (v16 && (v22 = a2, v23 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v16, memory_order_acquire) != 221))
  {
    v21 = v14;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, &v23, &v22);
    v14 = v21;
    v17 = *(a2 + 2) - 9;
    if (v17 <= 3u)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = *(a2 + 2) - 9;
    if (v17 <= 3u)
    {
LABEL_28:
      v18 = dword_23CE52C90[v17];
      goto LABEL_31;
    }
  }

  v18 = 0x7FFFFFFFLL;
LABEL_31:
  result = *(v14 + (v18 & v15));
  if (!result)
  {
LABEL_32:
    v19 = *(this + 11);
    v20 = google::protobuf::FieldDescriptor::message_type(a2);
    return (*(*v19 + 16))(v19, v20);
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetMessage(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = *(a3 + 3);
  if (!v5 || (v20 = a3, v21 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 10)
    {
      goto LABEL_6;
    }

LABEL_21:
  }

  v16 = a3;
  v17 = a4;
  v18 = a1;
  v19 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v21, &v20);
  a4 = v17;
  a2 = v19;
  a1 = v18;
  a3 = v16;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v16[2]] != 10)
  {
    goto LABEL_21;
  }

LABEL_6:
  if (a4)
  {
    v6 = *(a3 + 1);
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v11 = *(a1 + 40);
    v12 = *(a3 + 1);
    v13 = a2;
    v14 = a4;
    v15 = google::protobuf::FieldDescriptor::message_type(a3);
    return google::protobuf::internal::ExtensionSet::GetMessage((v13 + v11), v12, v15, v14);
  }

  a4 = *(a1 + 88);
  v6 = *(a3 + 1);
  if ((v6 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(a3 + 5);
  if (!v7)
  {
    goto LABEL_15;
  }

  if ((*(v7 + 4) != 1 || (*(*(v7 + 48) + 1) & 2) == 0) && *(a2 + *(a1 + 44) - 613566756 * ((v7 - *(*(v7 + 16) + 64)) >> 3)) != *(a3 + 1))
  {
    return google::protobuf::Reflection::GetDefaultMessageInstance(a1, a3);
  }

  if (*(v7 + 4) == 1 && (*(*(v7 + 48) + 1) & 2) != 0)
  {
LABEL_15:
    v8 = a1;
    v9 = a3;
    result = *google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
    if (result)
    {
      return result;
    }

    return google::protobuf::Reflection::GetDefaultMessageInstance(v8, v9);
  }

  v8 = a1;
  v9 = a3;
  result = *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
  if (!result)
  {
    return google::protobuf::Reflection::GetDefaultMessageInstance(v8, v9);
  }

  return result;
}

uint64_t google::protobuf::Reflection::MutableMessage(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, google::protobuf::MessageFactory *a4, const char *a5)
{
  v7 = *a1;
  if (*(a3 + 4) != v7)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v9 = *(a3 + 3);
  if (!v9 || (v27 = a3, v28 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v9, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 10)
    {
      goto LABEL_6;
    }

LABEL_24:
  }

  v20 = a4;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v28, &v27);
  a4 = v20;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] != 10)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (!a4)
  {
    a4 = *(a1 + 88);
    v10 = *(a3 + 1);
    if ((v10 & 8) == 0)
    {
      goto LABEL_8;
    }

    return google::protobuf::internal::ExtensionSet::MutableMessage((a2 + *(a1 + 40)), a3, a4);
  }

  v10 = *(a3 + 1);
  if ((v10 & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::MutableMessage((a2 + *(a1 + 40)), a3, a4);
  }

LABEL_8:
  if ((v10 & 0x10) != 0)
  {
    v11 = *(a3 + 5);
    if (v11)
    {
      if (*(v11 + 4) != 1 || (*(*(v11 + 48) + 1) & 2) == 0)
      {
        v14 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
        v15 = *(a3 + 1);
        if ((v15 & 0x10) != 0)
        {
          goto LABEL_13;
        }

LABEL_26:
        v21 = *(a1 + 32);
        if (v21 != -1)
        {
          if ((v15 & 8) != 0)
          {
            v23 = *(a3 + 5);
            v22 = (v23 ? v23 + 96 : *(a3 + 2) + 120);
          }

          else
          {
            v22 = (*(a3 + 4) + 56);
          }

          v24 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *v22) >> 3)) >> 30));
          if (v24 != -1)
          {
            *(a2 + v21 + ((v24 >> 3) & 0x1FFFFFFC)) |= 1 << v24;
          }
        }

LABEL_34:
        result = *v14;
        if (*v14)
        {
          return result;
        }

        goto LABEL_35;
      }
    }
  }

  v14 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
  v15 = *(a3 + 1);
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v16 = *(a3 + 5);
  if (!v16 || *(v16 + 4) == 1 && (*(*(v16 + 48) + 1) & 2) != 0)
  {
    goto LABEL_26;
  }

  if (*(a2 + *(a1 + 44) - 613566756 * ((v16 - *(*(v16 + 16) + 64)) >> 3)) == *(a3 + 1))
  {
    goto LABEL_34;
  }

  google::protobuf::Reflection::ClearOneof(a1, a2, v16, v12, v13);
  v14 = google::protobuf::Reflection::MutableField<absl::lts_20240722::Cord *>(a1, a2, a3);
  DefaultMessageInstance = google::protobuf::Reflection::GetDefaultMessageInstance(a1, a3);
  v18 = *(a2 + 8);
  if (v18)
  {
    v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = (*(*DefaultMessageInstance + 16))(DefaultMessageInstance, v18);
  *v14 = result;
  if (!result)
  {
LABEL_35:
    v25 = google::protobuf::Reflection::GetDefaultMessageInstance(a1, a3);
    v26 = *(a2 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = (*(*v25 + 16))(v25, v26);
    *v14 = result;
  }

  return result;
}

void google::protobuf::Reflection::UnsafeArenaSetAllocatedMessage(uint64_t a1, uint64_t a2, google::protobuf::MessageLite *a3, google::protobuf::Descriptor *a4, const char *a5)
{
  if (*(a4 + 4) != *a1)
  {
  }

  if ((~*(a4 + 1) & 0x60) == 0)
  {
  }

  v7 = *(a4 + 3);
  if (!v7 || (v33 = a4, v34 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v7, memory_order_acquire) == 221))
  {
    v8 = *(a4 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8] == 10)
    {
      goto LABEL_6;
    }

LABEL_40:
  }

  v28 = a4;
  v29 = a1;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, &v34, &v33);
  a1 = v29;
  a4 = v28;
  v8 = v28[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8] != 10)
  {
    goto LABEL_40;
  }

LABEL_6:
  if ((*(a4 + 1) & 8) == 0)
  {
    if ((*(a4 + 1) & 0x10) != 0)
    {
      v9 = *(a4 + 5);
      if (v9)
      {
        if (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0)
        {
          v10 = a4;
          v11 = a1;
          google::protobuf::Reflection::ClearOneof(a1, a2, v9, a4, a5);
          if (a3)
          {
            if ((*(v10 + 1) & 0x10) != 0 && (v12 = *(v10 + 5)) != 0 && (*(v12 + 4) != 1 || (*(*(v12 + 48) + 1) & 2) == 0))
            {
              v13 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((v11 + 8), v10));
            }

            else
            {
              v13 = google::protobuf::Reflection::MutableRawNonOneofImpl(v11, a2, v10);
            }

            *v13 = a3;
            *(a2 + *(v11 + 44) - 613566756 * ((*(v10 + 5) - *(*(*(v10 + 5) + 16) + 64)) >> 3)) = *(v10 + 1);
          }

          return;
        }
      }
    }

    v17 = *(a1 + 32);
    if (a3)
    {
      if (v17 != -1)
      {
        v18 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a4 - *(*(a4 + 4) + 56)) >> 3)) >> 30));
        if (v18 != -1)
        {
          v19 = 1 << v18;
          v20 = a2 + v17;
          v21 = (v18 >> 3) & 0x1FFFFFFC;
          v22 = *(v20 + v21) | v19;
LABEL_31:
          *(v20 + v21) = v22;
        }
      }
    }

    else if (v17 != -1)
    {
      v23 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a4 - *(*(a4 + 4) + 56)) >> 3)) >> 30));
      if (v23 != -1)
      {
        v24 = 1 << v23;
        v20 = a2 + v17;
        v21 = (v23 >> 3) & 0x1FFFFFFC;
        v22 = *(v20 + v21) & ~v24;
        goto LABEL_31;
      }
    }

    if ((*(a4 + 1) & 0x10) != 0 && (v25 = *(a4 + 5)) != 0 && (*(v25 + 4) != 1 || (*(*(v25 + 48) + 1) & 2) == 0))
    {
      v26 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
      v27 = *(a2 + 8);
      if ((v27 & 1) == 0)
      {
LABEL_37:
        if (v27)
        {
          goto LABEL_38;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v26 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a4);
      v27 = *(a2 + 8);
      if ((v27 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    if (*(v27 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_38;
    }

LABEL_43:
    if (*v26)
    {
      v30 = v26;
      (*(**v26 + 8))(*v26);
      *v30 = a3;
      return;
    }

LABEL_38:
    *v26 = a3;
    return;
  }

  v14 = *(a1 + 40);
  v15 = *(a4 + 1);
  v16 = *(a4 + 3);
  if (v16)
  {
    v33 = a4;
    v34 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v16, memory_order_acquire) != 221)
    {
      v32 = a4;
      v31 = v15;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, &v34, &v33);
      v15 = v31;
      a4 = v32;
    }

    LOBYTE(v8) = *(a4 + 2);
  }

  google::protobuf::internal::ExtensionSet::UnsafeArenaSetAllocatedMessage((a2 + v14), v15, v8, a4, a3);
}

void google::protobuf::Reflection::SetAllocatedMessage(uint64_t a1, uint64_t a2, const google::protobuf::Message *a3, google::protobuf::Descriptor *a4, const char *a5)
{
  if (!a3)
  {
    goto LABEL_10;
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v6 = *(a3 + 1);
    if ((v6 & 1) == 0)
    {
LABEL_4:
      if (v5 == v6)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v6 = *(a3 + 1);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v6)
  {
    v7 = a3;
    v8 = google::protobuf::Reflection::MutableMessage(a1, a2, a4, 0, a5);

    google::protobuf::Message::CopyFrom(v8, v7);
    return;
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  google::protobuf::internal::ThreadSafeArena::AddCleanup(v5, a3, google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>);
  a1 = v9;
  a2 = v10;
  a3 = v11;
  a4 = v12;
LABEL_10:

  google::protobuf::Reflection::UnsafeArenaSetAllocatedMessage(a1, a2, a3, a4, a5);
}

uint64_t google::protobuf::Reflection::UnsafeArenaReleaseMessage(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t a4, const char *a5)
{
  if (a3[4] != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) == 0)
  {
  }

  v5 = a3[3];
  if (!v5 || (v19 = a3, v20 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v5, memory_order_acquire) == 221))
  {
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 10)
    {
      goto LABEL_6;
    }

LABEL_31:
  }

  v15 = a3;
  v16 = a4;
  v17 = a1;
  v18 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v20, &v19);
  a4 = v16;
  a1 = v17;
  a2 = v18;
  a3 = v15;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v15[2]] != 10)
  {
    goto LABEL_31;
  }

LABEL_6:
  if (a4)
  {
    v6 = *(a3 + 1);
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    return google::protobuf::internal::ExtensionSet::UnsafeArenaReleaseMessage((a2 + *(a1 + 40)), a3, a4);
  }

  a4 = *(a1 + 88);
  v6 = *(a3 + 1);
  if ((v6 & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::UnsafeArenaReleaseMessage((a2 + *(a1 + 40)), a3, a4);
  }

LABEL_8:
  if ((~v6 & 0x60) != 0 && ((v6 & 0x10) == 0 || (v7 = a3[5]) == 0 || v7[1] == 1 && (*(*(v7 + 6) + 1) & 2) != 0))
  {
    v8 = *(a1 + 32);
    if (v8 != -1)
    {
      v9 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *(a3[4] + 7)) >> 3)) >> 30));
      if (v9 != -1)
      {
        *(a2 + v8 + ((v9 >> 3) & 0x1FFFFFFC)) &= ~(1 << v9);
        LOBYTE(v6) = *(a3 + 1);
      }
    }
  }

  if ((v6 & 0x10) == 0)
  {
    goto LABEL_25;
  }

  v10 = a3[5];
  if (!v10 || v10[1] == 1 && (*(*(v10 + 6) + 1) & 2) != 0)
  {
LABEL_22:
    v12 = a3[5];
    if (v12 && (v12[1] != 1 || (*(*(v12 + 6) + 1) & 2) == 0))
    {
      v13 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
      goto LABEL_26;
    }

LABEL_25:
    v13 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
LABEL_26:
    result = *v13;
    *v13 = 0;
    return result;
  }

  v11 = *(a1 + 44) - 613566756 * ((v10 - *(*(v10 + 2) + 64)) >> 3);
  if (*(a2 + v11) == *(a3 + 1))
  {
    *(a2 + v11) = 0;
    if ((*(a3 + 1) & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t google::protobuf::Reflection::GetRepeatedMessage(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5)
{
  if (*(a3 + 4) != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v6 = *(a3 + 3);
  if (!v6 || (v27 = a3, v28 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v6, memory_order_acquire) == 221))
  {
    v7 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 10)
    {
      goto LABEL_6;
    }

LABEL_31:
  }

  v20 = a3;
  v21 = a1;
  v22 = a2;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v28, &v27);
  a1 = v21;
  a2 = v22;
  a3 = v20;
  v7 = v20[2];
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v20[2]] != 10)
  {
    goto LABEL_31;
  }

LABEL_6:
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedMessage((a2 + *(a1 + 40)), *(a3 + 1), a4);
  }

  v8 = *(a3 + 3);
  if (v8)
  {
    v27 = a3;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != 221)
    {
      v23 = a3;
      v24 = a1;
      v25 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, &v28, &v27);
      a1 = v24;
      a2 = v25;
      a3 = v23;
    }

    v7 = *(a3 + 2);
  }

  if (v7 == 11)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
    is_map_message_type = google::protobuf::FieldDescriptor::is_map_message_type(a3);
    a3 = v11;
    v13 = *(v11 + 1);
    a2 = v10;
    if (is_map_message_type)
    {
      if ((*(v11 + 1) & 0x10) != 0 && (v14 = *(v11 + 5)) != 0 && (*(v14 + 4) != 1 || (*(*(v14 + 48) + 1) & 2) == 0))
      {
        FieldOffset = google::protobuf::internal::ReflectionSchema::GetFieldOffset((v9 + 8), v11);
        RepeatedField = google::protobuf::internal::MapFieldBase::GetRepeatedField((v10 + FieldOffset));
      }

      else
      {
        v15 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(v9, v10, v11);
        RepeatedField = google::protobuf::internal::MapFieldBase::GetRepeatedField(v15);
      }

      goto LABEL_26;
    }

    a1 = v9;
    if ((*(v11 + 1) & 0x10) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((*(a3 + 1) & 0x10) == 0)
  {
    goto LABEL_25;
  }

  v18 = *(a3 + 5);
  if (v18 && (*(v18 + 4) != 1 || (*(*(v18 + 48) + 1) & 2) == 0))
  {
    RepeatedField = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
    goto LABEL_26;
  }

LABEL_25:
  RepeatedField = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(a1, a2, a3);
LABEL_26:
  if (*RepeatedField)
  {
    v19 = *RepeatedField + 8 * a4 + 7;
  }

  else
  {
    v19 = RepeatedField;
  }

  return *v19;
}

google::protobuf::MessageLite *google::protobuf::Reflection::AddMessage(uint64_t a1, uint64_t a2, atomic_uint **a3, google::protobuf::MessageFactory *a4, const char *a5)
{
  if (a3[4] != *a1)
  {
  }

  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v8 = a3[3];
  if (!v8 || (v31 = a3, v32 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v8, memory_order_acquire) == 221))
  {
    v9 = *(a3 + 2);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] == 10)
    {
      goto LABEL_6;
    }

LABEL_34:
  }

  v21 = a1;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, &v32, &v31);
  a1 = v21;
  v9 = *(a3 + 2);
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)] != 10)
  {
    goto LABEL_34;
  }

LABEL_6:
  if (a4)
  {
    if ((*(a3 + 1) & 8) == 0)
    {
      goto LABEL_8;
    }

    return google::protobuf::internal::ExtensionSet::AddMessage((a2 + *(a1 + 40)), a3, a4);
  }

  a4 = *(a1 + 88);
  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::AddMessage((a2 + *(a1 + 40)), a3, a4);
  }

LABEL_8:
  v10 = a3[3];
  if (v10)
  {
    v31 = a3;
    v32 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      v30 = a1;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v32, &v31);
      a1 = v30;
    }

    v9 = *(a3 + 2);
  }

  if (v9 != 11)
  {
    if ((*(a3 + 1) & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v11 = a1;
  is_map_message_type = google::protobuf::FieldDescriptor::is_map_message_type(a3);
  v13 = *(a3 + 1);
  if (!is_map_message_type)
  {
    a1 = v11;
    if ((*(a3 + 1) & 0x10) == 0)
    {
      goto LABEL_30;
    }

LABEL_27:
    v20 = a3[5];
    if (v20 && (v20[1] != 1 || (*(*(v20 + 6) + 1) & 2) == 0))
    {
      v16 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
      v17 = *(v16 + 8);
      v18 = *v16;
      if (*v16)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

LABEL_30:
    v16 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
    v17 = *(v16 + 8);
    v18 = *v16;
    if (*v16)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v14 = a3[5]) != 0 && (v14[1] != 1 || (*(*(v14 + 6) + 1) & 2) == 0))
  {
    v15 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((v11 + 8), a3));
  }

  else
  {
    v15 = google::protobuf::Reflection::MutableRawNonOneofImpl(v11, a2, a3);
  }

  v16 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(v15);
  v17 = *(v16 + 8);
  v18 = *v16;
  if (*v16)
  {
LABEL_36:
    if (v17 >= *(v18 - 1))
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_31:
  if (v17 >= (v18 != 0))
  {
    goto LABEL_40;
  }

LABEL_37:
  v22 = v17++;
  *(v16 + 8) = v17;
  v23 = (v18 + 8 * v22 + 7);
  if ((v18 & 1) == 0)
  {
    v23 = v16;
  }

  result = *v23;
  if (!*v23)
  {
LABEL_40:
    if (v17)
    {
      if (v18)
      {
        v24 = (v18 + 7);
      }

      else
      {
        v24 = v16;
      }

      v25 = *v24;
      v26 = *(a2 + 8);
      if ((v26 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v28 = google::protobuf::FieldDescriptor::message_type(a3);
      v25 = (*(*a4 + 16))(a4, v28);
      v26 = *(a2 + 8);
      if ((v26 & 1) == 0)
      {
LABEL_45:
        v27 = (*(*v25 + 16))(v25);
        google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v16, v27);
        return v27;
      }
    }

    v29 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    goto LABEL_45;
  }

  return result;
}

void *google::protobuf::Reflection::MutableRawRepeatedField(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5, uint64_t a6)
{
  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v10 = *(a3 + 3);
  if (v10 && (v24[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v25 = a3, atomic_load_explicit(v10, memory_order_acquire) != 221))
  {
    v22 = a4;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, v24, &v25);
    a4 = v22;
    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v11 == v22)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v11 == a4)
    {
      goto LABEL_11;
    }
  }

  v12 = *(a3 + 3);
  if (v12)
  {
    v24[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v25 = a3;
    if (atomic_load_explicit(v12, memory_order_acquire) != 221)
    {
      v23 = a4;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, v24, &v25);
      a4 = v23;
    }

    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
  }

  if (a4 != 1 || v11 != 8)
  {
  }

LABEL_11:
  if (a6)
  {
    v13 = google::protobuf::FieldDescriptor::message_type(a3);
    if (v13 != a6)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<void const*,void const*>(v13, a6, "field->message_type() == desc");
    }
  }

  if ((*(a3 + 1) & 8) == 0)
  {
    v14 = *(a3 + 3);
    if (v14 && (v24[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v25 = a3, atomic_load_explicit(v14, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v14, 1, v24, &v25);
      if (*(a3 + 2) == 11)
      {
LABEL_17:
        if (google::protobuf::FieldDescriptor::is_map_message_type(a3))
        {
          v15 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
          return google::protobuf::internal::MapFieldBase::MutableRepeatedField(v15);
        }
      }
    }

    else if (*(a3 + 2) == 11)
    {
      goto LABEL_17;
    }

    return google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
  }

  v17 = *(a1 + 40);
  v18 = *(a3 + 1);
  v19 = *(a3 + 3);
  if (v19)
  {
    v24[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v25 = a3;
    if (atomic_load_explicit(v19, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v19, 1, v24, &v25);
    }
  }

  v20 = *(a3 + 2);
  is_packed = google::protobuf::FieldDescriptor::is_packed(a3);
  return google::protobuf::internal::ExtensionSet::MutableRawRepeatedField((a2 + v17), v18, v20, is_packed, a3);
}

google::protobuf::internal::ExtensionSet *google::protobuf::Reflection::GetRawRepeatedField(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3, int a4, const char *a5, uint64_t a6)
{
  if ((~*(a3 + 1) & 0x60) != 0)
  {
  }

  v10 = *(a3 + 3);
  if (v10 && (v22[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v23 = a3, atomic_load_explicit(v10, memory_order_acquire) != 221))
  {
    v18 = a4;
    v19 = a5;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, v22, &v23);
    a4 = v18;
    LODWORD(a5) = v19;
    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v11 == v18)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v11 == a4)
    {
      goto LABEL_11;
    }
  }

  v12 = *(a3 + 3);
  if (v12)
  {
    v22[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v23 = a3;
    if (atomic_load_explicit(v12, memory_order_acquire) != 221)
    {
      v21 = a4;
      v20 = a5;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, v22, &v23);
      a4 = v21;
      LODWORD(a5) = v20;
    }

    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
  }

  if (a4 != 1 || v11 != 8)
  {
  }

LABEL_11:
  if ((a5 & 0x80000000) == 0)
  {
    v13 = *(*(a3 + 7) + 120);
    if (v13 != a5)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v13, a5, "field->options().ctype() == ctype");
    }
  }

  if (a6)
  {
    v14 = google::protobuf::FieldDescriptor::message_type(a3);
    if (v14 != a6)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<void const*,void const*>(v14, a6, "field->message_type() == desc");
    }
  }

  if ((*(a3 + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRawRepeatedField((a2 + *(a1 + 40)), *(a3 + 1), &google::protobuf::internal::kZeroBuffer);
  }

  v15 = *(a3 + 3);
  if (v15 && (v22[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v23 = a3, atomic_load_explicit(v15, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, v22, &v23);
    if (*(a3 + 2) == 11)
    {
LABEL_19:
      if (google::protobuf::FieldDescriptor::is_map_message_type(a3))
      {
        v16 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
        return google::protobuf::internal::MapFieldBase::GetRepeatedField(v16);
      }
    }
  }

  else if (*(a3 + 2) == 11)
  {
    goto LABEL_19;
  }

  return google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
}

uint64_t google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a3 + 1);
  if (*(a1 + 68) == -1 || ((*(a3 + 1) & 8) != 0 ? ((v8 = *(a3 + 40)) == 0 ? (v7 = (*(a3 + 16) + 120)) : (v7 = (v8 + 96))) : (v7 = (*(a3 + 32) + 56)), (*(v5 + ((0xBA2E8BA300000000 * ((a3 - *v7) >> 3)) >> 30)) & 0x80000000) == 0))
  {
    if ((*(a3 + 1) & 8) != 0)
    {
      v10 = *(a3 + 40);
      if (v10)
      {
        v9 = (v10 + 96);
      }

      else
      {
        v9 = (*(a3 + 16) + 120);
      }
    }

    else
    {
      v9 = (*(a3 + 32) + 56);
    }

    v19[5] = v3;
    v19[6] = v4;
    v11 = *(v5 + ((0xBA2E8BA300000000 * ((a3 - *v9) >> 3)) >> 30));
    v12 = *(a3 + 24);
    if (v12 && (v18 = a3, v19[0] = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v12, memory_order_acquire) != 221))
    {
      v17 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, v19, &v18);
      a2 = v17;
      v13 = *(a3 + 2) - 9;
      if (v13 <= 3u)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = *(a3 + 2) - 9;
      if (v13 <= 3u)
      {
LABEL_16:
        v14 = dword_23CE52C90[v13];
        return a2 + (v14 & v11);
      }
    }

    v14 = 0x7FFFFFFF;
    return a2 + (v14 & v11);
  }

  return google::protobuf::Reflection::GetRawSplit<absl::lts_20240722::Cord *>(a1, a2, a3);
}

uint64_t google::protobuf::Reflection::GetOneofFieldDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) == 1 && (v5 = *(a3 + 48), (*(v5 + 1) & 2) != 0))
  {
    if (google::protobuf::Reflection::HasField(a1, a2, *(a3 + 48), a4, a5))
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a2 + *(a1 + 44) - 613566756 * ((a3 - *(*(a3 + 16) + 64)) >> 3));
    if (v6)
    {
      v7 = *a1;

      return google::protobuf::Descriptor::FindFieldByNumber(v7, v6);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::Reflection::LookupMapValue(google::protobuf::_anonymous_namespace_ **a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 3);
  if (v10 && (v18 = a3, v19 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v10, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v19, &v18);
    if (*(a3 + 2) != 11)
    {
LABEL_16:
    }
  }

  else if (*(a3 + 2) != 11)
  {
    goto LABEL_16;
  }

  if ((google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = google::protobuf::FieldDescriptor::message_type(a3);
  v12 = google::protobuf::Descriptor::map_value(v11);
  v13 = *(v12 + 24);
  if (v13)
  {
    v18 = v12;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v13, memory_order_acquire) != 221)
    {
      v17 = v12;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v13, 1, &v19, &v18);
      v12 = v17;
    }
  }

  *(a5 + 8) = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + 2)];
  if ((*(a3 + 1) & 0x10) != 0 && (v14 = *(a3 + 5)) != 0 && (*(v14 + 4) != 1 || (*(*(v14 + 48) + 1) & 2) == 0))
  {
    v15 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 1), a3);
  }

  else
  {
    v15 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }

  return (*(*v15 + 8))(v15, a4, a5);
}

uint64_t google::protobuf::Reflection::MapBegin@<X0>(google::protobuf::Descriptor *a1@<X2>, google::protobuf::_anonymous_namespace_ **a2@<X0>, uint64_t a3@<X1>, const char *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 3);
  if (v9 && (v13 = a1, v14 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v9, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v14, &v13);
    if (*(a1 + 2) != 11)
    {
LABEL_13:
    }
  }

  else if (*(a1 + 2) != 11)
  {
    goto LABEL_13;
  }

  if ((google::protobuf::FieldDescriptor::is_map_message_type(a1) & 1) == 0)
  {
    goto LABEL_13;
  }

  google::protobuf::MapIterator::MapIterator(a5, a3, a1);
  if ((*(a1 + 1) & 0x10) != 0 && (v10 = *(a1 + 5)) != 0 && (*(v10 + 4) != 1 || (*(*(v10 + 48) + 1) & 2) == 0))
  {
    v11 = a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 1), a1);
  }

  else
  {
    v11 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a2, a3, a1);
  }

  return google::protobuf::internal::MapFieldBase::MapBegin(v11, a5);
}

void sub_23CDD80A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 9 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Reflection::MapEnd(google::protobuf::Descriptor *a1@<X2>, google::protobuf::_anonymous_namespace_ **a2@<X0>, uint64_t a3@<X1>, const char *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 3);
  if (v9 && (v12 = a1, v13 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v9, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v13, &v12);
    if (*(a1 + 2) != 11)
    {
LABEL_13:
    }
  }

  else if (*(a1 + 2) != 11)
  {
    goto LABEL_13;
  }

  if ((google::protobuf::FieldDescriptor::is_map_message_type(a1) & 1) == 0)
  {
    goto LABEL_13;
  }

  google::protobuf::MapIterator::MapIterator(a5, a3, a1);
  if ((*(a1 + 1) & 0x10) != 0 && (v10 = *(a1 + 5)) != 0 && (*(v10 + 4) != 1 || (*(*(v10 + 48) + 1) & 2) == 0))
  {
    v11 = a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a2 + 1), a1);
  }

  else
  {
    v11 = google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a2, a3, a1);
  }

  google::protobuf::internal::MapFieldBase::MapEnd(v11, a5);
}

void sub_23CDD81E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 9 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Reflection::FindKnownExtensionByNumber(absl::lts_20240722::base_internal ***this, int a2)
{
  if (*(this + 10) == -1)
  {
    return 0;
  }

  else
  {
    return google::protobuf::DescriptorPool::FindExtensionByNumber(this[10], *this, a2);
  }
}

void *google::protobuf::Reflection::MutableRawSplitImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 1) & 8) != 0)
  {
    v7 = *(a3 + 40);
    if (v7)
    {
      v6 = (v7 + 96);
    }

    else
    {
      v6 = (*(a3 + 16) + 120);
    }
  }

  else
  {
    v6 = (*(a3 + 32) + 56);
  }

  v8 = *(*(a1 + 16) + ((0xBA2E8BA300000000 * ((a3 - *v6) >> 3)) >> 30));
  v9 = *(a3 + 24);
  if (v9 && (v27 = a3, v28 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v9, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v28, &v27);
    v10 = *(a3 + 2) - 9;
    if (v10 <= 3u)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = *(a3 + 2) - 9;
    if (v10 <= 3u)
    {
LABEL_9:
      v11 = dword_23CE52C90[v10];
      goto LABEL_12;
    }
  }

  v11 = 0x7FFFFFFF;
LABEL_12:
  v12 = v11 & v8;
  v13 = *(a1 + 68);
  v14 = *(*(a1 + 8) + v13);
  if (*(a2 + v13) != v14)
  {
    v15 = (*(a2 + v13) + v12);
    if ((~*(a3 + 1) & 0x60) == 0)
    {
      goto LABEL_14;
    }

    return v15;
  }

  v21 = *(a1 + 72);
  v22 = *(a2 + 8);
  if (v22)
  {
    v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    if (v22)
    {
      goto LABEL_23;
    }
  }

  else if (v22)
  {
LABEL_23:
    v23 = google::protobuf::Arena::Allocate(v22);
    goto LABEL_28;
  }

  v23 = operator new(*(a1 + 72));
LABEL_28:
  *(a2 + v13) = v23;
  memcpy(v23, v14, v21);
  v15 = (*(a2 + *(a1 + 68)) + v12);
  if ((~*(a3 + 1) & 0x60) != 0)
  {
    return v15;
  }

LABEL_14:
  v16 = *(a2 + 8);
  if (v16)
  {
    v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    result = *v15;
    if (*v15 != &google::protobuf::internal::kZeroBuffer)
    {
      return result;
    }
  }

  else
  {
    result = *v15;
    if (*v15 != &google::protobuf::internal::kZeroBuffer)
    {
      return result;
    }
  }

  v18 = *(a3 + 24);
  if (v18 && (v27 = a3, v28 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v18, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v18, 1, &v28, &v27);
    v19 = *(a3 + 2);
    v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v20 < 9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = *(a3 + 2);
    v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v20 < 9)
    {
      goto LABEL_19;
    }
  }

  v24 = *(a3 + 24);
  if (v24)
  {
    v27 = a3;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v24, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v24, 1, &v28, &v27);
    }

    v19 = *(a3 + 2);
    v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
  }

  if (v20 != 9)
  {
    goto LABEL_42;
  }

  v25 = *(a3 + 24);
  if (v25)
  {
    v27 = a3;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v25, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v25, 1, &v28, &v27);
    }

    v19 = *(a3 + 2);
  }

  if (v19 != 12 || (v26 = *(a3 + 1), (~v26 & 0x60) == 0) || (v26 & 8) != 0 || *(*(a3 + 56) + 120) != 1)
  {
LABEL_42:
    if (!v16)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(v16);
    *result = 0;
    result[1] = 0;
    result[2] = v16;
    goto LABEL_44;
  }

LABEL_19:
  if (!v16)
  {
    operator new();
  }

  result = google::protobuf::Arena::Allocate(v16);
  *result = 0;
  result[1] = v16;
LABEL_44:
  *v15 = result;
  return result;
}

void *google::protobuf::Reflection::MutableRawNonOneofImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a3 + 1);
  if (*(a1 + 68) == -1 || ((*(a3 + 1) & 8) != 0 ? ((v8 = *(a3 + 40)) == 0 ? (v7 = (*(a3 + 16) + 120)) : (v7 = (v8 + 96))) : (v7 = (*(a3 + 32) + 56)), (*(v5 + ((0xBA2E8BA300000000 * ((a3 - *v7) >> 3)) >> 30)) & 0x80000000) == 0))
  {
    if ((*(a3 + 1) & 8) != 0)
    {
      v10 = *(a3 + 40);
      if (v10)
      {
        v9 = (v10 + 96);
      }

      else
      {
        v9 = (*(a3 + 16) + 120);
      }
    }

    else
    {
      v9 = (*(a3 + 32) + 56);
    }

    v19[5] = v3;
    v19[6] = v4;
    v11 = *(v5 + ((0xBA2E8BA300000000 * ((a3 - *v9) >> 3)) >> 30));
    v12 = *(a3 + 24);
    if (v12 && (v18 = a3, v19[0] = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v12, memory_order_acquire) != 221))
    {
      v17 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, v19, &v18);
      a2 = v17;
      v13 = *(a3 + 2) - 9;
      if (v13 <= 3u)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = *(a3 + 2) - 9;
      if (v13 <= 3u)
      {
LABEL_16:
        v14 = dword_23CE52C90[v13];
        return (a2 + (v14 & v11));
      }
    }

    v14 = 0x7FFFFFFF;
    return (a2 + (v14 & v11));
  }

  return google::protobuf::Reflection::MutableRawSplitImpl(a1, a2, a3);
}

uint64_t google::protobuf::internal::ReflectionSchema::GetFieldOffset(google::protobuf::internal::ReflectionSchema *this, const google::protobuf::FieldDescriptor *a2)
{
  if ((*(a2 + 1) & 0x10) != 0)
  {
    v2 = *(a2 + 5);
    if (v2)
    {
      if (*(v2 + 4) != 1 || (*(*(v2 + 48) + 1) & 2) == 0)
      {
        v3 = *(a2 + 3);
        v4 = *(*(this + 1) + 4 * *(*(a2 + 4) + 4) + ((0xB6DB6DB700000000 * ((v2 - *(*(v2 + 16) + 64)) >> 3)) >> 30));
        if (v3 && (v12 = a2, v13 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v3, memory_order_acquire) != 221))
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, &v13, &v12);
          v5 = *(a2 + 2) - 9;
          if (v5 > 3u)
          {
            return v4 & 0x7FFFFFFF;
          }
        }

        else
        {
          v5 = *(a2 + 2) - 9;
          if (v5 > 3u)
          {
            return v4 & 0x7FFFFFFF;
          }
        }

        return dword_23CE52C90[v5] & v4;
      }
    }
  }

  if ((*(a2 + 1) & 8) != 0)
  {
    v8 = *(a2 + 5);
    if (v8)
    {
      v7 = (v8 + 96);
    }

    else
    {
      v7 = (*(a2 + 2) + 120);
    }
  }

  else
  {
    v7 = (*(a2 + 4) + 56);
  }

  v4 = *(*(this + 1) + ((0xBA2E8BA300000000 * ((a2 - *v7) >> 3)) >> 30));
  v9 = *(a2 + 3);
  if (v9 && (v12 = a2, v13 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v9, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v13, &v12);
    v5 = *(a2 + 2) - 9;
    if (v5 <= 3u)
    {
      return dword_23CE52C90[v5] & v4;
    }
  }

  else
  {
    v5 = *(a2 + 2) - 9;
    if (v5 <= 3u)
    {
      return dword_23CE52C90[v5] & v4;
    }
  }

  return v4 & 0x7FFFFFFF;
}

uint64_t google::protobuf::Reflection::HasOneof(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 4) == 1 && (*(*(a3 + 48) + 1) & 2) != 0)
  {
    return google::protobuf::Reflection::HasField(a1, a2, *(a3 + 48), a4, a5);
  }

  else
  {
    return *(a2 + *(a1 + 44) - 613566756 * ((a3 - *(*(a3 + 16) + 64)) >> 3)) != 0;
  }
}

google::protobuf::internal::ExtensionSet *google::protobuf::Reflection::RepeatedFieldData(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *this, int a4, uint64_t a5)
{
  if ((~*(this + 1) & 0x60) != 0)
  {
    google::protobuf::Reflection::RepeatedFieldData(v16);
  }

  v9 = *(this + 3);
  if (v9 && (v16[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v17 = this, atomic_load_explicit(v9, memory_order_acquire) != 221))
  {
    v14 = a4;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, v16, &v17);
    a4 = v14;
    v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 2)];
    if (v10 == v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 2)];
    if (v10 == a4)
    {
      goto LABEL_11;
    }
  }

  v11 = *(this + 3);
  if (v11)
  {
    v16[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v17 = this;
    if (atomic_load_explicit(v11, memory_order_acquire) != 221)
    {
      v15 = a4;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, v16, &v17);
      a4 = v15;
    }

    v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 2)];
  }

  if (a4 != 1 || v10 != 8)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v16, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 3136);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, "The type parameter T in RepeatedFieldRef<T> API doesn't match ", 0x3EuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, "the actual field type (for enums T should be the generated enum ", 0x40uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, "type or int32_t).", 0x11uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v16);
  }

LABEL_11:
  if (a5)
  {
    v12 = google::protobuf::FieldDescriptor::message_type(this);
    if (v12 != a5)
    {
      google::protobuf::Reflection::RepeatedFieldData(a5, v12);
    }
  }

  if ((*(this + 1) & 8) != 0)
  {
    return google::protobuf::internal::ExtensionSet::GetRawRepeatedField((a2 + *(a1 + 40)), *(this + 1), &google::protobuf::internal::kZeroBuffer);
  }

  else
  {
    return google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, this);
  }
}

void *google::protobuf::Reflection::MutableMapData(google::protobuf::_anonymous_namespace_ **a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(a3 + 3);
  if (v8 && (v11 = a3, v12 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v8, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, &v12, &v11);
    if (*(a3 + 2) != 11)
    {
LABEL_12:
    }
  }

  else if (*(a3 + 2) != 11)
  {
    goto LABEL_12;
  }

  if ((google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v9 = *(a3 + 5)) != 0 && (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0))
  {
    return (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 1), a3));
  }

  else
  {
    return google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
  }
}

uint64_t google::protobuf::Reflection::GetMapData(google::protobuf::_anonymous_namespace_ **a1, uint64_t a2, google::protobuf::Descriptor *a3, uint64_t a4, const char *a5)
{
  v8 = *(a3 + 3);
  if (v8 && (v11 = a3, v12 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v8, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, &v12, &v11);
    if (*(a3 + 2) != 11)
    {
LABEL_12:
    }
  }

  else if (*(a3 + 2) != 11)
  {
    goto LABEL_12;
  }

  if ((google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((*(a3 + 1) & 0x10) != 0 && (v9 = *(a3 + 5)) != 0 && (*(v9 + 4) != 1 || (*(*(v9 + 48) + 1) & 2) == 0))
  {
    return a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 1), a3);
  }

  else
  {
    return google::protobuf::Reflection::GetRawNonOneof<google::protobuf::internal::MapFieldBase>(a1, a2, a3);
  }
}

void google::protobuf::Reflection::PopulateTcParseEntries(_DWORD *a1, void *a2, _DWORD *a3)
{
  v3 = a2[3];
  v4 = a2[4];
  if (v3 != v4)
  {
    while (1)
    {
      v10 = *v3;
      if (*(*(*v3 + 56) + 132) == 1)
      {
        google::protobuf::Reflection::PopulateTcParseEntries(v16);
      }

      v11 = *(v10 + 24);
      if (v11 && (v16[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v17 = v10, atomic_load_explicit(v11, memory_order_acquire) != 221))
      {
        v14 = v10;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, v16, &v17);
        v10 = v14;
        if (*(v14 + 2) == 14)
        {
          goto LABEL_12;
        }

LABEL_16:
        if ((*(v10 + 1) & 0x10) == 0 || (v15 = *(v10 + 40)) == 0 || *(v15 + 4) == 1 && (*(*(v15 + 48) + 1) & 2) != 0)
        {
          *a3 = google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 2), v10);
          v8 = a1[8];
          if (v8 == -1)
          {
            v9 = 0;
          }

          else
          {
            v9 = v3[2] + 8 * v8;
          }
        }

        else
        {
          *a3 = google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 2), v10);
          v9 = a1[11] - 613566756 * ((v15 - *(*(v15 + 16) + 64)) >> 3);
        }

        a3[1] = v9;
        a3[2] = v3[4];
        a3 += 3;
        v3 += 6;
        if (v3 == v4)
        {
          return;
        }
      }

      else
      {
        if (*(v10 + 2) != 14)
        {
          goto LABEL_16;
        }

LABEL_12:
        v12 = a2[6];
        if (*(v12 + 16 * *(v3 + 8)) != 9)
        {
          goto LABEL_16;
        }

        a3[2] = 0;
        *a3 = 0;
        a3 += 3;
        v13 = v12 + 16 * *(v3 + 8);
        *v13 = 0;
        *(v13 + 8) = 0;
        v3 += 6;
        if (v3 == v4)
        {
          return;
        }
      }
    }
  }
}

unint64_t google::protobuf::Reflection::PopulateTcParseFieldAux(unint64_t this, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 != v5)
  {
    v7 = this;
    do
    {
      v9 = *v4;
      if (*v4 <= 3)
      {
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v8 = *(v7 + 17);
          }

          else
          {
            if (v9 != 3)
            {
              goto LABEL_6;
            }

            v8 = *(v7 + 18);
          }

          goto LABEL_5;
        }

        if (!v9)
        {
          *a3 = 0;
          a3 += 8;
          goto LABEL_6;
        }

        if (v9 == 1)
        {
          v8 = *(v7 + 16);
          goto LABEL_5;
        }
      }

      else if (v9 > 8)
      {
        if (v9 <= 10)
        {
          if (v9 != 10)
          {
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v10, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 3345);
            absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v10, "Not supported.");
            goto LABEL_29;
          }

LABEL_4:
          v8 = *(v4 + 8);
LABEL_5:
          *a3 = v8;
          a3 += 8;
          goto LABEL_6;
        }

        if (v9 == 11)
        {
          v3 &= 0xFFFFFFE0;
          *a3 = 0;
          *(a3 + 2) = v3;
          *(a3 + 4) = 0;
          a3 += 8;
        }

        else if (v9 == 12)
        {
LABEL_28:
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v10, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_reflection.cc", 3327);
          absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v10, "Not supported");
LABEL_29:
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v10);
        }
      }

      else
      {
        if (v9 == 4)
        {
          this = google::protobuf::Reflection::GetDefaultMessageInstance(v7, *(v4 + 8));
          *a3 = this;
          a3 += 8;
          goto LABEL_6;
        }

        if (v9 == 8)
        {
          goto LABEL_4;
        }

        if ((v9 - 5) < 3)
        {
          goto LABEL_28;
        }
      }

LABEL_6:
      v4 += 16;
    }

    while (v4 != v5);
  }

  return this;
}

char *google::protobuf::Reflection::CreateTcParseTable(google::protobuf::Reflection *this)
{
  v2 = *this;
  if (*(*(*this + 32) + 80))
  {
LABEL_2:
    v3 = operator new(0x48uLL);
    v4 = *(this + 1);
    *v3 = 0;
    v3[8] = 0;
    *(v3 + 18) = 0;
    *(v3 + 10) = 0;
    *(v3 + 13) = 0;
    *(v3 + 4) = v4;
    *(v3 + 5) = 0;
    *(v3 + 6) = google::protobuf::internal::TcParser::ReflectionParseLoop;
    *(v3 + 7) = 0;
    *(v3 + 32) = 0;
    v3[66] = 0;
    return v3;
  }

  v5 = *(v2 + 4);
  if (v5 >= 1)
  {
    v6 = *(v2 + 56) + 56;
    v7 = v5;
    while (*(*v6 + 132) != 1)
    {
      v6 += 88;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_2;
  }

LABEL_7:
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v120 = 0;
  v121 = 0;
  v122 = 0;
  v8 = *this;
  if (*(*this + 4) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v13 = *(v8 + 56);
      v14 = v13 + v9;
      v15 = v127;
      if (v127 >= v128)
      {
        v17 = v126;
        v18 = v127 - v126;
        v19 = (v127 - v126) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v21 = v128 - v126;
        if ((v128 - v126) >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (!(v22 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v19) = v14;
        v16 = (8 * v19 + 8);
        memcpy(0, v17, v18);
        v126 = 0;
        v127 = v16;
        v128 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v127 = v14;
        v16 = (v15 + 8);
      }

      v127 = v16;
      if (*(this + 8) == -1)
      {
        v25 = -1;
        v26 = v13 + v9;
        if ((*(v13 + v9 + 1) & 8) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v23 = v13 + v9;
        if ((*(v13 + v9 + 1) & 8) != 0)
        {
          v29 = *(v23 + 40);
          if (v29)
          {
            v24 = (v29 + 96);
          }

          else
          {
            v24 = (*(v13 + v9 + 16) + 120);
          }
        }

        else
        {
          v24 = (*(v23 + 32) + 56);
        }

        v25 = *(*(this + 3) + ((0xBA2E8BA300000000 * ((v9 + v13 - *v24) >> 3)) >> 30));
        v26 = v13 + v9;
        if ((*(v13 + v9 + 1) & 8) == 0)
        {
LABEL_39:
          v28 = (*(v26 + 32) + 56);
          goto LABEL_40;
        }
      }

      v27 = *(v26 + 40);
      if (v27)
      {
        v28 = (v27 + 96);
      }

      else
      {
        v28 = (*(v13 + v9 + 16) + 120);
      }

LABEL_40:
      *&v123[(0xBA2E8BA300000000 * ((v9 + v13 - *v28) >> 3)) >> 30] = v25;
      if ((*(v26 + 1) & 8) != 0)
      {
        v31 = *(v13 + v9 + 40);
        if (v31)
        {
          v30 = (v31 + 96);
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

      v32 = *(*(this + 2) + ((0xBA2E8BA300000000 * ((v9 + v13 - *v30) >> 3)) >> 30));
      v33 = *(v13 + v9 + 24);
      if (v33)
      {
        v108 = google::protobuf::FieldDescriptor::TypeOnceInit;
        v105[0] = v13 + v9;
        if (atomic_load_explicit(v33, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v33, 1, &v108, v105);
        }
      }

      v34 = *(v13 + v9 + 2);
      if (v34 == 12 || v34 == 9) && (v32)
      {
        if ((*(v26 + 1) & 8) != 0)
        {
          v35 = *(v13 + v9 + 40);
          if (v35)
          {
            v11 = (v35 + 96);
          }

          else
          {
            v11 = (*(v13 + v9 + 16) + 120);
          }
        }

        else
        {
          v11 = (*(v13 + v9 + 32) + 56);
        }

        v12 = (0xBA2E8BA300000000 * ((v9 + v13 - *v11) >> 3)) >> 30;
        *&v120[v12] = *(*(this + 7) + v12);
      }

      ++v10;
      v8 = *this;
      v9 += 88;
    }

    while (v10 < *(*this + 4));
  }

  v36 = 126 - 2 * __clz((v127 - v126) >> 3);
  if (v127 == v126)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  v38 = *this;
  v106 = 0;
  v107 = 0;
  v105[0] = &unk_284F46E68;
  v105[1] = this;
  google::protobuf::internal::TailCallTableInfo::TailCallTableInfo(&v108, v38, &v126, &v106, v105, &v123, &v120);
  v39 = v109 - v108;
  v40 = (v109 - v108) >> 5;
  if (1 << v119 != v40)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>((v39 >> 5), 1 << v119, "static_cast<int>(fast_entries_count) == 1 << table_info.table_size_log2");
  }

  v41 = 16 * v40 + 49;
  if (__p == v116)
  {
    v45 = 4;
  }

  else
  {
    v42 = v116 - __p - 32;
    if (v42 >= 0x100)
    {
      v46 = (v42 >> 5) + 1;
      v47 = v46 & 7;
      if ((v46 & 7) == 0)
      {
        v47 = 8;
      }

      v48 = v46 - v47;
      v44 = __p + 32 * v48;
      v49 = xmmword_23CE4EDA0;
      v50 = (__p + 136);
      v51 = 0uLL;
      v52.i64[0] = 0x300000003;
      v52.i64[1] = 0x300000003;
      do
      {
        v53 = v50 - 16;
        v129 = vld4q_f64(v53);
        v54 = v50 - 8;
        v130 = vld4q_f64(v54);
        v55 = v50;
        v131 = vld4q_f64(v55);
        v55 += 8;
        v132 = vld4q_f64(v55);
        v49 = vaddq_s32(vaddq_s32(v49, v52), (*&vshrn_high_n_s64(vshrn_n_s64(vsubq_s64(v129.val[1], v129.val[0]), 1uLL), vsubq_s64(v130.val[1], v130.val[0]), 1uLL) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
        v51 = vaddq_s32(vaddq_s32(v51, v52), (*&vshrn_high_n_s64(vshrn_n_s64(vsubq_s64(v131.val[1], v131.val[0]), 1uLL), vsubq_s64(v132.val[1], v132.val[0]), 1uLL) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
        v50 += 32;
        v48 -= 8;
      }

      while (v48);
      v43 = vaddvq_s32(vaddq_s32(v51, v49));
    }

    else
    {
      v43 = 2;
      v44 = __p;
    }

    do
    {
      v43 += (((*(v44 + 2) - *(v44 + 1)) >> 1) & 0xFFFFFFFE) + 3;
      v44 += 32;
    }

    while (v44 != v116);
    v45 = 2 * v43;
  }

  v56 = (v45 + (v41 & 0xFFF0) + 2) & 0xFFFFFFFC;
  v57 = (v56 + 12 * ((v127 - v126) >> 3) + 7) & 0xFFFFFFF8;
  v104 = (v118 - v117 + ((v113 - v112) >> 1) + v57);
  v58 = operator new(v104);
  v3 = v58;
  v59 = v41 & 0xFFF0;
  v60 = *(this + 8);
  if (v60 == -1)
  {
    LOWORD(v60) = 0;
  }

  v61 = *(this + 10);
  if (v61 == -1)
  {
    LOWORD(v61) = 0;
  }

  if (v126 == v127)
  {
    v62 = 0;
  }

  else
  {
    v62 = *(*(v127 - 1) + 4);
  }

  v63 = v114;
  v64 = (v127 - v126) >> 3;
  v65 = (v113 - v112) >> 4;
  v66 = *(this + 1);
  *v58 = v60;
  *(v58 + 1) = v61;
  *(v58 + 1) = v62;
  *(v58 + 8) = ((v39 >> 2) & 0xF8) - 8;
  *(v58 + 5) = v59;
  *(v58 + 3) = v63;
  *(v58 + 4) = v56;
  *(v58 + 10) = v64;
  *(v58 + 11) = v65;
  *(v58 + 6) = v57;
  v58[4] = v66;
  v58[5] = google::protobuf::internal::TcParser::ReflectionFallback;
  v67 = v108;
  v68 = v109;
  if (v108 != v109)
  {
    v69 = (v58 + 6);
    while (1)
    {
      v71 = google::protobuf::internal::TcParser::MiniParse;
      if (v67)
      {
        v72 = *(v67 + 6);
        v71 = google::protobuf::internal::TcParser::MiniParse;
        if (v72 == 1)
        {
          if (*v67 - 111 >= 0xFFFFFF92)
          {
            v73 = google::protobuf::GetFastParseFunction(google::protobuf::internal::TcParseFunction)::kFuncs[*v67];
          }

          else
          {
            v73 = google::protobuf::internal::TcParser::MiniParse;
          }

          v74 = *(v67 + 1);
          v75 = v67[16];
          v76 = v67[17];
          v70 = (v76 << 24) | (google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 8), *(v67 + 1)) << 48) | (v75 << 16) | v74;
          v71 = v73;
          goto LABEL_80;
        }

        if (v72 == 2)
        {
          v71 = google::protobuf::internal::TcParser::MiniParse;
          if (*v67 - 111 >= 0xFFFFFF92)
          {
            v71 = google::protobuf::GetFastParseFunction(google::protobuf::internal::TcParseFunction)::kFuncs[*v67];
          }

          v70 = *(v67 + 2);
          goto LABEL_80;
        }
      }

      v70 = 0;
LABEL_80:
      *v69 = v71;
      v69[1] = v70;
      v69 += 2;
      v67 += 32;
      if (v67 == v68)
      {
        v59 = *(v3 + 5);
        break;
      }
    }
  }

  v77 = &v3[v59];
  v78 = __p;
  v79 = v116;
  if (__p != v116)
  {
    v80 = v77;
    do
    {
      *v80 = *v78;
      v82 = *(v78 + 1);
      v81 = *(v78 + 2);
      v77 = v80 + 6;
      *(v80 + 2) = (v81 - v82) >> 2;
      if (v81 != v82)
      {
        v83 = v81 - v82 - 4;
        if (v83 <= 0x3B)
        {
          goto LABEL_141;
        }

        if (v77 < &v82[(v83 & 0xFFFFFFFFFFFFFFFCLL) + 4] && v82 < v80 + (v83 & 0xFFFFFFFFFFFFFFFCLL) + 10)
        {
          goto LABEL_141;
        }

        v85 = (v83 >> 2) + 1;
        v86 = 4 * (v85 & 0x7FFFFFFFFFFFFFF0);
        v77 += v86;
        v87 = &v82[v86];
        v88 = (v82 + 32);
        v89 = (v80 + 38);
        v90 = v85 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v92 = *(v88 - 2);
          v91 = *(v88 - 1);
          v94 = *v88;
          v93 = v88[1];
          v88 += 4;
          *(v89 - 2) = v92;
          *(v89 - 1) = v91;
          *v89 = v94;
          v89[1] = v93;
          v89 += 4;
          v90 -= 16;
        }

        while (v90);
        v82 = v87;
        if (v85 != (v85 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_141:
          do
          {
            v95 = *v82;
            v82 += 4;
            *v77 = v95;
            v77 += 4;
          }

          while (v82 != v81);
        }
      }

      v78 += 32;
      v80 = v77;
    }

    while (v78 != v79);
  }

  *v77 = -1;
  google::protobuf::Reflection::PopulateTcParseEntries(this, &v108, &v3[*(v3 + 4)]);
  google::protobuf::Reflection::PopulateTcParseFieldAux(this, &v108, &v3[*(v3 + 6)]);
  v96 = v117;
  if (v117 == v118)
  {
    v97 = v117;
  }

  else
  {
    memcpy(&v3[8 * *(v3 + 11) + *(v3 + 6)], v117, v118 - v117);
    v96 = v117;
    v97 = v118;
  }

  v98 = &v97[8 * *(v3 + 11) + *(v3 + 6)] - v96;
  if (v98 != v104)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v98, v104, "res->name_data() + table_info.field_name_data.size() - reinterpret_cast<char*>(res) == byte_size");
  }

  if (v96)
  {
    v118 = v96;
    operator delete(v96);
  }

  v99 = __p;
  if (__p)
  {
    v100 = v116;
    v101 = __p;
    if (v116 != __p)
    {
      do
      {
        v102 = *(v100 - 3);
        if (v102)
        {
          *(v100 - 2) = v102;
          operator delete(v102);
        }

        v100 -= 32;
      }

      while (v100 != v99);
      v101 = __p;
    }

    v116 = v99;
    operator delete(v101);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  if (v120)
  {
    v121 = v120;
    operator delete(v120);
  }

  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  return v3;
}

void sub_23CDD9BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 - 160);
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(v14 - 136);
  if (v17)
  {
    *(v14 - 128) = v17;
    operator delete(v17);
  }

  v18 = *(v14 - 112);
  if (v18)
  {
    *(v14 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *google::protobuf::internal::AddDescriptors(unsigned int *result)
{
  if (*result)
  {
    return result;
  }

  v2 = result;
  *result = 1;
  if (atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire))
  {
    v3 = result[10];
    if (v3 >= 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    google::protobuf::internal::InitProtobufDefaultsSlow(result);
    v3 = v2[10];
    if (v3 >= 1)
    {
LABEL_4:
      v4 = 0;
      v5 = 8 * v3;
      do
      {
        if (*(*(v2 + 4) + v4))
        {
          google::protobuf::internal::AddDescriptors();
        }

        v4 += 8;
      }

      while (v5 != v4);
    }
  }

  google::protobuf::DescriptorPool::InternalAddGeneratedFile(*(v2 + 1), v2[1]);

  return google::protobuf::MessageFactory::InternalRegisterGeneratedFile(v2);
}

uint64_t google::protobuf::internal::AssignDescriptors(uint64_t (*a1)(void), atomic_uint *a2, uint64_t *a3)
{
  v7 = a1;
  if (atomic_load_explicit(a2, memory_order_acquire) == 221)
  {
    result = *a3;
    v4 = a3[1];
  }

  else
  {
    absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::AssignDescriptors(google::protobuf::internal::DescriptorTable const* (*)(void),absl::lts_20240722::once_flag *,google::protobuf::Metadata const&)::$_0>(a2, &v7);
    result = *a3;
    v6 = a3[1];
  }

  return result;
}

void google::protobuf::internal::AssignDescriptors(uint64_t a1)
{
  v6 = a1;
  v2 = *(a1 + 16);
  v3 = strlen(v2);
  IsLazilyInitializedFile = google::protobuf::internal::cpp::IsLazilyInitializedFile(v2, v3);
  if (IsLazilyInitializedFile)
  {
    v5 = *(a1 + 24);
    if (atomic_load_explicit(v5, memory_order_acquire) == 221)
    {
      return;
    }

LABEL_5:
    return;
  }

  google::protobuf::DescriptorPool::generated_pool(IsLazilyInitializedFile);
  v5 = *(a1 + 24);
  if (atomic_load_explicit(v5, memory_order_acquire) != 221)
  {
    goto LABEL_5;
  }
}

void google::protobuf::anonymous namespace::AssignDescriptorsImpl(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&qword_2810C1C88, memory_order_acquire) & 1) == 0)
  {
  }

  absl::lts_20240722::Mutex::Lock(&_MergedGlobals_60);
  google::protobuf::internal::AddDescriptors(a1);
  absl::lts_20240722::Mutex::Unlock(&_MergedGlobals_60);
  if (a2)
  {
    v5 = *(a1 + 40);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(a1 + 32);
        v9 = *(v8 + v6);
        if (v9)
        {
          v4 = *(v9 + 24);
          LOBYTE(v49) = 1;
          if (atomic_load_explicit(v4, memory_order_acquire) != 221)
          {
          }
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  v10 = google::protobuf::DescriptorPool::internal_generated_pool(v4);
  v11 = strlen(*(a1 + 16));
  FileByName = google::protobuf::DescriptorPool::FindFileByName(v10, *(a1 + 16), v11, v12, v13);
  if (!FileByName)
  {
  }

  v15 = FileByName;
  v16 = google::protobuf::MessageFactory::generated_factory(FileByName);
  v17 = *(a1 + 64);
  v49 = v16;
  v50 = *(a1 + 72);
  v51 = *(a1 + 48);
  v52 = v17;
  if (*(v15 + 15) >= 1)
  {
    google::protobuf::AssignDescriptorsHelper::AssignMessageDescriptor(&v49, *(v15 + 12));
  }

  v18 = *(v15 + 16);
  if (v18 >= 1)
  {
    v19 = (v15 + 104);
    if (v18 > 7 && (*(&v50 + 1) >= v15 + 112 || v19 >= *(&v50 + 1) + 8 * v18))
    {
      v20 = v18 & 0x7FFFFFFC;
      v34 = vld1q_dup_f64(v19);
      v21 = (*(&v50 + 1) + 8 * v20);
      v35 = xmmword_23CE48D30;
      v36 = (*(&v50 + 1) + 16);
      v37 = vdupq_n_s64(0xB0uLL);
      v38 = vdupq_n_s64(4uLL);
      v39 = v20;
      do
      {
        v40.i64[0] = 88 * v35.i64[0];
        v40.i64[1] = 88 * v35.i64[1];
        v41 = vaddq_s64(v34, v40);
        v36[-1] = v41;
        *v36 = vaddq_s64(v41, v37);
        v35 = vaddq_s64(v35, v38);
        v36 += 2;
        v39 -= 4;
      }

      while (v39);
      if (v20 == v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = 0;
      v21 = *(&v50 + 1);
    }

    v22 = 88 * v20;
    v23 = v18 - v20;
    do
    {
      *v21++ = *v19 + v22;
      v22 += 88;
      --v23;
    }

    while (v23);
LABEL_20:
    *(&v50 + 1) = v21;
  }

  if (*(*(v15 + 16) + 163) == 1)
  {
    v24 = *(v15 + 17);
    if (v24 >= 1)
    {
      v25 = (v15 + 112);
      v26 = *(a1 + 88);
      if (v24 <= 7 || v26 < v15 + 120 && v25 < v26 + 8 * v24)
      {
        v27 = 0;
LABEL_27:
        v28 = v27 << 6;
        v29 = v24 - v27;
        v30 = (v26 + 8 * v27);
        do
        {
          *v30++ = *v25 + v28;
          v28 += 64;
          --v29;
        }

        while (v29);
        goto LABEL_29;
      }

      v27 = v24 & 0x7FFFFFFC;
      v42 = vld1q_dup_f64(v25);
      v43 = xmmword_23CE48D30;
      v44 = (v26 + 16);
      v45 = vdupq_n_s64(0x80uLL);
      v46 = vdupq_n_s64(4uLL);
      v47 = v27;
      do
      {
        v48 = vaddq_s64(v42, vshlq_n_s64(v43, 6uLL));
        v44[-1] = v48;
        *v44 = vaddq_s64(v48, v45);
        v43 = vaddq_s64(v43, v46);
        v44 += 2;
        v47 -= 4;
      }

      while (v47);
      if (v27 != v24)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  if ((atomic_load_explicit(&qword_2810C1C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C1C98))
  {
    operator new();
  }

  v31 = qword_2810C1C90;
  v32 = *(a1 + 72);
  v33 = v50;
  absl::lts_20240722::Mutex::Lock(qword_2810C1C90);
  *&v53 = v32;
  *(&v53 + 1) = v33;
  std::vector<std::pair<google::protobuf::Metadata const*,google::protobuf::Metadata const*>>::push_back[abi:ne200100](v31 + 8, &v53);
  absl::lts_20240722::Mutex::Unlock(v31);
}

void google::protobuf::internal::RegisterFileLevelMetadata(uint64_t a1)
{
  v8 = a1;
  v2 = *(a1 + 16);
  v3 = strlen(v2);
  IsLazilyInitializedFile = google::protobuf::internal::cpp::IsLazilyInitializedFile(v2, v3);
  if (IsLazilyInitializedFile)
  {
    v5 = *(a1 + 24);
    if (atomic_load_explicit(v5, memory_order_acquire) == 221)
    {
      goto LABEL_3;
    }
  }

  else
  {
    google::protobuf::DescriptorPool::generated_pool(IsLazilyInitializedFile);
    v5 = *(a1 + 24);
    if (atomic_load_explicit(v5, memory_order_acquire) == 221)
    {
LABEL_3:
      v6 = *(a1 + 44);
      if (v6 < 1)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  v6 = *(a1 + 44);
  if (v6 < 1)
  {
    return;
  }

LABEL_4:
  v7 = *(a1 + 72) + 8;
  do
  {
    google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(*(v7 - 8), *(*v7 + 8));
    v7 += 16;
    --v6;
  }

  while (v6);
}

uint64_t google::protobuf::MapValueRef::MutableMessageValue(google::protobuf::MapValueRef *this)
{
  v1 = *(this + 2);
  if (!v1 || (result = *this) == 0)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 10)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 879);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::MutableMessageValue", 0x20uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "message";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return result;
}

uint64_t google::protobuf::MapIterator::MapIterator(uint64_t a1, uint64_t a2, google::protobuf::Descriptor *a3)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  (*(*a2 + 80))(a2);
  *(a1 + 24) = google::protobuf::Reflection::MutableMapData(v6, a2, a3, v7, v8);
  v9 = google::protobuf::FieldDescriptor::message_type(a3);
  v10 = google::protobuf::Descriptor::map_key(v9);
  v11 = *(v10 + 24);
  if (v11)
  {
    v18 = v10;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, &v19, &v18);
    }
  }

  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v10 + 2)];
  v13 = *(a1 + 56);
  if (v13 != v12)
  {
    if (v13 == 9 && *(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 56) = v12;
    if (v12 == 9)
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }
  }

  v14 = google::protobuf::FieldDescriptor::message_type(a3);
  v15 = google::protobuf::Descriptor::map_value(v14);
  v16 = *(v15 + 24);
  if (v16)
  {
    v18 = v15;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v16, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, &v19, &v18);
    }
  }

  *(a1 + 72) = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v15 + 2)];
  return a1;
}

void sub_23CDDA550(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 9 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

unint64_t google::protobuf::Reflection::CreateTcParseTable(void)const::ReflectionOptionProvider::GetForField(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 && (v24 = a2, v25 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v2, memory_order_acquire) != 221))
  {
    v20 = a1;
    v21 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v2, 1, &v25, &v24);
    a1 = v20;
    a2 = v21;
    v3 = 0x4003F800000;
    v4 = *(v21 + 56);
    if (*(v4 + 130))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0x4003F800000;
    v4 = *(a2 + 56);
    if (*(v4 + 130))
    {
      goto LABEL_9;
    }
  }

  if (*(v4 + 129) == 1)
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      v24 = a2;
      v25 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v5, memory_order_acquire) != 221)
      {
        v6 = a1;
        v7 = a2;
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v5, 1, &v25, &v24);
        a1 = v6;
        a2 = v7;
      }
    }
  }

  else
  {
    v3 = 1065353216;
  }

LABEL_9:
  if ((*(a2 + 1) & 8) != 0)
  {
    v9 = *(a2 + 40);
    if (v9)
    {
      v8 = (v9 + 96);
    }

    else
    {
      v8 = (*(a2 + 16) + 120);
    }
  }

  else
  {
    v8 = (*(a2 + 32) + 56);
  }

  v10 = *(*(*(a1 + 8) + 16) + ((0xBA2E8BA300000000 * ((a2 - *v8) >> 3)) >> 30));
  v11 = *(a2 + 24);
  if (v11 && (v24 = a2, v25 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v11, memory_order_acquire) != 221))
  {
    v22 = a1;
    v23 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, &v25, &v24);
    a1 = v22;
    a2 = v23;
    v12 = *(v23 + 2);
    if (v12 == 12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = *(a2 + 2);
    if (v12 == 12)
    {
      goto LABEL_18;
    }
  }

  if (v12 != 9)
  {
    v13 = 0;
    v14 = *(a1 + 8);
    if (*(v14 + 68) != -1)
    {
      goto LABEL_19;
    }

    return v3 | v13;
  }

LABEL_18:
  v13 = (v10 & 1) << 48;
  v14 = *(a1 + 8);
  if (*(v14 + 68) == -1)
  {
    return v3 | v13;
  }

LABEL_19:
  v15 = *(v14 + 16);
  if ((*(a2 + 1) & 8) != 0)
  {
    v18 = *(a2 + 40);
    if (v18)
    {
      v16 = (v18 + 96);
    }

    else
    {
      v16 = (*(a2 + 16) + 120);
    }
  }

  else
  {
    v16 = (*(a2 + 32) + 56);
  }

  v19 = (*(v15 + ((0xBA2E8BA300000000 * ((a2 - *v16) >> 3)) >> 30)) >> 23) & 0x100;
  return v3 | v13;
}

void google::protobuf::internal::TailCallTableInfo::~TailCallTableInfo(google::protobuf::internal::TailCallTableInfo *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    v4 = *(this + 11);
    v5 = *(this + 10);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          *(v4 - 16) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v3);
      v5 = *(this + 10);
    }

    *(this + 11) = v3;
    operator delete(v5);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

void google::protobuf::AssignDescriptorsHelper::AssignMessageDescriptor(google::protobuf::AssignDescriptorsHelper *this, const google::protobuf::Descriptor *a2)
{
  if (*(a2 + 32) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      google::protobuf::AssignDescriptorsHelper::AssignMessageDescriptor(this, (*(a2 + 9) + v4));
      ++v5;
      v4 += 152;
    }

    while (v5 < *(a2 + 32));
  }

  **(this + 1) = a2;
  operator new();
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::internal::DescriptorTable const*,BOOL),google::protobuf::internal::DescriptorTable const* const&,BOOL>(atomic_uint *a1, uint64_t a2, void (*a3)(void, void), void *a4, unsigned __int8 *a5)
{
  v9 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v9, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v9 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::internal::DescriptorTable const*,BOOL),google::protobuf::internal::DescriptorTable const* const&,BOOL>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (&)(google::protobuf::internal::DescriptorTable const*,BOOL) &&,google::protobuf::internal::DescriptorTable const* const&,BOOL &&)::trans))
  {
    a3(*a4, *a5);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

absl::lts_20240722::Mutex *google::protobuf::internal::OnShutdownDelete<google::protobuf::anonymous namespace::MetadataOwner>(google::protobuf::anonymous namespace::MetadataOwner *)::{lambda(void const*)#1}::__invoke(absl::lts_20240722::Mutex *this)
{
  if (this)
  {
    v1 = this;
    v2 = *(this + 1);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      do
      {
        v4 = *v2;
        v5 = v2[1];
        while (v4 < v5)
        {
          v6 = *(v4 + 8);
          if (v6)
          {
            operator delete(*(v6 + 104));
            MEMORY[0x23EED9460](v6, 0x1070C40DAD478C4);
          }

          v4 += 16;
        }

        v2 += 2;
      }

      while (v2 != v3);
      v2 = *(v1 + 1);
    }

    if (v2)
    {
      *(v1 + 2) = v2;
      operator delete(v2);
    }

    absl::lts_20240722::Mutex::~Mutex(v1);

    JUMPOUT(0x23EED9460);
  }

  return this;
}

void std::vector<std::pair<google::protobuf::Metadata const*,google::protobuf::Metadata const*>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
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

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t google::protobuf::MapValueConstRef::type(google::protobuf::MapValueConstRef *this)
{
  result = *(this + 2);
  if (!result || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v3, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v3, "MapValueConstRef::type MapValueConstRef is not initialized.");
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v3);
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetRawNonOneof<google::protobuf::RepeatedField<int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a3 + 1);
  if (*(a1 + 68) == -1 || ((*(a3 + 1) & 8) != 0 ? ((v8 = *(a3 + 40)) == 0 ? (v7 = (*(a3 + 16) + 120)) : (v7 = (v8 + 96))) : (v7 = (*(a3 + 32) + 56)), (*(v5 + ((0xBA2E8BA300000000 * ((a3 - *v7) >> 3)) >> 30)) & 0x80000000) == 0))
  {
    if ((*(a3 + 1) & 8) != 0)
    {
      v10 = *(a3 + 40);
      if (v10)
      {
        v9 = (v10 + 96);
      }

      else
      {
        v9 = (*(a3 + 16) + 120);
      }
    }

    else
    {
      v9 = (*(a3 + 32) + 56);
    }

    v19[5] = v3;
    v19[6] = v4;
    v11 = *(v5 + ((0xBA2E8BA300000000 * ((a3 - *v9) >> 3)) >> 30));
    v12 = *(a3 + 24);
    if (v12 && (v18 = a3, v19[0] = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v12, memory_order_acquire) != 221))
    {
      v17 = a2;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, v19, &v18);
      a2 = v17;
      v13 = *(a3 + 2) - 9;
      if (v13 <= 3u)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = *(a3 + 2) - 9;
      if (v13 <= 3u)
      {
LABEL_16:
        v14 = dword_23CE52C90[v13];
        return a2 + (v14 & v11);
      }
    }

    v14 = 0x7FFFFFFF;
    return a2 + (v14 & v11);
  }

  return google::protobuf::Reflection::GetRawSplit<google::protobuf::RepeatedField<int>>(a1, a2, a3);
}

uint64_t google::protobuf::Reflection::GetRawSplit<google::protobuf::RepeatedField<int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 68);
  v6 = *(a1 + 16);
  if ((*(a3 + 1) & 8) != 0)
  {
    v8 = *(a3 + 40);
    if (v8)
    {
      v7 = (v8 + 96);
    }

    else
    {
      v7 = (*(a3 + 16) + 120);
    }
  }

  else
  {
    v7 = (*(a3 + 32) + 56);
  }

  v17[5] = v3;
  v17[6] = v4;
  v9 = *(a2 + v5);
  v10 = *(v6 + ((0xBA2E8BA300000000 * ((a3 - *v7) >> 3)) >> 30));
  v11 = *(a3 + 24);
  if (v11)
  {
    v16 = a3;
    v17[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, v17, &v16);
      v12 = *(a3 + 2) - 9;
      if (v12 <= 3u)
      {
        goto LABEL_9;
      }

LABEL_11:
      v13 = 0x7FFFFFFFLL;
      return *(v9 + (v13 & v10));
    }
  }

  v12 = *(a3 + 2) - 9;
  if (v12 > 3u)
  {
    goto LABEL_11;
  }

LABEL_9:
  v13 = dword_23CE52C90[v12];
  return *(v9 + (v13 & v10));
}

uint64_t google::protobuf::Reflection::GetRawSplit<absl::lts_20240722::Cord *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 68);
  v6 = *(a1 + 16);
  if ((*(a3 + 1) & 8) != 0)
  {
    v8 = *(a3 + 40);
    if (v8)
    {
      v7 = (v8 + 96);
    }

    else
    {
      v7 = (*(a3 + 16) + 120);
    }
  }

  else
  {
    v7 = (*(a3 + 32) + 56);
  }

  v16[5] = v3;
  v16[6] = v4;
  v9 = *(a2 + v5);
  v10 = *(v6 + ((0xBA2E8BA300000000 * ((a3 - *v7) >> 3)) >> 30));
  v11 = *(a3 + 24);
  if (!v11 || (v15 = a3, v16[0] = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v11, memory_order_acquire) == 221))
  {
    v12 = *(a3 + 2) - 9;
    if (v12 <= 3u)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = v9 + (v10 & 0x7FFFFFFF);
    if ((~*(a3 + 1) & 0x60) != 0)
    {
      return result;
    }

    return *result;
  }

  v14 = a3;
  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, v16, &v15);
  a3 = v14;
  v12 = *(v14 + 2) - 9;
  if (v12 > 3u)
  {
    goto LABEL_12;
  }

LABEL_9:
  result = v9 + (dword_23CE52C90[v12] & v10);
  if ((~*(a3 + 1) & 0x60) == 0)
  {
    return *result;
  }

  return result;
}

void google::protobuf::internal::RepeatedPtrFieldBase::SwapFallback<google::protobuf::internal::GenericTypeHandler<std::string>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v11 = 0uLL;
  v12 = v4;
  if (*(a1 + 8))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(&v11, a1);
  }

  if (a2 != a1)
  {
    if (*(a1 + 8) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(a1);
    }

    if (*(a2 + 8))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(a1, a2);
    }
  }

  v5 = *a2;
  *a2 = v11;
  v11 = v5;
  if (v5 && !v12)
  {
    if (v5)
    {
      v8 = (v5 - 1);
      v6 = *(v5 - 1);
      if (v6 < 1)
      {
LABEL_22:
        operator delete(v8);
        return;
      }

      v7 = (v5 + 7);
    }

    else
    {
      v6 = 1;
      v7 = &v11;
    }

    v9 = v6;
    do
    {
      v10 = *v7;
      if (*v7)
      {
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        MEMORY[0x23EED9460](v10, 0x1012C40EC159624);
      }

      ++v7;
      --v9;
    }

    while (v9);
    if (v11)
    {
      v8 = (v11 - 1);
      goto LABEL_22;
    }
  }
}

void google::protobuf::internal::RepeatedPtrFieldBase::SwapFallback<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  v4 = *(a2 + 2);
  v11 = 0uLL;
  v12 = v4;
  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::MessageLite>(&v11, this);
  }

  if (a2 != this)
  {
    if (*(this + 2) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this);
    }

    if (*(a2 + 2))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::MessageLite>(this, a2);
    }
  }

  v5 = *a2;
  *a2 = v11;
  v11 = v5;
  if (v5 && !v12)
  {
    if (v5)
    {
      v8 = (v5 - 1);
      v6 = *(v5 - 1);
      if (v6 < 1)
      {
LABEL_18:
        operator delete(v8);
        return;
      }

      v7 = (v5 + 7);
    }

    else
    {
      v6 = 1;
      v7 = &v11;
    }

    v9 = v6;
    do
    {
      v10 = *v7++;
      google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v10, a2);
      --v9;
    }

    while (v9);
    if (v11)
    {
      v8 = (v11 - 1);
      goto LABEL_18;
    }
  }
}

__n128 google::protobuf::internal::SwapFieldHelper::SwapInlinedStrings<true>(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FieldDescriptor *a4)
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
    v10 = (a3 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a4));
    goto LABEL_10;
  }

LABEL_9:
  v10 = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a3, a4);
LABEL_10:
  v11 = v8[1].n128_u64[0];
  result = *v8;
  v13 = v10[1].n128_u64[0];
  *v8 = *v10;
  v8[1].n128_u64[0] = v13;
  *v10 = result;
  v10[1].n128_u64[0] = v11;
  return result;
}

uint64_t *google::protobuf::internal::SwapFieldHelper::SwapNonInlinedStrings<true>(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FieldDescriptor *a4)
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
  v11 = *result;
  *result = *v8;
  *v8 = v11;
  return result;
}

void *google::protobuf::Reflection::SetField<google::protobuf::internal::ArenaStringPtr>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, void *a4, const char *a5)
{
  if ((*(a3 + 1) & 0x10) == 0 || (v9 = *(a3 + 5)) == 0 || *(v9 + 4) == 1 && (*(*(v9 + 48) + 1) & 2) != 0)
  {
    result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
    *result = *a4;
    v12 = *(a1 + 32);
    if (v12 != -1)
    {
      if ((*(a3 + 1) & 8) != 0)
      {
        v14 = *(a3 + 5);
        v13 = (v14 ? v14 + 96 : *(a3 + 2) + 120);
      }

      else
      {
        v13 = (*(a3 + 4) + 56);
      }

      v15 = *(*(a1 + 24) + ((0xBA2E8BA300000000 * ((a3 - *v13) >> 3)) >> 30));
      if (v15 != -1)
      {
        *(a2 + v12 + ((v15 >> 3) & 0x1FFFFFFC)) |= 1 << v15;
      }
    }
  }

  else
  {
    if ((*(a2 + *(a1 + 44) - 613566756 * ((v9 - *(*(v9 + 16) + 64)) >> 3)) == *(a3 + 1) || (google::protobuf::Reflection::ClearOneof(a1, a2, v9, a4, a5), (*(a3 + 1) & 0x10) != 0)) && (v10 = *(a3 + 5)) != 0 && (*(v10 + 4) != 1 || (*(*(v10 + 48) + 1) & 2) == 0))
    {
      result = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3));
    }

    else
    {
      result = google::protobuf::Reflection::MutableRawNonOneofImpl(a1, a2, a3);
    }

    *result = *a4;
    *(a2 + *(a1 + 44) - 613566756 * ((*(a3 + 5) - *(*(*(a3 + 5) + 16) + 64)) >> 3)) = *(a3 + 1);
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,google::protobuf::anonymous namespace::FieldNumberSorter &,google::protobuf::FieldDescriptor const**,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v78 = *(a2 - 1);
        v79 = *v8;
        if (*(v78 + 4) < *(*v8 + 4))
        {
          *v8 = v78;
          *(a2 - 1) = v79;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v86 = v8 + 1;
      v87 = v8[1];
      v88 = v8 + 2;
      v89 = v8[2];
      v90 = *v8;
      v91 = *(v87 + 1);
      v92 = *(*v8 + 4);
      v93 = *(v89 + 4);
      if (v91 >= v92)
      {
        if (v93 < v91)
        {
          *v86 = v89;
          *v88 = v87;
          v94 = v8;
          v95 = (v8 + 1);
          result = v87;
          if (v93 < v92)
          {
            goto LABEL_171;
          }

          goto LABEL_172;
        }

LABEL_181:
        v87 = v89;
        v138 = *(a2 - 1);
        if (*(v138 + 4) >= *(v87 + 1))
        {
          return result;
        }
      }

      else
      {
        v94 = v8;
        v95 = (v8 + 2);
        result = *v8;
        if (v93 >= v91)
        {
          *v8 = v87;
          v8[1] = v90;
          v94 = v8 + 1;
          v95 = (v8 + 2);
          result = v90;
          if (v93 >= v92)
          {
            goto LABEL_181;
          }
        }

LABEL_171:
        *v94 = v89;
        *v95 = v90;
        v87 = result;
LABEL_172:
        v138 = *(a2 - 1);
        if (*(v138 + 4) >= *(v87 + 1))
        {
          return result;
        }
      }

      *v88 = v138;
      *(a2 - 1) = v87;
      v143 = *v88;
      v144 = *v86;
      v145 = *(v143 + 4);
      if (v145 < *(v144 + 4))
      {
        v8[1] = v143;
        v8[2] = v144;
        v146 = *v8;
        if (v145 < *(*v8 + 4))
        {
          *v8 = v143;
          v8[1] = v146;
        }
      }

      return result;
    }

    if (v9 == 5)
    {
    }

LABEL_10:
    if (v9 <= 23)
    {
      v96 = v8 + 1;
      v98 = v8 == a2 || v96 == a2;
      if (a4)
      {
        if (!v98)
        {
          v99 = 0;
          v100 = v8;
          do
          {
            v103 = *v100;
            v102 = v100[1];
            v100 = v96;
            v104 = *(v102 + 4);
            if (v104 < *(v103 + 4))
            {
              v105 = v99;
              do
              {
                *(v8 + v105 + 8) = v103;
                if (!v105)
                {
                  v101 = v8;
                  goto LABEL_128;
                }

                v103 = *(v8 + v105 - 8);
                v105 -= 8;
              }

              while (v104 < *(v103 + 4));
              v101 = (v8 + v105 + 8);
LABEL_128:
              *v101 = v102;
            }

            v96 = v100 + 1;
            v99 += 8;
          }

          while (v100 + 1 != a2);
        }
      }

      else if (!v98)
      {
        do
        {
          v140 = *v7;
          v139 = v7[1];
          v7 = v96;
          v141 = *(v139 + 4);
          if (v141 < *(v140 + 4))
          {
            v142 = v7;
            do
            {
              *v142 = v140;
              v140 = *(v142 - 2);
              --v142;
            }

            while (v141 < *(v140 + 4));
            *v142 = v139;
          }

          v96 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          if (v106 >= v107)
          {
            v109 = (2 * (v107 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v110 = &v8[v109];
            v111 = *v110;
            if (2 * (v107 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v9 && *(v111 + 4) < *(v110[1] + 4))
            {
              v111 = v110[1];
              ++v110;
              v109 = 2 * (v107 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            result = &v8[v107];
            v112 = *result;
            v113 = *(*result + 4);
            if (*(v111 + 4) >= v113)
            {
              do
              {
                v114 = v110;
                *result = v111;
                if (v106 < v109)
                {
                  break;
                }

                v115 = (2 * v109) | 1;
                v110 = &v8[v115];
                v116 = 2 * v109 + 2;
                v111 = *v110;
                if (v116 < v9 && *(v111 + 4) < *(v110[1] + 4))
                {
                  v111 = v110[1];
                  ++v110;
                  v115 = v116;
                }

                result = v114;
                v109 = v115;
              }

              while (*(v111 + 4) >= v113);
              *v114 = v112;
            }
          }

          v108 = v107-- <= 0;
        }

        while (!v108);
        do
        {
          v117 = 0;
          v118 = *v8;
          v119 = (v9 - 2) >> 1;
          v120 = v8;
          do
          {
            while (1)
            {
              v126 = &v120[v117];
              v125 = v126 + 1;
              v124 = v126[1];
              v127 = (2 * v117) | 1;
              v117 = 2 * v117 + 2;
              if (v117 < v9)
              {
                break;
              }

              v117 = v127;
              *v120 = v124;
              v120 = v126 + 1;
              if (v127 > v119)
              {
                goto LABEL_160;
              }
            }

            v123 = v126[2];
            v121 = v126 + 2;
            v122 = v123;
            result = *(v124 + 4);
            if (result >= *(v123 + 4))
            {
              v117 = v127;
            }

            else
            {
              v124 = v122;
              v125 = v121;
            }

            *v120 = v124;
            v120 = v125;
          }

          while (v117 <= v119);
LABEL_160:
          if (v125 == --a2)
          {
            *v125 = v118;
          }

          else
          {
            *v125 = *a2;
            *a2 = v118;
            v128 = (v125 - v8 + 8) >> 3;
            v108 = v128 < 2;
            v129 = v128 - 2;
            if (!v108)
            {
              v130 = v129 >> 1;
              v131 = &v8[v130];
              v132 = *v131;
              v133 = *v125;
              v134 = *(*v125 + 4);
              if (*(*v131 + 4) < v134)
              {
                do
                {
                  v135 = v131;
                  *v125 = v132;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = &v8[v130];
                  v132 = *v131;
                  v125 = v135;
                }

                while (*(*v131 + 4) < v134);
                *v135 = v133;
              }
            }
          }

          v108 = v9-- <= 2;
        }

        while (!v108);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 4);
    if (v9 < 0x81)
    {
      v18 = *v8;
      v19 = *v11;
      v20 = *(*v8 + 4);
      v21 = *(*v11 + 4);
      if (v20 < v21)
      {
        if (v13 < v20)
        {
          *v11 = v12;
          goto LABEL_37;
        }

        *v11 = v18;
        *v8 = v19;
        v34 = *(a2 - 1);
        if (*(v34 + 4) < v21)
        {
          *v8 = v34;
LABEL_37:
          *(a2 - 1) = v19;
        }

LABEL_38:
        --a3;
        v24 = *v8;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      if (v13 >= v20)
      {
        goto LABEL_38;
      }

      *v8 = v12;
      *(a2 - 1) = v18;
      v23 = *v11;
      if (*(*v8 + 4) >= *(*v11 + 4))
      {
        goto LABEL_38;
      }

      *v11 = *v8;
      *v8 = v23;
      --a3;
      v24 = v23;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_39;
    }

    v14 = *v10;
    v15 = *v8;
    v16 = *(*v10 + 4);
    v17 = *(*v8 + 4);
    if (v16 >= v17)
    {
      if (v13 < v16)
      {
        *v10 = v12;
        *(a2 - 1) = v14;
        v22 = *v8;
        if (*(*v10 + 4) < *(*v8 + 4))
        {
          *v8 = *v10;
          *v10 = v22;
        }
      }
    }

    else
    {
      if (v13 >= v16)
      {
        *v8 = v14;
        *v10 = v15;
        v25 = *(a2 - 1);
        if (*(v25 + 4) >= v17)
        {
          goto LABEL_29;
        }

        *v10 = v25;
      }

      else
      {
        *v8 = v12;
      }

      *(a2 - 1) = v15;
    }

LABEL_29:
    v26 = v10 - 1;
    v27 = *(v10 - 1);
    v28 = v8[1];
    v29 = *(v27 + 4);
    v30 = *(v28 + 4);
    v31 = *(a2 - 2);
    v32 = *(v31 + 4);
    if (v29 >= v30)
    {
      if (v32 < v29)
      {
        *v26 = v31;
        *(a2 - 2) = v27;
        v33 = v8[1];
        if (*(*v26 + 4) < *(v33 + 4))
        {
          v8[1] = *v26;
          *v26 = v33;
        }
      }
    }

    else
    {
      if (v32 >= v29)
      {
        v8[1] = v27;
        *v26 = v28;
        v36 = *(a2 - 2);
        if (*(v36 + 4) >= v30)
        {
          goto LABEL_43;
        }

        *v26 = v36;
      }

      else
      {
        v8[1] = v31;
      }

      *(a2 - 2) = v28;
    }

LABEL_43:
    v39 = v10[1];
    v37 = v10 + 1;
    v38 = v39;
    v40 = v8[2];
    v41 = *(v39 + 4);
    v42 = *(v40 + 4);
    v43 = *(a2 - 3);
    v44 = *(v43 + 4);
    if (v41 >= v42)
    {
      if (v44 < v41)
      {
        *v37 = v43;
        *(a2 - 3) = v38;
        v45 = v8[2];
        if (*(*v37 + 4) < *(v45 + 4))
        {
          v8[2] = *v37;
          *v37 = v45;
        }
      }

      goto LABEL_52;
    }

    if (v44 < v41)
    {
      v8[2] = v43;
LABEL_51:
      *(a2 - 3) = v40;
      goto LABEL_52;
    }

    v8[2] = v38;
    *v37 = v40;
    v46 = *(a2 - 3);
    if (*(v46 + 4) < v42)
    {
      *v37 = v46;
      goto LABEL_51;
    }

LABEL_52:
    v47 = *v11;
    v48 = *v26;
    v49 = *(*v11 + 4);
    v50 = *(*v26 + 4);
    v51 = *v37;
    v52 = *(*v37 + 4);
    if (v49 >= v50)
    {
      if (v52 >= v49)
      {
        goto LABEL_60;
      }

      *v11 = v51;
      *v37 = v47;
      v37 = v11;
      v47 = v48;
      if (v52 < v50)
      {
LABEL_59:
        *v26 = v51;
        *v37 = v48;
LABEL_60:
        v54 = *v8;
        *v8 = v47;
        *v11 = v54;
        --a3;
        v24 = *v8;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      v68 = *v8;
      *v8 = v51;
      *v11 = v68;
      --a3;
      v24 = *v8;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_61:
      v35 = *(v24 + 4);
      if (*(*(v8 - 1) + 4) < v35)
      {
        goto LABEL_62;
      }

      if (v35 >= *(*(a2 - 1) + 4))
      {
        v70 = v8 + 1;
        do
        {
          v8 = v70;
          if (v70 >= a2)
          {
            break;
          }

          ++v70;
        }

        while (v35 >= *(*v8 + 4));
      }

      else
      {
        do
        {
          v69 = v8[1];
          ++v8;
        }

        while (v35 >= *(v69 + 4));
      }

      v71 = a2;
      if (v8 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v35 < *(v72 + 4));
      }

      if (v8 < v71)
      {
        v73 = *v8;
        v74 = *v71;
        do
        {
          *v8 = v74;
          *v71 = v73;
          do
          {
            v75 = v8[1];
            ++v8;
            v73 = v75;
          }

          while (v35 >= *(v75 + 4));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v35 < *(v76 + 4));
        }

        while (v8 < v71);
      }

      v77 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v77;
      }

      a4 = 0;
      *v77 = v24;
    }

    else
    {
      if (v52 < v49)
      {
        goto LABEL_59;
      }

      *v26 = v47;
      *v11 = v48;
      v26 = v11;
      v47 = v51;
      if (v52 < v50)
      {
        goto LABEL_59;
      }

      v53 = *v8;
      *v8 = v48;
      *v11 = v53;
      --a3;
      v24 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_39:
      v35 = *(v24 + 4);
LABEL_62:
      v55 = 0;
      do
      {
        v56 = v8[++v55];
      }

      while (*(v56 + 4) < v35);
      v57 = &v8[v55];
      v58 = a2;
      if (v55 == 1)
      {
        v58 = a2;
        do
        {
          if (v57 >= v58)
          {
            break;
          }

          v60 = *--v58;
        }

        while (*(v60 + 4) >= v35);
      }

      else
      {
        do
        {
          v59 = *--v58;
        }

        while (*(v59 + 4) >= v35);
      }

      if (v57 >= v58)
      {
        v66 = v57 - 1;
        if (v57 - 1 == v8)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v8 = *v66;
        goto LABEL_80;
      }

      v61 = *v58;
      v62 = &v8[v55];
      v63 = v58;
      do
      {
        *v62 = v61;
        *v63 = v56;
        do
        {
          v64 = v62[1];
          ++v62;
          v56 = v64;
        }

        while (*(v64 + 4) < v35);
        do
        {
          v65 = *--v63;
          v61 = v65;
        }

        while (*(v65 + 4) >= v35);
      }

      while (v62 < v63);
      v66 = v62 - 1;
      if (v62 - 1 != v8)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v66 = v24;
      if (v57 < v58)
      {
        goto LABEL_83;
      }

      v8 = v66 + 1;
      if (result)
      {
        a2 = v66;
        if (!v67)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v67)
      {
LABEL_83:
        a4 = 0;
        v8 = v66 + 1;
      }
    }
  }

  v80 = *v8;
  v81 = v8[1];
  v82 = *(v81 + 4);
  v83 = *(*v8 + 4);
  v84 = *(a2 - 1);
  v85 = *(v84 + 4);
  if (v82 >= v83)
  {
    if (v85 < v82)
    {
      v8[1] = v84;
      *(a2 - 1) = v81;
      v137 = *v8;
      v136 = v8[1];
      if (*(v136 + 4) < *(*v8 + 4))
      {
        *v8 = v136;
        v8[1] = v137;
      }
    }
  }

  else
  {
    if (v85 >= v82)
    {
      *v8 = v81;
      v8[1] = v80;
      v147 = *(a2 - 1);
      if (*(v147 + 4) >= v83)
      {
        return result;
      }

      v8[1] = v147;
    }

    else
    {
      *v8 = v84;
    }

    *(a2 - 1) = v80;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::anonymous namespace::FieldNumberSorter &,google::protobuf::FieldDescriptor const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 4);
  v8 = *(*result + 4);
  v9 = *a3;
  v10 = *(*a3 + 4);
  if (v7 < v8)
  {
    if (v10 >= v7)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(*a3 + 4) >= v8)
      {
        goto LABEL_11;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v6;
    v5 = v6;
LABEL_11:
    v12 = *a4;
    if (*(*a4 + 4) >= *(v5 + 4))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v10 >= v7)
  {
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 4) >= *(v9 + 4))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v9;
    *a3 = v5;
    v11 = *result;
    if (*(*a2 + 4) >= *(*result + 4))
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v11;
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 4) >= *(*a3 + 4))
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v12;
  *a4 = v5;
  v13 = *a2;
  if (*(*a3 + 4) < *(*a2 + 4))
  {
    *a2 = *a3;
    *a3 = v13;
    v14 = *result;
    if (*(*a2 + 4) < *(*result + 4))
    {
      *result = *a2;
      *a2 = v14;
    }
  }

LABEL_16:
  v15 = *a4;
  if (*(*a5 + 4) < *(*a4 + 4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(*a4 + 4) < *(*a3 + 4))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(*a3 + 4) < *(*a2 + 4))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(*a2 + 4) < *(*result + 4))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::anonymous namespace::FieldNumberSorter &,google::protobuf::FieldDescriptor const**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(v7 + 4);
      v9 = *(*a1 + 4);
      v10 = *(a2 - 1);
      v11 = *(v10 + 4);
      if (v8 >= v9)
      {
        if (v11 >= v8)
        {
          return 1;
        }

        a1[1] = v10;
        *(a2 - 1) = v7;
        v33 = *a1;
        v32 = a1[1];
        if (*(v32 + 4) >= *(*a1 + 4))
        {
          return 1;
        }

        *a1 = v32;
        a1[1] = v33;
        return 1;
      }

      else if (v11 >= v8)
      {
        *a1 = v7;
        a1[1] = v6;
        v47 = *(a2 - 1);
        if (*(v47 + 4) >= v9)
        {
          return 1;
        }

        a1[1] = v47;
        *(a2 - 1) = v6;
        return 1;
      }

      else
      {
        *a1 = v10;
        *(a2 - 1) = v6;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return 1;
      }

LABEL_14:
      v13 = a1 + 2;
      v12 = a1[2];
      v14 = a1[1];
      v15 = *a1;
      v16 = *(v14 + 4);
      v17 = *(*a1 + 4);
      v18 = *(v12 + 4);
      if (v16 >= v17)
      {
        if (v18 >= v16)
        {
          goto LABEL_28;
        }

        a1[1] = v12;
        *v13 = v14;
        v19 = a1;
        v20 = a1 + 1;
      }

      else
      {
        v19 = a1;
        v20 = a1 + 2;
        if (v18 < v16)
        {
LABEL_27:
          *v19 = v12;
          *v20 = v15;
          goto LABEL_28;
        }

        *a1 = v14;
        a1[1] = v15;
        v19 = a1 + 1;
        v20 = a1 + 2;
      }

      if (v18 < v17)
      {
        goto LABEL_27;
      }

LABEL_28:
      v34 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return 1;
      }

      v35 = 0;
      for (i = 24; ; i += 8)
      {
        v37 = *v34;
        v38 = *v13;
        v39 = *(*v34 + 4);
        if (v39 < *(v38 + 4))
        {
          break;
        }

LABEL_31:
        v13 = v34++;
        if (v34 == a2)
        {
          return 1;
        }
      }

      v40 = i;
      do
      {
        *(a1 + v40) = v38;
        v41 = v40 - 8;
        if (v40 == 8)
        {
          *a1 = v37;
          if (++v35 != 8)
          {
            goto LABEL_31;
          }

          return v34 + 1 == a2;
        }

        v38 = *(a1 + v40 - 16);
        v40 -= 8;
      }

      while (v39 < *(v38 + 4));
      *(a1 + v41) = v37;
      if (++v35 != 8)
      {
        goto LABEL_31;
      }

      return v34 + 1 == a2;
    }

    v21 = a1 + 1;
    v22 = a1[1];
    v23 = a1 + 2;
    v24 = a1[2];
    v25 = *a1;
    v26 = *(v22 + 4);
    v27 = *(*a1 + 4);
    v28 = *(v24 + 4);
    if (v26 >= v27)
    {
      if (v28 >= v26)
      {
        goto LABEL_43;
      }

      *v21 = v24;
      *v23 = v22;
      v29 = a1;
      v30 = a1 + 1;
      v31 = v22;
      if (v28 >= v27)
      {
LABEL_41:
        v42 = *(a2 - 1);
        if (*(v42 + 4) >= *(v22 + 4))
        {
          return 1;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v29 = a1;
      v30 = a1 + 2;
      v31 = *a1;
      if (v28 >= v26)
      {
        *a1 = v22;
        a1[1] = v25;
        v29 = a1 + 1;
        v30 = a1 + 2;
        v31 = v25;
        if (v28 >= v27)
        {
LABEL_43:
          v22 = v24;
          v42 = *(a2 - 1);
          if (*(v42 + 4) >= *(v22 + 4))
          {
            return 1;
          }

LABEL_44:
          *v23 = v42;
          *(a2 - 1) = v22;
          v43 = *v23;
          v44 = *v21;
          v45 = *(v43 + 4);
          if (v45 >= *(v44 + 4))
          {
            return 1;
          }

          a1[1] = v43;
          a1[2] = v44;
          v46 = *a1;
          if (v45 >= *(*a1 + 4))
          {
            return 1;
          }

          *a1 = v43;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v29 = v24;
    *v30 = v25;
    v22 = v31;
    goto LABEL_41;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *a1;
  if (*(v4 + 4) >= *(*a1 + 4))
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 1) = v5;
  return 1;
}

void absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::AssignDescriptors(google::protobuf::internal::DescriptorTable const* (*)(void),absl::lts_20240722::once_flag *,google::protobuf::Metadata const&)::$_0>(atomic_uint *a1, uint64_t (**a2)(void))
{
  v4 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v4, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v4 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::AssignDescriptors(google::protobuf::internal::DescriptorTable const* (*)(void),absl::lts_20240722::once_flag *,google::protobuf::Metadata const&)::$_0>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,google::protobuf::internal::AssignDescriptors(google::protobuf::internal::DescriptorTable const* (*)(void),absl::lts_20240722::once_flag *,google::protobuf::Metadata const&)::$_0 &&)::trans))
  {
    v5 = (*a2)();
    v6 = strlen(*(v5 + 16));
    IsLazilyInitializedFile = google::protobuf::internal::cpp::IsLazilyInitializedFile(*(v5 + 16), v6);
    if (!IsLazilyInitializedFile)
    {
      google::protobuf::DescriptorPool::generated_pool(IsLazilyInitializedFile);
    }

    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::internal::DescriptorTable const*,BOOL),google::protobuf::internal::DescriptorTable const*&,BOOL const&>(atomic_uint *a1, uint64_t a2, void (*a3)(void, void), void *a4, unsigned __int8 *a5)
{
  v9 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v9, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v9 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::internal::DescriptorTable const*,BOOL),google::protobuf::internal::DescriptorTable const*&,BOOL const&>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (&)(google::protobuf::internal::DescriptorTable const*,BOOL) &&,google::protobuf::internal::DescriptorTable const*&,BOOL const&)::trans))
  {
    a3(*a4, *a5);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

_DWORD *OUTLINED_FUNCTION_2_7(_DWORD *result, int a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *result += a2;
  v5 = *a4;
  return result;
}

__n128 OUTLINED_FUNCTION_3_5()
{
  result = v0[-1];
  v3 = *v0;
  v1[-1] = result;
  *v1 = v3;
  return result;
}

void google::protobuf::internal::TcParser::WriteVarintToUnknown<google::protobuf::UnknownFieldSet>(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    v7 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    a3 = a3;
  }

  else
  {
    v8 = a2;
    v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(v4);
    a2 = v8;
    a3 = v3;
  }

  google::protobuf::UnknownFieldSet::AddVarint(v7, a2, a3);
}

void google::protobuf::internal::TcParser::WriteLengthDelimitedToUnknown<google::protobuf::UnknownFieldSet>(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (v4)
  {
    v5 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v6 = a2;
    v5 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(v2);
    a2 = v6;
  }

  google::protobuf::UnknownFieldSet::AddLengthDelimited(v5, a2);
}

void google::protobuf::internal::TailCallTableInfo::TailCallTableInfo(uint64_t a1, uint64_t a2, std::string::size_type **a3, unsigned __int8 *a4, void (***a5)(void, std::string::size_type), void *a6, void *a7)
{
  v116 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = 0u;
  v8 = (a1 + 48);
  *(a1 + 80) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  v107 = (a1 + 48);
  if (*a7 != a7[1])
  {
    std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::__append(a1 + 48, 1uLL);
    v9 = *v8;
    *v9 = 1;
    *(v9 + 8) = 0;
  }

  v10 = *a3;
  v11 = a3[1];
  if (*a3 == v11)
  {
LABEL_6:
    if (a4[2] == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    while (1)
    {
      (**a5)(a5, *v10);
      if ((v12 & 0x100) != 0)
      {
        break;
      }

      if (++v10 == v11)
      {
        goto LABEL_6;
      }
    }

    v13 = *(a1 + 48);
    v14 = *(a1 + 56) - v13;
    if ((v14 >> 4) > 2)
    {
      v15 = v107;
      if (v14 != 48)
      {
        *(a1 + 56) = v13 + 48;
      }
    }

    else
    {
      v15 = v107;
      std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::__append(v107, 3 - (v14 >> 4));
      v13 = *v107;
    }

    *(v13 + 16) = 2;
    *(v13 + 24) = 0;
    v16 = *v15;
    *(v16 + 32) = 3;
    *(v16 + 40) = 0;
    if (a4[2] == 1)
    {
LABEL_13:
      v17 = *a3;
      v18 = a3[1];
      if (*a3 != v18)
      {
        v110 = 0;
        while (1)
        {
          v19 = *v17;
          v20 = (**a5)(a5, *v17);
          v22 = v21;
          v23 = *(v19 + 24);
          if (v23)
          {
            break;
          }

          v25 = (v19 + 2);
          v24 = *(v19 + 2);
          if (v24 != 11)
          {
            goto LABEL_25;
          }

LABEL_32:
          if ((google::protobuf::FieldDescriptor::is_map_message_type(v19) & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_15:
          if (++v17 == v18)
          {
            goto LABEL_47;
          }
        }

        v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        *v114 = v19;
        if (atomic_load_explicit(v23, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v23, 1, &v115, v114);
        }

        v25 = (v19 + 2);
        v24 = *(v19 + 2);
        v26 = *(v19 + 24);
        if (v24 != 11)
        {
          if (v26)
          {
            v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            *v114 = v19;
            if (atomic_load_explicit(v26, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v26, 1, &v115, v114);
            }

            v24 = *v25;
          }

LABEL_25:
          if (v24 != 10)
          {
            goto LABEL_15;
          }

          v26 = *(v19 + 24);
        }

        if (v26)
        {
          v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          *v114 = v19;
          if (atomic_load_explicit(v26, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v26, 1, &v115, v114);
          }

          v24 = *v25;
        }

        if (v24 != 11)
        {
LABEL_33:
          v27 = *(v19 + 24);
          if (v27)
          {
            v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            *v114 = v19;
            if (atomic_load_explicit(v27, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v27, 1, &v115, v114);
            }
          }

          if (*v25 != 11 || ((~*(v19 + 1) & 0x60) != 0 ? (v28 = (v20 & 0xFFFF00000000) == 0) : (v28 = 1), v28))
          {
            if (v20 & 0x100000000000000) == 0 && (v22)
            {
              v29 = v110;
              if (*&v20 >= 0.005)
              {
                v29 = v110 + 1;
              }

              v110 = v29;
            }
          }

          goto LABEL_15;
        }

        goto LABEL_32;
      }
    }
  }

  v110 = 0;
LABEL_47:
  v30 = *(a1 + 48);
  v31 = (*(a1 + 56) - v30) >> 4;
  if (v31 >= v31 + v110)
  {
    if (v31 > v31 + v110)
    {
      *(a1 + 56) = v30 + 16 * (v31 + v110);
    }
  }

  else
  {
    std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::__append(v107, v110);
  }

  v32 = *a3;
  v33 = a3[1];
  v108 = v31;
  if (*a3 == v33)
  {
LABEL_310:
    if (v31 - v108 != v110)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,unsigned long long>(v31 - v108, v110, "subtable_aux_idx - subtable_aux_idx_begin == num_non_cold_subtables");
    }

    *(a1 + 128) = 0;
    v98 = *(a2 + 24);
    if (v98 && *(v98 + 4) >= 1)
    {
      v99 = 0;
      v100 = 0;
      while (1)
      {
        v101 = *(v98 + 56);
        v102 = *(v101 + v99 + 24);
        if (v102)
        {
          v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          *v114 = v101 + v99;
          if (atomic_load_explicit(v102, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v102, 1, &v115, v114);
          }
        }

        if (*(v101 + v99 + 2) == 10 && google::protobuf::FieldDescriptor::message_type((v101 + v99)) == a2)
        {
          break;
        }

        ++v100;
        v99 += 88;
        if (v100 >= *(v98 + 4))
        {
          goto LABEL_321;
        }
      }

      v103 = *(v101 + v99 + 4);
    }

LABEL_321:
    operator new();
  }

  while (1)
  {
    v34 = *v32;
    v35 = (**a5)(a5, *v32);
    v37 = v36;
    v115.__r_.__value_.__r.__words[0] = v34;
    if (google::protobuf::internal::cpp::HasHasbit(v34, v36))
    {
      if ((*(v34 + 1) & 8) != 0)
      {
        v40 = *(v34 + 40);
        if (v40)
        {
          v38 = (v40 + 96);
        }

        else
        {
          v38 = (*(v34 + 16) + 120);
        }
      }

      else
      {
        v38 = (*(v34 + 32) + 56);
      }

      v39 = *(*a6 + ((0xBA2E8BA300000000 * ((v34 - *v38) >> 3)) >> 30));
    }

    else
    {
      v39 = -1;
    }

    LODWORD(v115.__r_.__value_.__r.__words[1]) = v39;
    *(&v115.__r_.__value_.__r.__words[1] + 4) = 0;
    std::vector<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>::push_back[abi:ne200100](a1 + 24, &v115);
    v41 = *(a1 + 32);
    if (google::protobuf::internal::cpp::HasHasbit(v34, v42))
    {
      v44 = 16;
      v45 = *(v34 + 24);
      if (v45)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v46 = *(v34 + 1);
      if ((~v46 & 0x60) != 0)
      {
        if ((v46 & 0x10) != 0 && (v47 = *(v34 + 40)) != 0)
        {
          if (*(v47 + 4) == 1)
          {
            if ((*(*(v47 + 48) + 1) & 2) != 0)
            {
              v44 = 0;
            }

            else
            {
              v44 = 48;
            }

            v45 = *(v34 + 24);
            if (v45)
            {
LABEL_78:
              v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
              *v114 = v34;
              if (atomic_load_explicit(v45, memory_order_acquire) != 221)
              {
                absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v45, 1, &v115, v114);
              }
            }
          }

          else
          {
            v44 = 48;
            v45 = *(v34 + 24);
            if (v45)
            {
              goto LABEL_78;
            }
          }
        }

        else
        {
          v44 = 0;
          v45 = *(v34 + 24);
          if (v45)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        v44 = 32;
        v45 = *(v34 + 24);
        if (v45)
        {
          goto LABEL_78;
        }
      }
    }

    switch(*(v34 + 2))
    {
      case 1:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x18C3u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v48 = 6340;
          }

          else
          {
            v48 = 6339;
          }

          v44 |= v48;
        }

        goto LABEL_210;
      case 2:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x1883u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v60 = 6276;
          }

          else
          {
            v60 = 6275;
          }

          v44 |= v60;
        }

        goto LABEL_210;
      case 3:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x10C1u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v56 = 4290;
          }

          else
          {
            v56 = 4289;
          }

          v44 |= v56;
        }

        goto LABEL_210;
      case 4:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x8C1u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v58 = 2242;
          }

          else
          {
            v58 = 2241;
          }

          v44 |= v58;
        }

        goto LABEL_210;
      case 5:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x1081u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v52 = 4226;
          }

          else
          {
            v52 = 4225;
          }

          v44 |= v52;
        }

        goto LABEL_210;
      case 6:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x8C3u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v62 = 2244;
          }

          else
          {
            v62 = 2243;
          }

          v44 |= v62;
        }

        goto LABEL_210;
      case 7:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x883u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v64 = 2180;
          }

          else
          {
            v64 = 2179;
          }

          v44 |= v64;
        }

        goto LABEL_210;
      case 8:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 1u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v59 = 2;
          }

          else
          {
            v59 = 1;
          }

          v44 |= v59;
        }

        goto LABEL_210;
      case 9:
        v54 = google::protobuf::internal::cpp::GetUtf8CheckMode(v34, *a4);
        if (v54 == 2)
        {
          goto LABEL_116;
        }

        if (v54 == 1)
        {
          v55 = 2565;
        }

        else
        {
          if (v54)
          {
            goto LABEL_210;
          }

          v55 = 3077;
        }

        goto LABEL_209;
      case 0xA:
        if ((v35 & 0x100000000000000) != 0)
        {
          v55 = 1606;
        }

        else if (v37)
        {
          v55 = 1094;
        }

        else
        {
          v55 = 582;
        }

        goto LABEL_209;
      case 0xB:
        v51 = *(v34 + 24);
        if (!v51)
        {
          goto LABEL_328;
        }

        v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        *v114 = v34;
        if (atomic_load_explicit(v51, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v51, 1, &v115, v114);
        }

        if (*(v34 + 2) == 11)
        {
LABEL_328:
          if (google::protobuf::FieldDescriptor::is_map_message_type(v34))
          {
            v44 |= 7u;
            goto LABEL_210;
          }
        }

        v65 = *(v34 + 24);
        if (v65)
        {
          v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          *v114 = v34;
          if (atomic_load_explicit(v65, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v65, 1, &v115, v114);
          }
        }

        if (*(v34 + 2) == 11 && (~*(v34 + 1) & 0x60) != 0 && (v35 & 0xFFFF00000000) != 0)
        {
          if (WORD2(v35) != 512 && WORD2(v35) != 1024)
          {
            v104 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v115, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_tctable_gen.cc", 676);
LABEL_322:
            absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v104);
          }

          v44 |= 0x86 | WORD2(v35);
        }

        else
        {
          if ((v35 & 0x100000000000000) != 0)
          {
            v55 = 1542;
          }

          else if (v37)
          {
            v55 = 1030;
          }

          else
          {
            v55 = 518;
          }

LABEL_209:
          v44 |= v55;
        }

        goto LABEL_210;
      case 0xC:
LABEL_116:
        v55 = 2053;
        goto LABEL_209;
      case 0xD:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x881u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v53 = 2178;
          }

          else
          {
            v53 = 2177;
          }

          v44 |= v53;
        }

        goto LABEL_210;
      case 0xE:
        if (google::protobuf::internal::cpp::HasPreservingUnknownEnumSemantics(v34, v43))
        {
          if ((~*(v34 + 1) & 0x60) != 0)
          {
            v44 |= 0x1881u;
          }

          else
          {
            if (google::protobuf::FieldDescriptor::is_packed(v34))
            {
              v63 = 6274;
            }

            else
            {
              v63 = 6273;
            }

            v44 |= v63;
          }
        }

        else
        {
          v66 = google::protobuf::FieldDescriptor::enum_type(v34);
          v68 = *(v34 + 1) & 0x60;
          if (v69)
          {
            if (v68 != 96)
            {
              v44 |= 0x1E81u;
              goto LABEL_210;
            }

            v70 = !google::protobuf::FieldDescriptor::is_packed(v34);
            v71 = 7809;
          }

          else
          {
            if (v68 != 96)
            {
              v44 |= 0x1C81u;
              goto LABEL_210;
            }

            v70 = !google::protobuf::FieldDescriptor::is_packed(v34);
            v71 = 7297;
          }

          if (!v70)
          {
            ++v71;
          }

          v44 |= v71;
        }

LABEL_210:
        v72 = *(v34 + 24);
        if (v72)
        {
          v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          *v114 = v34;
          if (atomic_load_explicit(v72, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v72, 1, &v115, v114);
          }

          v73 = *(v34 + 24);
          v74 = *(v34 + 2);
          if (v74 == 12)
          {
            goto LABEL_221;
          }

          if (v73)
          {
            v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            *v114 = v34;
            if (atomic_load_explicit(v73, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v73, 1, &v115, v114);
            }

            v74 = *(v34 + 2);
          }
        }

        else
        {
          v74 = *(v34 + 2);
          if (v74 == 12)
          {
            goto LABEL_226;
          }
        }

        if (v74 != 9)
        {
          goto LABEL_230;
        }

        v73 = *(v34 + 24);
LABEL_221:
        if (v73)
        {
          v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          *v114 = v34;
          if (atomic_load_explicit(v73, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v73, 1, &v115, v114);
          }

          v74 = *(v34 + 2);
        }

        if (v74 != 12)
        {
          if ((~*(v34 + 1) & 0x60) == 0)
          {
LABEL_229:
            v44 |= 0x100u;
          }

LABEL_230:
          *(v41 - 6) = v44 | (v37 >> 5) & 8;
          v76 = *(v34 + 24);
          if (v76)
          {
            goto LABEL_231;
          }

          goto LABEL_250;
        }

LABEL_226:
        v75 = *(v34 + 1);
        if ((~v75 & 0x60) == 0)
        {
          v74 = 12;
          goto LABEL_229;
        }

        v78 = (v75 >> 3) & 1;
        if (*(*(v34 + 56) + 120) != 1)
        {
          v78 = 1;
        }

        if (!v78)
        {
          v44 |= 0x80u;
        }

        v74 = 12;
        *(v41 - 6) = v44 | (v37 >> 5) & 8;
        v76 = *(v34 + 24);
        if (v76)
        {
LABEL_231:
          v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          *v114 = v34;
          if (atomic_load_explicit(v76, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v76, 1, &v115, v114);
          }

          v74 = *(v34 + 2);
          v77 = *(v34 + 24);
          if (v74 == 11)
          {
            goto LABEL_239;
          }

          if (v77)
          {
            v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            *v114 = v34;
            if (atomic_load_explicit(v77, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v77, 1, &v115, v114);
            }

            v74 = *(v34 + 2);
            v77 = *(v34 + 24);
          }

          if (v74 == 10)
          {
            goto LABEL_239;
          }

          goto LABEL_276;
        }

LABEL_250:
        if (v74 == 11)
        {
          goto LABEL_251;
        }

        v77 = 0;
        if (v74 == 10)
        {
LABEL_239:
          if (v77)
          {
            v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            *v114 = v34;
            if (atomic_load_explicit(v77, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v77, 1, &v115, v114);
            }

            v74 = *(v34 + 2);
          }

          if (v74 == 11)
          {
LABEL_251:
            if (google::protobuf::FieldDescriptor::is_map_message_type(v34))
            {
              *(*(a1 + 32) - 8) = (*(a1 + 56) - *(a1 + 48)) >> 4;
              LODWORD(v115.__r_.__value_.__l.__data_) = 11;
              v115.__r_.__value_.__l.__size_ = v34;
              std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](v107, &v115);
              if (a4[1] == 1)
              {
                v79 = google::protobuf::FieldDescriptor::message_type(v34);
                v80 = google::protobuf::Descriptor::map_value(v79);
                v82 = google::protobuf::FieldDescriptor::message_type(v80);
                if (v82)
                {
                  LODWORD(v115.__r_.__value_.__l.__data_) = 12;
                  v115.__r_.__value_.__l.__size_ = 0;
                  std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](v107, &v115);
                  *(*(a1 + 56) - 8) = v82;
                }

                else
                {
                  v96 = *(v80 + 24);
                  if (v96)
                  {
                    v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
                    *v114 = v80;
                    if (atomic_load_explicit(v96, memory_order_acquire) != 221)
                    {
                      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v96, 1, &v115, v114);
                    }
                  }

                  if (*(v80 + 2) == 14 && !google::protobuf::internal::cpp::HasPreservingUnknownEnumSemantics(v80, v81))
                  {
                    LODWORD(v115.__r_.__value_.__l.__data_) = 9;
                    v115.__r_.__value_.__l.__size_ = v80;
                    std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](v107, &v115);
                  }
                }
              }

              goto LABEL_54;
            }
          }

          v83 = *(v34 + 24);
          if (v83)
          {
            v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            *v114 = v34;
            if (atomic_load_explicit(v83, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v83, 1, &v115, v114);
            }
          }

          if (*(v34 + 2) == 11 && (~*(v34 + 1) & 0x60) != 0 && (v35 & 0xFFFF00000000) != 0)
          {
            if (a4[1] == 1)
            {
              *(*(a1 + 32) - 8) = (*(a1 + 56) - *(a1 + 48)) >> 4;
              LODWORD(v115.__r_.__value_.__l.__data_) = 4;
              v115.__r_.__value_.__l.__size_ = v34;
              std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](v107, &v115);
              if (WORD2(v35) == 512)
              {
                LODWORD(v115.__r_.__value_.__l.__data_) = 7;
                v115.__r_.__value_.__l.__size_ = v34;
              }

              else
              {
                LODWORD(v115.__r_.__value_.__l.__data_) = 0;
                v115.__r_.__value_.__l.__size_ = 0;
              }

              std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](v107, &v115);
            }

            else
            {
              *(*(a1 + 32) - 8) = -1;
            }
          }

          else
          {
            if (v37)
            {
              v84 = 5;
            }

            else
            {
              v84 = 4;
            }

            if ((v35 & 0x100000000000000) != 0)
            {
              v84 = 6;
            }

            if (a4[2] == 1 && (v35 & 0x100000000000000) == 0 && (v37 & 1) != 0 && *&v35 >= 0.005)
            {
              v85 = *(a1 + 48) + 16 * v31;
              *v85 = 5;
              *(v85 + 8) = v34;
              *(*(a1 + 32) - 8) = v31++;
            }

            else
            {
              *(*(a1 + 32) - 8) = (*(a1 + 56) - *(a1 + 48)) >> 4;
              LODWORD(v115.__r_.__value_.__l.__data_) = v84;
              v115.__r_.__value_.__l.__size_ = v34;
              std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](v107, &v115);
            }
          }

          goto LABEL_54;
        }

LABEL_276:
        if (v77)
        {
          v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          *v114 = v34;
          if (atomic_load_explicit(v77, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v77, 1, &v115, v114);
          }

          v74 = *(v34 + 2);
        }

        if (v74 == 14 && !google::protobuf::internal::cpp::HasPreservingUnknownEnumSemantics(v34, v43))
        {
          *(v41 - 8) = (*(a1 + 56) - *(a1 + 48)) >> 4;
          LODWORD(v115.__r_.__value_.__l.__data_) = 0;
          v115.__r_.__value_.__l.__size_ = 0;
          std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](v107, &v115);
          v91 = *(a1 + 56);
          v92 = google::protobuf::FieldDescriptor::enum_type(v34);
          if (v94)
          {
            *(v91 - 16) = 8;
          }

          else
          {
            *(v91 - 16) = 9;
            *(v91 - 8) = v34;
          }
        }

        else
        {
          v86 = *(v34 + 24);
          if (v86)
          {
            v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            *v114 = v34;
            if (atomic_load_explicit(v86, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v86, 1, &v115, v114);
            }
          }

          v87 = *(v34 + 2);
          if (v87 == 9)
          {
            goto LABEL_291;
          }

          v88 = *(v34 + 24);
          if (v88)
          {
            v115.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            *v114 = v34;
            if (atomic_load_explicit(v88, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v88, 1, &v115, v114);
            }

            v87 = *(v34 + 2);
          }

          if (v87 == 12)
          {
LABEL_291:
            if ((v35 & 0x1000000000000) != 0)
            {
              v89 = *(v34 + 1);
              if ((~v89 & 0x60) == 0)
              {
                v104 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v115, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_tctable_gen.cc", 865);
                goto LABEL_322;
              }

              if ((v89 & 8) != 0)
              {
                v95 = *(v34 + 40);
                if (v95)
                {
                  v90 = (v95 + 96);
                }

                else
                {
                  v90 = (*(v34 + 16) + 120);
                }
              }

              else
              {
                v90 = (*(v34 + 32) + 56);
              }

              v97 = *(*a7 + ((0xBA2E8BA300000000 * ((v34 - *v90) >> 3)) >> 30));
              *(v41 - 8) = (*(a1 + 56) - *(a1 + 48)) >> 4;
              LODWORD(v115.__r_.__value_.__l.__data_) = 10;
              v115.__r_.__value_.__l.__size_ = 0;
              std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](v107, &v115);
              *(*(a1 + 56) - 8) = v97;
              *(v41 - 12) = v97;
            }
          }
        }

LABEL_54:
        if (++v32 == v33)
        {
          goto LABEL_310;
        }

        break;
      case 0xF:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x1083u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v50 = 4228;
          }

          else
          {
            v50 = 4227;
          }

          v44 |= v50;
        }

        goto LABEL_210;
      case 0x10:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x10C3u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v57 = 4292;
          }

          else
          {
            v57 = 4291;
          }

          v44 |= v57;
        }

        goto LABEL_210;
      case 0x11:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x1281u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v49 = 4738;
          }

          else
          {
            v49 = 4737;
          }

          v44 |= v49;
        }

        goto LABEL_210;
      case 0x12:
        if ((~*(v34 + 1) & 0x60) != 0)
        {
          v44 |= 0x12C1u;
        }

        else
        {
          if (google::protobuf::FieldDescriptor::is_packed(v34))
          {
            v61 = 4802;
          }

          else
          {
            v61 = 4801;
          }

          v44 |= v61;
        }

        goto LABEL_210;
      default:
        goto LABEL_210;
    }
  }
}

void sub_23CDDF83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v42 = *(a26 + 104);
  if (v42)
  {
    *(a26 + 112) = v42;
    operator delete(v42);
    google::protobuf::internal::TailCallTableInfo::NumToEntryTable::~NumToEntryTable((a26 + 72));
    v38 = *a20;
    if (*a20)
    {
LABEL_8:
      *(a26 + 56) = v38;
      operator delete(v38);
      v39 = *(a26 + 24);
      if (v39)
      {
LABEL_9:
        *(a26 + 32) = v39;
        operator delete(v39);
        v40 = *a26;
        if (*a26)
        {
LABEL_10:
          *(a26 + 8) = v40;
          operator delete(v40);
          _Unwind_Resume(a1);
        }

LABEL_5:
        _Unwind_Resume(a1);
      }

LABEL_4:
      v40 = *a26;
      if (*a26)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

  else
  {
    google::protobuf::internal::TailCallTableInfo::NumToEntryTable::~NumToEntryTable((a26 + 72));
    v38 = *a20;
    if (*a20)
    {
      goto LABEL_8;
    }
  }

  v39 = *(a26 + 24);
  if (v39)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

void std::vector<google::protobuf::internal::TailCallTableInfo::FieldEntryInfo>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
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

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void google::protobuf::internal::anonymous namespace::GetEnumValidationRange(google::protobuf::internal::_anonymous_namespace_ *this, const google::protobuf::EnumDescriptor *a2, __int16 *a3, unsigned __int16 *a4)
{
  v4 = *(this + 1);
  if (v4 >= 1)
  {
    operator new();
  }

  absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v4, 0, "enum_type->value_count() > 0");
}

void sub_23CDDFF64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CDDFF84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&a18);
}

void google::protobuf::internal::TailCallTableInfo::NumToEntryTable::~NumToEntryTable(google::protobuf::internal::TailCallTableInfo::NumToEntryTable *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

uint64_t std::vector<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>::__emplace_back_slow_path<google::protobuf::internal::TailCallTableInfo::SkipEntryBlock>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[1];
      if (v14)
      {
        v9[2] = v14;
        operator delete(v14);
      }

      v9 += 4;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, unint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if ((v6 - v7) >= a5)
  {
    v13 = v7 - __dst;
    if ((v7 - __dst) >= a5)
    {
      v17 = &__dst[a5];
      v18 = (v7 - a5);
      v19 = *(a1 + 8);
      if (v7 >= a5)
      {
        if (a5 <= 0x1F)
        {
          goto LABEL_70;
        }

        v18 += a5 & 0x7FFFFFFFFFFFFFE0;
        v19 = (v7 + (a5 & 0x7FFFFFFFFFFFFFE0));
        v20 = (v7 + 16);
        v21 = (v7 + 16 - a5);
        v22 = a5 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v23 = *v21;
          *(v20 - 1) = *(v21 - 1);
          *v20 = v23;
          v20 += 2;
          v21 += 2;
          v22 -= 32;
        }

        while (v22);
        if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
        {
LABEL_70:
          do
          {
            v24 = *v18++;
            *v19++ = v24;
          }

          while (v18 != v7);
        }
      }

      *(a1 + 8) = v19;
      if (v7 != v17)
      {
        v25 = __src;
        v26 = a5;
        memmove(v17, __dst, v7 - v17);
        a5 = v26;
        __src = v25;
      }

      v27 = v5;
      v28 = __src;
      v29 = a5;
      goto LABEL_64;
    }

    v14 = &__src[v13];
    v15 = a4 - &__src[v13];
    if (a4 == &__src[v13])
    {
      v16 = *(a1 + 8);
    }

    else
    {
      v40 = &__src[v13];
      if (v15 < 0x20)
      {
        v16 = *(a1 + 8);
      }

      else
      {
        v16 = *(a1 + 8);
        if (v7 - v14 >= 0x20)
        {
          v40 = &v14[v15 & 0xFFFFFFFFFFFFFFE0];
          v16 = (v7 + (v15 & 0xFFFFFFFFFFFFFFE0));
          v41 = (v7 + 16);
          v42 = (v14 + 16);
          v43 = v15 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v44 = *v42;
            *(v41 - 1) = *(v42 - 1);
            *v41 = v44;
            v41 += 2;
            v42 += 2;
            v43 -= 32;
          }

          while (v43);
          if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_48;
          }
        }
      }

      do
      {
        v54 = *v40++;
        *v16++ = v54;
      }

      while (v40 != a4);
    }

LABEL_48:
    *(a1 + 8) = v16;
    if (v13 < 1)
    {
      return v5;
    }

    v55 = &__dst[a5];
    v56 = &v16[-a5];
    if (&v16[-a5] >= v7)
    {
      v59 = v16;
    }

    else
    {
      v57 = v7 + a5 - v16;
      v58 = v57 >= 0x20 && a5 > 0x1F;
      v59 = v16;
      if (!v58)
      {
        goto LABEL_71;
      }

      v56 += v57 & 0xFFFFFFFFFFFFFFE0;
      v59 = &v16[v57 & 0xFFFFFFFFFFFFFFE0];
      v60 = v16 + 16;
      v61 = &v16[-a5 + 16];
      v62 = v57 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v63 = *v61;
        *(v60 - 1) = *(v61 - 1);
        *v60 = v63;
        v60 += 2;
        v61 += 2;
        v62 -= 32;
      }

      while (v62);
      if (v57 != (v57 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_71:
        do
        {
          v64 = *v56++;
          *v59++ = v64;
        }

        while (v56 != v7);
      }
    }

    *(a1 + 8) = v59;
    if (v16 != v55)
    {
      v65 = __src;
      memmove(v55, __dst, v16 - v55);
      __src = v65;
    }

    v27 = v5;
    v28 = __src;
    v29 = v13;
LABEL_64:
    memmove(v27, v28, v29);
    return v5;
  }

  v8 = *a1;
  v9 = v7 - *a1 + a5;
  if (v9 < 0)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = (__dst - v8);
  v11 = v6 - v8;
  if (2 * v11 > v9)
  {
    v9 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v9;
  }

  if (v12)
  {
    operator new();
  }

  v30 = (__dst - v8);
  v31 = &v10[a5];
  if (a5 < 8 || (__dst - &__src[v8]) < 0x20)
  {
    v32 = (__dst - v8);
    v33 = __src;
    goto LABEL_26;
  }

  if (a5 < 0x20)
  {
    v45 = 0;
    goto LABEL_42;
  }

  v45 = a5 & 0x7FFFFFFFFFFFFFE0;
  v46 = (__src + 16);
  v47 = v10 + 16;
  v48 = a5 & 0x7FFFFFFFFFFFFFE0;
  do
  {
    v49 = *v46;
    *(v47 - 1) = *(v46 - 1);
    *v47 = v49;
    v46 += 2;
    v47 += 2;
    v48 -= 32;
  }

  while (v48);
  if (v45 == a5)
  {
    goto LABEL_27;
  }

  if ((a5 & 0x18) != 0)
  {
LABEL_42:
    v32 = &v30[a5 & 0x7FFFFFFFFFFFFFF8];
    v33 = &__src[a5 & 0x7FFFFFFFFFFFFFF8];
    v50 = &__src[v45];
    v51 = (&__dst[v45] - v8);
    v52 = v45 - (a5 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v53 = *v50++;
      *v51++ = v53;
      v52 += 8;
    }

    while (v52);
    if ((a5 & 0x7FFFFFFFFFFFFFF8) == a5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v33 = &__src[v45];
  v32 = &v30[v45];
  do
  {
LABEL_26:
    v34 = *v33++;
    *v32++ = v34;
  }

  while (v32 != v31);
LABEL_27:
  v35 = *(a1 + 8) - __dst;
  memcpy(v31, __dst, v35);
  v37 = &v31[v35];
  *(a1 + 8) = v5;
  v38 = *a1;
  v39 = &v30[*a1 - v5];
  memcpy(v39, *a1, &v5[-*a1]);
  *a1 = v39;
  *(a1 + 8) = v37;
  *(a1 + 16) = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v30;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<char const*,char const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 - v9) >= a5)
  {
    v15 = v9 - __dst;
    if ((v9 - __dst) >= a5)
    {
      v23 = &__dst[a5];
      v24 = (v9 - a5);
      v25 = *(a1 + 8);
      if (v9 >= a5)
      {
        if (a5 <= 0x1F)
        {
          goto LABEL_55;
        }

        v24 += a5 & 0x7FFFFFFFFFFFFFE0;
        v25 = (v9 + (a5 & 0x7FFFFFFFFFFFFFE0));
        v26 = (v9 + 16);
        v27 = (v9 + 16 - a5);
        v28 = a5 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v29 = *v27;
          *(v26 - 1) = *(v27 - 1);
          *v26 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 32;
        }

        while (v28);
        if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
        {
LABEL_55:
          do
          {
            v30 = *v24++;
            *v25++ = v30;
          }

          while (v24 != v9);
        }
      }

      *(a1 + 8) = v25;
      if (v9 != v23)
      {
        v31 = __src;
        memmove(v23, __dst, v9 - v23);
        __src = v31;
      }

      v32 = v5;
      v33 = __src;
      v34 = a5;
      goto LABEL_50;
    }

    v16 = &__src[v15];
    if (&__src[v15] == a4)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v17 = &__dst[a4] - __src - v9;
      if (v17 < 0x20)
      {
        v18 = *(a1 + 8);
      }

      else
      {
        v18 = *(a1 + 8);
        if ((__dst - __src) >= 0x20)
        {
          v16 += v17 & 0xFFFFFFFFFFFFFFE0;
          v18 = (v9 + (v17 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &__src[v9 + 16 - __dst];
          v21 = v17 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v20;
            *(v19 - 1) = *(v20 - 1);
            *v19 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 32;
          }

          while (v21);
          if (v17 == (v17 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_34;
          }
        }
      }

      do
      {
        v39 = *v16++;
        *v18++ = v39;
      }

      while (v16 != a4);
    }

LABEL_34:
    *(a1 + 8) = v18;
    if (v15 < 1)
    {
      return v5;
    }

    v40 = &__dst[a5];
    v41 = &v18[-a5];
    if (&v18[-a5] >= v9)
    {
      v44 = v18;
    }

    else
    {
      v42 = v9 + a5 - v18;
      v43 = v42 >= 0x20 && a5 > 0x1F;
      v44 = v18;
      if (!v43)
      {
        goto LABEL_56;
      }

      v41 += v42 & 0xFFFFFFFFFFFFFFE0;
      v44 = &v18[v42 & 0xFFFFFFFFFFFFFFE0];
      v45 = v18 + 16;
      v46 = &v18[-a5 + 16];
      v47 = v42 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v48 = *v46;
        *(v45 - 1) = *(v46 - 1);
        *v45 = v48;
        v45 += 2;
        v46 += 2;
        v47 -= 32;
      }

      while (v47);
      if (v42 != (v42 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_56:
        do
        {
          v49 = *v41++;
          *v44++ = v49;
        }

        while (v41 != v9);
      }
    }

    *(a1 + 8) = v44;
    if (v18 != v40)
    {
      v50 = __src;
      memmove(v40, __dst, v18 - v40);
      __src = v50;
    }

    v32 = v5;
    v33 = __src;
    v34 = v9 - v5;
LABEL_50:
    memmove(v32, v33, v34);
    return v5;
  }

  v10 = *a1;
  v11 = v9 - *a1 + a5;
  if (v11 < 0)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = (__dst - v10);
  v13 = v8 - v10;
  if (2 * v13 > v11)
  {
    v11 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    operator new();
  }

  v35 = (__dst - v10);
  memcpy(v12, __src, a5);
  v36 = &v12[a5];
  v37 = v9 - v5;
  memcpy(v36, v5, v9 - v5);
  *(a1 + 8) = v5;
  v38 = &v12[v10 - v5];
  memcpy(v38, v10, v35);
  *a1 = v38;
  *(a1 + 8) = &v36[v37];
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v12;
}

void std::vector<google::protobuf::internal::TailCallTableInfo::AuxEntry>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

char *google::protobuf::internal::RealKeyToVariantKey<google::protobuf::MapKey>::operator()(uint64_t a1, google::protobuf::MapKey *a2)
{
  v2 = *(a2 + 6);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      google::protobuf::MapKey::GetUInt64Value(a2);
      return 0;
    }

    else if (v2 == 7)
    {
      google::protobuf::MapKey::GetBoolValue(a2);
      return 0;
    }

    else
    {
      StringValue = google::protobuf::MapKey::GetStringValue(a2);
      v5 = *(StringValue + 23);
      v6 = v5 < 0;
      if (v5 >= 0)
      {
        v7 = StringValue;
      }

      else
      {
        v7 = *StringValue;
      }

      if (v6)
      {
        v8 = *(StringValue + 1);
      }

      else
      {
        v8 = *(StringValue + 23);
      }

      if (v7)
      {
        return v7;
      }

      else
      {
        return &byte_23CE7F131;
      }
    }
  }

  else if (v2 <= 1)
  {
    if (v2 != 1)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v9, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "MapKey::type MapKey is not initialized. ", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v9, "Call set methods to initialize MapKey.");
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v9);
    }

    google::protobuf::MapKey::GetInt32Value(a2);
    return 0;
  }

  else
  {
    if (v2 == 2)
    {
      google::protobuf::MapKey::GetInt64Value(a2);
    }

    else
    {
      google::protobuf::MapKey::GetUInt32Value(a2);
    }

    return 0;
  }
}

uint64_t google::protobuf::MapKey::type(google::protobuf::MapKey *this)
{
  result = *(this + 6);
  if (!result)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v2, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v2, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v2, "MapKey::type MapKey is not initialized. ", 0x28uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v2, "Call set methods to initialize MapKey.");
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v2);
  }

  return result;
}

google::protobuf::MapKey *google::protobuf::MapKey::GetStringValue(google::protobuf::MapKey *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 != 9)
  {
    if (v2)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v6, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 133);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "MapKey::GetStringValue", 0x16uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, " type does not match\n", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "  Expected : ", 0xDuLL);
      v5 = "string";
      v3 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v6, &v5);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "\n", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "  Actual   : ", 0xDuLL);
      v4 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapKey::type(v1)];
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v3, &v4);
    }

    else
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v6, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "MapKey::type MapKey is not initialized. ", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v6, "Call set methods to initialize MapKey.");
    }

    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v6);
  }

  return this;
}

uint64_t google::protobuf::MapKey::GetInt64Value(google::protobuf::MapKey *this)
{
  v2 = *(this + 6);
  if (v2 != 2)
  {
    if (v2)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 113);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::GetInt64Value", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
      v6 = "int64";
      v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
      v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapKey::type(this)];
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
    }

    else
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::type MapKey is not initialized. ", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "Call set methods to initialize MapKey.");
    }

    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return *this;
}

uint64_t google::protobuf::MapKey::GetInt32Value(google::protobuf::MapKey *this)
{
  v2 = *(this + 6);
  if (v2 != 1)
  {
    if (v2)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 121);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::GetInt32Value", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
      v6 = "int32";
      v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
      v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapKey::type(this)];
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
    }

    else
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::type MapKey is not initialized. ", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "Call set methods to initialize MapKey.");
    }

    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return *this;
}

uint64_t google::protobuf::MapKey::GetUInt64Value(google::protobuf::MapKey *this)
{
  v2 = *(this + 6);
  if (v2 != 4)
  {
    if (v2)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 117);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::GetUInt64Value", 0x16uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
      v6 = "uint64";
      v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
      v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapKey::type(this)];
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
    }

    else
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::type MapKey is not initialized. ", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "Call set methods to initialize MapKey.");
    }

    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return *this;
}

uint64_t google::protobuf::MapKey::GetUInt32Value(google::protobuf::MapKey *this)
{
  v2 = *(this + 6);
  if (v2 != 3)
  {
    if (v2)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 125);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::GetUInt32Value", 0x16uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
      v6 = "uint32";
      v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
      v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapKey::type(this)];
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
    }

    else
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::type MapKey is not initialized. ", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "Call set methods to initialize MapKey.");
    }

    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return *this;
}

uint64_t google::protobuf::MapKey::GetBoolValue(google::protobuf::MapKey *this)
{
  v2 = *(this + 6);
  if (v2 != 7)
  {
    if (v2)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 129);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::GetBoolValue", 0x14uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
      v6 = "BOOL";
      v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
      v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapKey::type(this)];
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
    }

    else
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapKey::type MapKey is not initialized. ", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "Call set methods to initialize MapKey.");
    }

    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return *this;
}

void google::protobuf::internal::MapFieldBase::~MapFieldBase(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    absl::lts_20240722::Mutex::~Mutex((explicit + 23));
    v3 = *(explicit - 1);
    v2 = (explicit - 1);
    if (v3)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v2);
    }

    MEMORY[0x23EED9460](v2, 0x10A0C408EF24B1CLL);
  }
}

atomic_ullong *google::protobuf::internal::MapFieldBase::GetMapImpl(atomic_ullong *a1, int a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  if (a2)
  {
    explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
    if (explicit)
    {
      v5 = explicit - 1;
    }

    else
    {
      v5 = google::protobuf::internal::MapFieldBase::PayloadSlow(a1);
    }

    *(v5 + 32) = 0;
  }

  return a1 + 2;
}

void google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if ((explicit & 1) != 0 && atomic_load_explicit((explicit + 31), memory_order_acquire) == 1)
  {
    v2 = atomic_load_explicit(this + 1, memory_order_acquire);
    if (v2)
    {
      v3 = this;
      v4 = v2 - 1;
      absl::lts_20240722::Mutex::Lock((v2 + 23));
      if (*(v4 + 32) != 1)
      {
LABEL_8:
        absl::lts_20240722::Mutex::Unlock((v4 + 24));
        return;
      }
    }

    else
    {
      v3 = this;
      v4 = google::protobuf::internal::MapFieldBase::PayloadSlow(this);
      absl::lts_20240722::Mutex::Lock((v4 + 24));
      if (*(v4 + 32) != 1)
      {
        goto LABEL_8;
      }
    }

    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedFieldNoLock(v3);
    atomic_store(2u, (v4 + 32));
    goto LABEL_8;
  }
}

uint64_t google::protobuf::internal::MapFieldBase::SetMapDirty(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    result = explicit - 1;
    *(explicit + 31) = 0;
  }

  else
  {
    result = google::protobuf::internal::MapFieldBase::PayloadSlow(this);
    *(result + 32) = 0;
  }

  return result;
}

uint64_t google::protobuf::internal::MapFieldBase::MapBegin(uint64_t a1, uint64_t a2)
{
  v4 = (**a1)(a1, 0);
  v5 = *(v4 + 12);
  if (v5 == *(v4 + 4))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *(*(v4 + 16) + 8 * v5);
    if (v6)
    {
      v6 = *(**(v6 - 1) + 32);
    }
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v7 = *(*a1 + 24);

  return v7(a2);
}

void google::protobuf::internal::MapFieldBase::MapEnd(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t google::protobuf::internal::MapFieldBase::IncreaseIterator(uint64_t a1, uint64_t **a2)
{
  v2 = **a2;
  if (v2)
  {
    *a2 = v2;
    return (*(*a1 + 24))(a2);
  }

  else
  {
    v4 = (*(a2 + 4) + 1);
    v5 = a2[1];
    v6 = *(v5 + 1);
    if (v6 <= v4)
    {
LABEL_7:
      *a2 = 0;
      *(a2 + 4) = 0;
      return (*(*a1 + 24))(a2);
    }

    else
    {
      v7 = v5[2];
      while (1)
      {
        v8 = *(v7 + 8 * v4);
        if (v8)
        {
          break;
        }

        if (v6 == ++v4)
        {
          goto LABEL_7;
        }
      }

      *(a2 + 4) = v4;
      if (v8)
      {
        *a2 = *(**(v8 - 1) + 32);
      }

      else
      {
        *a2 = v8;
      }

      return (*(*a1 + 24))(a2);
    }
  }
}

uint64_t google::protobuf::internal::MapFieldBase::GetRepeatedField(atomic_ullong *this)
{
  google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(this);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    return explicit - 1;
  }

  return google::protobuf::internal::MapFieldBase::PayloadSlow(this);
}

void google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if ((explicit & 1) == 0 || !atomic_load_explicit((explicit + 31), memory_order_acquire))
  {
    v3 = atomic_load_explicit(this + 1, memory_order_acquire);
    if (v3)
    {
      v4 = v3 - 1;
      absl::lts_20240722::Mutex::Lock((v3 + 23));
      if (!*(v4 + 32))
      {
LABEL_7:
        google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMapNoLock(this);
        atomic_store(2u, (v4 + 32));
      }
    }

    else
    {
      v4 = google::protobuf::internal::MapFieldBase::PayloadSlow(this);
      absl::lts_20240722::Mutex::Lock((v4 + 24));
      if (!*(v4 + 32))
      {
        goto LABEL_7;
      }
    }

    absl::lts_20240722::Mutex::Unlock((v4 + 24));
  }
}

uint64_t google::protobuf::internal::MapFieldBase::MutableRepeatedField(atomic_ullong *this)
{
  google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(this);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    *(explicit + 31) = 1;
    v3 = atomic_load_explicit(this + 1, memory_order_acquire);
    if (v3)
    {
      return v3 - 1;
    }
  }

  else
  {
    *(google::protobuf::internal::MapFieldBase::PayloadSlow(this) + 32) = 1;
    v3 = atomic_load_explicit(this + 1, memory_order_acquire);
    if (v3)
    {
      return v3 - 1;
    }
  }

  return google::protobuf::internal::MapFieldBase::PayloadSlow(this);
}

uint64_t google::protobuf::internal::MapFieldBase::PayloadSlow(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    return explicit - 1;
  }

  if (!explicit)
  {
    operator new();
  }

  AlignedWithCleanup = google::protobuf::Arena::AllocateAlignedWithCleanup(explicit, 0x28uLL, 8uLL, google::protobuf::internal::cleanup::arena_destruct_object<google::protobuf::internal::MapFieldBase::ReflectionPayload>);
  *AlignedWithCleanup = 0;
  *(AlignedWithCleanup + 8) = 0;
  *(AlignedWithCleanup + 16) = explicit;
  *(AlignedWithCleanup + 24) = 0;
  *(AlignedWithCleanup + 32) = 0;
  v4 = AlignedWithCleanup + 1;
  v5 = explicit;
  atomic_compare_exchange_strong(this + 1, &v5, AlignedWithCleanup + 1);
  if (v5 != explicit)
  {
    v4 = v5;
  }

  return v4 - 1;
}

void google::protobuf::internal::MapFieldBase::SwapImpl(atomic_ullong *this, atomic_ullong *a2, google::protobuf::internal::MapFieldBase *a3)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    explicit = *(explicit + 15);
  }

  v4 = atomic_load_explicit(a2 + 1, memory_order_acquire);
  if (v4)
  {
    v4 = *(v4 + 15);
  }

  if (explicit == v4)
  {
    v13 = a2[1];
    a2[1] = this[1];
    this[1] = v13;
  }

  else
  {
    v5 = atomic_load_explicit(this + 1, memory_order_acquire);
    if (v5)
    {
      v6 = v5 - 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = atomic_load_explicit(a2 + 1, memory_order_acquire);
    if (v7)
    {
      v8 = v7 - 1;
    }

    else
    {
      v8 = 0;
    }

    if (v6 | v8)
    {
      if (!v6)
      {
        v9 = atomic_load_explicit(this + 1, memory_order_acquire);
        if (v9)
        {
          v6 = v9 - 1;
          if (!v8)
          {
LABEL_17:
            v12 = atomic_load_explicit(a2 + 1, memory_order_acquire);
            if (v12)
            {
              v8 = v12 - 1;
            }

            else
            {
              v8 = google::protobuf::internal::MapFieldBase::PayloadSlow(a2);
            }
          }

LABEL_24:
          google::protobuf::RepeatedPtrField<google::protobuf::Message>::Swap(v6, v8);
          v14 = *(v8 + 32);
          *(v8 + 32) = *(v6 + 32);
          *(v6 + 32) = v14;
          return;
        }

        v10 = a2;
        v11 = google::protobuf::internal::MapFieldBase::PayloadSlow(this);
        a2 = v10;
        v6 = v11;
      }

      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }
}

uint64_t google::protobuf::internal::MapFieldBase::InternalSwap(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = *(result + 8);
  *(result + 8) = v2;
  return result;
}

void google::protobuf::RepeatedPtrField<google::protobuf::Message>::Swap(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (this != a2)
  {
    if (*(this + 2) == *(a2 + 2))
    {
      v2 = *this;
      *this = *a2;
      *a2 = v2;
      v3 = *(this + 1);
      *(this + 1) = *(a2 + 1);
      *(a2 + 1) = v3;
      v4 = *(this + 2);
      *(this + 2) = *(a2 + 2);
      *(a2 + 2) = v4;
      v5 = *(this + 3);
      *(this + 3) = *(a2 + 3);
      *(a2 + 3) = v5;
      v6 = *(this + 4);
      *(this + 4) = *(a2 + 4);
      *(a2 + 4) = v6;
      v7 = *(this + 5);
      *(this + 5) = *(a2 + 5);
      *(a2 + 5) = v7;
      v8 = *(this + 6);
      *(this + 6) = *(a2 + 6);
      *(a2 + 6) = v8;
      v9 = *(this + 7);
      *(this + 7) = *(a2 + 7);
      *(a2 + 7) = v9;
      v10 = *(this + 8);
      *(this + 8) = *(a2 + 8);
      *(a2 + 8) = v10;
      v11 = *(this + 9);
      *(this + 9) = *(a2 + 9);
      *(a2 + 9) = v11;
      v12 = *(this + 10);
      *(this + 10) = *(a2 + 10);
      *(a2 + 10) = v12;
      v13 = *(this + 11);
      *(this + 11) = *(a2 + 11);
      *(a2 + 11) = v13;
      v14 = *(this + 12);
      *(this + 12) = *(a2 + 12);
      *(a2 + 12) = v14;
      v15 = *(this + 13);
      *(this + 13) = *(a2 + 13);
      *(a2 + 13) = v15;
      v16 = *(this + 14);
      *(this + 14) = *(a2 + 14);
      *(a2 + 14) = v16;
      v17 = *(this + 15);
      *(this + 15) = *(a2 + 15);
      *(a2 + 15) = v17;
    }

    else
    {
      google::protobuf::internal::RepeatedPtrFieldBase::SwapFallback<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(this, a2);
    }
  }
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfLong(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if ((explicit & 1) == 0)
  {
    return 0;
  }

  absl::lts_20240722::Mutex::Lock((explicit + 23));
  v4 = (*(*this + 72))(this);
  absl::lts_20240722::Mutex::Unlock((explicit + 23));
  return v4;
}

void google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMapNoLock(atomic_ullong *this)
{
  v85[2] = *MEMORY[0x277D85DE8];
  v2 = this + 1;
  v3 = (*(*this + 80))(this);
  (*(*v3 + 80))(v3);
  v5 = v4;
  v6 = (*(*v3 + 80))(v3);
  v7 = google::protobuf::Descriptor::map_key(v6);
  v8 = google::protobuf::Descriptor::map_value(v6);
  explicit = atomic_load_explicit(v2, memory_order_acquire);
  if ((explicit & 1) == 0)
  {
    v10 = google::protobuf::internal::MapFieldBase::PayloadSlow(this);
    if (*(v10 + 8) < 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = explicit - 1;
  if (*(explicit + 7) >= 1)
  {
LABEL_5:
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v10);
  }

LABEL_6:
  google::protobuf::MapIterator::MapIterator(&v79, this, v6);
  google::protobuf::MapIterator::MapIterator(v74, this, v6);
  v11 = *(this + 7);
  if (v11 == *(this + 5))
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v12 = *(this[4] + 8 * v11);
    if (v12)
    {
      v12 = *(**(v12 - 1) + 32);
    }
  }

  v79 = v12;
  v80 = (this + 2);
  v81 = v11;
  (*(*this + 24))(&v79);
  v74[0] = 0;
  v74[1] = 0;
  v75 = 0;
  while (v79 != v74[0])
  {
    v14 = atomic_load_explicit(this + 1, memory_order_acquire);
    if (v14)
    {
      v14 = *(v14 + 15);
    }

    v15 = (*(*v3 + 16))(v3, v14);
    Arena = google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::GetArena(v15);
    v17 = *(v10 + 16);
    if (v17 != Arena)
    {
LABEL_18:
      google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v10, v15, Arena, v17);
      goto LABEL_19;
    }

    v24 = *v10;
    if ((*v10 & 1) == 0)
    {
      if (v24)
      {
        goto LABEL_18;
      }

      v25 = *(v10 + 8);
      if ((v25 & 0x80000000) == 0)
      {
        v26 = v10;
        goto LABEL_81;
      }

      v30 = 0;
      v33 = (v10 + 8 * v25);
      v26 = v10;
      goto LABEL_80;
    }

    v32 = *(v24 - 1);
    v31 = v24 - 1;
    v30 = v32;
    if (v32 > *(v10 + 12))
    {
      goto LABEL_18;
    }

    v26 = v31 + 8;
    v25 = *(v10 + 8);
    if (v25 < v30)
    {
      v33 = (v26 + 8 * v25);
LABEL_80:
      *(v26 + 8 * v30) = *v33;
    }

LABEL_81:
    *(v10 + 8) = v25 + 1;
    *(v26 + 8 * v25) = v15;
    if (*v10)
    {
      ++*(*v10 - 1);
    }

LABEL_19:
    v18 = *(v7 + 24);
    if (v18)
    {
      v72 = v7;
      v73 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v18, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v18, 1, &v73, &v72);
      }
    }

    v19 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v7 + 2)];
    if (v19 > 3)
    {
      if (v19 == 4)
      {
        UInt64Value = google::protobuf::MapKey::GetUInt64Value(v82);
        google::protobuf::Reflection::SetUInt64(v5, v15, v7, UInt64Value, v37);
      }

      else if (v19 == 7)
      {
        BoolValue = google::protobuf::MapKey::GetBoolValue(v82);
        google::protobuf::Reflection::SetBool(v5, v15, v7, BoolValue, v23);
      }

      else
      {
        StringValue = google::protobuf::MapKey::GetStringValue(v82);
        if (*(StringValue + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v71, *StringValue, *(StringValue + 1));
        }

        else
        {
          v42 = *StringValue;
          v71.__r_.__value_.__r.__words[2] = *(StringValue + 2);
          *&v71.__r_.__value_.__l.__data_ = v42;
        }

        google::protobuf::Reflection::SetString(v5, v15, v7, &v71, v41);
        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
          v43 = *(v8 + 24);
          if (!v43)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }
      }
    }

    else if (v19 == 1)
    {
      Int32Value = google::protobuf::MapKey::GetInt32Value(v82);
      google::protobuf::Reflection::SetInt32(v5, v15, v7, Int32Value, v35);
    }

    else if (v19 == 2)
    {
      Int64Value = google::protobuf::MapKey::GetInt64Value(v82);
      google::protobuf::Reflection::SetInt64(v5, v15, v7, Int64Value, v21);
    }

    else
    {
      UInt32Value = google::protobuf::MapKey::GetUInt32Value(v82);
      google::protobuf::Reflection::SetUInt32(v5, v15, v7, UInt32Value, v39);
    }

    v43 = *(v8 + 24);
    if (!v43)
    {
      goto LABEL_52;
    }

LABEL_50:
    v72 = v8;
    v73 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v43, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v43, 1, &v73, &v72);
    }

LABEL_52:
    v44 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 2)];
    if (v44 > 5)
    {
      if (v44 <= 7)
      {
        if (v44 == 6)
        {
          FloatValue = google::protobuf::MapValueConstRef::GetFloatValue(v85);
          google::protobuf::Reflection::SetFloat(v5, v15, v8, FloatValue, v58, v59);
        }

        else
        {
          v53 = google::protobuf::MapValueConstRef::GetBoolValue(v85);
          google::protobuf::Reflection::SetBool(v5, v15, v8, v53, v54);
        }
      }

      else
      {
        switch(v44)
        {
          case 8:
            EnumValue = google::protobuf::MapValueConstRef::GetEnumValue(v85);
            google::protobuf::Reflection::SetEnumValue(v5, v15, v8, EnumValue, v63);
            break;
          case 9:
            v66 = google::protobuf::MapValueConstRef::GetStringValue(v85);
            if (*(v66 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *v66, *(v66 + 8));
            }

            else
            {
              v68 = *v66;
              __p.__r_.__value_.__r.__words[2] = *(v66 + 16);
              *&__p.__r_.__value_.__l.__data_ = v68;
            }

            google::protobuf::Reflection::SetString(v5, v15, v8, &__p, v67);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            break;
          case 10:
            MessageValue = google::protobuf::MapValueConstRef::GetMessageValue(v85);
            v50 = google::protobuf::Reflection::MutableMessage(v5, v15, v8, 0, v49);
            google::protobuf::Message::CopyFrom(v50, MessageValue);
            break;
        }
      }
    }

    else if (v44 <= 2)
    {
      if (v44 == 1)
      {
        v55 = google::protobuf::MapValueConstRef::GetInt32Value(v85);
        google::protobuf::Reflection::SetInt32(v5, v15, v8, v55, v56);
      }

      else if (v44 == 2)
      {
        v51 = google::protobuf::MapValueConstRef::GetInt64Value(v85);
        google::protobuf::Reflection::SetInt64(v5, v15, v8, v51, v52);
      }
    }

    else if (v44 == 3)
    {
      v60 = google::protobuf::MapValueConstRef::GetUInt32Value(v85);
      google::protobuf::Reflection::SetUInt32(v5, v15, v8, v60, v61);
    }

    else if (v44 == 4)
    {
      v64 = google::protobuf::MapValueConstRef::GetUInt64Value(v85);
      google::protobuf::Reflection::SetUInt64(v5, v15, v8, v64, v65);
    }

    else
    {
      DoubleValue = google::protobuf::MapValueConstRef::GetDoubleValue(v85);
      google::protobuf::Reflection::SetDouble(v5, v15, v8, DoubleValue, v46, v47);
    }

    v13 = *v79;
    if (*v79)
    {
      goto LABEL_12;
    }

    v27 = v81 + 1;
    v28 = *(v80 + 1);
    if (v28 <= v27)
    {
LABEL_36:
      v79 = 0;
      v81 = 0;
    }

    else
    {
      while (1)
      {
        v29 = *(*(v80 + 2) + 8 * v27);
        if (v29)
        {
          break;
        }

        if (v28 == ++v27)
        {
          goto LABEL_36;
        }
      }

      v81 = v27;
      if (v29)
      {
        v13 = *(**(v29 - 1) + 32);
LABEL_12:
        v79 = v13;
        goto LABEL_13;
      }

      v79 = v29;
    }

LABEL_13:
    (*(*this + 24))(&v79);
  }

  if (v78 == 9 && v77 < 0)
  {
    operator delete(v76);
  }

  if (v84 == 9 && v83 < 0)
  {
    operator delete(v82[0]);
  }

  v69 = *MEMORY[0x277D85DE8];
}

void sub_23CDE2424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, int a48)
{
  if (a35 == 9 && a34 < 0)
  {
    operator delete(__p);
  }

  if (a48 == 9 && a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::MapValueConstRef::GetStringValue(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || (result = *this) == 0)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 9)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 773);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetStringValue", 0x20uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "string";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return result;
}

uint64_t google::protobuf::MapValueConstRef::GetInt64Value(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 2)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 745);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetInt64Value", 0x1FuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "int64";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return **this;
}

uint64_t google::protobuf::MapValueConstRef::GetInt32Value(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 1)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 755);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetInt32Value", 0x1FuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "int32";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return **this;
}

uint64_t google::protobuf::MapValueConstRef::GetUInt64Value(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 4)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 750);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetUInt64Value", 0x20uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "uint64";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return **this;
}

uint64_t google::protobuf::MapValueConstRef::GetUInt32Value(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 3)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 760);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetUInt32Value", 0x20uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "uint32";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return **this;
}

uint64_t google::protobuf::MapValueConstRef::GetBoolValue(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 7)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 764);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetBoolValue", 0x1EuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "BOOL";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return **this;
}

double google::protobuf::MapValueConstRef::GetDoubleValue(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 5)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 783);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetDoubleValue", 0x20uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "double";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return **this;
}

float google::protobuf::MapValueConstRef::GetFloatValue(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 6)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 778);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetFloatValue", 0x1FuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "float";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return **this;
}

uint64_t google::protobuf::MapValueConstRef::GetEnumValue(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || !*this)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 8)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 768);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetEnumValue", 0x1EuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "enum";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return **this;
}

uint64_t google::protobuf::MapValueConstRef::GetMessageValue(google::protobuf::MapValueConstRef *this)
{
  v1 = *(this + 2);
  if (!v1 || (result = *this) == 0)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v1 != 10)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 789);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueConstRef::GetMessageValue", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "message";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(this)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  return result;
}

void google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedFieldNoLock(atomic_ullong *this)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = this + 1;
  (*(*this + 40))(this);
  explicit = atomic_load_explicit(v2, memory_order_acquire);
  if (explicit)
  {
    v4 = explicit - 1;
    if (!*(explicit + 7))
    {
      goto LABEL_90;
    }
  }

  else
  {
    v4 = google::protobuf::internal::MapFieldBase::PayloadSlow(this);
    if (!*(v4 + 8))
    {
      goto LABEL_90;
    }
  }

  if (*v4)
  {
    v5 = (*v4 + 7);
  }

  else
  {
    v5 = v4;
  }

  v6 = *v5;
  (*(**v5 + 80))(*v5);
  v8 = v7;
  v9 = (*(*v6 + 80))(v6);
  v10 = google::protobuf::Descriptor::map_key(v9);
  v11 = google::protobuf::Descriptor::map_value(v9);
  if (*v4)
  {
    v14 = (*v4 + 7);
  }

  else
  {
    v14 = v4;
  }

  v15 = *(v4 + 8);
  if (v15)
  {
    v16 = v11;
    v17 = 8 * v15;
    while (1)
    {
      v18 = *v14;
      v52 = 0;
      v19 = *(v10 + 24);
      if (v19)
      {
        v46.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v47 = v10;
        if (atomic_load_explicit(v19, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v19, 1, &v46, &v47);
        }
      }

      v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v10 + 2)];
      if (v20 > 3)
      {
        if (v20 != 4)
        {
          if (v20 == 7)
          {
            Bool = google::protobuf::Reflection::GetBool(v8, v18, v10, v12, v13);
            if (v52 != 7)
            {
              if (v52 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                v25 = Bool;
                operator delete(__p.__r_.__value_.__l.__data_);
                Bool = v25;
              }

              v52 = 7;
            }

            __p.__r_.__value_.__s.__data_[0] = Bool;
            v47 = 0;
            v48 = 0;
            v26 = *(v16 + 24);
            if (!v26)
            {
              goto LABEL_62;
            }
          }

          else
          {
            google::protobuf::Reflection::GetString(v10, v8, v18, v13, &v49);
            if (v52 == 9)
            {
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v52 = 9;
            }

            __p = v49;
            *(&v49.__r_.__value_.__s + 23) = 0;
            v49.__r_.__value_.__s.__data_[0] = 0;
            v47 = 0;
            v48 = 0;
            v26 = *(v16 + 24);
            if (!v26)
            {
              goto LABEL_62;
            }
          }

LABEL_60:
          v46.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v50 = v16;
          if (atomic_load_explicit(v26, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v26, 1, &v46, &v50);
          }

          goto LABEL_62;
        }

        UInt64 = google::protobuf::Reflection::GetUInt64(v8, v18, v10, v12, v13);
        if (v52 != 4)
        {
          if (v52 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            v30 = UInt64;
            operator delete(__p.__r_.__value_.__l.__data_);
            UInt64 = v30;
          }

          v23 = 4;
LABEL_44:
          v52 = v23;
        }

LABEL_45:
        __p.__r_.__value_.__r.__words[0] = UInt64;
        v47 = 0;
        v48 = 0;
        v26 = *(v16 + 24);
        if (v26)
        {
          goto LABEL_60;
        }

        goto LABEL_62;
      }

      if (v20 == 1)
      {
        break;
      }

      if (v20 == 2)
      {
        UInt64 = google::protobuf::Reflection::GetInt64(v8, v18, v10, v12, v13);
        if (v52 != 2)
        {
          if (v52 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            v22 = UInt64;
            operator delete(__p.__r_.__value_.__l.__data_);
            UInt64 = v22;
          }

          v23 = 2;
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      UInt32 = google::protobuf::Reflection::GetUInt32(v8, v18, v10, v12, v13);
      if (v52 != 3)
      {
        if (v52 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v31 = UInt32;
          operator delete(__p.__r_.__value_.__l.__data_);
          UInt32 = v31;
        }

        v29 = 3;
LABEL_52:
        v52 = v29;
      }

LABEL_53:
      LODWORD(__p.__r_.__value_.__l.__data_) = UInt32;
      v47 = 0;
      v48 = 0;
      v26 = *(v16 + 24);
      if (v26)
      {
        goto LABEL_60;
      }

LABEL_62:
      v48 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v16 + 2)];
      (*(*this + 32))(this, &__p, &v47);
      v32 = *(v16 + 24);
      if (v32)
      {
        v46.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v50 = v16;
        if (atomic_load_explicit(v32, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v32, 1, &v46, &v50);
        }
      }

      v33 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v16 + 2)];
      if (v33 > 5)
      {
        if (v33 <= 7)
        {
          if (v33 == 6)
          {
            Float = google::protobuf::Reflection::GetFloat(v8, v18, v16, v12, v13);
            google::protobuf::MapValueRef::SetFloatValue(&v47, Float);
          }

          else
          {
            v39 = google::protobuf::Reflection::GetBool(v8, v18, v16, v12, v13);
            google::protobuf::MapValueRef::SetBoolValue(&v47, v39);
          }
        }

        else
        {
          switch(v33)
          {
            case 8:
              EnumValue = google::protobuf::Reflection::GetEnumValue(v8, v18, v16, v12, v13);
              google::protobuf::MapValueRef::SetEnumValue(&v47, EnumValue);
              break;
            case 9:
              google::protobuf::Reflection::GetString(v16, v8, v18, v13, &v46);
              google::protobuf::MapValueRef::SetStringValue(&v47, &v46);
              if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v46.__r_.__value_.__l.__data_);
              }

              break;
            case 10:
              v35 = google::protobuf::MapValueRef::MutableMessageValue(&v47);
              Message = google::protobuf::Reflection::GetMessage(v8, v18, v16, 0, v36);
              google::protobuf::Message::CopyFrom(v35, Message);
              break;
          }
        }
      }

      else if (v33 <= 2)
      {
        if (v33 == 1)
        {
          Int32 = google::protobuf::Reflection::GetInt32(v8, v18, v16, v12, v13);
          google::protobuf::MapValueRef::SetInt32Value(&v47, Int32);
        }

        else if (v33 == 2)
        {
          Int64 = google::protobuf::Reflection::GetInt64(v8, v18, v16, v12, v13);
          google::protobuf::MapValueRef::SetInt64Value(&v47, Int64);
        }
      }

      else if (v33 == 3)
      {
        v42 = google::protobuf::Reflection::GetUInt32(v8, v18, v16, v12, v13);
        google::protobuf::MapValueRef::SetUInt32Value(&v47, v42);
      }

      else if (v33 == 4)
      {
        v44 = google::protobuf::Reflection::GetUInt64(v8, v18, v16, v12, v13);
        google::protobuf::MapValueRef::SetUInt64Value(&v47, v44);
      }

      else
      {
        Double = google::protobuf::Reflection::GetDouble(v8, v18, v16, v12, v13);
        google::protobuf::MapValueRef::SetDoubleValue(&v47, Double);
      }

      if (v52 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v14;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_90;
      }
    }

    UInt32 = google::protobuf::Reflection::GetInt32(v8, v18, v10, v12, v13);
    if (v52 == 1)
    {
      goto LABEL_53;
    }

    if (v52 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v28 = UInt32;
      operator delete(__p.__r_.__value_.__l.__data_);
      UInt32 = v28;
    }

    v29 = 1;
    goto LABEL_52;
  }

LABEL_90:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_23CDE39A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, int a28)
{
  if (a28 == 9 && a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::MapValueConstRef *google::protobuf::MapValueRef::SetInt32Value(google::protobuf::MapValueConstRef *this, int a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = this, !*this))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v2 != 1)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 848);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::SetInt32Value", 0x1AuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "int32";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(v3)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  **this = a2;
  return this;
}

google::protobuf::MapValueConstRef *google::protobuf::MapValueRef::SetInt64Value(google::protobuf::MapValueConstRef *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = this, !*this))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v2 != 2)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 840);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::SetInt64Value", 0x1AuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "int64";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(v3)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  **this = a2;
  return this;
}

google::protobuf::MapValueConstRef *google::protobuf::MapValueRef::SetUInt32Value(google::protobuf::MapValueConstRef *this, int a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = this, !*this))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v2 != 3)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 852);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::SetUInt32Value", 0x1BuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "uint32";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(v3)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  **this = a2;
  return this;
}

google::protobuf::MapValueConstRef *google::protobuf::MapValueRef::SetUInt64Value(google::protobuf::MapValueConstRef *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = this, !*this))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v2 != 4)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 844);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::SetUInt64Value", 0x1BuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "uint64";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(v3)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  **this = a2;
  return this;
}

google::protobuf::MapValueConstRef *google::protobuf::MapValueRef::SetDoubleValue(google::protobuf::MapValueConstRef *this, double a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = this, !*this))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v2 != 5)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 873);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::SetDoubleValue", 0x1BuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "double";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(v3)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  **this = a2;
  return this;
}

google::protobuf::MapValueConstRef *google::protobuf::MapValueRef::SetFloatValue(google::protobuf::MapValueConstRef *this, float a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = this, !*this))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v2 != 6)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 869);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::SetFloatValue", 0x1AuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "float";
    v4 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v7, &v6);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "  Actual   : ", 0xDuLL);
    v5 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(v3)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v4, &v5);
LABEL_6:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  **this = a2;
  return this;
}
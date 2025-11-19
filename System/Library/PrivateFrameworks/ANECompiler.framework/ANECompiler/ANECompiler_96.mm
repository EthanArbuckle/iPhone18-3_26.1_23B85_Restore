google::protobuf::MapValueConstRef *google::protobuf::MapValueRef::SetBoolValue(google::protobuf::MapValueConstRef *this, char a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = this, !*this))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v2 != 7)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 856);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::SetBoolValue", 0x19uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "BOOL";
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

std::string *google::protobuf::MapValueRef::SetStringValue(google::protobuf::MapValueConstRef *a1, const std::string *a2)
{
  v2 = *(a1 + 2);
  if (!v2 || (v4 = *a1) == 0)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v9, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v9, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_8;
  }

  if (v2 != 9)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v9, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 865);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "MapValueRef::SetStringValue", 0x1BuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "  Expected : ", 0xDuLL);
    v8 = "string";
    v6 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v9, &v8);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "\n", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "  Actual   : ", 0xDuLL);
    v7 = (&google::protobuf::FieldDescriptor::kCppTypeToName)[google::protobuf::MapValueConstRef::type(a1)];
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v6, &v7);
LABEL_8:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v9);
  }

  return std::string::operator=(v4, a2);
}

google::protobuf::MapValueConstRef *google::protobuf::MapValueRef::SetEnumValue(google::protobuf::MapValueConstRef *this, int a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = this, !*this))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v7, "MapValueConstRef::type MapValueConstRef is not initialized.");
    goto LABEL_6;
  }

  if (v2 != 8)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 861);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "MapValueRef::SetEnumValue", 0x19uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " type does not match\n", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "  Expected : ", 0xDuLL);
    v6 = "enum";
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

uint64_t google::protobuf::internal::MapFieldBase::Clear(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if ((explicit & 1) != 0 && *(explicit + 7) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((explicit - 1));
  }

  (*(*this + 40))(this);
  v3 = atomic_load_explicit(this + 1, memory_order_acquire);
  if (v3)
  {
    result = v3 - 1;
    *(v3 + 31) = 0;
  }

  else
  {
    result = google::protobuf::internal::MapFieldBase::PayloadSlow(this);
    *(result + 32) = 0;
  }

  return result;
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(uint64_t a1, uint64_t a2)
{
  *a1 = google::protobuf::internal::DynamicMapField::kVTable;
  *(a1 + 8) = 0;
  *&result = 0x100000000;
  *(a1 + 16) = xmmword_23CE389F0;
  *(a1 + 32) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  return result;
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = google::protobuf::internal::DynamicMapField::kVTable;
  *(a1 + 8) = a3;
  *&result = 0x100000000;
  *(a1 + 16) = xmmword_23CE389F0;
  *(a1 + 32) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 40) = a3;
  *(a1 + 48) = a2;
  return result;
}

BOOL google::protobuf::internal::TypeDefinedMapFieldBase<google::protobuf::MapKey,google::protobuf::MapValueRef>::LookupMapValueImpl(atomic_ullong *a1, google::protobuf::MapKey *a2, uint64_t a3)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  Helper = google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper((a1 + 2), a2, 0);
  if (a3 && Helper)
  {
    *(a3 + 8) = *(Helper + 48);
    *a3 = *(Helper + 40);
  }

  return Helper != 0;
}

BOOL google::protobuf::internal::TypeDefinedMapFieldBase<google::protobuf::MapKey,google::protobuf::MapValueRef>::DeleteMapValueImpl(atomic_ullong *a1, google::protobuf::MapKey *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
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
  Helper = google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper((a1 + 2), a2, 0);
  if (!Helper)
  {
    return Helper != 0;
  }

  google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::erase_no_destroy((a1 + 2), v6, Helper);
  if (a1[5])
  {
    return Helper != 0;
  }

  if (*(Helper + 32) == 9 && *(Helper + 31) < 0)
  {
    operator delete(*(Helper + 8));
    if (a1[5])
    {
      return Helper != 0;
    }
  }

  operator delete(Helper);
  return Helper != 0;
}

std::string *google::protobuf::internal::TypeDefinedMapFieldBase<google::protobuf::MapKey,google::protobuf::MapValueRef>::SetMapIteratorValueImpl(std::string *result)
{
  v1 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v2 = result;
    result = google::protobuf::MapKey::CopyFrom((result + 32), (v1 + 8));
    LODWORD(v2[3].__r_.__value_.__l.__data_) = *(v1 + 48);
    v2[2].__r_.__value_.__r.__words[2] = *(v1 + 40);
  }

  return result;
}

BOOL google::protobuf::internal::DynamicMapField::InsertOrLookupMapValueNoSyncImpl(google::protobuf::internal::DynamicMapField *this, google::protobuf::internal::MapFieldBase *a2, const google::protobuf::MapKey *a3, google::protobuf::MapValueRef *a4)
{
  Helper = google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper(this + 16, a2, 0);
  v8 = Helper;
  if (Helper)
  {
    v9 = (Helper + 40);
    v10 = Helper;
  }

  else
  {
    google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::TryEmplaceInternal<google::protobuf::MapKey const&>(this + 16, a2, v12);
    v10 = v12[0];
    v9 = (v12[0] + 40);
    google::protobuf::internal::DynamicMapField::AllocateMapValue(this, (v12[0] + 40));
  }

  result = v8 == 0;
  *(a3 + 2) = *(v10 + 48);
  *a3 = *v9;
  return result;
}

void google::protobuf::internal::DynamicMapField::ClearMapNoSyncImpl(atomic_ullong *this, google::protobuf::internal::MapFieldBase *a2)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    explicit = *(explicit + 15);
  }

  if (!explicit)
  {
    LODWORD(v4) = *(this + 7);
    if (v4 != *(this + 5))
    {
      v5 = *(this[4] + 8 * v4);
      if (v5)
      {
        v5 = *(**(v5 - 1) + 32);
      }

      do
      {
        google::protobuf::MapValueRef::DeleteData((v5 + 40));
        v5 = *v5;
        if (!v5)
        {
          v4 = (v4 + 1);
          v6 = *(this + 5);
          if (v6 <= v4)
          {
            break;
          }

          while (1)
          {
            v5 = *(this[4] + 8 * v4);
            if (v5)
            {
              break;
            }

            if (v6 == ++v4)
            {
              goto LABEL_5;
            }
          }

          if (v5)
          {
            v5 = *(**(v5 - 1) + 32);
          }
        }
      }

      while (v5);
    }
  }

LABEL_5:
  if (*(this + 5) != 1)
  {

    google::protobuf::internal::UntypedMapBase::ClearTable((this + 2), 0x10800380028, google::protobuf::internal::UntypedMapBase::DestroyNode<google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::Node>);
  }
}

void google::protobuf::internal::DynamicMapField::MergeFromImpl(atomic_ullong *this, google::protobuf::internal::MapFieldBase *a2, const google::protobuf::internal::MapFieldBase *a3)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    *(explicit + 31) = 0;
    LODWORD(v6) = *(a2 + 7);
    if (v6 != *(a2 + 5))
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(google::protobuf::internal::MapFieldBase::PayloadSlow(this) + 32) = 0;
    LODWORD(v6) = *(a2 + 7);
    if (v6 != *(a2 + 5))
    {
LABEL_6:
      v7 = *(*(a2 + 4) + 8 * v6);
      if (v7)
      {
        v7 = *(**(v7 - 1) + 32);
      }

      do
      {
        Helper = google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper((this + 2), (v7 + 1), 0);
        if (Helper)
        {
          v9 = (Helper + 40);
        }

        else
        {
          google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::TryEmplaceInternal<google::protobuf::MapKey const&>((this + 2), (v7 + 1), v27);
          v9 = (v27[0] + 40);
          google::protobuf::internal::DynamicMapField::AllocateMapValue(this, (v27[0] + 40));
        }

        v10 = (*(*this[6] + 80))(this[6]);
        v11 = google::protobuf::Descriptor::map_value(v10);
        v12 = *(v11 + 24);
        if (v12 && (v27[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v28 = v11, atomic_load_explicit(v12, memory_order_acquire) != 221))
        {
          v19 = v11;
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, v27, &v28);
          v13 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v19 + 2)];
          if (v13 <= 5)
          {
LABEL_17:
            if (v13 <= 2)
            {
              if (v13 == 1)
              {
                Int32Value = google::protobuf::MapValueConstRef::GetInt32Value((v7 + 5));
                google::protobuf::MapValueRef::SetInt32Value(v9, Int32Value);
                v7 = *v7;
                if (v7)
                {
                  continue;
                }

                goto LABEL_46;
              }

              if (v13 == 2)
              {
                Int64Value = google::protobuf::MapValueConstRef::GetInt64Value((v7 + 5));
                google::protobuf::MapValueRef::SetInt64Value(v9, Int64Value);
                v7 = *v7;
                if (v7)
                {
                  continue;
                }

                goto LABEL_46;
              }

              goto LABEL_45;
            }

            if (v13 == 3)
            {
              UInt32Value = google::protobuf::MapValueConstRef::GetUInt32Value((v7 + 5));
              google::protobuf::MapValueRef::SetUInt32Value(v9, UInt32Value);
              v7 = *v7;
              if (v7)
              {
                continue;
              }
            }

            else if (v13 == 4)
            {
              UInt64Value = google::protobuf::MapValueConstRef::GetUInt64Value((v7 + 5));
              google::protobuf::MapValueRef::SetUInt64Value(v9, UInt64Value);
              v7 = *v7;
              if (v7)
              {
                continue;
              }
            }

            else
            {
              DoubleValue = google::protobuf::MapValueConstRef::GetDoubleValue((v7 + 5));
              google::protobuf::MapValueRef::SetDoubleValue(v9, DoubleValue);
              v7 = *v7;
              if (v7)
              {
                continue;
              }
            }

            goto LABEL_46;
          }
        }

        else
        {
          v13 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v11 + 2)];
          if (v13 <= 5)
          {
            goto LABEL_17;
          }
        }

        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            FloatValue = google::protobuf::MapValueConstRef::GetFloatValue((v7 + 5));
            google::protobuf::MapValueRef::SetFloatValue(v9, FloatValue);
            v7 = *v7;
            if (v7)
            {
              continue;
            }
          }

          else
          {
            BoolValue = google::protobuf::MapValueConstRef::GetBoolValue((v7 + 5));
            google::protobuf::MapValueRef::SetBoolValue(v9, BoolValue);
            v7 = *v7;
            if (v7)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        if (v13 == 8)
        {
          EnumValue = google::protobuf::MapValueConstRef::GetEnumValue((v7 + 5));
          google::protobuf::MapValueRef::SetEnumValue(v9, EnumValue);
LABEL_45:
          v7 = *v7;
          if (v7)
          {
            continue;
          }

          goto LABEL_46;
        }

        if (v13 != 9)
        {
          if (v13 == 10)
          {
            v20 = google::protobuf::MapValueRef::MutableMessageValue(v9);
            MessageValue = google::protobuf::MapValueConstRef::GetMessageValue((v7 + 5));
            google::protobuf::Message::CopyFrom(v20, MessageValue);
            v7 = *v7;
            if (v7)
            {
              continue;
            }

            goto LABEL_46;
          }

          goto LABEL_45;
        }

        StringValue = google::protobuf::MapValueConstRef::GetStringValue((v7 + 5));
        google::protobuf::MapValueRef::SetStringValue(v9, StringValue);
        v7 = *v7;
        if (v7)
        {
          continue;
        }

LABEL_46:
        v6 = (v6 + 1);
        v25 = *(a2 + 5);
        if (v25 <= v6)
        {
          return;
        }

        while (1)
        {
          v7 = *(*(a2 + 4) + 8 * v6);
          if (v7)
          {
            break;
          }

          if (v25 == ++v6)
          {
            return;
          }
        }

        if (v7)
        {
          v7 = *(**(v7 - 1) + 32);
        }
      }

      while (v7);
    }
  }
}

void google::protobuf::internal::TypeDefinedMapFieldBase<google::protobuf::MapKey,google::protobuf::MapValueRef>::SwapImpl(atomic_ullong *a1, atomic_ullong *a2, google::protobuf::internal::MapFieldBase *a3)
{
  google::protobuf::internal::MapFieldBase::SwapImpl(a1, a2, a3);

  google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::swap((a1 + 2), (a2 + 2));
}

uint64_t google::protobuf::internal::DynamicMapField::SpaceUsedExcludingSelfNoLockImpl(atomic_ullong *this, const google::protobuf::internal::MapFieldBase *a2)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(explicit - 1);
    v5 = *(this + 4);
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v5 = *(this + 4);
    if (!v5)
    {
      return result;
    }
  }

  LODWORD(v6) = *(this + 7);
  if (v6 == *(this + 5))
  {
    v7 = 0;
    LODWORD(v6) = 0;
    v8 = MEMORY[0x20];
    if (!MEMORY[0x20])
    {
LABEL_7:
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Protocol Buffer map usage error:\n", 0x21uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "MapKey::type MapKey is not initialized. ", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v15, "Call set methods to initialize MapKey.");
      goto LABEL_31;
    }
  }

  else
  {
    v7 = *(this[4] + 8 * v6);
    if (v7)
    {
      v7 = *(**(v7 - 1) + 32);
      v8 = *(v7 + 32);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = *(v7 + 32);
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  if (v8 == 9)
  {
    v9 = 24 * v5;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 48);
  if (!v10 || !*(v7 + 40))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 803);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v15, "MapValueConstRef::type MapValueConstRef is not initialized.");
LABEL_31:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  result += 48 * v5 + v9;
  if (v10 > 5)
  {
    if (v10 <= 7)
    {
      if (v10 != 6)
      {
        result += v5;
        return result;
      }

      goto LABEL_29;
    }

    switch(v10)
    {
      case 8:
LABEL_29:
        result += 4 * v5;
        return result;
      case 9:
        result += 24 * v5;
        break;
      case 10:
        do
        {
          v11 = result;
          MessageValue = google::protobuf::MapValueConstRef::GetMessageValue((v7 + 40));
          (*(*MessageValue + 80))(MessageValue);
          result = google::protobuf::Reflection::SpaceUsedLong(v13, MessageValue) + v11;
          v7 = *v7;
          if (!v7)
          {
            v6 = (v6 + 1);
            v14 = *(this + 5);
            if (v14 <= v6)
            {
              return result;
            }

            while (1)
            {
              v7 = *(this[4] + 8 * v6);
              if (v7)
              {
                break;
              }

              if (v14 == ++v6)
              {
                return result;
              }
            }

            if (v7)
            {
              v7 = *(**(v7 - 1) + 32);
            }
          }
        }

        while (v7);
        break;
    }
  }

  else
  {
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if (v10 == 1)
    {
      goto LABEL_29;
    }

    if (v10 == 2)
    {
LABEL_26:
      result += 8 * v5;
    }
  }

  return result;
}

void google::protobuf::internal::DynamicMapField::~DynamicMapField(google::protobuf::internal::DynamicMapField *this)
{
  LODWORD(v2) = *(this + 7);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    v4 = *(*(this + 4) + 8 * v2);
    if (v4)
    {
      v4 = *(**(v4 - 1) + 32);
    }

    while (1)
    {
      google::protobuf::MapValueRef::DeleteData((v4 + 40));
      v4 = *v4;
      if (!v4)
      {
        v2 = (v2 + 1);
        v5 = *(this + 5);
        if (v5 <= v2)
        {
LABEL_11:
          v3 = *(this + 5);
          break;
        }

        while (1)
        {
          v4 = *(*(this + 4) + 8 * v2);
          if (v4)
          {
            break;
          }

          if (v5 == ++v2)
          {
            goto LABEL_11;
          }
        }

        if (v4)
        {
          v4 = *(**(v4 - 1) + 32);
        }
      }

      if (!v4)
      {
        goto LABEL_11;
      }
    }
  }

  if (v3 != 1)
  {
    google::protobuf::internal::UntypedMapBase::ClearTable(this + 16, 0x10800380028, google::protobuf::internal::UntypedMapBase::DestroyNode<google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::Node>);
  }

  google::protobuf::internal::TypeDefinedMapFieldBase<google::protobuf::MapKey,google::protobuf::MapValueRef>::~TypeDefinedMapFieldBase(this);
}

_DWORD *google::protobuf::MapValueRef::DeleteData(_DWORD *this)
{
  v1 = this[2];
  if (v1 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 != 6)
      {
        this = *this;
        if (!this)
        {
          return this;
        }

        goto LABEL_35;
      }
    }

    else if (v1 != 8)
    {
      if (v1 != 9)
      {
        if (v1 == 10)
        {
          this = *this;
          if (this)
          {
            v2 = *(*this + 8);

            return v2();
          }
        }

        return this;
      }

      v3 = *this;
      if (!*this)
      {
        return this;
      }

      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

LABEL_35:
      JUMPOUT(0x23EED9460);
    }

    goto LABEL_24;
  }

  if (v1 <= 2)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        return this;
      }

      goto LABEL_15;
    }

    goto LABEL_24;
  }

  if (v1 == 3)
  {
LABEL_24:
    this = *this;
    if (!this)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_15:
  this = *this;
  if (this)
  {

    goto LABEL_35;
  }

  return this;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<google::protobuf::MapKey,google::protobuf::MapValueRef>::~TypeDefinedMapFieldBase(uint64_t a1)
{
  if (*(a1 + 20) != 1)
  {
    google::protobuf::internal::UntypedMapBase::ClearTable(a1 + 16, 0x800380028, google::protobuf::internal::UntypedMapBase::DestroyNode<google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::Node>);
  }

  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if (explicit)
  {
    absl::lts_20240722::Mutex::~Mutex((explicit + 23));
    v4 = *(explicit - 1);
    v3 = (explicit - 1);
    if (v4)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v3);
    }

    MEMORY[0x23EED9460](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

uint64_t google::protobuf::internal::DynamicMapField::AllocateMapValue(google::protobuf::internal::DynamicMapField *this, google::protobuf::MapValueRef *a2)
{
  v4 = (*(**(this + 6) + 80))(*(this + 6));
  result = google::protobuf::Descriptor::map_value(v4);
  v6 = *(result + 24);
  if (!v6)
  {
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(result + 2)];
    *(a2 + 2) = v8;
    goto LABEL_8;
  }

  v20 = result;
  v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
  if (atomic_load_explicit(v6, memory_order_acquire) == 221)
  {
    v7 = *(result + 24);
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(result + 2)];
    *(a2 + 2) = v8;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = result;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v21, &v20);
    result = v18;
    v7 = *(v18 + 24);
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v18 + 2)];
    *(a2 + 2) = v8;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v20 = result;
  v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
  if (atomic_load_explicit(v7, memory_order_acquire) != 221)
  {
    v19 = result;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, &v21, &v20);
    result = v19;
  }

  v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(result + 2)];
LABEL_8:
  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          return result;
        }

        goto LABEL_22;
      }
    }

    else if (v8 != 3)
    {
LABEL_22:
      explicit = atomic_load_explicit(this + 1, memory_order_acquire);
      if (explicit)
      {
        explicit = *(explicit + 15);
      }

      if (!explicit)
      {
        operator new();
      }

      result = google::protobuf::Arena::Allocate(explicit);
      *result = 0;
      *a2 = result;
      return result;
    }

    goto LABEL_31;
  }

  if (v8 > 7)
  {
    if (v8 != 8)
    {
      if (v8 == 9)
      {
        v17 = atomic_load_explicit(this + 1, memory_order_acquire);
        if (v17)
        {
          v17 = *(v17 + 15);
        }

        if (!v17)
        {
          operator new();
        }

        result = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(v17);
        *result = 0;
        *(result + 8) = 0;
        *(result + 16) = 0;
        *a2 = result;
      }

      else if (v8 == 10)
      {
        v9 = result;
        (*(**(this + 6) + 80))(*(this + 6));
        Message = google::protobuf::Reflection::GetMessage(v10, *(this + 6), v9, 0, v11);
        v13 = atomic_load_explicit(this + 1, memory_order_acquire);
        if (v13)
        {
          v13 = *(v13 + 15);
        }

        result = (*(*Message + 16))(Message, v13);
        *a2 = result;
      }

      return result;
    }

LABEL_31:
    v16 = atomic_load_explicit(this + 1, memory_order_acquire);
    if (v16)
    {
      v16 = *(v16 + 15);
    }

    if (!v16)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(v16);
    *result = 0;
    *a2 = result;
    return result;
  }

  if (v8 == 6)
  {
    goto LABEL_31;
  }

  v15 = atomic_load_explicit(this + 1, memory_order_acquire);
  if (v15)
  {
    v15 = *(v15 + 15);
  }

  if (!v15)
  {
    operator new();
  }

  result = google::protobuf::Arena::Allocate(v15);
  *result = 0;
  *a2 = result;
  return result;
}

google::protobuf::MapIterator *google::protobuf::MapIterator::MapIterator(google::protobuf::MapIterator *this, google::protobuf::internal::MapFieldBase *a2, const google::protobuf::Descriptor *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 3) = a2;
  v5 = google::protobuf::Descriptor::map_key(a3);
  v6 = *(v5 + 24);
  if (v6)
  {
    v12 = v5;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v13, &v12);
    }
  }

  v7 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 2)];
  v8 = *(this + 14);
  if (v8 != v7)
  {
    if (v8 == 9 && *(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }

    *(this + 14) = v7;
    if (v7 == 9)
    {
      *(this + 4) = 0;
      *(this + 5) = 0;
      *(this + 6) = 0;
    }
  }

  v9 = google::protobuf::Descriptor::map_value(a3);
  v10 = *(v9 + 24);
  if (v10)
  {
    v12 = v9;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v13, &v12);
    }
  }

  *(this + 18) = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + 2)];
  return this;
}

void sub_23CDE59BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 9 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::cleanup::arena_destruct_object<google::protobuf::internal::MapFieldBase::ReflectionPayload>(uint64_t a1)
{
  absl::lts_20240722::Mutex::~Mutex((a1 + 24));
  if (*a1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(a1);
  }
}

uint64_t google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::~Map(uint64_t result)
{
  if (*(result + 4) != 1)
  {
    v1 = result;
    google::protobuf::internal::UntypedMapBase::ClearTable(result, 0x800380028, google::protobuf::internal::UntypedMapBase::DestroyNode<google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::Node>);
    return v1;
  }

  return result;
}

void google::protobuf::internal::UntypedMapBase::DestroyNode<google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::Node>(uint64_t a1)
{
  if (*(a1 + 32) == 9 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void *google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::erase_no_destroy(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v18 = 0;
  LODWORD(v19) = -1;
  v4 = (*(a1 + 4) - 1) & a2;
  v5 = v4;
  v6 = *(*(a1 + 16) + 8 * v4);
  if (v6 != a3)
  {
    if (!v6 || (*(*(a1 + 16) + 8 * v4) & 1) != 0)
    {
      goto LABEL_14;
    }

    v8 = *(*(a1 + 16) + 8 * v4);
    do
    {
      v8 = *v8;
    }

    while (v8 != a3 && v8 != 0);
    if (!v8)
    {
LABEL_14:
      v10 = a3;
      google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper(a1, (a3 + 1), &v18);
      v5 = v11;
      v6 = *(*(a1 + 16) + 8 * v11);
      if (v6)
      {
        result = google::protobuf::internal::UntypedMapBase::EraseFromTree(a1, v5, v18, v19);
        --*a1;
        if (v5 != *(a1 + 12))
        {
          return result;
        }

        goto LABEL_19;
      }

      v4 = v5;
      a3 = v10;
    }
  }

  result = google::protobuf::internal::EraseFromLinkedList(a3, v6);
  *(*(a1 + 16) + 8 * v4) = result;
  --*a1;
  if (v5 != *(a1 + 12))
  {
    return result;
  }

LABEL_19:
  v13 = *(a1 + 4);
  if (v5 < v13)
  {
    v14 = (*(a1 + 16) + 8 * v5);
    v15 = v13 - v5;
    v16 = v5 + 1;
    do
    {
      if (*v14++)
      {
        break;
      }

      *(a1 + 12) = v16++;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper(uint64_t a1, google::protobuf::MapKey *a2, uint64_t a3)
{
  v6 = google::protobuf::internal::RealKeyToVariantKey<google::protobuf::MapKey>::operator()(a1, a2);
  v10 = v7;
  if (v6)
  {
    v6 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v6, v7, v8, v9);
    v10 = (((v6 + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v6 + v10));
  }

  v11 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v10 ^ *(a1 + 8));
  v12 = (*(a1 + 4) - 1) & (((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v11));
  v13 = *(*(a1 + 16) + 8 * v12);
  if (v13)
  {
    v14 = (*(*(a1 + 16) + 8 * v12) & 1) == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    do
    {
      if (google::protobuf::MapKey::operator==((v13 + 8), a2))
      {
        break;
      }

      v13 = *v13;
    }

    while (v13);
  }

  else if (v13)
  {
    v15 = google::protobuf::internal::RealKeyToVariantKey<google::protobuf::MapKey>::operator()(v6, a2);
    return google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v12, v15, v16, a3);
  }

  else
  {
    return 0;
  }

  return v13;
}

BOOL google::protobuf::MapKey::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 6);
  if (v2 != *(a2 + 6))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v9, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 169);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v9, "Unsupported: type mismatch");
    goto LABEL_31;
  }

  if (v2 <= 2)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return *a1 == *a2;
      }

      if (!v2)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v9, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Protocol Buffer map usage error:\n", 0x21uLL);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "MapKey::type MapKey is not initialized. ", 0x28uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v9, "Call set methods to initialize MapKey.");
        goto LABEL_31;
      }

LABEL_30:
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v9, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 191);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v9, "Can't get here.");
LABEL_31:
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v9);
    }

    return *a1 == *a2;
  }

  if (v2 > 0xA)
  {
LABEL_26:
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return *a1 == *a2;
      }

      goto LABEL_30;
    }

    return *a1 == *a2;
  }

  if (v2 == 7)
  {
    return *a1 == *a2;
  }

  if (v2 != 9)
  {
    if (((1 << v2) & 0x560) != 0)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v9, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 176);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v9, "Unsupported");
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v3 = a1[23];
  if (v3 >= 0)
  {
    v4 = a1[23];
  }

  else
  {
    v4 = *(a1 + 1);
  }

  v5 = a2[23];
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  v7 = *a2;
  if (v6 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v4) == 0;
}

std::string *google::protobuf::MapKey::CopyFrom(std::string *this, const google::protobuf::MapKey *a2)
{
  v2 = *(a2 + 6);
  if (!v2)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v6, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 80);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "Protocol Buffer map usage error:\n", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "MapKey::type MapKey is not initialized. ", 0x28uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v6, "Call set methods to initialize MapKey.");
    goto LABEL_31;
  }

  data = this[1].__r_.__value_.__l.__data_;
  if (data != v2)
  {
    if (data == 9 && SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = this;
      v5 = a2;
      operator delete(this->__r_.__value_.__l.__data_);
      a2 = v5;
      this = v4;
      LODWORD(v4[1].__r_.__value_.__l.__data_) = v2;
      if (v2 <= 3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(this[1].__r_.__value_.__l.__data_) = v2;
      if (v2 <= 3)
      {
        goto LABEL_22;
      }
    }

    if (v2 > 0xA)
    {
      goto LABEL_27;
    }

    if (v2 != 7)
    {
      if (v2 == 9)
      {
        this->__r_.__value_.__r.__words[0] = 0;
        this->__r_.__value_.__l.__size_ = 0;
        this->__r_.__value_.__r.__words[2] = 0;

        return std::string::operator=(this, a2);
      }

      goto LABEL_26;
    }

LABEL_19:
    this->__r_.__value_.__s.__data_[0] = *a2;
    return this;
  }

  if (v2 > 3)
  {
    if (v2 > 0xA)
    {
      goto LABEL_27;
    }

    if (v2 != 7)
    {
      if (v2 == 9)
      {

        return std::string::operator=(this, a2);
      }

LABEL_26:
      if (((1 << v2) & 0x560) == 0)
      {
LABEL_27:
        if (v2 == 4)
        {
          goto LABEL_28;
        }

        return this;
      }

      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v6, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/map_field.h", 202);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v6, "Unsupported");
LABEL_31:
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v6);
    }

    goto LABEL_19;
  }

LABEL_22:
  switch(v2)
  {
    case 1:
      goto LABEL_25;
    case 2:
LABEL_28:
      this->__r_.__value_.__r.__words[0] = *a2;
      return this;
    case 3:
LABEL_25:
      LODWORD(this->__r_.__value_.__l.__data_) = *a2;
      break;
  }

  return this;
}

void google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::swap(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    v7 = *a1;
    *a1 = *a2;
    *a2 = v7;
    v8 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v10;
    v11 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = v11;
    v12 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    return;
  }

  v15 = xmmword_23CE389F0;
  v16 = &google::protobuf::internal::kGlobalEmptyTable;
  v17 = 0;
  LODWORD(v4) = *(a1 + 12);
  if (v4 != *(a1 + 4))
  {
    v13 = *(*(a1 + 16) + 8 * v4);
    if (v13)
    {
      v13 = *(**(v13 - 1) + 32);
    }

    do
    {
      google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::TryEmplaceInternal<google::protobuf::MapKey const&,google::protobuf::MapValueRef const&>(&v15, (v13 + 8), (v13 + 40), v18);
      v13 = *v13;
      if (!v13)
      {
        v4 = (v4 + 1);
        v14 = *(a1 + 4);
        if (v14 <= v4)
        {
          break;
        }

        while (1)
        {
          v13 = *(*(a1 + 16) + 8 * v4);
          if (v13)
          {
            break;
          }

          if (v14 == ++v4)
          {
            goto LABEL_3;
          }
        }

        if (v13)
        {
          v13 = *(**(v13 - 1) + 32);
        }
      }
    }

    while (v13);
  }

LABEL_3:
  google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::operator=(a1, a2);
  if (&v15 == a2)
  {
LABEL_27:
    LODWORD(v5) = DWORD1(v15);
    goto LABEL_28;
  }

  if (*(a2 + 4) != 1)
  {
    google::protobuf::internal::UntypedMapBase::ClearTable(a2, 0x10800380028, google::protobuf::internal::UntypedMapBase::DestroyNode<google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::Node>);
  }

  LODWORD(v5) = HIDWORD(v15);
  if (HIDWORD(v15) == DWORD1(v15))
  {
LABEL_28:
    if (v5 != 1)
    {
      goto LABEL_29;
    }

    return;
  }

  v6 = v16[HIDWORD(v15)];
  if (v6)
  {
    v6 = *(**(v6 - 1) + 32);
  }

  while (1)
  {
    google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::TryEmplaceInternal<google::protobuf::MapKey const&,google::protobuf::MapValueRef const&>(a2, (v6 + 8), (v6 + 40), v18);
    v6 = *v6;
    if (!v6)
    {
      break;
    }

LABEL_22:
    if (!v6)
    {
      goto LABEL_27;
    }
  }

  v5 = (v5 + 1);
  if (DWORD1(v15) > v5)
  {
    while (1)
    {
      v6 = v16[v5];
      if (v6)
      {
        break;
      }

      if (DWORD1(v15) == ++v5)
      {
        goto LABEL_27;
      }
    }

    if (v6)
    {
      v6 = *(**(v6 - 1) + 32);
    }

    goto LABEL_22;
  }

  if (DWORD1(v15) == 1)
  {
    return;
  }

LABEL_29:
  google::protobuf::internal::UntypedMapBase::ClearTable(&v15, 0x800380028, google::protobuf::internal::UntypedMapBase::DestroyNode<google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::Node>);
}

uint64_t google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 4) != 1)
    {
      google::protobuf::internal::UntypedMapBase::ClearTable(a1, 0x10800380028, google::protobuf::internal::UntypedMapBase::DestroyNode<google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::Node>);
    }

    LODWORD(v4) = *(a2 + 12);
    if (v4 != *(a2 + 4))
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      if (v6)
      {
        v6 = *(**(v6 - 1) + 32);
      }

      do
      {
        google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::TryEmplaceInternal<google::protobuf::MapKey const&,google::protobuf::MapValueRef const&>(a1, (v6 + 8), (v6 + 40), &v8);
        v6 = *v6;
        if (!v6)
        {
          v4 = (v4 + 1);
          v7 = *(a2 + 4);
          if (v7 <= v4)
          {
            return a1;
          }

          while (1)
          {
            v6 = *(*(a2 + 16) + 8 * v4);
            if (v6)
            {
              break;
            }

            if (v7 == ++v4)
            {
              return a1;
            }
          }

          if (v6)
          {
            v6 = *(**(v6 - 1) + 32);
          }
        }
      }

      while (v6);
    }
  }

  return a1;
}

uint64_t google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::TryEmplaceInternal<google::protobuf::MapKey const&,google::protobuf::MapValueRef const&>@<X0>(uint64_t a1@<X0>, google::protobuf::MapKey *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  result = google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper(a1, a2, 0);
  v10 = v9;
  if (result)
  {
    v11 = result;
    v12 = 0;
    goto LABEL_24;
  }

  v13 = *(a1 + 4);
  v14 = (*a1 + 1);
  v15 = (v13 & 0xFFFFFFFE) - ((v13 >> 2) & 0x3FFFFFFC);
  if (v15 >= v14)
  {
    if (v13 < 3 || v15 >> 2 < v14)
    {
      goto LABEL_8;
    }

    v26 = 0;
    v27 = v14 + (v14 >> 2) + 1;
    do
    {
      ++v26;
    }

    while (v27 << v26 < v15);
    v25 = v13 >> v26 <= 2 ? 2 : v13 >> v26;
    if (v25 == v13)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  if ((v13 & 0x80000000) == 0)
  {
    v25 = 2 * v13;
LABEL_33:
    google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::Resize(a1, v25);
    google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper(a1, a2, 0);
    v10 = v28;
  }

LABEL_8:
  v17 = *(a1 + 24);
  if (v17)
  {
    v18 = google::protobuf::Arena::AllocateForArray(v17, 0x38uLL);
  }

  else
  {
    v18 = operator new(0x38uLL);
  }

  v11 = v18;
  v19 = *(a1 + 24);
  *(v18 + 8) = 0;
  result = google::protobuf::MapKey::CopyFrom((v18 + 8), a2);
  if (v19)
  {
    result = google::protobuf::internal::ThreadSafeArena::AddCleanup(v19, v11 + 8, google::protobuf::internal::cleanup::arena_destruct_object<google::protobuf::MapKey>);
  }

  *(v11 + 40) = *a3;
  v20 = *(a1 + 16);
  v21 = *(v20 + 8 * v10);
  if (v21)
  {
    if (v21)
    {
      goto LABEL_18;
    }

    v22 = 0;
    v23 = *(v20 + 8 * v10);
    do
    {
      ++v22;
      v23 = *v23;
    }

    while (v23);
    if (v22 > 7)
    {
LABEL_18:
      result = google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(a1, v10, google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::NodeToVariantKey, v11);
    }

    else
    {
      *v11 = v21;
      *(v20 + 8 * v10) = v11;
    }
  }

  else
  {
    *v11 = 0;
    *(v20 + 8 * v10) = v11;
    v24 = *(a1 + 12);
    if (v24 >= v10)
    {
      v24 = v10;
    }

    *(a1 + 12) = v24;
  }

  ++*a1;
  v12 = 1;
LABEL_24:
  *a4 = v11;
  *(a4 + 8) = a1;
  *(a4 + 16) = v10;
  *(a4 + 24) = v12;
  return result;
}

absl::lts_20240722::hash_internal::MixingHashState *google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::TransferList(absl::lts_20240722::hash_internal::MixingHashState *result, void *a2)
{
  v3 = result;
  do
  {
    v4 = a2;
    v5 = (a2 + 1);
    a2 = *a2;
    result = google::protobuf::internal::RealKeyToVariantKey<google::protobuf::MapKey>::operator()(result, v5);
    v9 = v6;
    if (result)
    {
      result = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, result, v6, v7, v8);
      v9 = (((result + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (result + v9));
    }

    v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v9 ^ *(v3 + 8));
    v11 = (*(v3 + 4) - 1) & (((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v10));
    v12 = *(v3 + 16);
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      if (v13)
      {
        goto LABEL_2;
      }

      v14 = 0;
      v15 = *(v12 + 8 * v11);
      do
      {
        ++v14;
        v15 = *v15;
      }

      while (v15);
      if (v14 > 7)
      {
LABEL_2:
        result = google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(v3, v11, google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::NodeToVariantKey, v4);
      }

      else
      {
        *v4 = v13;
        *(v12 + 8 * v11) = v4;
      }
    }

    else
    {
      *v4 = 0;
      *(v12 + 8 * v11) = v4;
      v16 = *(v3 + 12);
      if (v16 >= v11)
      {
        v16 = v11;
      }

      *(v3 + 12) = v16;
    }
  }

  while (a2);
  return result;
}

void google::protobuf::internal::cleanup::arena_destruct_object<google::protobuf::MapKey>(uint64_t a1)
{
  if (*(a1 + 24) == 9 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t google::protobuf::Map<google::protobuf::MapKey,google::protobuf::MapValueRef>::TryEmplaceInternal<google::protobuf::MapKey const&>@<X0>(uint64_t a1@<X0>, google::protobuf::MapKey *a2@<X1>, uint64_t a3@<X8>)
{
  result = google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper(a1, a2, 0);
  v8 = v7;
  if (result)
  {
    v9 = result;
    v10 = 0;
    goto LABEL_24;
  }

  v11 = *(a1 + 4);
  v12 = (*a1 + 1);
  v13 = (v11 & 0xFFFFFFFE) - ((v11 >> 2) & 0x3FFFFFFC);
  if (v13 >= v12)
  {
    if (v11 < 3 || v13 >> 2 < v12)
    {
      goto LABEL_8;
    }

    v24 = 0;
    v25 = v12 + (v12 >> 2) + 1;
    do
    {
      ++v24;
    }

    while (v25 << v24 < v13);
    v23 = v11 >> v24 <= 2 ? 2 : v11 >> v24;
    if (v23 == v11)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  if ((v11 & 0x80000000) == 0)
  {
    v23 = 2 * v11;
LABEL_33:
    google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::Resize(a1, v23);
    google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::FindHelper(a1, a2, 0);
    v8 = v26;
  }

LABEL_8:
  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = google::protobuf::Arena::AllocateForArray(v15, 0x38uLL);
  }

  else
  {
    v16 = operator new(0x38uLL);
  }

  v9 = v16;
  v17 = *(a1 + 24);
  *(v16 + 8) = 0;
  result = google::protobuf::MapKey::CopyFrom((v16 + 8), a2);
  if (v17)
  {
    result = google::protobuf::internal::ThreadSafeArena::AddCleanup(v17, v9 + 8, google::protobuf::internal::cleanup::arena_destruct_object<google::protobuf::MapKey>);
  }

  *(v9 + 5) = 0;
  *(v9 + 12) = 0;
  v18 = *(a1 + 16);
  v19 = *(v18 + 8 * v8);
  if (v19)
  {
    if (v19)
    {
      goto LABEL_18;
    }

    v20 = 0;
    v21 = *(v18 + 8 * v8);
    do
    {
      ++v20;
      v21 = *v21;
    }

    while (v21);
    if (v20 > 7)
    {
LABEL_18:
      result = google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(a1, v8, google::protobuf::internal::KeyMapBase<google::protobuf::MapKey>::NodeToVariantKey, v9);
    }

    else
    {
      *v9 = v19;
      *(v18 + 8 * v8) = v9;
    }
  }

  else
  {
    *v9 = 0;
    *(v18 + 8 * v8) = v9;
    v22 = *(a1 + 12);
    if (v22 >= v8)
    {
      v22 = v8;
    }

    *(a1 + 12) = v22;
  }

  ++*a1;
  v10 = 1;
LABEL_24:
  *a3 = v9;
  *(a3 + 8) = a1;
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(google::protobuf::Arena **a1)
{
  v1 = *a1;
  if (*a1)
  {
    result = ((v1 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (*result == *((v1 & 0xFFFFFFFFFFFFFFFELL) + 16))
    {
      return result;
    }
  }

  else
  {
    result = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(a1);
    if (*result == *(result + 1))
    {
      return result;
    }
  }

  return google::protobuf::UnknownFieldSet::ClearFallback(result);
}

void *google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(google::protobuf::Arena **a1, const google::protobuf::UnknownFieldSet *a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v5 = a2;
    v3 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(a1);
    a2 = v5;
  }

  return google::protobuf::UnknownFieldSet::InternalMergeFrom(v3, a2);
}

void *google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(void *result)
{
  v1 = result;
  v2 = *result & 0xFFFFFFFFFFFFFFFELL;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 != *(v2 + 16))
    {
      google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
      v3 = *(v2 + 8);
    }

    if (v3)
    {
      *(v2 + 16) = v3;
      operator delete(v3);
    }

    result = MEMORY[0x23EED9460](v2, 0x20C40DC1BFBCFLL);
  }

  *v1 = 0;
  return result;
}

uint64_t google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(google::protobuf::Arena **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  AlignedWithCleanup = google::protobuf::Arena::AllocateAlignedWithCleanup(v2, 0x20uLL, 8uLL, google::protobuf::internal::cleanup::arena_destruct_object<google::protobuf::internal::InternalMetadata::Container<google::protobuf::UnknownFieldSet>>);
  *AlignedWithCleanup = 0u;
  *(AlignedWithCleanup + 16) = 0u;
  *a1 = (AlignedWithCleanup | 1);
  *AlignedWithCleanup = v2;
  return AlignedWithCleanup + 8;
}

uint64_t google::protobuf::Message::MergeFrom(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  v4 = (*(*this + 64))(this);
  v5 = (*(*a2 + 64))(a2);
  if (v4)
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = *(v4 + 16);

    return v9(this, a2);
  }

  else
  {

    return google::protobuf::internal::ReflectionOps::Merge(a2, this, v6);
  }
}

void google::protobuf::Message::CheckTypeAndMergeFrom(google::protobuf::Message *this, const google::protobuf::MessageLite *a2)
{
  v4 = (*(*this + 64))(this);
  v5 = (*(*a2 + 64))(a2);
  if (v4)
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = *(v4 + 16);

    v8(this, a2);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(a2, this, v6);
  }
}

void google::protobuf::Message::CopyFrom(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = (*(*this + 64))(this);
    v5 = (*(*a2 + 64))(a2);
    v6 = *this;
    if (v5)
    {
      v7 = v5 == v4;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      (*(v6 + 24))(this);
      v11 = *(v4 + 16);

      v11(this, a2);
    }

    else
    {
      v8 = (*(v6 + 80))(this);
      v9 = (*(*a2 + 80))(a2);
      if (v9 != v8)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<void const*,void const*>(v9, v8, "from.GetDescriptor() == descriptor");
      }

      google::protobuf::internal::ReflectionOps::Copy(a2, this, v10);
    }
  }
}

void google::protobuf::Message::FindInitializationErrors(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  LOBYTE(__p) = 0;
  google::protobuf::internal::ReflectionOps::FindInitializationErrors(a1, &__p, a2);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_23CDE6F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Message::InitializationErrorString(google::protobuf::Message *this@<X0>, std::string *a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v11 = 0;
  LOBYTE(__p) = 0;
  google::protobuf::internal::ReflectionOps::FindInitializationErrors(this, &__p, &v7);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(v7, v8, ", ", 2uLL, a2);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    v5 = v7;
    if (v8 != v7)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = v7;
    }

    v8 = v3;
    operator delete(v5);
  }
}

void sub_23CDE7080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

unsigned __int16 *google::protobuf::Message::_InternalParse(google::protobuf::Message *this, char *a2, google::protobuf::internal::ParseContext *a3)
{
  (*(*this + 80))(this);
  v9 = v6;
  if (atomic_load_explicit((v6 + 100), memory_order_acquire) != 221)
  {
    v8 = v6;
    absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::Reflection::GetTcParseTable(void)::{lambda(void)#1}>((v6 + 100), 1, &v9);
    v6 = v8;
  }

  return google::protobuf::internal::TcParser::ParseLoop(this, a2, a3, *(v6 + 104));
}

uint64_t google::protobuf::Message::ByteSizeLong(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  v3 = google::protobuf::internal::WireFormat::ByteSize(this, a2);
  *google::protobuf::MessageLite::AccessCachedSize(this) = v3;
  return v3;
}

char *google::protobuf::Message::ComputeUnknownFieldsSize(google::protobuf::UnknownFieldSet *a1, const google::protobuf::UnknownFieldSet *a2, _DWORD *a3)
{
  v5 = *(a1 + 1);
  if (v5)
  {
    result = a2 + google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a2);
  }

  else
  {
    v6 = google::protobuf::UnknownFieldSet::default_instance(a1);
    result = a2 + google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, v7);
  }

  *a3 = result;
  return result;
}

char *google::protobuf::Message::MaybeComputeUnknownFieldsSize(google::protobuf::UnknownFieldSet *a1, const google::protobuf::UnknownFieldSet *a2, _DWORD *a3)
{
  if (*(a1 + 8))
  {
    return google::protobuf::Message::ComputeUnknownFieldsSize(a1, a2, a3);
  }

  *a3 = a2;
  return a2;
}

uint64_t google::protobuf::Message::SpaceUsedLong(google::protobuf::Message *this)
{
  (*(*this + 80))(this);
  if (v2)
  {

    return google::protobuf::Reflection::SpaceUsedLong(v2, this);
  }

  else
  {
    v4 = *(*this + 88);

    return v4(this);
  }
}

void google::protobuf::GetTypeNameImpl(google::protobuf *this@<X0>, const google::protobuf::MessageLite *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *((*(*this + 80))(this, a2) + 8);
  if (*(v4 + 47) < 0)
  {
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);

    std::string::__init_copy_ctor_external(a3, v6, v7);
  }

  else
  {
    v5 = *(v4 + 24);
    a3->__r_.__value_.__r.__words[2] = *(v4 + 40);
    *&a3->__r_.__value_.__l.__data_ = v5;
  }
}

uint64_t google::protobuf::MessageFactory::TryGetGeneratedPrototype(google::protobuf::MessageFactory *this, const google::protobuf::Descriptor *a2)
{
}

uint64_t google::protobuf::anonymous namespace::GeneratedMessageFactory::singleton(google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *this)
{
  if ((atomic_load_explicit(&qword_2810C1CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C1CA8))
  {
    operator new();
  }

  return _MergedGlobals_61;
}

void sub_23CDE73F0(_Unwind_Exception *a1)
{
  MEMORY[0x23EED9460](v1, 0x10E3C4071EED8DFLL);
  __cxa_guard_abort(&qword_2810C1CA8);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::anonymous namespace::GeneratedMessageFactory::TryGetPrototype(google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *this, const google::protobuf::Descriptor *a2)
{
  absl::lts_20240722::Mutex::ReaderLock((this + 104));
  v4 = *(this + 14);
  if (v4 > 1)
  {
    v7 = 0;
    v8 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
    v9 = 0x9DDFEA08EB382D69 * v8;
    v10 = (v8 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = *(this + 16);
    __asm { PRFM            #4, [X10] }

    v17 = v10 ^ v9;
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X10 >> 12)) & v4;
    v20 = *(_X10 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_9;
    }

LABEL_6:
    v22 = *(this + 17);
    while (1)
    {
      v23 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v4;
      if (*(v22 + 16 * v23) == a2)
      {
        break;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v21)
      {
LABEL_9:
        while (!*&vceq_s8(v20, 0x8080808080808080))
        {
          v7 += 8;
          v19 = (v7 + v19) & v4;
          v20 = *(_X10 + v19);
          v21 = vceq_s8(v20, v18);
          if (v21)
          {
            goto LABEL_6;
          }
        }

        goto LABEL_13;
      }
    }

    v24 = (v22 + 16 * v23);
    if (_X10 + v23)
    {
      goto LABEL_4;
    }
  }

  else if (*(this + 15) >= 2uLL)
  {
    v24 = this + 128;
    v30 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(this + 16) != a2)
    {
      v30 = 0;
      v24 = 0;
    }

    if (v30)
    {
LABEL_4:
      v5 = *(v24 + 1);
      v6 = v5 == 0;
      goto LABEL_14;
    }
  }

LABEL_13:
  v5 = 0;
  v6 = 1;
LABEL_14:
  absl::lts_20240722::Mutex::ReaderUnlock(this + 13);
  if (v6)
  {
    v26 = *(*(a2 + 2) + 24);
    if (v26 != google::protobuf::DescriptorPool::generated_pool(v25))
    {
      return 0;
    }

    v31 = *(a2 + 2);
    v32 = *(v31 + 8);
    v33 = *(v32 + 23);
    if ((v33 & 0x8000000000000000) != 0)
    {
      v32 = *v32;
      v33 = *(*(v31 + 8) + 8);
      if (*(this + 1) <= 1uLL)
      {
        goto LABEL_24;
      }
    }

    else if (*(this + 1) <= 1uLL)
    {
LABEL_24:
      if (*(this + 2) < 2uLL)
      {
        return 0;
      }

      v34 = (this + 24);
      if (strlen(*(*(this + 3) + 16)) != v33 || memcmp(*(*(this + 3) + 16), v32, v33) || !&absl::lts_20240722::container_internal::kSooControl)
      {
        return 0;
      }

LABEL_38:
      v5 = *v34;
      if (!*v34)
      {
        return v5;
      }

      absl::lts_20240722::Mutex::Lock(this + 13);
      v48 = *(this + 14);
      if (v48 > 1)
      {
        v50 = 0;
        v51 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
        v52 = 0x9DDFEA08EB382D69 * v51;
        v53 = (v51 * 0x9DDFEA08EB382D69) >> 64;
        _X10 = *(this + 16);
        __asm { PRFM            #4, [X10] }

        v56 = v53 ^ v52;
        v57 = vdup_n_s8(v56 & 0x7F);
        v58 = ((v56 >> 7) ^ (_X10 >> 12)) & v48;
        v59 = *(_X10 + v58);
        v60 = vceq_s8(v59, v57);
        if (!v60)
        {
          goto LABEL_46;
        }

LABEL_43:
        v61 = *(this + 17);
        do
        {
          v62 = (v58 + (__clz(__rbit64(v60)) >> 3)) & v48;
          if (*(v61 + 16 * v62) == a2)
          {
            v48 = v61 + 16 * v62;
            v49 = (_X10 + v62);
            goto LABEL_52;
          }

          v60 &= ((v60 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v60);
LABEL_46:
        while (!*&vceq_s8(v59, 0x8080808080808080))
        {
          v50 += 8;
          v58 = (v50 + v58) & v48;
          v59 = *(_X10 + v58);
          v60 = vceq_s8(v59, v57);
          if (v60)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v48 = *(this + 15);
        if (v48 >= 2)
        {
          v48 = this + 128;
          v49 = &absl::lts_20240722::container_internal::kSooControl;
          if (*(this + 16) != a2)
          {
            v49 = 0;
          }

LABEL_52:
          if (v49)
          {
            goto LABEL_69;
          }

          google::protobuf::internal::RegisterFileLevelMetadata(v5);
          v48 = *(this + 14);
          if (v48 > 1)
          {
            v64 = 0;
            v65 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
            v66 = 0x9DDFEA08EB382D69 * v65;
            v67 = (v65 * 0x9DDFEA08EB382D69) >> 64;
            _X10 = *(this + 16);
            __asm { PRFM            #4, [X10] }

            v70 = v67 ^ v66;
            v71 = vdup_n_s8(v70 & 0x7F);
            v72 = ((v70 >> 7) ^ (_X10 >> 12)) & v48;
            v73 = *(_X10 + v72);
            v74 = vceq_s8(v73, v71);
            if (!v74)
            {
              goto LABEL_60;
            }

LABEL_57:
            v75 = *(this + 17);
            do
            {
              v76 = (v72 + (__clz(__rbit64(v74)) >> 3)) & v48;
              if (*(v75 + 16 * v76) == a2)
              {
                v48 = v75 + 16 * v76;
                v63 = (_X10 + v76);
                goto LABEL_68;
              }

              v74 &= ((v74 & 0x8080808080808080) - 1) & 0x8080808080808080;
            }

            while (v74);
LABEL_60:
            while (!*&vceq_s8(v73, 0x8080808080808080))
            {
              v64 += 8;
              v72 = (v64 + v72) & v48;
              v73 = *(_X10 + v72);
              v74 = vceq_s8(v73, v71);
              if (v74)
              {
                goto LABEL_57;
              }
            }
          }

          else
          {
            v48 = *(this + 15);
            if (v48 >= 2)
            {
              v48 = this + 128;
              v63 = &absl::lts_20240722::container_internal::kSooControl;
              if (*(this + 16) != a2)
              {
                v63 = 0;
              }

LABEL_68:
              if (!v63)
              {
                v5 = 0;
                goto LABEL_70;
              }

LABEL_69:
              v5 = *(v48 + 8);
LABEL_70:
              absl::lts_20240722::Mutex::Unlock((this + 104));
              return v5;
            }
          }

          v63 = 0;
          goto LABEL_68;
        }
      }

      v49 = 0;
      goto LABEL_52;
    }

    _X8 = *(this + 3);
    __asm { PRFM            #4, [X8] }

    v37 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v32, v33, v27, v28);
    v38 = 0;
    v39 = (((v37 + v33) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v37 + v33));
    v40 = *(this + 3);
    v41 = *(this + 1);
    v42 = vdup_n_s8(v39 & 0x7F);
    v43 = ((v39 >> 7) ^ (v40 >> 12)) & v41;
    v44 = *(v40 + v43);
    v45 = vceq_s8(v44, v42);
    if (!v45)
    {
      goto LABEL_34;
    }

LABEL_30:
    v46 = *(this + 4);
    v77 = v41;
    v78 = v38;
    while (1)
    {
      v47 = (v43 + (__clz(__rbit64(v45)) >> 3)) & v41;
      if (strlen(*(*(v46 + 8 * v47) + 16)) == v33 && !memcmp(*(*(v46 + 8 * v47) + 16), v32, v33))
      {
        break;
      }

      v45 &= ((v45 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v41 = v77;
      v38 = v78;
      if (!v45)
      {
LABEL_34:
        while (!*&vceq_s8(v44, 0x8080808080808080))
        {
          v38 += 8;
          v43 = (v38 + v43) & v41;
          v44 = *(v40 + v43);
          v45 = vceq_s8(v44, v42);
          if (v45)
          {
            goto LABEL_30;
          }
        }

        return 0;
      }
    }

    v34 = (v46 + 8 * v47);
    if (!(v40 + v47))
    {
      return 0;
    }

    goto LABEL_38;
  }

  return v5;
}

unint64_t google::protobuf::MessageFactory::InternalRegisterGeneratedFile(google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *a1)
{
  v1 = a1;
  v3 = result;
  v4 = (result + 8);
  if (*(result + 8) > 1uLL)
  {
    _X8 = *(result + 24);
    __asm { PRFM            #4, [X8] }

    v12 = strlen(*(v1 + 2));
    v15 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *(v1 + 2), v12, v13, v14);
    v16 = 0;
    v17 = (((v15 + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15 + v12));
    v18 = v3[3];
    v19 = v3[1];
    v20 = vdup_n_s8(v17 & 0x7F);
    v21 = ((v17 >> 7) ^ (v18 >> 12)) & v19;
    v22 = *(v18 + v21);
    v23 = vceq_s8(v22, v20);
    if (!v23)
    {
      goto LABEL_10;
    }

LABEL_5:
    v24 = v3[4];
    v37 = v18;
    v38 = v17;
    v36 = v16;
    do
    {
      v25 = *(v24 + 8 * ((v21 + (__clz(__rbit64(v23)) >> 3)) & v19));
      v26 = v1;
      if (v25 == v1)
      {
        goto LABEL_17;
      }

      v27 = v19;
      v28 = v24;
      v29 = v25[2];
      v30 = strlen(v29);
      if (v30 == strlen(v26[2]) && !memcmp(v29, v26[2], v30))
      {
        goto LABEL_17;
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v16 = v36;
      v18 = v37;
      v1 = v26;
      v19 = v27;
      v17 = v38;
      v24 = v28;
    }

    while (v23);
LABEL_10:
    while (1)
    {
      v31 = vceq_s8(v22, 0x8080808080808080);
      if (v31)
      {
        break;
      }

      v16 += 8;
      v21 = (v16 + v21) & v19;
      v22 = *(v18 + v21);
      v23 = vceq_s8(v22, v20);
      if (v23)
      {
        goto LABEL_5;
      }
    }

    v5 = (v3[4] + 8 * result);
  }

  else
  {
    if (*(result + 16) > 1uLL)
    {
      v32 = *(result + 24);
      v26 = v1;
      if (v32 != v1)
      {
        v33 = v32[2];
        v34 = strlen(v33);
        v35 = *(v1 + 2);
        if (v34 != strlen(v26[2]) || memcmp(v33, v35, v34))
        {
        }
      }

LABEL_17:
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v39, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/message.cc", 301);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, "File is already registered: ", 0x1CuLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v39, v26 + 2);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v39);
    }

    *(result + 16) = 2;
    v5 = (result + 24);
  }

  *v5 = v1;
  return result;
}

uint64_t *google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *a1, google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *a2)
{
  v11 = a1;
  absl::lts_20240722::Mutex::AssertHeld((v4 + 104), v5);
  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::Message const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::Message const*>>>::find_or_prepare_insert<google::protobuf::Descriptor const*>((v4 + 112), &v11, &v8);
  if (v10 == 1)
  {
    v7 = v9;
    *v9 = v11;
    v7[1] = a2;
  }

  return result;
}

uint64_t *google::protobuf::Reflection::RepeatedFieldAccessor(google::protobuf::Reflection *this, const google::protobuf::FieldDescriptor *a2)
{
  if ((~*(a2 + 1) & 0x60) != 0)
  {
    google::protobuf::Reflection::RepeatedFieldAccessor(v22);
  }

  v2 = *(a2 + 3);
  if (v2 && (v22[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v23 = a2, atomic_load_explicit(v2, memory_order_acquire) != 221))
  {
    v10 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v2, 1, v22, &v23);
    a2 = v10;
    v3 = v10[2];
    v4 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10[2]];
    if (v4 <= 5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = *(a2 + 2);
    v4 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 2)];
    if (v4 <= 5)
    {
LABEL_5:
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          result = &qword_2810C1CC0;
          if ((atomic_load_explicit(&qword_2810C1CC8, memory_order_acquire) & 1) == 0)
          {
            v9 = google::protobuf::Reflection::RepeatedFieldAccessor();
            v7 = &qword_2810C1CC8;
            result = &qword_2810C1CC0;
            if ((v9 & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        else if (v4 == 4)
        {
          result = &qword_2810C1CE0;
          if ((atomic_load_explicit(&qword_2810C1CE8, memory_order_acquire) & 1) == 0)
          {
            v8 = google::protobuf::Reflection::RepeatedFieldAccessor();
            v7 = &qword_2810C1CE8;
            result = &qword_2810C1CE0;
            if ((v8 & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
          result = &qword_2810C1D00;
          if ((atomic_load_explicit(&qword_2810C1D08, memory_order_acquire) & 1) == 0)
          {
            v20 = google::protobuf::Reflection::RepeatedFieldAccessor();
            v7 = &qword_2810C1D08;
            result = &qword_2810C1D00;
            if ((v20 & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        return result;
      }

      if (v4 != 1)
      {
        if (v4 == 2)
        {
          result = &qword_2810C1CD0;
          if ((atomic_load_explicit(&qword_2810C1CD8, memory_order_acquire) & 1) == 0)
          {
            v6 = google::protobuf::Reflection::RepeatedFieldAccessor();
            v7 = &qword_2810C1CD8;
            result = &qword_2810C1CD0;
            if ((v6 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          return result;
        }

LABEL_54:
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v22, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/message.cc", 446);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v22, "Should not reach here.");
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v22);
      }

      result = &qword_2810C1CB0;
      if (atomic_load_explicit(&qword_2810C1CB8, memory_order_acquire))
      {
        return result;
      }

      goto LABEL_49;
    }
  }

  if (v4 <= 7)
  {
    if (v4 == 6)
    {
      result = &qword_2810C1CF0;
      if ((atomic_load_explicit(&qword_2810C1CF8, memory_order_acquire) & 1) == 0)
      {
        v14 = google::protobuf::Reflection::RepeatedFieldAccessor();
        v7 = &qword_2810C1CF8;
        result = &qword_2810C1CF0;
        if ((v14 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      result = &qword_2810C1D10;
      if ((atomic_load_explicit(&qword_2810C1D18, memory_order_acquire) & 1) == 0)
      {
        v13 = google::protobuf::Reflection::RepeatedFieldAccessor();
        v7 = &qword_2810C1D18;
        result = &qword_2810C1D10;
        if ((v13 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    return result;
  }

  if (v4 != 8)
  {
    if (v4 == 9)
    {
      result = &qword_2810C1D20;
      if ((atomic_load_explicit(&qword_2810C1D28, memory_order_acquire) & 1) == 0)
      {
        v15 = google::protobuf::Reflection::RepeatedFieldAccessor();
        v7 = &qword_2810C1D28;
        result = &qword_2810C1D20;
        if ((v15 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      return result;
    }

    if (v4 == 10)
    {
      v11 = *(a2 + 3);
      if (v11)
      {
        v22[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v23 = a2;
        if (atomic_load_explicit(v11, memory_order_acquire) != 221)
        {
          v19 = a2;
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, v22, &v23);
          a2 = v19;
        }

        v3 = *(a2 + 2);
      }

      if (v3 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a2))
      {
        result = &qword_2810C1D30;
        if ((atomic_load_explicit(&qword_2810C1D38, memory_order_acquire) & 1) == 0)
        {
          v12 = google::protobuf::Reflection::RepeatedFieldAccessor();
          v7 = &qword_2810C1D38;
          result = &qword_2810C1D30;
          if ((v12 & 1) == 0)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        result = &qword_2810C1D40;
        if ((atomic_load_explicit(&qword_2810C1D48, memory_order_acquire) & 1) == 0)
        {
          v18 = google::protobuf::Reflection::RepeatedFieldAccessor();
          v7 = &qword_2810C1D48;
          result = &qword_2810C1D40;
          if ((v18 & 1) == 0)
          {
            goto LABEL_56;
          }
        }
      }

      return result;
    }

    goto LABEL_54;
  }

  result = &qword_2810C1CB0;
  if (atomic_load_explicit(&qword_2810C1CB8, memory_order_acquire))
  {
    return result;
  }

LABEL_49:
  google::protobuf::Reflection::RepeatedFieldAccessor();
  v17 = v16;
  v7 = &qword_2810C1CB8;
  result = &qword_2810C1CB0;
  if ((v17 & 1) == 0)
  {
LABEL_56:
    v21 = result;
    __cxa_guard_release(v7);
    return v21;
  }

  return result;
}

uint64_t google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::GetArena(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return *(result & 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

void absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::Reflection::GetTcParseTable(void)::{lambda(void)#1}>(atomic_uint *a1, uint64_t a2, google::protobuf::Reflection **a3)
{
  v5 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v5, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v5 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::Reflection::GetTcParseTable(void)::{lambda(void)#1}>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,google::protobuf::Reflection::GetTcParseTable(void)::{lambda(void)#1} &&)::trans))
  {
    v6 = *a3;
    *(v6 + 13) = google::protobuf::Reflection::CreateTcParseTable(v6);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *google::protobuf::anonymous namespace::GeneratedMessageFactory::GeneratedMessageFactory(google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *this)
{
  *this = &unk_284F46F58;
  *(this + 8) = xmmword_23CE306D0;
  google::protobuf::DynamicMessageFactory::DynamicMessageFactory((this + 40));
  *(this + 104) = xmmword_23CE48D30;
  *(this + 15) = 0;
  *(this + 56) = 1;
  return this;
}

void sub_23CDE8274(_Unwind_Exception *exception_object)
{
  if (v1[1] >= 2uLL)
  {
    operator delete((v1[3] - (v1[2] & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

void *google::protobuf::internal::OnShutdownDelete<google::protobuf::anonymous namespace::GeneratedMessageFactory>(google::protobuf::anonymous namespace::GeneratedMessageFactory *)::{lambda(void const*)#1}::__invoke(void *result)
{
  if (result)
  {
    v1 = result;
    if (result[14] >= 2uLL)
    {
      operator delete((result[16] - (result[15] & 1) - 8));
    }

    absl::lts_20240722::Mutex::~Mutex((v1 + 13));
    google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((v1 + 5));
    if (v1[1] >= 2uLL)
    {
      operator delete((v1[3] - (v1[2] & 1) - 8));
    }

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void google::protobuf::anonymous namespace::GeneratedMessageFactory::~GeneratedMessageFactory(google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *this)
{
  if (*(this + 14) >= 2uLL)
  {
    operator delete((*(this + 16) - (*(this + 15) & 1) - 8));
  }

  absl::lts_20240722::Mutex::~Mutex((this + 104));
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((this + 40));
  if (*(this + 1) >= 2uLL)
  {
    operator delete((*(this + 3) - (*(this + 2) & 1) - 8));
  }
}

{
  if (*(this + 14) >= 2uLL)
  {
    operator delete((*(this + 16) - (*(this + 15) & 1) - 8));
  }

  absl::lts_20240722::Mutex::~Mutex((this + 104));
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((this + 40));
  if (*(this + 1) >= 2uLL)
  {
    operator delete((*(this + 3) - (*(this + 2) & 1) - 8));
  }

  JUMPOUT(0x23EED9460);
}

uint64_t google::protobuf::anonymous namespace::GeneratedMessageFactory::GetPrototype(atomic_ullong *this, const google::protobuf::Descriptor *a2)
{
  v8 = a2;
  if (!result)
  {
    v5 = *(*(a2 + 2) + 24);
    if (v5 == google::protobuf::DescriptorPool::generated_pool(0))
    {
      Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(this + 5, a2);
      absl::lts_20240722::Mutex::Lock(this + 13);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::Message const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::Message const*>>>::find_or_prepare_insert<google::protobuf::Descriptor const*>(this + 14, &v8, v9);
      if (v11 == 1)
      {
        v7 = v10;
        *v10 = v8;
        v7[1] = 0;
      }

      v10[1] = Prototype;
      absl::lts_20240722::Mutex::Unlock((this + 13));
      return Prototype;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::Message const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::Message const*>>>::find_or_prepare_insert<google::protobuf::Descriptor const*>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = result[3];
    do
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      if (*(v20 + 16 * v21) == v13)
      {
        *a3 = _X10 + v21;
        *(a3 + 8) = v20 + 16 * v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_8:
    while (1)
    {
      v22 = vceq_s8(v18, 0x8080808080808080);
      if (v22)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v23 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v22)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::Message const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::Message const*>>>::GetPolicyFunctions(void)::value);
    v25 = v23[3] + 16 * result;
    *a3 = result + v23[2];
    *(a3 + 8) = v25;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::Message const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::Message const*>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::Message const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::Message const*>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  v6 = a1[2];
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = a1[3];
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(v8, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::internal::DescriptorTable const*>,google::protobuf::anonymous namespace::GeneratedMessageFactory::DescriptorByNameHash,google::protobuf::anonymous namespace::GeneratedMessageFactory::DescriptorByNameEq,std::allocator<google::protobuf::internal::DescriptorTable const*>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *a1 < 2 && a1[1] > 1;
  if (v6)
  {
    v7 = *(a1[2] + 16);
    v8 = strlen(v7);
    absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v7, v8, v9, v10);
    v12 = *a1;
    v11 = a1[1];
  }

  else
  {
    v11 = a1[1];
    v12 = *a1;
  }

  v14 = v12;
  v15 = v11 & 1;
  v16 = v4 < 2;
  v17 = v6;
  v13 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(&v13, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::anonymous namespace::GeneratedMessageFactory::DescriptorByNameHash,google::protobuf::internal::DescriptorTable const*>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = strlen(v2);
  v6 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v2, v3, v4, v5);
  return (((v6 + v3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v6 + v3));
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<int>::Set(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 136))(a1, a4);
  *(*(a2 + 8) + 4 * a3) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<int>::Add(uint64_t a1, void *a2, uint64_t a3)
{
  result = (*(*a1 + 136))(a1, a3);
  v5 = HIDWORD(*a2);
  v6 = *a2;
  if (v6 == v5)
  {
    v8 = result;
    google::protobuf::RepeatedField<int>::Grow(a2, v5, (v5 + 1));
    result = v8;
    v6 = *a2;
  }

  v7 = a2[1];
  *a2 = v6 + 1;
  *(v7 + 4 * v6) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<int>::Reserve(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2[1] < a3)
  {
    return google::protobuf::RepeatedField<int>::Grow(a2, *a2, a3);
  }

  return result;
}

void google::protobuf::internal::RepeatedFieldWrapper<int>::SwapElements(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = *(v4 + 4 * a4);
  *(v4 + 4 * a4) = v5;
}

void google::protobuf::internal::RepeatedFieldPrimitiveAccessor<int>::Swap(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  if (a1 != a3)
  {
    v6[2] = v4;
    v6[3] = v5;
    google::protobuf::internal::RepeatedFieldPrimitiveAccessor<int>::Swap(v6);
  }

  google::protobuf::RepeatedField<int>::Swap(a2, a4);
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<unsigned int>::Set(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 136))(a1, a4);
  *(*(a2 + 8) + 4 * a3) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<unsigned int>::Add(uint64_t a1, void *a2, uint64_t a3)
{
  result = (*(*a1 + 136))(a1, a3);
  v5 = HIDWORD(*a2);
  v6 = *a2;
  if (v6 == v5)
  {
    v8 = result;
    google::protobuf::RepeatedField<int>::Grow(a2, v5, (v5 + 1));
    result = v8;
    v6 = *a2;
  }

  v7 = a2[1];
  *a2 = v6 + 1;
  *(v7 + 4 * v6) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<unsigned int>::Reserve(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2[1] < a3)
  {
    return google::protobuf::RepeatedField<int>::Grow(a2, *a2, a3);
  }

  return result;
}

void google::protobuf::internal::RepeatedFieldWrapper<unsigned int>::SwapElements(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = *(v4 + 4 * a4);
  *(v4 + 4 * a4) = v5;
}

void google::protobuf::internal::RepeatedFieldPrimitiveAccessor<unsigned int>::Swap(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  if (a1 != a3)
  {
    v6[2] = v4;
    v6[3] = v5;
    google::protobuf::internal::RepeatedFieldPrimitiveAccessor<int>::Swap(v6);
  }

  google::protobuf::RepeatedField<unsigned int>::Swap(a2, a4);
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<long long>::Set(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 136))(a1, a4);
  *(*(a2 + 8) + 8 * a3) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<long long>::Add(uint64_t a1, int *a2, uint64_t a3)
{
  result = (*(*a1 + 136))(a1, a3);
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v8 = result;
    google::protobuf::RepeatedField<long long>::Grow(a2, v5);
    result = v8;
    v6 = *a2;
  }

  v7 = *(a2 + 1);
  *a2 = v6 + 1;
  *(v7 + 8 * v6) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<long long>::Reserve(uint64_t a1, unsigned int *a2, signed int a3)
{
  if (a2[1] < a3)
  {
    return google::protobuf::RepeatedField<long long>::Grow(a2, *a2);
  }

  return result;
}

void google::protobuf::internal::RepeatedFieldWrapper<long long>::SwapElements(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = v5;
}

void google::protobuf::internal::RepeatedFieldPrimitiveAccessor<long long>::Swap(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  if (a1 != a3)
  {
    v6[2] = v4;
    v6[3] = v5;
    google::protobuf::internal::RepeatedFieldPrimitiveAccessor<int>::Swap(v6);
  }

  google::protobuf::RepeatedField<long long>::Swap(a2, a4);
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<unsigned long long>::Set(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 136))(a1, a4);
  *(*(a2 + 8) + 8 * a3) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<unsigned long long>::Add(uint64_t a1, int *a2, uint64_t a3)
{
  result = (*(*a1 + 136))(a1, a3);
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v8 = result;
    google::protobuf::RepeatedField<long long>::Grow(a2, v5);
    result = v8;
    v6 = *a2;
  }

  v7 = *(a2 + 1);
  *a2 = v6 + 1;
  *(v7 + 8 * v6) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<unsigned long long>::Reserve(uint64_t a1, unsigned int *a2, signed int a3)
{
  if (a2[1] < a3)
  {
    return google::protobuf::RepeatedField<long long>::Grow(a2, *a2);
  }

  return result;
}

void google::protobuf::internal::RepeatedFieldWrapper<unsigned long long>::SwapElements(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = v5;
}

void google::protobuf::internal::RepeatedFieldPrimitiveAccessor<unsigned long long>::Swap(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  if (a1 != a3)
  {
    v6[2] = v4;
    v6[3] = v5;
    google::protobuf::internal::RepeatedFieldPrimitiveAccessor<int>::Swap(v6);
  }

  google::protobuf::RepeatedField<unsigned long long>::Swap(a2, a4);
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<float>::Add(uint64_t a1, int *a2, uint64_t a3)
{
  result = (*(*a1 + 136))(a1, a3);
  v7 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v9 = v5;
    result = google::protobuf::RepeatedField<int>::Grow(a2, v6, (v6 + 1));
    v5 = v9;
    v7 = *a2;
  }

  v8 = *(a2 + 1);
  *a2 = v7 + 1;
  *(v8 + 4 * v7) = v5;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<float>::Reserve(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2[1] < a3)
  {
    return google::protobuf::RepeatedField<int>::Grow(a2, *a2, a3);
  }

  return result;
}

float google::protobuf::internal::RepeatedFieldWrapper<float>::SwapElements(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  result = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = *(v4 + 4 * a4);
  *(v4 + 4 * a4) = result;
  return result;
}

void google::protobuf::internal::RepeatedFieldPrimitiveAccessor<float>::Swap(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  if (a1 != a3)
  {
    v6[2] = v4;
    v6[3] = v5;
    google::protobuf::internal::RepeatedFieldPrimitiveAccessor<int>::Swap(v6);
  }

  google::protobuf::RepeatedField<float>::Swap(a2, a4);
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<double>::Add(uint64_t a1, int *a2, uint64_t a3)
{
  result = (*(*a1 + 136))(a1, a3);
  v7 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v9 = v5;
    result = google::protobuf::RepeatedField<long long>::Grow(a2, v6);
    v5 = v9;
    v7 = *a2;
  }

  v8 = *(a2 + 1);
  *a2 = v7 + 1;
  *(v8 + 8 * v7) = v5;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<double>::Reserve(uint64_t a1, unsigned int *a2, signed int a3)
{
  if (a2[1] < a3)
  {
    return google::protobuf::RepeatedField<long long>::Grow(a2, *a2);
  }

  return result;
}

double google::protobuf::internal::RepeatedFieldWrapper<double>::SwapElements(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  result = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = result;
  return result;
}

void google::protobuf::internal::RepeatedFieldPrimitiveAccessor<double>::Swap(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  if (a1 != a3)
  {
    v6[2] = v4;
    v6[3] = v5;
    google::protobuf::internal::RepeatedFieldPrimitiveAccessor<int>::Swap(v6);
  }

  google::protobuf::RepeatedField<double>::Swap(a2, a4);
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<BOOL>::Set(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 136))(a1, a4);
  *(*(a2 + 8) + a3) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<BOOL>::Add(uint64_t a1, int *a2, uint64_t a3)
{
  result = (*(*a1 + 136))(a1, a3);
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v8 = result;
    google::protobuf::RepeatedField<BOOL>::Grow(a2, v5, (v5 + 1));
    result = v8;
    v6 = *a2;
  }

  v7 = *(a2 + 1);
  *a2 = v6 + 1;
  *(v7 + v6) = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedFieldWrapper<BOOL>::Reserve(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2[1] < a3)
  {
    return google::protobuf::RepeatedField<BOOL>::Grow(a2, *a2, a3);
  }

  return result;
}

void google::protobuf::internal::RepeatedFieldWrapper<BOOL>::SwapElements(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + a3);
  *(v4 + a3) = *(v4 + a4);
  *(v4 + a4) = v5;
}

void google::protobuf::internal::RepeatedFieldPrimitiveAccessor<BOOL>::Swap(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  if (a1 != a3)
  {
    v6[2] = v4;
    v6[3] = v5;
    google::protobuf::internal::RepeatedFieldPrimitiveAccessor<int>::Swap(v6);
  }

  google::protobuf::RepeatedField<BOOL>::Swap(a2, a4);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<std::string>::Get(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = (*a2 + 8 * a3 + 7);
  }

  else
  {
    v4 = a2;
  }

  return (*(*a1 + 152))(a1, *v4, a4);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<std::string>::Clear(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) >= 1)
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(a2);
  }

  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<std::string>::Set(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = (*a2 + 8 * a3 + 7);
  }

  else
  {
    v4 = a2;
  }

  return (*(*a1 + 144))(a1, a4, *v4);
}

void *google::protobuf::internal::RepeatedPtrFieldWrapper<std::string>::Add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (*(*a1 + 136))(a1, a3);
  result = (*(*a1 + 144))(a1, a3, v6);
  v8 = a2[2];
  if (!v8)
  {
    v9 = *a2;
    if (*a2)
    {
      v14 = *(v9 - 1);
      v13 = v9 - 1;
      v12 = v14;
      if (v14 > *(a2 + 3))
      {
        goto LABEL_2;
      }

      v11 = (v13 + 8);
      v10 = *(a2 + 2);
      if (v10 >= v12)
      {
        *(a2 + 2) = v10 + 1;
        v11[v10] = v6;
        v15 = *a2;
        if ((*a2 & 1) == 0)
        {
          return result;
        }

        goto LABEL_17;
      }

      v16 = &v11[v10];
    }

    else
    {
      if (v9)
      {
        goto LABEL_2;
      }

      v10 = *(a2 + 2);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = a2;
        goto LABEL_16;
      }

      v12 = 0;
      v16 = &a2[v10];
      v11 = a2;
    }

    v11[v12] = *v16;
LABEL_16:
    *(a2 + 2) = v10 + 1;
    v11[v10] = v6;
    v15 = *a2;
    if ((*a2 & 1) == 0)
    {
      return result;
    }

LABEL_17:
    ++*(v15 - 1);
    return result;
  }

LABEL_2:

  return google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<std::string>>(a2, v6, 0, v8);
}

void google::protobuf::internal::RepeatedPtrFieldWrapper<std::string>::RemoveLast(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  *(a2 + 8) = v2;
  v3 = (*a2 + 8 * v2 + 7);
  if ((*a2 & 1) == 0)
  {
    v3 = a2;
  }

  v4 = *v3;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
  }
}

void google::protobuf::internal::RepeatedPtrFieldWrapper<std::string>::SwapElements(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v4 = *a2 + 7;
  if (*a2)
  {
    v5 = (v4 + 8 * a3);
  }

  else
  {
    v5 = a2;
  }

  v6 = (v4 + 8 * a4);
  if ((*a2 & 1) == 0)
  {
    v6 = a2;
  }

  v7 = *v5;
  *v5 = *v6;
  *v6 = v7;
}

void google::protobuf::internal::RepeatedPtrFieldStringAccessor::Swap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {

    google::protobuf::RepeatedPtrField<std::string>::Swap(a2, a4);
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    google::protobuf::RepeatedPtrField<std::string>::Swap(v24, a2);
    v8 = (*(*a3 + 8))(a3, a4);
    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        memset(&__p, 0, sizeof(__p));
        v10 = (*(*a3 + 16))(a3, a4, v9, &__p);
        if (*(v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, *v10, *(v10 + 8));
        }

        else
        {
          v11 = *v10;
          v23.__r_.__value_.__r.__words[2] = *(v10 + 16);
          *&v23.__r_.__value_.__l.__data_ = v11;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_10:
            __p = v23;
            goto LABEL_13;
          }
        }

        else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
LABEL_13:
        (*(*a1 + 40))(a1, a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_17:
            operator delete(v23.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }

    v12 = *(a2 + 8);
    (*(*a3 + 24))(a3, a4);
    if (v12 >= 1)
    {
      v13 = 8;
      do
      {
        if (v24[0])
        {
          v14 = (v24[0] + v13 - 1);
        }

        else
        {
          v14 = v24;
        }

        v15 = *v14;
        if (*(v15 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v15, *(v15 + 1));
        }

        else
        {
          v16 = *v15;
          __p.__r_.__value_.__r.__words[2] = *(v15 + 2);
          *&__p.__r_.__value_.__l.__data_ = v16;
        }

        (*(*a3 + 40))(a3, a4, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v13 += 8;
        --v12;
      }

      while (v12);
    }

    if (v24[0] && !v25)
    {
      if (v24[0])
      {
        v19 = (v24[0] - 1);
        v17 = *(v24[0] - 1);
        if (v17 < 1)
        {
LABEL_46:
          operator delete(v19);
          return;
        }

        v18 = (v24[0] + 7);
      }

      else
      {
        v17 = 1;
        v18 = v24;
      }

      v20 = v17;
      do
      {
        v21 = *v18;
        if (*v18)
        {
          if (*(v21 + 23) < 0)
          {
            v22 = *v18;
            operator delete(*v21);
          }

          MEMORY[0x23EED9460]();
        }

        ++v18;
        --v20;
      }

      while (v20);
      if (v24[0])
      {
        v19 = (v24[0] - 1);
        goto LABEL_46;
      }
    }
  }
}

void sub_23CDEA034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(va);
  _Unwind_Resume(a1);
}

void sub_23CDEA054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(&a15);
    _Unwind_Resume(a1);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(&a15);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<std::string>>(void *a1, std::string *a2, google::protobuf::internal::ThreadSafeArena *a3, google::protobuf::internal::ThreadSafeArena *this)
{
  if (!a3 && this)
  {
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      google::protobuf::internal::ThreadSafeArena::AddCleanup(this, a2, google::protobuf::internal::arena_delete_object<std::string>);
      a2 = v5;
      a1 = v4;
    }

    goto LABEL_5;
  }

  if (this == a3)
  {
LABEL_5:

    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<std::string>>(a1, a2);
  }

  v7 = a1;
  v8 = a2;
  v9 = google::protobuf::internal::GenericTypeHandler<std::string>::New(this);
  std::string::operator=(v9, v8);
  a1 = v7;
  a2 = v9;

  return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<std::string>>(a1, a2);
}

void *google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<std::string>>(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 3);
  v5 = *(result + 2);
  if (v5 > v4)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(result, 1);
LABEL_3:
    ++*(*v3 - 1);
    goto LABEL_4;
  }

  v8 = *result;
  if ((*result & 1) == 0)
  {
    if (v8)
    {
      v9 = (v8 - 1);
      goto LABEL_11;
    }

    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    v16 = 0;
    v10 = 0;
    v15 = 7;
LABEL_26:
    v17 = (v15 + 8 * v10);
    if (v8)
    {
      v18 = v17;
    }

    else
    {
      v18 = result;
    }

    *v18 = v16;
    goto LABEL_3;
  }

  v9 = (v8 - 1);
  v10 = *(v8 - 1);
  if (v10 <= v4)
  {
    if (v5 >= v10)
    {
      *v9 = v10 + 1;
      goto LABEL_4;
    }

    v15 = v8 + 7;
    v16 = *(v8 + 7 + 8 * v5);
    goto LABEL_26;
  }

LABEL_11:
  v11 = &v9[2 * v5 + 2];
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = result[2] == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    result = MEMORY[0x23EED9460](v13, 0x1012C40EC159624);
  }

LABEL_4:
  v6 = *(v3 + 2);
  *(v3 + 2) = v6 + 1;
  v7 = (*v3 + 8 * v6 + 7);
  if ((*v3 & 1) == 0)
  {
    v7 = v3;
  }

  *v7 = a2;
  return result;
}

void *google::protobuf::internal::GenericTypeHandler<std::string>::New(google::protobuf::internal::ThreadSafeArena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(a1);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void google::protobuf::RepeatedPtrField<std::string>::Swap(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v2 = *a1;
      *a1 = *a2;
      *a2 = v2;
      v3 = *(a1 + 1);
      *(a1 + 1) = *(a2 + 1);
      *(a2 + 1) = v3;
      v4 = *(a1 + 2);
      *(a1 + 2) = *(a2 + 2);
      *(a2 + 2) = v4;
      v5 = *(a1 + 3);
      *(a1 + 3) = *(a2 + 3);
      *(a2 + 3) = v5;
      v6 = *(a1 + 4);
      *(a1 + 4) = *(a2 + 4);
      *(a2 + 4) = v6;
      v7 = *(a1 + 5);
      *(a1 + 5) = *(a2 + 5);
      *(a2 + 5) = v7;
      v8 = *(a1 + 6);
      *(a1 + 6) = *(a2 + 6);
      *(a2 + 6) = v8;
      v9 = *(a1 + 7);
      *(a1 + 7) = *(a2 + 7);
      *(a2 + 7) = v9;
      v10 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v10;
      v11 = *(a1 + 9);
      *(a1 + 9) = *(a2 + 9);
      *(a2 + 9) = v11;
      v12 = *(a1 + 10);
      *(a1 + 10) = *(a2 + 10);
      *(a2 + 10) = v12;
      v13 = *(a1 + 11);
      *(a1 + 11) = *(a2 + 11);
      *(a2 + 11) = v13;
      v14 = *(a1 + 12);
      *(a1 + 12) = *(a2 + 12);
      *(a2 + 12) = v14;
      v15 = *(a1 + 13);
      *(a1 + 13) = *(a2 + 13);
      *(a2 + 13) = v15;
      v16 = *(a1 + 14);
      *(a1 + 14) = *(a2 + 14);
      *(a2 + 14) = v16;
      v17 = *(a1 + 15);
      *(a1 + 15) = *(a2 + 15);
      *(a2 + 15) = v17;
    }

    else
    {
      google::protobuf::internal::RepeatedPtrFieldBase::SwapFallback<google::protobuf::internal::GenericTypeHandler<std::string>>(a1, a2);
    }
  }
}

uint64_t google::protobuf::internal::MapFieldAccessor::Get(google::protobuf::internal::MapFieldAccessor *this, atomic_ullong *a2, int a3, void *a4)
{
  RepeatedField = google::protobuf::internal::MapFieldBase::GetRepeatedField(a2);
  if (*RepeatedField)
  {
    v6 = *RepeatedField + 8 * a3 + 7;
  }

  else
  {
    v6 = RepeatedField;
  }

  return *v6;
}

int *google::protobuf::internal::MapFieldAccessor::Clear(google::protobuf::internal::MapFieldAccessor *this, atomic_ullong *a2)
{
  result = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a2);
  if (result[2] >= 1)
  {

    return google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(result);
  }

  return result;
}

void google::protobuf::internal::MapFieldAccessor::Set(google::protobuf::internal::MapFieldAccessor *this, atomic_ullong *a2, int a3, const google::protobuf::Message *a4)
{
  v6 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a2);
  if (*v6)
  {
    v7 = (*v6 + 8 * a3 + 7);
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;

  google::protobuf::Message::CopyFrom(v8, a4);
}

uint64_t *google::protobuf::internal::MapFieldAccessor::Add(google::protobuf::internal::MapFieldAccessor *this, atomic_ullong *a2, const google::protobuf::Message *a3)
{
  v5 = (*(*a3 + 16))(a3, 0);
  google::protobuf::Message::CopyFrom(v5, a3);
  result = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a2);
  v7 = *(v5 + 1);
  if (v7)
  {
    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    v8 = result[2];
    if (v8 != v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = *result;
    if (*result)
    {
      v14 = *(v9 - 1);
      v13 = v9 - 1;
      v12 = v14;
      if (v14 > *(result + 3))
      {
        goto LABEL_3;
      }

      v11 = v13 + 8;
      v10 = *(result + 2);
      if (v10 >= v12)
      {
        *(result + 2) = v10 + 1;
        *(v11 + 8 * v10) = v5;
        v15 = *result;
        if ((*result & 1) == 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      v16 = (v11 + 8 * v10);
    }

    else
    {
      if (v9)
      {
        goto LABEL_3;
      }

      v10 = *(result + 2);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = result;
        goto LABEL_18;
      }

      v12 = 0;
      v16 = &result[v10];
      v11 = result;
    }

    *(v11 + 8 * v12) = *v16;
LABEL_18:
    *(result + 2) = v10 + 1;
    *(v11 + 8 * v10) = v5;
    v15 = *result;
    if ((*result & 1) == 0)
    {
      return result;
    }

LABEL_19:
    ++*(v15 - 1);
    return result;
  }

  v8 = result[2];
  if (v8 == v7)
  {
    goto LABEL_7;
  }

LABEL_3:

  return google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(result, v5, v7, v8);
}

uint64_t google::protobuf::internal::MapFieldAccessor::RemoveLast(google::protobuf::internal::MapFieldAccessor *this, atomic_ullong *a2)
{
  v2 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a2);
  v3 = *(v2 + 8) - 1;
  *(v2 + 8) = v3;
  v4 = *v2 + 8 * v3 + 7;
  if ((*v2 & 1) == 0)
  {
    v4 = v2;
  }

  v5 = *(**v4 + 24);

  return v5();
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::internal::MapFieldAccessor::Reserve(google::protobuf::internal::MapFieldAccessor *this, atomic_ullong *a2, int a3)
{
  v4 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a2);

  return google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v4, a3);
}

uint64_t *google::protobuf::internal::MapFieldAccessor::SwapElements(google::protobuf::internal::MapFieldAccessor *this, atomic_ullong *a2, int a3, int a4)
{
  result = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a2);
  v7 = *result + 7;
  if (*result)
  {
    v8 = (v7 + 8 * a3);
  }

  else
  {
    v8 = result;
  }

  v9 = (v7 + 8 * a4);
  if ((*result & 1) == 0)
  {
    v9 = result;
  }

  v10 = *v8;
  *v8 = *v9;
  *v9 = v10;
  return result;
}

void google::protobuf::internal::MapFieldAccessor::Swap(uint64_t a1, atomic_ullong *this, uint64_t a3, atomic_ullong *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::MapFieldAccessor::Swap(&v7);
  }

  v5 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v6 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a4);

  google::protobuf::RepeatedPtrField<google::protobuf::Message>::Swap(v5, v6);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<google::protobuf::Message>::Get(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = (*a2 + 8 * a3 + 7);
  }

  else
  {
    v4 = a2;
  }

  return (*(*a1 + 152))(a1, *v4, a4);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<google::protobuf::Message>::Clear(uint64_t a1, int *a2)
{
  if (a2[2] >= 1)
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(a2);
  }

  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<google::protobuf::Message>::Set(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = (*a2 + 8 * a3 + 7);
  }

  else
  {
    v4 = a2;
  }

  return (*(*a1 + 144))(a1, a4, *v4);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<google::protobuf::Message>::Add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 136))(a1, a3);
  result = (*(*a1 + 144))(a1, a3, v6);
  v8 = v6[1];
  if (v8)
  {
    v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    v9 = *(a2 + 16);
    if (v9 != v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = *a2;
    if (*a2)
    {
      v15 = *(v10 - 1);
      v14 = v10 - 1;
      v13 = v15;
      if (v15 > *(a2 + 12))
      {
        goto LABEL_3;
      }

      v12 = v14 + 8;
      v11 = *(a2 + 8);
      if (v11 >= v13)
      {
        *(a2 + 8) = v11 + 1;
        *(v12 + 8 * v11) = v6;
        v16 = *a2;
        if ((*a2 & 1) == 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      v17 = (v12 + 8 * v11);
    }

    else
    {
      if (v10)
      {
        goto LABEL_3;
      }

      v11 = *(a2 + 8);
      if ((v11 & 0x80000000) == 0)
      {
        v12 = a2;
        goto LABEL_18;
      }

      v13 = 0;
      v17 = (a2 + 8 * v11);
      v12 = a2;
    }

    *(v12 + 8 * v13) = *v17;
LABEL_18:
    *(a2 + 8) = v11 + 1;
    *(v12 + 8 * v11) = v6;
    v16 = *a2;
    if ((*a2 & 1) == 0)
    {
      return result;
    }

LABEL_19:
    ++*(v16 - 1);
    return result;
  }

  v9 = *(a2 + 16);
  if (v9 == v8)
  {
    goto LABEL_7;
  }

LABEL_3:

  return google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(a2, v6, v8, v9);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<google::protobuf::Message>::RemoveLast(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  *(a2 + 8) = v2;
  v3 = *a2 + 8 * v2 + 7;
  if ((*a2 & 1) == 0)
  {
    v3 = a2;
  }

  return (*(**v3 + 24))();
}

void google::protobuf::internal::RepeatedPtrFieldWrapper<google::protobuf::Message>::SwapElements(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v4 = *a2 + 7;
  if (*a2)
  {
    v5 = (v4 + 8 * a3);
  }

  else
  {
    v5 = a2;
  }

  v6 = (v4 + 8 * a4);
  if ((*a2 & 1) == 0)
  {
    v6 = a2;
  }

  v7 = *v5;
  *v5 = *v6;
  *v6 = v7;
}

void google::protobuf::internal::RepeatedPtrFieldMessageAccessor::Swap(uint64_t a1, google::protobuf::internal::RepeatedPtrFieldBase *a2, uint64_t a3, google::protobuf::internal::RepeatedPtrFieldBase *a4)
{
  if (a1 != a3)
  {
    v6[2] = v4;
    v6[3] = v5;
    google::protobuf::internal::RepeatedPtrFieldMessageAccessor::Swap(v6);
  }

  google::protobuf::RepeatedPtrField<google::protobuf::Message>::Swap(a2, a4);
}

void google::protobuf::internal::cleanup::arena_destruct_object<google::protobuf::internal::InternalMetadata::Container<google::protobuf::UnknownFieldSet>>(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v3 != v4)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v5);
    v3 = *v5;
  }

  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(a1, a2, 267);
}

uint64_t google::protobuf::json_internal::ClassifyMessage(void *a1, uint64_t a2)
{
  v2 = a2 - 16;
  if (a2 < 0x10)
  {
    return 0;
  }

  if (*a1 != 0x702E656C676F6F67 || a1[1] != 0x2E6675626F746F72)
  {
    return 0;
  }

  if (a2 <= 23)
  {
    if (a2 == 19)
    {
      return !memcmp(a1 + 2, "Any", v2);
    }

    else if (a2 == 21)
    {
      if (memcmp(a1 + 2, "Value", v2))
      {
        return 0;
      }

      return 5;
    }

    else
    {
      if (a2 != 22 || memcmp(a1 + 2, "Struct", v2))
      {
        return 0;
      }

      return 3;
    }
  }

  if (a2 > 25)
  {
    if (a2 == 26)
    {
      if (memcmp(a1 + 2, "BytesValue", v2) && memcmp(a1 + 2, "FloatValue", v2) && memcmp(a1 + 2, "Int32Value", v2))
      {
        if (memcmp(a1 + 2, "Int64Value", v2))
        {
          return 0;
        }

        return 2;
      }
    }

    else if (a2 != 27 || memcmp(a1 + 2, "DoubleValue", v2) && memcmp(a1 + 2, "StringValue", v2) && memcmp(a1 + 2, "UInt32Value", v2) && memcmp(a1 + 2, "UInt64Value", v2))
    {
      return 0;
    }

    return 2;
  }

  if (a2 == 24)
  {
    if (memcmp(a1 + 2, "Duration", v2))
    {
      return 0;
    }

    return 8;
  }

  if (!memcmp(a1 + 2, "BoolValue", v2))
  {
    return 2;
  }

  if (!memcmp(a1 + 2, "NullValue", v2))
  {
    return 6;
  }

  if (!memcmp(a1 + 2, "ListValue", v2))
  {
    return 4;
  }

  if (memcmp(a1 + 2, "Timestamp", v2))
  {
    if (!memcmp(a1 + 2, "FieldMask", v2))
    {
      return 9;
    }

    return 0;
  }

  return 7;
}

uint64_t google::protobuf::json_internal::Proto2Descriptor::MustHaveField(google::protobuf::Descriptor *a1, unsigned int a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  result = google::protobuf::Descriptor::FindFieldByNumber(a1, a2);
  if (!result)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v11, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/json/internal/descriptor_traits.h", 159);
    v6 = *(a1 + 1);
    v7 = *(v6 + 47);
    if (v7 < 0)
    {
      v8 = *(v6 + 24);
      v7 = *(v6 + 32);
    }

    else
    {
      v8 = v6 + 24;
    }

    v9[0] = v8;
    v9[1] = v7;
    v12[0] = v9;
    v12[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
    v12[2] = a2;
    v12[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
    absl::lts_20240722::str_format_internal::FormatPack("%s has, by definition, a field numbered %d, but it could not be looked up; this is a bug", 88, v12, 2uLL, &v10);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v11, &v10);
    std::string::~string(&v10);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v11);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDEB028(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&a17);
}

char *google::protobuf::json_internal::Proto2Descriptor::FieldTypeName(google::protobuf::json_internal::Proto2Descriptor *this, const google::protobuf::FieldDescriptor *a2)
{
  v2 = *(this + 3);
  if (v2 && (v10 = this, v11 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v2, memory_order_acquire) != 221))
  {
    v6 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v2, 1, &v11, &v10);
    this = v6;
    v3 = v6[2];
    if (v3 == 11)
    {
LABEL_4:
      v4 = *(google::protobuf::FieldDescriptor::message_type(this) + 8);
      if ((*(v4 + 47) & 0x8000000000000000) == 0)
      {
        return (v4 + 24);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(this + 2);
    if (v3 == 11)
    {
      goto LABEL_4;
    }
  }

  v7 = *(this + 3);
  if (v7)
  {
    v10 = this;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != 221)
    {
      v9 = this;
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, &v11, &v10);
      this = v9;
    }

    v3 = *(this + 2);
  }

  if (v3 == 14)
  {
    v4 = *(google::protobuf::FieldDescriptor::enum_type(this) + 8);
    if ((*(v4 + 47) & 0x8000000000000000) == 0)
    {
      return (v4 + 24);
    }

LABEL_13:
    result = *(v4 + 24);
    v8 = *(v4 + 32);
    return result;
  }

  return &byte_23CE7F131;
}

uint64_t *absl::lts_20240722::StatusOr<int>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if ((v3 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
  }

  return a1;
}

uint64_t *absl::lts_20240722::StatusOr<double>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if ((v3 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
  }

  return a1;
}

uint64_t *absl::lts_20240722::StatusOr<long long>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if ((v3 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
  }

  return a1;
}

uint64_t *absl::lts_20240722::StatusOr<unsigned long long>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if ((v3 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
  }

  return a1;
}

uint64_t absl::lts_20240722::StatusOr<std::string>::~StatusOr(uint64_t a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if (v3 != 1)
  {
    if ((v3 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
    }

    return a1;
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void google::protobuf::internal::ReflectionOps::Copy(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  if (this != a2)
  {
    google::protobuf::internal::ReflectionOps::Clear(a2, a2);

    google::protobuf::internal::ReflectionOps::Merge(this, a2, v6);
  }
}

void google::protobuf::internal::ReflectionOps::Clear(google::protobuf::internal::ReflectionOps *this, google::protobuf::Message *a2)
{
  ReflectionOrDie = google::protobuf::internal::GetReflectionOrDie(this, a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  google::protobuf::Reflection::ListFields(ReflectionOrDie, this, &__p, v4, v5);
  v8 = __p;
  v9 = v12;
  if (__p != v12)
  {
    do
    {
      google::protobuf::Reflection::ClearField(ReflectionOrDie, this, *v8++, v6, v7);
    }

    while (v8 != v9);
  }

  if (*google::protobuf::Reflection::GetInternalMetadata(ReflectionOrDie, this))
  {
    v10 = google::protobuf::Reflection::MutableUnknownFields(ReflectionOrDie, this);
    if (*v10 != *(v10 + 1))
    {
      google::protobuf::UnknownFieldSet::ClearFallback(v10);
    }
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_23CDEB3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::ReflectionOps::Merge(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  if (this == a2)
  {
    google::protobuf::internal::ReflectionOps::Merge(this, a2);
  }

  v5 = (*(*this + 80))(this);
  v6 = (*(*a2 + 80))(a2);
  if (v6 != v5)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<void const*,void const*>(v6, v5, "to->GetDescriptor() == descriptor");
  }

  ReflectionOrDie = google::protobuf::internal::GetReflectionOrDie(this, v7);
  v10 = google::protobuf::internal::GetReflectionOrDie(a2, v9);
  MessageFactory = google::protobuf::Reflection::GetMessageFactory(ReflectionOrDie);
  v12 = google::protobuf::MessageFactory::generated_factory(MessageFactory);
  v13 = google::protobuf::Reflection::GetMessageFactory(v10);
  v14 = google::protobuf::MessageFactory::generated_factory(v13);
  v86 = 0;
  v87 = 0;
  v88 = 0;
  google::protobuf::Reflection::ListFields(ReflectionOrDie, this, &v86, v15, v16);
  v19 = v86;
  v83 = v87;
  if (v86 != v87)
  {
    v82 = (MessageFactory == v12) ^ (v13 != v14);
    do
    {
      v20 = *v19;
      if ((~*(*v19 + 1) & 0x60) != 0)
      {
        v53 = *(v20 + 24);
        if (v53)
        {
          v90 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v89 = v20;
          if (atomic_load_explicit(v53, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v53, 1, &v90, &v89);
          }
        }

        v54 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v20 + 2)];
        if (v54 > 5)
        {
          if (v54 <= 7)
          {
            if (v54 == 6)
            {
              Float = google::protobuf::Reflection::GetFloat(ReflectionOrDie, this, v20, v17, v18);
              google::protobuf::Reflection::SetFloat(v10, a2, v20, Float, v69, v70);
            }

            else
            {
              Bool = google::protobuf::Reflection::GetBool(ReflectionOrDie, this, v20, v17, v18);
              google::protobuf::Reflection::SetBool(v10, a2, v20, Bool, v65);
            }
          }

          else
          {
            switch(v54)
            {
              case 8:
                Enum = google::protobuf::Reflection::GetEnum(ReflectionOrDie, this, v20, v17, v18);
                google::protobuf::Reflection::SetEnum(v10, a2, v20, Enum);
                break;
              case 9:
                google::protobuf::Reflection::GetString(v20, ReflectionOrDie, this, v18, &v84);
                google::protobuf::Reflection::SetString(v10, a2, v20, &v84, v76);
                if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v84.__r_.__value_.__l.__data_);
                }

                break;
              case 10:
                Message = google::protobuf::Reflection::GetMessage(ReflectionOrDie, this, v20, 0, v18);
                v60 = Message;
                if (ReflectionOrDie == v10)
                {
                  (*(*Message + 80))(Message);
                  v61 = google::protobuf::Reflection::GetMessageFactory(v77);
                }

                else
                {
                  v61 = 0;
                }

                v78 = google::protobuf::Reflection::MutableMessage(v10, a2, v20, v61, v59);
                google::protobuf::Message::MergeFrom(v78, v60);
                break;
            }
          }
        }

        else if (v54 <= 2)
        {
          if (v54 == 1)
          {
            Int32 = google::protobuf::Reflection::GetInt32(ReflectionOrDie, this, v20, v17, v18);
            google::protobuf::Reflection::SetInt32(v10, a2, v20, Int32, v67);
          }

          else if (v54 == 2)
          {
            Int64 = google::protobuf::Reflection::GetInt64(ReflectionOrDie, this, v20, v17, v18);
            google::protobuf::Reflection::SetInt64(v10, a2, v20, Int64, v63);
          }
        }

        else if (v54 == 3)
        {
          UInt32 = google::protobuf::Reflection::GetUInt32(ReflectionOrDie, this, v20, v17, v18);
          google::protobuf::Reflection::SetUInt32(v10, a2, v20, UInt32, v72);
        }

        else if (v54 == 4)
        {
          UInt64 = google::protobuf::Reflection::GetUInt64(ReflectionOrDie, this, v20, v17, v18);
          google::protobuf::Reflection::SetUInt64(v10, a2, v20, UInt64, v75);
        }

        else
        {
          Double = google::protobuf::Reflection::GetDouble(ReflectionOrDie, this, v20, v17, v18);
          google::protobuf::Reflection::SetDouble(v10, a2, v20, Double, v56, v57);
        }
      }

      else
      {
        if (!v82)
        {
          goto LABEL_16;
        }

        v21 = *(v20 + 24);
        if (v21)
        {
          v90 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v89 = v20;
          if (atomic_load_explicit(v21, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, &v90, &v89);
          }
        }

        if (*(v20 + 2) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(v20) && (MapData = google::protobuf::Reflection::GetMapData(ReflectionOrDie, this, v20, v17, v18), v25 = google::protobuf::Reflection::MutableMapData(v10, a2, v20, v23, v24), google::protobuf::internal::MapFieldBase::IsMapValid(v25)) && google::protobuf::internal::MapFieldBase::IsMapValid(MapData))
        {
          (*(*v25 + 48))(v25, MapData);
        }

        else
        {
LABEL_16:
          v26 = google::protobuf::Reflection::FieldSize(ReflectionOrDie, this, v20, v17, v18);
          if (v26 >= 1)
          {
            for (i = 0; i != v26; ++i)
            {
              v28 = *(v20 + 24);
              if (v28)
              {
                v90 = google::protobuf::FieldDescriptor::TypeOnceInit;
                v89 = v20;
                if (atomic_load_explicit(v28, memory_order_acquire) != 221)
                {
                  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v28, 1, &v90, &v89);
                }
              }

              v29 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v20 + 2)];
              if (v29 > 5)
              {
                if (v29 <= 7)
                {
                  if (v29 == 6)
                  {
                    RepeatedFloat = google::protobuf::Reflection::GetRepeatedFloat(ReflectionOrDie, this, v20, i, v18);
                    google::protobuf::Reflection::AddFloat(v10, a2, v20, RepeatedFloat, v43, v44);
                  }

                  else
                  {
                    RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(ReflectionOrDie, this, v20, i, v18);
                    google::protobuf::Reflection::AddBool(v10, a2, v20, RepeatedBool, v39);
                  }
                }

                else
                {
                  switch(v29)
                  {
                    case 8:
                      RepeatedEnum = google::protobuf::Reflection::GetRepeatedEnum(ReflectionOrDie, this, v20, i, v18);
                      google::protobuf::Reflection::AddEnum(v10, a2, v20, RepeatedEnum);
                      break;
                    case 9:
                      google::protobuf::Reflection::GetRepeatedString(v20, ReflectionOrDie, this, i, v18, &__p);
                      google::protobuf::Reflection::AddString(v10, a2, v20, &__p, v50);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      break;
                    case 10:
                      RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(ReflectionOrDie, this, v20, i, v18);
                      v34 = RepeatedMessage;
                      if (ReflectionOrDie == v10)
                      {
                        (*(*RepeatedMessage + 80))(RepeatedMessage);
                        v35 = google::protobuf::Reflection::GetMessageFactory(v51);
                      }

                      else
                      {
                        v35 = 0;
                      }

                      v52 = google::protobuf::Reflection::AddMessage(v10, a2, v20, v35);
                      google::protobuf::Message::MergeFrom(v52, v34);
                      break;
                  }
                }
              }

              else if (v29 <= 2)
              {
                if (v29 == 1)
                {
                  RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(ReflectionOrDie, this, v20, i, v18);
                  google::protobuf::Reflection::AddInt32(v10, a2, v20, RepeatedInt32, v41);
                }

                else if (v29 == 2)
                {
                  RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(ReflectionOrDie, this, v20, i, v18);
                  google::protobuf::Reflection::AddInt64(v10, a2, v20, RepeatedInt64, v37);
                }
              }

              else if (v29 == 3)
              {
                RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(ReflectionOrDie, this, v20, i, v18);
                google::protobuf::Reflection::AddUInt32(v10, a2, v20, RepeatedUInt32, v46);
              }

              else if (v29 == 4)
              {
                RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(ReflectionOrDie, this, v20, i, v18);
                google::protobuf::Reflection::AddUInt64(v10, a2, v20, RepeatedUInt64, v49);
              }

              else
              {
                RepeatedDouble = google::protobuf::Reflection::GetRepeatedDouble(ReflectionOrDie, this, v20, i, v18);
                google::protobuf::Reflection::AddDouble(v10, a2, v20, RepeatedDouble, v31, v32);
              }
            }
          }
        }
      }

      v19 += 8;
    }

    while (v19 != v83);
  }

  UnknownFields = google::protobuf::Reflection::GetUnknownFields(ReflectionOrDie, this);
  if (*UnknownFields != UnknownFields[1])
  {
    v80 = google::protobuf::Reflection::MutableUnknownFields(v10, a2);
    v81 = google::protobuf::Reflection::GetUnknownFields(ReflectionOrDie, this);
    google::protobuf::UnknownFieldSet::InternalMergeFrom(v80, v81);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

void sub_23CDEBC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v26 = a1;
  if (a24)
  {
    operator delete(a24);
    v26 = a1;
  }

  _Unwind_Resume(v26);
}

uint64_t google::protobuf::internal::GetReflectionOrDie(uint64_t this, const google::protobuf::Message *a2)
{
  (*(*this + 80))(this, a2);
  if (!v3)
  {
    google::protobuf::internal::GetReflectionOrDie(this, this & 0xFFFFFFFFFFFFLL | 0x71C2000000000000, &v7);
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v6, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/reflection_ops.cc", 38);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "Message does not support reflection (type ", 0x2AuLL);
    v5 = absl::lts_20240722::log_internal::LogMessage::operator<<(v6, &v7);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v5, ").");
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v6);
  }

  return v3;
}

void sub_23CDEBDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ReflectionOps::IsInitialized(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v3 = (*(*this + 80))(this, a2);
  ReflectionOrDie = google::protobuf::internal::GetReflectionOrDie(this, v4);
  v8 = *(v3 + 4);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 88 * v8;
    do
    {
      if (google::protobuf::FieldDescriptor::is_required((*(v3 + 56) + v9)) && !google::protobuf::Reflection::HasField(ReflectionOrDie, this, *(v3 + 56) + v9, v5, v6))
      {
        v11 = 0;
        goto LABEL_50;
      }

      v9 += 88;
    }

    while (v10 != v9);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (*(*(v3 + 32) + 83) == 1)
  {
    google::protobuf::Descriptor::map_value(v3);
    operator new();
  }

  google::protobuf::Reflection::ListFields(ReflectionOrDie, this, &v31, v5, v6);
  v15 = v31;
  v14 = v32;
  if (v31 != v32)
  {
    while (1)
    {
      v16 = *v15;
      v17 = *(*v15 + 24);
      if (v17)
      {
        v37[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v34[0] = v16;
        if (atomic_load_explicit(v17, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v17, 1, v37, v34);
        }
      }

      v18 = *(v16 + 2);
      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v16 + 2)] == 10)
      {
        v19 = *(v16 + 24);
        if (v19)
        {
          v37[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v34[0] = v16;
          if (atomic_load_explicit(v19, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v19, 1, v37, v34);
          }

          v18 = *(v16 + 2);
        }

        if (v18 != 11 || !google::protobuf::FieldDescriptor::is_map_message_type(v16))
        {
LABEL_34:
          if ((~*(v16 + 1) & 0x60) != 0)
          {
            Message = google::protobuf::Reflection::GetMessage(ReflectionOrDie, this, v16, 0, v13);
            if (((*(*Message + 32))(Message) & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v25 = google::protobuf::Reflection::FieldSize(ReflectionOrDie, this, v16, v12, v13);
            if (v25 >= 1)
            {
              v26 = 0;
              while (1)
              {
                RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(ReflectionOrDie, this, v16, v26, v13);
                if (((*(*RepeatedMessage + 32))(RepeatedMessage) & 1) == 0)
                {
                  break;
                }

                if (v25 == ++v26)
                {
                  goto LABEL_14;
                }
              }

LABEL_48:
              v11 = 0;
              v15 = v31;
              if (!v31)
              {
                goto LABEL_50;
              }

              goto LABEL_49;
            }
          }

          goto LABEL_14;
        }

        v20 = *(google::protobuf::FieldDescriptor::message_type(v16) + 56);
        v21 = *(v20 + 112);
        if (v21)
        {
          v37[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v34[0] = v20 + 88;
          if (atomic_load_explicit(v21, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, v37, v34);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v20 + 90)] == 10)
        {
          MapData = google::protobuf::Reflection::GetMapData(ReflectionOrDie, this, v16, v12, v13);
          if (!google::protobuf::internal::MapFieldBase::IsMapValid(MapData))
          {
            goto LABEL_34;
          }

          google::protobuf::MapIterator::MapIterator(v37, this, v16);
          google::protobuf::MapIterator::MapIterator(v34, this, v16);
          google::protobuf::internal::MapFieldBase::MapBegin(MapData, v37);
          google::protobuf::internal::MapFieldBase::MapEnd(MapData, v34);
          while (1)
          {
            v23 = google::protobuf::internal::MapFieldBase::EqualIterator(v38, v37, v34);
            if (v23)
            {
              break;
            }

            MessageValue = google::protobuf::MapValueConstRef::GetMessageValue(v42);
            if (((*(*MessageValue + 32))(MessageValue) & 1) == 0)
            {
              break;
            }

            google::protobuf::internal::MapFieldBase::IncreaseIterator(v38, v37);
          }

          if (v36 == 9 && v35 < 0)
          {
            operator delete(v34[4]);
          }

          if (v41 == 9 && v40 < 0)
          {
            operator delete(v39);
          }

          if (!v23)
          {
            goto LABEL_48;
          }
        }
      }

LABEL_14:
      v15 += 8;
      if (v15 == v14)
      {
        v11 = 1;
        v15 = v31;
        if (v31)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      }
    }
  }

  v11 = 1;
  if (v31)
  {
LABEL_49:
    v32 = v15;
    operator delete(v15);
  }

LABEL_50:
  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23CDEC2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, int a36)
{
  if (a36 == 9 && a35 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::ReflectionOps::FindInitializationErrors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 80))(a1);
  ReflectionOrDie = google::protobuf::internal::GetReflectionOrDie(a1, v7);
  v11 = *(v6 + 4);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 88 * v11;
    v30 = v13;
    v31 = v6;
    do
    {
      if (google::protobuf::FieldDescriptor::is_required((*(v6 + 56) + v12)) && (google::protobuf::Reflection::HasField(ReflectionOrDie, a1, *(v6 + 56) + v12, v8, v9) & 1) == 0)
      {
        v14 = *(*(v6 + 56) + v12 + 8);
        if (*(a2 + 23) >= 0)
        {
          v15 = *(a2 + 23);
        }

        else
        {
          v15 = *(a2 + 8);
        }

        if (*(v14 + 23) >= 0)
        {
          v16 = *(v14 + 23);
        }

        else
        {
          v16 = v14[1];
        }

        if (v16 + v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v16 + v15 > 0x16)
        {
          operator new();
        }

        __p[1] = 0;
        v34 = 0;
        __p[0] = 0;
        HIBYTE(v34) = v16 + v15;
        if (v15)
        {
          if (*(a2 + 23) >= 0)
          {
            v17 = a2;
          }

          else
          {
            v17 = *a2;
          }

          memmove(__p, v17, v15);
        }

        v18 = __p + v15;
        if (v16)
        {
          if (*(v14 + 23) >= 0)
          {
            v19 = v14;
          }

          else
          {
            v19 = *v14;
          }

          memmove(v18, v19, v16);
        }

        v18[v16] = 0;
        std::vector<std::string>::push_back[abi:ne200100](a3, __p);
        v6 = v31;
        v13 = v30;
        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v12 += 88;
    }

    while (v13 != v12);
  }

  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  google::protobuf::Reflection::ListFields(ReflectionOrDie, a1, __p, v8, v9);
  v22 = __p[0];
  v23 = __p[1];
  if (__p[0] == __p[1])
  {
    if (!__p[0])
    {
      return;
    }

    goto LABEL_29;
  }

  do
  {
    v24 = *v22;
    v25 = *(*v22 + 3);
    if (v25)
    {
      v32.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v35 = v24;
      if (atomic_load_explicit(v25, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v25, 1, &v32, &v35);
      }
    }

    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v24[2]] == 10)
    {
      if ((~v24[1] & 0x60) != 0)
      {
        Message = google::protobuf::Reflection::GetMessage(ReflectionOrDie, a1, v24, 0, v21);
        google::protobuf::internal::SubMessagePrefix(&v32, a2, v24, 0xFFFFFFFFLL);
        google::protobuf::internal::ReflectionOps::FindInitializationErrors(Message, &v32, a3);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v26 = google::protobuf::Reflection::FieldSize(ReflectionOrDie, a1, v24, v20, v21);
        if (v26 >= 1)
        {
          v27 = 0;
          do
          {
            RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(ReflectionOrDie, a1, v24, v27, v21);
            google::protobuf::internal::SubMessagePrefix(&v32, a2, v24, v27);
            google::protobuf::internal::ReflectionOps::FindInitializationErrors(RepeatedMessage, &v32, a3);
            if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
            }

            v27 = (v27 + 1);
          }

          while (v26 != v27);
        }
      }
    }

    ++v22;
  }

  while (v22 != v23);
  v22 = __p[0];
  if (__p[0])
  {
LABEL_29:
    __p[1] = v22;
    operator delete(v22);
  }
}

void sub_23CDEC694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::internal::SubMessagePrefix(std::string *this, uint64_t a2, uint64_t a3, absl::lts_20240722::numbers_internal *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
    if ((*(a3 + 1) & 8) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = *a2;
    if ((*(a3 + 1) & 8) == 0)
    {
LABEL_3:
      v7 = *(a3 + 8);
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 8);
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      std::string::append(this, v9, v10);
      goto LABEL_18;
    }
  }

  std::string::append(this, "(");
  v11 = *(a3 + 8);
  v14 = *(v11 + 24);
  v12 = v11 + 24;
  v13 = v14;
  v15 = *(v12 + 23);
  if (v15 >= 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  if (v15 >= 0)
  {
    v17 = *(v12 + 23);
  }

  else
  {
    v17 = *(v12 + 8);
  }

  std::string::append(this, v16, v17);
  std::string::append(this, ")");
LABEL_18:
  if (a4 != -1)
  {
    std::string::append(this, "[");
    v23.__r_.__value_.__r.__words[2] = 0x1600000000000000;
    *&v23.__r_.__value_.__l.__data_ = 0uLL;
    v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a4, &v23, v18);
    std::string::erase(&v23, v19 - &v23, 0xFFFFFFFFFFFFFFFFLL);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v23;
    }

    else
    {
      v20 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    std::string::append(this, v20, size);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    std::string::append(this, "]");
  }

  return std::string::append(this, ".");
}

void sub_23CDEC874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v15 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::GenericSwap(google::protobuf::internal *this, google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    if (*(v5 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    v6 = this;
    v4 = a2;
    goto LABEL_8;
  }

  v7 = *(this + 1);
  if (v7)
  {
    v10 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = a2;
LABEL_8:
  v8 = (*(*v4 + 16))(v4);
  (*(*v8 + 40))(v8, v6);
  (*(*v6 + 24))(v6);
  (*(*v6 + 40))(v6, v4);
  (*(*v4 + 80))(v4);

  google::protobuf::Reflection::Swap(v9, v8, v4);
}

google::protobuf::SourceContext *google::protobuf::SourceContext::SourceContext(google::protobuf::SourceContext *this, google::protobuf::Arena *a2, const google::protobuf::SourceContext *a3)
{
  *(this + 1) = a2;
  v5 = (this + 8);
  *this = off_284F478A0;
  v6 = *(a3 + 1);
  if (v6)
  {
    v7 = a2;
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    a2 = v7;
  }

  v10 = *(a3 + 2);
  v9 = (a3 + 16);
  v8 = v10;
  if ((v10 & 3) != 0)
  {
    v8 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v9, a2);
  }

  *(this + 2) = v8;
  *(this + 6) = 0;
  return this;
}

void google::protobuf::SourceContext::~SourceContext(google::protobuf::SourceContext *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 2);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 2);

  JUMPOUT(0x23EED9460);
}

std::string *google::protobuf::SourceContext::MergeImpl(std::string *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = *(a2 + 2) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v6 = *(v5 + 8);
  }

  if (v6)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set<>(&this->__r_.__value_.__r.__words[2], v5, size);
  }

  v8 = *(a2 + 1);
  if (v8)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceContext::Clear(google::protobuf::SourceContext *this)
{
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 2);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::SourceContext::_InternalSerialize(google::protobuf::SourceContext *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 2);
  v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 23);
  if (v9 < 0)
  {
    v11 = *(v8 + 8);
    if (!v11)
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(*v8, v11, 1, "google.protobuf.SourceContext.file_name");
    v10 = *(v8 + 23);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFFFCLL) + 23))
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String((v7 & 0xFFFFFFFFFFFFFFFCLL), v9, 1, "google.protobuf.SourceContext.file_name");
    v10 = *(v8 + 23);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = *(v8 + 8);
  if (v10 > 127)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (*a3 - a2 + 14 < v10)
  {
LABEL_15:
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v8, a2);
    v13 = *(this + 1);
    if ((v13 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

  *a2 = 10;
  *(a2 + 1) = v10;
  if (*(v8 + 23) >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = *v8;
  }

  memcpy(a2 + 2, v12, v10);
  a2 = (a2 + v10 + 2);
LABEL_13:
  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

LABEL_16:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::SourceContext::ByteSizeLong(google::protobuf::SourceContext *this)
{
  v1 = *(this + 2) & 0xFFFFFFFFFFFFFFFCLL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = 0;
    v5 = (this + 24);
    return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, v5);
  }

  if (!*(v1 + 23))
  {
    goto LABEL_8;
  }

LABEL_3:
  v3 = *(v1 + 8);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  v4 = (v3 + ((352 - 9 * __clz(v3)) >> 6) + 1);
  v5 = (this + 24);
  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, v5);
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceContext>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *(result + 8) = a1;
  }

  else
  {
    result = operator new(0x20uLL);
    *(result + 8) = 0;
  }

  *result = off_284F478A0;
  *(result + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 24) = 0;
  return result;
}

float google::protobuf::io::SafeDoubleToFloat(google::protobuf::io *this, double a2)
{
  if (a2 <= 3.40282347e38)
  {
    if (a2 >= -3.40282347e38)
    {
      return a2;
    }

    else if (a2 >= -3.40282357e38)
    {
      return -3.4028e38;
    }

    else
    {
      return -INFINITY;
    }
  }

  else if (a2 <= 3.40282357e38)
  {
    return 3.4028e38;
  }

  else
  {
    return INFINITY;
  }
}

double google::protobuf::io::NoLocaleStrtod(google::protobuf::io *this, char *a2, char **a3)
{
  v10 = 0.0;
  v5 = strlen(this);
  v6 = absl::lts_20240722::from_chars(this, this + v5, &v10, 3);
  if (v7 == 34)
  {
    if (v10 <= 1.0)
    {
      if (v10 >= -1.0)
      {
        goto LABEL_7;
      }

      v8 = 0xFFF0000000000000;
    }

    else
    {
      v8 = 0x7FF0000000000000;
    }

    v10 = *&v8;
  }

LABEL_7:
  if (a2)
  {
    *a2 = v6;
  }

  return v10;
}

unint64_t google::protobuf::io::SimpleDtoa@<X0>(double a1@<D0>, _BYTE *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 == INFINITY)
  {
    absl::lts_20240722::str_format_internal::SnprintF(__s, 32, "inf", 3, 0, 0);
    goto LABEL_3;
  }

  if (a1 == -INFINITY)
  {
    absl::lts_20240722::str_format_internal::SnprintF(__s, 32, "-inf", 4, 0, 0);
LABEL_3:
    result = strlen(__s);
    if (result < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_4;
    }

LABEL_21:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = 15;
  v15 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v16 = a1;
  v17 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::SnprintF(__s, 32, "%.*g", 4, &v14, 2uLL);
  *&v14 = 0.0;
  v9 = strlen(__s);
  absl::lts_20240722::from_chars(__s, &__s[v9], &v14, 3);
  v11 = *&v14;
  if (v10 == 34)
  {
    if (*&v14 <= 1.0)
    {
      if (*&v14 >= -1.0)
      {
        goto LABEL_18;
      }

      *&v12 = -INFINITY;
    }

    else
    {
      *&v12 = INFINITY;
    }

    v11 = *&v12;
  }

LABEL_18:
  if (v11 != a1)
  {
    v14 = 17;
    v15 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
    v16 = a1;
    v17 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::SnprintF(__s, 32, "%.*g", 4, &v14, 2uLL);
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_21;
  }

LABEL_4:
  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __s, result);
  }

  a2[v5] = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t google::protobuf::io::SimpleFtoa@<X0>(unsigned int a1@<S0>, _BYTE *a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*&a1 == INFINITY)
  {
    absl::lts_20240722::str_format_internal::SnprintF(v12, 24, "inf", 3, 0, 0);
    goto LABEL_3;
  }

  if (*&a1 == -INFINITY)
  {
    absl::lts_20240722::str_format_internal::SnprintF(v12, 24, "-inf", 4, 0, 0);
LABEL_3:
    result = strlen(v12);
    if (result < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_4;
    }

LABEL_16:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = a1;
  v13 = 6;
  v14 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v15 = a1;
  v16 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<float>;
  absl::lts_20240722::str_format_internal::SnprintF(v12, 24, "%.*g", 4, &v13, 2uLL);
  v13 = 0;
  *__error() = 0;
  v9 = strtof(v12, &v13);
  if (!v12[0] || *v13 || (v11 = v9, *__error()) || v11 != *&a1)
  {
    v13 = 9;
    v14 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
    v15 = v8;
    v16 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<float>;
    absl::lts_20240722::str_format_internal::SnprintF(v12, 24, "%.*g", 4, &v13, 2uLL);
  }

  result = strlen(v12);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_16;
  }

LABEL_4:
  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, v12, result);
  }

  a2[v5] = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

char *google::protobuf::io::anonymous namespace::DelocalizeRadix(google::protobuf::io::_anonymous_namespace_ *this, char *a2)
{
  result = strchr(this, 46);
  if (!result)
  {
    for (i = this + 2; ; ++i)
    {
      v5 = *(i - 2);
      if ((v5 - 48) >= 0xA && ((v5 - 43) > 0x3A || ((1 << (v5 - 43)) & 0x400000004000005) == 0))
      {
        break;
      }
    }

    if (*(i - 2))
    {
      v8 = (i - 1);
      v7 = *(i - 1);
      *(i - 2) = 46;
      if ((v7 - 48) >= 0xA && ((v7 - 43) > 0x3A || ((1 << (v7 - 43)) & 0x400000004000005) == 0))
      {
        if (v7)
        {
          do
          {
            v9 = i;
            v10 = *i;
            if ((v10 - 48) < 0xA)
            {
              break;
            }

            ++i;
            v11 = (v10 - 43) > 0x3A || ((1 << (v10 - 43)) & 0x400000004000005) == 0;
          }

          while (v11 && v10 != 0);
          v13 = strlen(v9) + 1;

          return memmove(v8, v9, v13);
        }
      }
    }
  }

  return result;
}

void google::protobuf::Message::DebugString(void *a1@<X8>)
{
  v3 = google::protobuf::internal::ScopedReflectionMode::reflection_mode_();
  if (*v3 <= 0)
  {
    *v3 = 1;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  google::protobuf::TextFormat::Printer::Printer(&v4);
}

void sub_23CDED6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  google::protobuf::TextFormat::Printer::~Printer(&a9);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
    *v9 = v11;
    _Unwind_Resume(a1);
  }

  *v9 = v11;
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Printer::PrintToString(uint64_t a1, google::protobuf::MessageLite *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  google::protobuf::io::StringOutputStream::StringOutputStream(v9, a3);
  v5 = *(a1 + 7);
  v6 = *a1;
  v10 = &unk_284F47BE0;
  v11 = v9;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = v5;
  v16 = v6;
  v17 = v6;
  google::protobuf::TextFormat::Printer::Print(a1, a2, &v10);
  v7 = HIBYTE(v14);
  v10 = &unk_284F47BE0;
  if ((v14 & 0x100) == 0)
  {
    (*(*v11 + 24))(v11, v13);
  }

  return v7 ^ 1u;
}

void sub_23CDED7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Message::ShortDebugString(void *a1@<X8>)
{
  v3 = google::protobuf::internal::ScopedReflectionMode::reflection_mode_();
  if (*v3 <= 0)
  {
    *v3 = 1;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  google::protobuf::TextFormat::Printer::Printer(&v4);
}

void sub_23CDED944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  google::protobuf::TextFormat::Printer::~Printer(&a9);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
    *v9 = v11;
    _Unwind_Resume(a1);
  }

  *v9 = v11;
  _Unwind_Resume(a1);
}

void google::protobuf::internal::StringifyMessage()
{
  v0 = google::protobuf::internal::ScopedReflectionMode::reflection_mode_();
  if (*v0 <= 0)
  {
    *v0 = 1;
  }

  google::protobuf::TextFormat::Printer::Printer(&v1);
}

void sub_23CDEDB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  google::protobuf::TextFormat::Printer::~Printer(&a9);
  *v9 = v10;
  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::ParseInfoTree::CreateNested(google::protobuf::TextFormat::ParseInfoTree *this, const google::protobuf::FieldDescriptor *a2)
{
  v2 = 0;
  _X10 = *(this + 6);
  __asm { PRFM            #4, [X10] }

  v9 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
  v10 = *(this + 4);
  v11 = ((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9);
  v12 = vdup_n_s8(v11 & 0x7F);
  v13 = ((v11 >> 7) ^ (_X10 >> 12)) & v10;
  v14 = *(_X10 + v13);
  v15 = vceq_s8(v14, v12);
  if (v15)
  {
LABEL_2:
    while (*(*(this + 7) + 32 * ((v13 + (__clz(__rbit64(v15)) >> 3)) & v10)) != a2)
    {
      v15 &= ((v15 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v15)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v16 = vceq_s8(v14, 0x8080808080808080);
      if (v16)
      {
        break;
      }

      v2 += 8;
      v13 = (v2 + v13) & v10;
      v14 = *(_X10 + v13);
      v15 = vceq_s8(v14, v12);
      if (v15)
      {
        goto LABEL_2;
      }
    }

    v18 = (*(this + 7) + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 4, v11, (v13 + (__clz(__rbit64(v16)) >> 3)) & v10, v2, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::FieldDescriptor const*,std::vector<std::unique_ptr<google::protobuf::TextFormat::ParseInfoTree>>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::FieldDescriptor const* const,std::vector<std::unique_ptr<google::protobuf::TextFormat::ParseInfoTree>>>>>::GetPolicyFunctions(void)::value));
    v18[2] = 0;
    v18[3] = 0;
    *v18 = a2;
    v18[1] = 0;
  }

  operator new();
}

uint64_t google::protobuf::TextFormat::Printer::HardenedPrintString(std::string::value_type *a1, unint64_t a2, uint64_t a3)
{
  (*(*a3 + 40))(a3, "", 1);
  if (!a2)
  {
    return (*(*a3 + 40))(a3, "", 1);
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((a1[v6] & 0x80000000) == 0)
    {
      v7 = a1[v6];
      if ((v7 - 32) > 0x5E)
      {
        goto LABEL_27;
      }

      v8 = v7 - 34;
      v9 = v8 > 0x3A;
      v10 = (1 << v8) & 0x400000000000021;
      if (!v9 && v10 != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_5;
    }

    v12 = a2 <= v6 + 1 ? v6 + 1 : a2;
    v13 = v6;
    while (1)
    {
      v14 = v13 + 1;
      if (v13 + 1 >= a2)
      {
        break;
      }

      v15 = a1[++v13];
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v14 = v12;
LABEL_21:
    v16 = v14 - v6;
    v17 = a2 - v6 >= v14 - v6 ? v14 - v6 : a2 - v6;
    v18 = utf8_range::SpanStructurallyValid(&a1[v6], v17);
    if (v18 != v16)
    {
      break;
    }

    v6 = v6 + v18 - 1;
LABEL_5:
    if (++v6 >= a2)
    {
      v6 = a2;
LABEL_27:
      if (v6)
      {
        goto LABEL_28;
      }

LABEL_33:
      absl::lts_20240722::CEscape(a1, 1uLL, &__p);
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

      (*(*a3 + 40))(a3, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++a1;
      if (!--a2)
      {
        return (*(*a3 + 40))(a3, "", 1);
      }

      goto LABEL_4;
    }
  }

  v6 += v18;
  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (a2 >= v6)
  {
    v19 = v6;
  }

  else
  {
    v19 = a2;
  }

  (*(*a3 + 40))(a3, a1, v19);
  if (a2 != v6)
  {
    a1 += v6;
    a2 -= v6;
    goto LABEL_33;
  }

  return (*(*a3 + 40))(a3, "", 1);
}

void sub_23CDEE05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *google::protobuf::anonymous namespace::DefaultFinderFindAnyType(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = strlen("type.googleapis.com/");
  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    if (v6 == *(a2 + 8))
    {
      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*a2, "type.googleapis.com/", v6))
      {
        goto LABEL_16;
      }
    }

LABEL_8:
    v8 = strlen("type.googleprod.com/");
    if ((v7 & 0x80000000) != 0)
    {
      if (v8 == *(a2 + 8))
      {
        if (v8 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*a2, "type.googleprod.com/", v8))
        {
          goto LABEL_16;
        }
      }
    }

    else if (v8 == v7 && !memcmp(a2, "type.googleprod.com/", v8))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v6 != v7 || memcmp(a2, "type.googleapis.com/", v6))
  {
    goto LABEL_8;
  }

LABEL_16:
  v10 = *(*((*(*a1 + 80))(a1) + 16) + 24);
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = a3[1];
  }

  return google::protobuf::DescriptorPool::FindMessageTypeByName(v10, v14, v15, v11, v12);
}

double google::protobuf::TextFormat::Parser::Parser(google::protobuf::TextFormat::Parser *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0x7FFFFFFF;
  *(this + 5) = 0;
  return result;
}

uint64_t google::protobuf::TextFormat::Parser::Parse(google::protobuf::TextFormat::Parser *this, google::protobuf::io::ZeroCopyInputStream *a2, google::protobuf::Message *a3)
{
  (*(*a3 + 24))(a3);
  v7 = *(this + 31);
  v8 = (*(*a3 + 80))(a3);
  v9 = *(this + 2);
  v3.i32[0] = *(this + 25);
  v10 = *(this + 29);
  v18 = *(this + 30);
  v11 = *(this + 24);
  v12 = *(this + 8);
  v13 = *(this + 5);
  v19 = *this;
  v20 = v9;
  v21[0] = &unk_284F47A08;
  v21[1] = &v19;
  google::protobuf::io::Tokenizer::Tokenizer(v22, a2, v21);
  v14 = vmovl_u8(v3).u64[0];
  v25 = v8;
  v26 = v7 ^ 1;
  v27 = vuzp1_s8(v14, v14).u32[0];
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v12;
  v32 = 0;
  v33 = v13;
  v22[164] = 1;
  v23 = 1;
  if (v18)
  {
    v24 = 256;
  }

  google::protobuf::io::Tokenizer::Next(v22);
  v16 = google::protobuf::TextFormat::Parser::MergeUsingImpl(this, v15, a3, &v19);
  google::protobuf::io::Tokenizer::~Tokenizer(v22);
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v21);
  return v16;
}

void sub_23CDEE3A4(_Unwind_Exception *a1)
{
  google::protobuf::io::Tokenizer::~Tokenizer((v2 + 40));
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v1);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Parser::MergeUsingImpl(google::protobuf::TextFormat::Parser *this, google::protobuf::io::ZeroCopyInputStream *a2, google::protobuf::Message *a3, google::protobuf::TextFormat::Parser::ParserImpl *a4)
{
  v24[6] = *MEMORY[0x277D85DE8];
  while (*(a4 + 10) != 1)
  {
    if ((google::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(a4, a3) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (*(a4 + 245))
  {
LABEL_6:
    result = 0;
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  if ((*(this + 24) & 1) == 0 && ((*(*a3 + 32))(a3, a2) & 1) == 0)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    google::protobuf::Message::FindInitializationErrors(a3, &v20);
    v24[0] = "Message missing required fields: ";
    v24[1] = 33;
    absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(v20, v21, ", ", 2uLL, &v18);
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v18;
    }

    else
    {
      v11 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v23[0] = v11;
    v23[1] = size;
    absl::lts_20240722::StrCat(v24, v23, &__p);
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
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    google::protobuf::TextFormat::Parser::ParserImpl::ReportError(a4, -1, 0, p_p, v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_23:
        v14 = v20;
        if (!v20)
        {
          goto LABEL_6;
        }

        goto LABEL_27;
      }
    }

    else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(v18.__r_.__value_.__l.__data_);
    v14 = v20;
    if (!v20)
    {
      goto LABEL_6;
    }

LABEL_27:
    v15 = v21;
    v16 = v14;
    if (v21 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v20;
    }

    v21 = v14;
    operator delete(v16);
    goto LABEL_6;
  }

  result = 1;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDEE5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void **a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      std::vector<std::string>::~vector[abi:ne200100](&a21);
      _Unwind_Resume(a1);
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  std::vector<std::string>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_23CDEE62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CDEE640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Parser::ParseFromString(uint64_t *a1, const void *a2, char *a3, google::protobuf::Message *a4)
{
  v5 = a3;
  if (result)
  {
    google::protobuf::io::ArrayInputStream::ArrayInputStream(v9, a2, v5, -1);
    return google::protobuf::TextFormat::Parser::Parse(a1, v9, a4);
  }

  return result;
}

BOOL google::protobuf::anonymous namespace::CheckParseInputSize<std::string_view>(unint64_t a1, uint64_t a2, char *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1 >> 31;
  if (a1 >> 31)
  {
    *&v14 = v15;
    *(&v14 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, v15, a3) - v15;
    v11 = v13;
    v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0x7FFFFFFF, v13, v5) - v13;
    v16[0] = "Input size too large: ";
    v16[1] = 22;
    v17 = v14;
    v18 = " bytes";
    v19 = 6;
    v20 = " > ";
    v21 = 3;
    v22 = v13;
    v23 = v12;
    v24 = " bytes.";
    v25 = 7;
    absl::lts_20240722::strings_internal::CatPieces(v16, 6, &__p);
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

    (*(*a2 + 16))(a2, 0xFFFFFFFFLL, 0, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  result = v3 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CDEE81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::Parser::ParserImpl::ReportError(uint64_t *a1, int a2, int a3, const void *a4, unint64_t a5)
{
  *(a1 + 245) = 1;
  v10 = *a1;
  if (v10)
  {
    v11 = *(*v10 + 16);

    v11();
  }

  else
  {
    v12 = a1;
    if (a2 < 0)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/text_format.cc", 421);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, "Error parsing text-format ", 0x1AuLL);
      v15 = absl::lts_20240722::log_internal::LogMessage::operator<<(v16, (*(v12[27] + 8) + 24));
    }

    else
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/text_format.cc", 417);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, "Error parsing text-format ", 0x1AuLL);
      v13 = absl::lts_20240722::log_internal::LogMessage::operator<<(v16, (*(v12[27] + 8) + 24));
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, ": ", 2uLL);
      v17 = a2 + 1;
      v14 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v13, &v17);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, ":", 1uLL);
      v17 = a3 + 1;
      v15 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v14, &v17);
    }

    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, ": ", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v15, a4, a5);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
  }
}

void sub_23CDEEA0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CDEEA20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::ParseFromString(const void *a1, unint64_t a2, char *a3)
{
  v4 = a2;
  memset(v7, 0, sizeof(v7));
  v8 = 0x7FFFFFFF;
  v9 = 0;
  if (result)
  {
    google::protobuf::io::ArrayInputStream::ArrayInputStream(v10, a1, v4, -1);
    return google::protobuf::TextFormat::Parser::Parse(v7, v10, a3);
  }

  return result;
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintBool(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(*a3 + 40);
  if (a2)
  {
    return v3(a3, "true", 4);
  }

  else
  {
    return v3(a3, "false", 5);
  }
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintInt32(int a1, absl::lts_20240722::numbers_internal *this, char *a3)
{
  v7.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&v7.__r_.__value_.__l.__data_ = 0uLL;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(this, &v7, a3);
  std::string::erase(&v7, v4 - &v7, 0xFFFFFFFFFFFFFFFFLL);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v7.__r_.__value_.__l.__size_;
  }

  (*(*a3 + 40))(a3, v5, size);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_23CDEEBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintUInt32(int a1, absl::lts_20240722::numbers_internal *this, char *a3)
{
  v7.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&v7.__r_.__value_.__l.__data_ = 0uLL;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(this, &v7, a3);
  std::string::erase(&v7, v4 - &v7, 0xFFFFFFFFFFFFFFFFLL);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v7.__r_.__value_.__l.__size_;
  }

  (*(*a3 + 40))(a3, v5, size);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_23CDEECA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintInt64(int a1, absl::lts_20240722::numbers_internal *this, char *a3)
{
  v7.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&v7.__r_.__value_.__l.__data_ = 0uLL;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(this, &v7, a3);
  std::string::erase(&v7, v4 - &v7, 0xFFFFFFFFFFFFFFFFLL);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v7.__r_.__value_.__l.__size_;
  }

  (*(*a3 + 40))(a3, v5, size);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_23CDEED84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintUInt64(int a1, absl::lts_20240722::numbers_internal *this, char *a3)
{
  v7.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&v7.__r_.__value_.__l.__data_ = 0uLL;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(this, &v7, a3);
  std::string::erase(&v7, v4 - &v7, 0xFFFFFFFFFFFFFFFFLL);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v7.__r_.__value_.__l.__size_;
  }

  (*(*a3 + 40))(a3, v5, size);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_23CDEEE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintFloat(float a1, uint64_t a2, uint64_t a3)
{
  google::protobuf::io::SimpleFtoa(LODWORD(a1), __p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23CDEEF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintDouble(double a1, uint64_t a2, uint64_t a3)
{
  google::protobuf::io::SimpleDtoa(a1, __p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23CDEF01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintString(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  (*(*a3 + 40))(a3, "", 1);
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (!v5)
    {
      return (*(*a3 + 40))(a3, "", 1);
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    return (*(*a3 + 40))(a3, "", 1);
  }

  absl::lts_20240722::CEscape(a2, v5, &__p);
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

  (*(*a3 + 40))(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return (*(*a3 + 40))(a3, "", 1);
}

void sub_23CDEF150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintEnum(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  return (*(*a4 + 40))(a4, v5, v6);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintFieldName(int a1, int a2, int a3, google::protobuf::FieldDescriptor *this, uint64_t a5)
{
  if ((*(this + 1) & 8) == 0)
  {
    v7 = *(this + 3);
    if (v7 && (v17 = this, v18 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v7, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, &v18, &v17);
      if (*(this + 2) == 10)
      {
LABEL_5:
        v8 = *(google::protobuf::FieldDescriptor::message_type(this) + 8);
        v9 = *(v8 + 23);
        if (v9 < 0)
        {
          goto LABEL_18;
        }

        return (*(*a5 + 40))(a5, v8, v9);
      }
    }

    else if (*(this + 2) == 10)
    {
      goto LABEL_5;
    }

    v8 = *(this + 1);
    v9 = *(v8 + 23);
    if (v9 < 0)
    {
LABEL_18:
      v16 = v8;
      v8 = *v8;
      v9 = v16[1];
    }

    return (*(*a5 + 40))(a5, v8, v9);
  }

  (*(*a5 + 40))(a5, "[", 1);
  v10 = google::protobuf::FieldDescriptor::PrintableNameForExtension(this);
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = v10;
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

  (*(*a5 + 40))(a5, v12, v13);
  v14 = *(*a5 + 40);

  return v14(a5, "]", 1);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintMessageStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v6 = " { ";
  }

  else
  {
    v6 = " {\n";
  }

  return (*(*a6 + 40))(a6, v6, 3);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintMessageEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v6 = "} ";
  }

  else
  {
    v6 = "}\n";
  }

  return (*(*a6 + 40))(a6, v6, 2);
}

std::string *absl::lts_20240722::StrCat<int>@<X0>(absl::lts_20240722::numbers_internal *a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = 22;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, a3, a2);
  return std::string::erase(a3, &v4[-a3], 0xFFFFFFFFFFFFFFFFLL);
}

void sub_23CDEF44C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *absl::lts_20240722::StrCat<long long>@<X0>(unint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = 22;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1, a3, a2);
  return std::string::erase(a3, &v4[-a3], 0xFFFFFFFFFFFFFFFFLL);
}

void sub_23CDEF4B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::Printer::Printer(google::protobuf::TextFormat::Printer *this)
{
  *(this + 40) = xmmword_23CE306D0;
  *(this + 4) = 0;
  *this = 0;
  *(this + 3) = 0;
  *(this + 15) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 72) = xmmword_23CE306D0;
  *(this + 13) = 0;
  operator new();
}

void sub_23CDEF5F4(_Unwind_Exception *a1)
{
  v4 = v3;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>>>::destructor_impl(v4);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::FieldDescriptor const*,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::FieldDescriptor const* const,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>>>::destructor_impl(v2);
  google::protobuf::TextFormat::Printer::Printer((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Printer::RegisterFieldValuePrinter(google::protobuf::TextFormat::Printer *this, const google::protobuf::FieldDescriptor *a2, const google::protobuf::TextFormat::FastFieldValuePrinter *a3)
{
  result = 0;
  v12 = a2;
  if (a2)
  {
    if (a3)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::FieldDescriptor const*,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::FieldDescriptor const* const,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>>>::find_or_prepare_insert<google::protobuf::FieldDescriptor const*>(this + 5, &v12, &v9);
      result = v11;
      if (v11 == 1)
      {
        v6 = v10;
        *v10 = v12;
        v6[1] = 0;
        v7 = v10[1];
        v10[1] = a3;
        if (v7)
        {
          v8 = result;
          (*(*v7 + 8))(v7);
          return v8;
        }
      }
    }
  }

  return result;
}

uint64_t google::protobuf::TextFormat::Printer::RegisterMessagePrinter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v12 = a2;
  if (a2)
  {
    if (a3)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>>>::find_or_prepare_insert<google::protobuf::Descriptor const*>((a1 + 72), &v12, &v9);
      result = v11;
      if (v11 == 1)
      {
        v6 = v10;
        *v10 = v12;
        v6[1] = 0;
        v7 = v10[1];
        v10[1] = a3;
        if (v7)
        {
          v8 = result;
          (*(*v7 + 8))(v7);
          return v8;
        }
      }
    }
  }

  return result;
}

void google::protobuf::TextFormat::Printer::Print(uint64_t a1, google::protobuf::MessageLite *a2, char *a3)
{
  (*(*a2 + 80))(a2);
  if (v6)
  {
    v7 = (*(*a2 + 80))(a2);
    v8 = *(a1 + 72);
    if (v8 > 1)
    {
      v13 = 0;
      v14 = v7 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7)));
      v15 = 0x9DDFEA08EB382D69 * v14;
      v16 = (v14 * 0x9DDFEA08EB382D69) >> 64;
      _X10 = *(a1 + 88);
      __asm { PRFM            #4, [X10] }

      v23 = v16 ^ v15;
      v24 = vdup_n_s8(v23 & 0x7F);
      v25 = ((v23 >> 7) ^ (_X10 >> 12)) & v8;
      v26 = *(_X10 + v25);
      v27 = vceq_s8(v26, v24);
      if (!v27)
      {
        goto LABEL_23;
      }

LABEL_20:
      v28 = *(a1 + 96);
      while (1)
      {
        v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v8;
        if (*(v28 + 16 * v29) == v7)
        {
          break;
        }

        v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v27)
        {
LABEL_23:
          while (!*&vceq_s8(v26, 0x8080808080808080))
          {
            v13 += 8;
            v25 = (v13 + v25) & v8;
            v26 = *(_X10 + v25);
            v27 = vceq_s8(v26, v24);
            if (v27)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_31;
        }
      }

      v9 = v28 + 16 * v29;
      if (!(_X10 + v29))
      {
        goto LABEL_31;
      }
    }

    else if (*(a1 + 80) < 2uLL || (v9 = a1 + 88, *(a1 + 88) != v7) || !&absl::lts_20240722::container_internal::kSooControl)
    {
LABEL_31:

      google::protobuf::TextFormat::Printer::PrintMessage(a1, a2, a3);
      return;
    }

    v30 = *(a1 + 4);
    v31 = *(**(v9 + 8) + 16);

    v31();
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    google::protobuf::MessageLite::SerializeAsString(a2, &__p);
    if ((v35 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v35 & 0x80u) == 0)
    {
      v11 = v35;
    }

    else
    {
      v11 = v34;
    }

    google::protobuf::io::ArrayInputStream::ArrayInputStream(v32, p_p, v11, -1);
    google::protobuf::UnknownFieldSet::ParseFromZeroCopyStream(&v36, v32);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, &v36, a3, 10);
    v12 = v36;
    if (v36 != v37)
    {
      google::protobuf::UnknownFieldSet::ClearFallback(&v36);
      v12 = v36;
    }

    if (v12)
    {
      v37 = v12;
      operator delete(v12);
    }
  }
}

void google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(google::protobuf::TextFormat::Printer::TextGenerator *this)
{
  *this = &unk_284F47BE0;
  if ((*(this + 29) & 1) == 0)
  {
    (*(**(this + 1) + 24))(*(this + 1), *(this + 6));
  }
}

{
  *this = &unk_284F47BE0;
  if ((*(this + 29) & 1) == 0)
  {
    (*(**(this + 1) + 24))(*(this + 1), *(this + 6));
  }

  JUMPOUT(0x23EED9460);
}

void google::protobuf::TextFormat::Printer::PrintUnknownFields(uint64_t a1, uint64_t *a2, char *a3, int a4)
{
  v4 = *a2;
  if (((a2[1] - *a2) >> 4) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v41 = a4 - 1;
    do
    {
      v11 = (v4 + v9);
      v12 = *(v4 + v9 + 4);
      if (v12 <= 1)
      {
        if (!v12)
        {
          LODWORD(v46) = *v11;
          google::protobuf::TextFormat::OutOfLinePrintString<int>(a3, &v46, a3);
          (*(*a3 + 48))(a3, ": ", 2);
          if (*(a1 + 8) == 1)
          {
            google::protobuf::TextFormat::OutOfLinePrintString<char [16]>(a3, "UNKNOWN_VARINT ");
            goto LABEL_22;
          }

          v46 = *(v4 + v9 + 8);
          google::protobuf::TextFormat::OutOfLinePrintString<unsigned long long>(a3, &v46, v23);
LABEL_29:
          v26 = *a3 + 40;
          if (*(a1 + 4) == 1)
          {
            v27 = " ";
          }

          else
          {
            v27 = "\n";
          }

          (*(*a3 + 40))(a3, v27, 1);
          goto LABEL_4;
        }

        if (v12 == 1)
        {
          LODWORD(v46) = *v11;
          google::protobuf::TextFormat::OutOfLinePrintString<int>(a3, &v46, a3);
          v13 = *(*a3 + 56);
          v14 = a3;
          if (*(a1 + 8) == 1)
          {
            v15 = "UNKNOWN_FIXED32 ";
LABEL_17:
            v13(v14, ": ", 2, v15, 16);
            goto LABEL_22;
          }

          v13(a3, ": ", 2, "0x", 2);
          v46 = *(v4 + v9 + 8);
          v24 = 12296;
LABEL_28:
          LOWORD(v47) = v24;
          google::protobuf::TextFormat::OutOfLinePrintString<absl::lts_20240722::Hex>(a3, &v46);
          goto LABEL_29;
        }
      }

      else
      {
        switch(v12)
        {
          case 2:
            LODWORD(v46) = *v11;
            google::protobuf::TextFormat::OutOfLinePrintString<int>(a3, &v46, a3);
            v13 = *(*a3 + 56);
            v14 = a3;
            if (*(a1 + 8) == 1)
            {
              v15 = "UNKNOWN_FIXED64 ";
              goto LABEL_17;
            }

            v13(a3, ": ", 2, "0x", 2);
            v46 = *(v4 + v9 + 8);
            v24 = 12304;
            goto LABEL_28;
          case 3:
            v16 = v4 + v9;
            LODWORD(v46) = *v16;
            google::protobuf::TextFormat::OutOfLinePrintString<int>(a3, &v46, a3);
            v20 = *(v16 + 8);
            v21 = v20[23];
            if (v21 < 0)
            {
              v22 = *v20;
              v21 = *(v20 + 1);
            }

            else
            {
              v22 = v20;
            }

            v46 = v22;
            v47 = &v22[v21];
            v48 = 0;
            memset(v50, 0, sizeof(v50));
            v49 = v21;
            v51 = v21;
            v52 = -NAN;
            v55 = 0;
            v56 = 0;
            v53 = a4;
            v54 = a4;
            v44 = 0;
            v45 = 0;
            v43 = 0;
            v28 = v20[23];
            if (v28 < 0)
            {
              v28 = *(v20 + 1);
              if (a4 < 1)
              {
                goto LABEL_42;
              }
            }

            else if (a4 < 1)
            {
              goto LABEL_42;
            }

            if (v28 && google::protobuf::UnknownFieldSet::ParseFromCodedStream(&v43, &v46, v17, v18, v19))
            {
              if (*(a1 + 8) == 1)
              {
                (*(*a3 + 56))(a3, ": ", 2, "UNKNOWN_MESSAGE ", 16);
                goto LABEL_44;
              }

              v39 = *(*a3 + 56);
              if (*(a1 + 4) == 1)
              {
                v39(a3, " ", 1, "{ ", 2);
              }

              else
              {
                v39(a3, " ", 1, "{\n", 2);
                (*(*a3 + 16))(a3);
              }

              google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, &v43, a3, v41);
              v40 = *a3;
              if (*(a1 + 4) == 1)
              {
                v30 = (v40 + 40);
                v31 = "} ";
              }

              else
              {
                (*(v40 + 24))(a3);
                v30 = (*a3 + 40);
                v31 = "}\n";
              }

LABEL_61:
              v32 = 2;
            }

            else
            {
LABEL_42:
              v29 = *(*a3 + 56);
              if (*(a1 + 8) != 1)
              {
                v29(a3, ": ", 2, "", 1);
                v33 = v20[23];
                if ((v33 & 0x8000000000000000) != 0)
                {
                  v34 = v20;
                  v20 = *v20;
                  v33 = *(v34 + 1);
                }

                absl::lts_20240722::CEscape(v20, v33, &__p);
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

                (*(*a3 + 40))(a3, p_p, size);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v30 = (*a3 + 40);
                if (*(a1 + 4))
                {
                  v31 = " ";
                }

                else
                {
                  v31 = "\n";
                }

                goto LABEL_61;
              }

              v29(a3, ": ", 2, "UNKNOWN_STRING ", 15);
LABEL_44:
              v30 = (*a3 + 40);
              if (*(a1 + 4))
              {
                v31 = " ";
              }

              else
              {
                v31 = "\n";
              }

              v32 = 1;
            }

            (*v30)(a3, v31, v32);
            v37 = v43;
            if (v43 != v44)
            {
              google::protobuf::UnknownFieldSet::ClearFallback(&v43);
              v37 = v43;
            }

            if (v37)
            {
              v44 = v37;
              operator delete(v37);
            }

            google::protobuf::io::CodedInputStream::~CodedInputStream(&v46);
            break;
          case 4:
            LODWORD(v46) = *v11;
            google::protobuf::TextFormat::OutOfLinePrintString<int>(a3, &v46, a3);
            if (*(a1 + 8) != 1)
            {
              v25 = *(*a3 + 56);
              if (*(a1 + 4) == 1)
              {
                v25(a3, " ", 1, "{ ", 2);
              }

              else
              {
                v25(a3, " ", 1, "{\n", 2);
                (*(*a3 + 16))(a3);
              }

              google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, *(v4 + v9 + 8), a3, v41);
              v38 = *a3;
              if (*(a1 + 4) == 1)
              {
                (*(v38 + 40))(a3, "} ", 2);
              }

              else
              {
                (*(v38 + 24))(a3);
                (*(*a3 + 40))(a3, "}\n", 2);
              }

              break;
            }

            (*(*a3 + 56))(a3, ": ", 2, "UNKNOWN_GROUP ", 14);
LABEL_22:
            goto LABEL_29;
        }
      }

LABEL_4:
      ++v10;
      v4 = *a2;
      v9 += 16;
    }

    while (v10 < ((a2[1] - *a2) >> 4));
  }
}

void sub_23CDF0354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
    google::protobuf::UnknownFieldSet::~UnknownFieldSet(&a16);
    google::protobuf::io::CodedInputStream::~CodedInputStream(&a19);
    _Unwind_Resume(a1);
  }

  google::protobuf::UnknownFieldSet::~UnknownFieldSet(&a16);
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a19);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Printer::PrintAny(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = 0;
  v56 = 0;
  if (google::protobuf::internal::GetAnyFieldDescriptors(a2, &v56, &v55))
  {
    (*(*a2 + 80))(a2);
    v7 = v6;
    google::protobuf::Reflection::GetString(v56, v6, a2, v8, &v54);
    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
    v50[0] = 0;
    v50[1] = 0;
    v51 = 0;
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v54;
    }

    else
    {
      v9 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    if ((google::protobuf::internal::ParseAnyTypeUrl(v9, size, v52, v50) & 1) == 0)
    {
      v13 = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      AnyType = (*(*v11 + 32))(v11, a2, v52, v50);
    }

    else
    {
    }

    v14 = AnyType;
    if (!AnyType)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v49, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/text_format.cc", 2357);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, "Can't print proto content: proto type ", 0x26uLL);
      v45 = absl::lts_20240722::log_internal::LogMessage::operator<<(v49, &v54);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v45, " not found", 0xAuLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v49);
      v13 = 0;
      if (SHIBYTE(v51) < 0)
      {
LABEL_50:
        operator delete(v50[0]);
      }

LABEL_51:
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52[0]);
        if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v13;
        }
      }

      else if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v13;
      }

      operator delete(v54.__r_.__value_.__l.__data_);
      return v13;
    }

    google::protobuf::DynamicMessageFactory::DynamicMessageFactory(v49);
    Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(v49, v14);
    v16 = (*(*Prototype + 16))(Prototype, 0);
    google::protobuf::Reflection::GetString(v55, v7, a2, v17, &__p);
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
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v13 = google::protobuf::MessageLite::ParseFromString(v16, p_p, v19);
    if ((v13 & 1) == 0)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v47, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/text_format.cc", 2366);
      v46 = absl::lts_20240722::log_internal::LogMessage::operator<<(v47, &v54);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, ": failed to parse contents", 0x1AuLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v47);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_47:
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(v49);
        if (SHIBYTE(v51) < 0)
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      }

LABEL_46:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_47;
    }

    (*(*a3 + 40))(a3, "[", 1);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v54;
    }

    else
    {
      v20 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v54.__r_.__value_.__l.__size_;
    }

    (*(*a3 + 40))(a3, v20, v21);
    (*(*a3 + 40))(a3, "]", 1);
    v22 = *(a1 + 40);
    if (v22 > 1)
    {
      v24 = 0;
      v25 = v55 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v55) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v55)));
      v26 = 0x9DDFEA08EB382D69 * v25;
      v27 = (v25 * 0x9DDFEA08EB382D69) >> 64;
      _X11 = *(a1 + 56);
      __asm { PRFM            #4, [X11] }

      v34 = v27 ^ v26;
      v35 = vdup_n_s8(v34 & 0x7F);
      v36 = ((v34 >> 7) ^ (_X11 >> 12)) & v22;
      v37 = *(_X11 + v36);
      v38 = vceq_s8(v37, v35);
      if (!v38)
      {
        goto LABEL_36;
      }

LABEL_33:
      v39 = *(a1 + 64);
      do
      {
        v40 = (v36 + (__clz(__rbit64(v38)) >> 3)) & v22;
        if (*(v39 + 16 * v40) == v55)
        {
          v22 = v39 + 16 * v40;
          v23 = (_X11 + v40);
          goto LABEL_42;
        }

        v38 &= ((v38 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v38);
LABEL_36:
      while (!*&vceq_s8(v37, 0x8080808080808080))
      {
        v24 += 8;
        v36 = (v24 + v36) & v22;
        v37 = *(_X11 + v36);
        v38 = vceq_s8(v37, v35);
        if (v38)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v22 = *(a1 + 48);
      if (v22 >= 2)
      {
        v22 = a1 + 56;
        v23 = &absl::lts_20240722::container_internal::kSooControl;
        if (*(a1 + 56) != v55)
        {
          v23 = 0;
          v22 = 0;
        }

LABEL_42:
        v41 = (v22 + 8);
        if (v23)
        {
          v42 = v41;
        }

        else
        {
          v42 = (a1 + 32);
        }

        v43 = *v42;
        (*(**v42 + 112))(*v42, a2, 0xFFFFFFFFLL, 0, *(a1 + 4), a3);
        (*(*a3 + 16))(a3);
        google::protobuf::TextFormat::Printer::Print(a1, v16, a3);
        (*(*a3 + 24))(a3);
        (*(*v43 + 128))(v43, a2, 0xFFFFFFFFLL, 0, *(a1 + 4), a3);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v23 = 0;
    goto LABEL_42;
  }

  return 0;
}

void sub_23CDF0944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a17);
  if (a30 < 0)
  {
    operator delete(a25);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(v37 - 81) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a31);
  if ((*(v37 - 81) & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(*(v37 - 104));
  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::Printer::PrintMessage(_BYTE *a1, uint64_t a2, char *a3)
{
  if (!a3)
  {
    return;
  }

  v6 = (*(*a2 + 80))(a2);
  v7 = v6[1];
  v8 = strlen("google.protobuf.Any");
  v9 = *(v7 + 47);
  if (v9 < 0)
  {
    if (v8 == *(v7 + 32))
    {
      if (v8 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*(v7 + 24), "google.protobuf.Any", v8))
      {
LABEL_9:
        if (a1[18] == 1 && (google::protobuf::TextFormat::Printer::PrintAny(a1, a2, a3) & 1) != 0)
        {
          return;
        }
      }
    }
  }

  else if (v8 == v9 && !memcmp((v7 + 24), "google.protobuf.Any", v8))
  {
    goto LABEL_9;
  }

  (*(*a2 + 80))(a2);
  v13 = v10;
  __p = 0;
  v21 = 0;
  v22 = 0;
  if (*(v6[4] + 83) == 1)
  {
    v14 = v6[7];
    operator new();
  }

  google::protobuf::Reflection::ListFields(v10, a2, &__p, v11, v12);
  v15 = __p;
  if (a1[17] == 1)
  {
    v16 = 126 - 2 * __clz((v21 - __p) >> 3);
    if (v21 == __p)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v15 = __p;
  }

  for (i = v21; v15 != i; ++v15)
  {
    google::protobuf::TextFormat::Printer::PrintField(a1, a2, v13, *v15, a3);
  }

  if ((a1[16] & 1) == 0)
  {
    UnknownFields = google::protobuf::Reflection::GetUnknownFields(v13, a2);
    google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, UnknownFields, a3, 10);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_23CDF0CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::Printer::PrintField(uint64_t a1, uint64_t a2, google::protobuf::_anonymous_namespace_ **a3, google::protobuf::Descriptor *a4, const char *a5)
{
  if (*(a1 + 6) == 1 && (~*(a4 + 1) & 0x60) == 0)
  {
    v10 = *(a4 + 3);
    if (v10 && (__p = google::protobuf::FieldDescriptor::TypeOnceInit, v55 = a4, atomic_load_explicit(v10, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &__p, &v55);
      v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
      if (v11 == 9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
      if (v11 == 9)
      {
        goto LABEL_11;
      }
    }

    v12 = *(a4 + 3);
    if (v12)
    {
      __p = google::protobuf::FieldDescriptor::TypeOnceInit;
      v55 = a4;
      if (atomic_load_explicit(v12, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, &__p, &v55);
      }

      v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
    }

    if (v11 != 10)
    {
      google::protobuf::TextFormat::Printer::PrintShortRepeatedField(a1, a2, a3, a4, a5);
      return;
    }
  }

LABEL_11:
  if ((~*(a4 + 1) & 0x60) == 0)
  {
    v13 = google::protobuf::Reflection::FieldSize(a3, a2, a4, a4, a5);
    __p = 0;
    v52 = 0;
    v53 = 0;
    v14 = *(a4 + 3);
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_19:
    v54 = a4;
    v55 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v14, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v14, 1, &v55, &v54);
    }

    goto LABEL_21;
  }

  if ((google::protobuf::Reflection::HasField(a3, a2, a4, a4, a5) & 1) == 0 && *(*(*(a4 + 4) + 32) + 83) != 1)
  {
    v13 = 0;
    __p = 0;
    v52 = 0;
    v53 = 0;
    v14 = *(a4 + 3);
    if (!v14)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v13 = 1;
  __p = 0;
  v52 = 0;
  v53 = 0;
  v14 = *(a4 + 3);
  if (v14)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (*(a4 + 2) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a4))
  {
    v47 = google::protobuf::internal::MapFieldPrinterHelper::SortMap(a2, a3, a4, &__p, v15);
    v49 = 1;
    if (v13 < 1)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v49 = 0;
    v47 = 0;
    if (v13 < 1)
    {
      goto LABEL_72;
    }
  }

  v16 = 0;
  v50 = (a1 + 56);
  v17 = a4 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4)));
  v18 = ((v17 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v17);
  v48 = v18 >> 7;
  v19 = vdup_n_s8(v18 & 0x7F);
  while (1)
  {
    if ((~*(a4 + 1) & 0x60) != 0)
    {
      v20 = 0xFFFFFFFFLL;
    }

    else
    {
      v20 = v16;
    }

    google::protobuf::TextFormat::Printer::PrintFieldName(a1, a2, v20, v13, a3, a4, a5);
    v23 = *(a4 + 3);
    if (v23)
    {
      v54 = a4;
      v55 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v23, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v23, 1, &v55, &v54);
      }
    }

    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)] == 10)
    {
      break;
    }

    (*(*a5 + 48))(a5, ": ", 2);
    google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, a3, a4, v20);
    v26 = *a5 + 40;
    if (*(a1 + 4))
    {
      v27 = " ";
    }

    else
    {
      v27 = "\n";
    }

    (*(*a5 + 40))(a5, v27, 1);
LABEL_27:
    if (++v16 == v13)
    {
      goto LABEL_72;
    }
  }

  if (*(*(a4 + 7) + 133) != 1 || *(a1 + 8) != 1)
  {
    v24 = *(a1 + 40);
    if (v24 > 1)
    {
      v22 = 0;
      _X9 = *v50;
      __asm { PRFM            #4, [X9] }

      v34 = (v48 ^ (*v50 >> 12)) & v24;
      v35 = *(*v50 + v34);
      v36 = vceq_s8(v35, v19);
      if (!v36)
      {
        goto LABEL_48;
      }

LABEL_45:
      v37 = *(a1 + 64);
      do
      {
        v38 = (v34 + (__clz(__rbit64(v36)) >> 3)) & v24;
        if (*(v37 + 16 * v38) == a4)
        {
          v22 = (v37 + 16 * v38);
          v25 = _X9 + v38;
          goto LABEL_57;
        }

        v36 &= ((v36 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v36);
LABEL_48:
      while (!*&vceq_s8(v35, 0x8080808080808080))
      {
        v22 = (v22 + 8);
        v34 = (v22 + v34) & v24;
        v35 = *(_X9 + v34);
        v36 = vceq_s8(v35, v19);
        if (v36)
        {
          goto LABEL_45;
        }
      }
    }

    else if (*(a1 + 48) >= 2uLL)
    {
      if (*v50 == a4)
      {
        v22 = (a1 + 56);
      }

      else
      {
        v22 = *v50;
      }

      v25 = &absl::lts_20240722::container_internal::kSooControl;
      if (*v50 != a4)
      {
        v25 = 0;
      }

LABEL_57:
      _ZF = v25 == 0;
      v39 = (a1 + 32);
      if (!_ZF)
      {
        v39 = (v22 + 8);
      }

      v40 = *v39;
      if ((~*(a4 + 1) & 0x60) != 0)
      {
        Message = google::protobuf::Reflection::GetMessage(a3, a2, a4, 0, v21);
      }

      else
      {
        if (v49)
        {
          v41 = *(__p + v16);
LABEL_65:
          (*(*v40 + 112))(v40, v41, v20, v13, *(a1 + 4), a5);
          (*(*a5 + 16))(a5);
          if (((*(*v40 + 120))(v40, v41, v20, v13, *(a1 + 4), a5) & 1) == 0)
          {
            google::protobuf::TextFormat::Printer::Print(a1, v41, a5);
          }

          (*(*a5 + 24))(a5);
          (*(*v40 + 128))(v40, v41, v20, v13, *(a1 + 4), a5);
          goto LABEL_27;
        }

        Message = google::protobuf::Reflection::GetRepeatedMessage(a3, a2, a4, v16, v21);
      }

      v41 = Message;
      goto LABEL_65;
    }

    v25 = 0;
    goto LABEL_57;
  }

  (*(*a5 + 48))(a5, ": ", 2);
  (*(*a5 + 40))(a5, "[REDACTED]", 10);
  v43 = *a5 + 40;
  if (*(a1 + 4))
  {
    v44 = " ";
  }

  else
  {
    v44 = "\n";
  }

  (*(*a5 + 40))(a5, v44, 1);
LABEL_72:
  v45 = __p;
  if (v47)
  {
    v46 = v52;
    if (__p != v52)
    {
      do
      {
        if (*v45)
        {
          (*(**v45 + 8))(*v45);
        }

        ++v45;
      }

      while (v45 != v46);
      v45 = __p;
    }
  }

  if (v45)
  {
    v52 = v45;
    operator delete(v45);
  }
}

void sub_23CDF146C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::Printer::PrintFieldValueToString(int *a1, uint64_t a2, google::protobuf::Descriptor *a3, const char *a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 23) = 0;
  }

  google::protobuf::io::StringOutputStream::StringOutputStream(v19, a5);
  v9 = *a1;
  v11 = &unk_284F47BE0;
  v12 = v19;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = v9;
  v18 = v9;
  (*(*a2 + 80))(a2);
  google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, v10, a3, a4, &v11);
  v11 = &unk_284F47BE0;
  if ((v15 & 0x100) == 0)
  {
    (*(*v12 + 24))(v12, v14);
  }
}

void sub_23CDF15C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(va);
  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::Printer::PrintFieldValue(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::Descriptor *a4, const char *a5, char *a6)
{
  v8 = a5;
  v66[2] = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 40);
  if (v13 > 1)
  {
    v6 = 0;
    v15 = a4 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4)));
    v16 = 0x9DDFEA08EB382D69 * v15;
    v17 = (v15 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = *(a1 + 56);
    __asm { PRFM            #4, [X10] }

    v24 = v17 ^ v16;
    v25 = vdup_n_s8(v24 & 0x7F);
    v26 = ((v24 >> 7) ^ (_X10 >> 12)) & v13;
    v27 = *(_X10 + v26);
    v28 = vceq_s8(v27, v25);
    if (!v28)
    {
      goto LABEL_8;
    }

LABEL_5:
    v29 = *(a1 + 64);
    do
    {
      v30 = (v26 + (__clz(__rbit64(v28)) >> 3)) & v13;
      if (*(v29 + 16 * v30) == a4)
      {
        v6 = v29 + 16 * v30;
        v14 = (_X10 + v30);
        goto LABEL_14;
      }

      v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v28);
LABEL_8:
    while (!*&vceq_s8(v27, 0x8080808080808080))
    {
      v6 += 8;
      v26 = (v6 + v26) & v13;
      v27 = *(_X10 + v26);
      v28 = vceq_s8(v27, v25);
      if (v28)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_3;
  }

  if (*(a1 + 48) < 2uLL)
  {
LABEL_3:
    v14 = 0;
    goto LABEL_14;
  }

  v6 = a1 + 56;
  v14 = &absl::lts_20240722::container_internal::kSooControl;
  if (*(a1 + 56) != a4)
  {
    v14 = 0;
    v6 = 0;
  }

LABEL_14:
  v31 = (v6 + 8);
  if (v14)
  {
    v32 = v31;
  }

  else
  {
    v32 = (a1 + 32);
  }

  v33 = *v32;
  if (*(*(a4 + 7) + 133) != 1 || *(a1 + 8) != 1)
  {
    v36 = *(a4 + 3);
    if (v36)
    {
      v65.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v63 = a4;
      if (atomic_load_explicit(v36, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v36, 1, &v65, &v63);
      }
    }

    v37 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 2)];
    if (v37 <= 5)
    {
      if (v37 <= 2)
      {
        if (v37 == 1)
        {
          if ((~*(a4 + 1) & 0x60) != 0)
          {
            Int32 = google::protobuf::Reflection::GetInt32(a3, a2, a4, a4, a5);
          }

          else
          {
            Int32 = google::protobuf::Reflection::GetRepeatedInt32(a3, a2, a4, v8, a5);
          }

          (*(*v33 + 24))(v33, Int32, a6);
        }

        else if (v37 == 2)
        {
          if ((~*(a4 + 1) & 0x60) != 0)
          {
            Int64 = google::protobuf::Reflection::GetInt64(a3, a2, a4, a4, a5);
          }

          else
          {
            Int64 = google::protobuf::Reflection::GetRepeatedInt64(a3, a2, a4, v8, a5);
          }

          (*(*v33 + 40))(v33, Int64, a6);
        }
      }

      else if (v37 == 3)
      {
        if ((~*(a4 + 1) & 0x60) != 0)
        {
          UInt32 = google::protobuf::Reflection::GetUInt32(a3, a2, a4, a4, a5);
        }

        else
        {
          UInt32 = google::protobuf::Reflection::GetRepeatedUInt32(a3, a2, a4, v8, a5);
        }

        (*(*v33 + 32))(v33, UInt32, a6);
      }

      else if (v37 == 4)
      {
        if ((~*(a4 + 1) & 0x60) != 0)
        {
          UInt64 = google::protobuf::Reflection::GetUInt64(a3, a2, a4, a4, a5);
        }

        else
        {
          UInt64 = google::protobuf::Reflection::GetRepeatedUInt64(a3, a2, a4, v8, a5);
        }

        (*(*v33 + 48))(v33, UInt64, a6);
      }

      else
      {
        if ((~*(a4 + 1) & 0x60) != 0)
        {
          v38.n128_f64[0] = google::protobuf::Reflection::GetDouble(a3, a2, a4, a4, a5);
        }

        else
        {
          v38.n128_f64[0] = google::protobuf::Reflection::GetRepeatedDouble(a3, a2, a4, v8, a5);
        }

        (*(*v33 + 64))(v33, a6, v38);
      }

      goto LABEL_94;
    }

    if (v37 <= 7)
    {
      if (v37 == 6)
      {
        if ((~*(a4 + 1) & 0x60) != 0)
        {
          v43.n128_f32[0] = google::protobuf::Reflection::GetFloat(a3, a2, a4, a4, a5);
        }

        else
        {
          v43.n128_f32[0] = google::protobuf::Reflection::GetRepeatedFloat(a3, a2, a4, v8, a5);
        }

        (*(*v33 + 56))(v33, a6, v43);
      }

      else
      {
        if ((~*(a4 + 1) & 0x60) != 0)
        {
          Bool = google::protobuf::Reflection::GetBool(a3, a2, a4, a4, a5);
        }

        else
        {
          Bool = google::protobuf::Reflection::GetRepeatedBool(a3, a2, a4, v8, a5);
        }

        (*(*v33 + 16))(v33, Bool, a6);
      }
    }

    else
    {
      if (v37 != 8)
      {
        if (v37 != 9)
        {
          if (v37 == 10)
          {
            if ((~*(a4 + 1) & 0x60) != 0)
            {
              Message = google::protobuf::Reflection::GetMessage(a3, a2, a4, 0, a5);
            }

            else
            {
              Message = google::protobuf::Reflection::GetRepeatedMessage(a3, a2, a4, v8, a5);
            }

            google::protobuf::TextFormat::Printer::Print(a1, Message, a6);
          }

          goto LABEL_94;
        }

        memset(&v65, 0, sizeof(v65));
        if ((~*(a4 + 1) & 0x60) != 0)
        {
          StringReference = google::protobuf::Reflection::GetStringReference(a3, a2, a4, &v65, a5);
        }

        else
        {
          StringReference = google::protobuf::Reflection::GetRepeatedStringReference(a3, a2, a4, v8, &v65);
        }

        v52 = StringReference;
        v63 = 0;
        v64 = 0uLL;
        v53 = *(a1 + 24);
        if (v53 >= 1)
        {
          v54 = *(StringReference + 23);
          if ((v54 & 0x8000000000000000) != 0)
          {
            v54 = *(StringReference + 8);
          }

          if (v53 < v54)
          {
            std::string::substr[abi:ne200100](StringReference, 0, v53, &__p);
            v55 = std::string::append(&__p, "...<truncated>...");
            v56 = v55->__r_.__value_.__r.__words[0];
            v66[0] = v55->__r_.__value_.__l.__size_;
            *(v66 + 7) = *(&v55->__r_.__value_.__r.__words[1] + 7);
            v57 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
            v55->__r_.__value_.__l.__size_ = 0;
            v55->__r_.__value_.__r.__words[2] = 0;
            v55->__r_.__value_.__r.__words[0] = 0;
            *(&v64 + 7) = *(v66 + 7);
            v63 = v56;
            *&v64 = v66[0];
            HIBYTE(v64) = v57;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v52 = &v63;
          }
        }

        v58 = *(a4 + 3);
        if (v58)
        {
          __p.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v66[0] = a4;
          if (atomic_load_explicit(v58, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v58, 1, &__p, v66);
          }
        }

        v59 = *v33;
        if (*(a4 + 2) == 9)
        {
          v60 = (v59 + 72);
        }

        else
        {
          v60 = (v59 + 80);
        }

        *(a4 + 2);
        (*v60)(v33, v52, a6);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(v63);
        }

LABEL_92:
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        goto LABEL_94;
      }

      if ((~*(a4 + 1) & 0x60) != 0)
      {
        EnumValue = google::protobuf::Reflection::GetEnumValue(a3, a2, a4, a4, a5);
      }

      else
      {
        EnumValue = google::protobuf::Reflection::GetRepeatedEnumValue(a3, a2, a4, v8, a5);
      }

      v48 = EnumValue;
      v49 = google::protobuf::FieldDescriptor::enum_type(a4);
      ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v49, v48);
      if (!ValueByNumber)
      {
        absl::lts_20240722::StrCat<int>(v48, v51, &v65);
        (*(*v33 + 88))(v33, v48, &v65, a6);
        goto LABEL_92;
      }

      (*(*v33 + 88))(v33, v48, ValueByNumber[1], a6);
    }

LABEL_94:
    v61 = *MEMORY[0x277D85DE8];
    return;
  }

  v34 = *(*a6 + 40);
  v35 = *MEMORY[0x277D85DE8];

  v34(a6, "[REDACTED]", 10);
}

void sub_23CDF1E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::MapFieldPrinterHelper::SortMap(uint64_t a1, google::protobuf::_anonymous_namespace_ **a2, google::protobuf::Descriptor *a3, uint64_t **a4, const char *a5)
{
  v43[2] = *MEMORY[0x277D85DE8];
  MapData = google::protobuf::Reflection::GetMapData(a2, a1, a3, a4, a5);
  IsRepeatedFieldValid = google::protobuf::internal::MapFieldBase::IsRepeatedFieldValid(MapData);
  if (IsRepeatedFieldValid)
  {
    RawRepeatedField = google::protobuf::Reflection::GetRawRepeatedField(a2, a1, a3, 10, 0xFFFFFFFFLL, 0);
    if (*(RawRepeatedField + 2) >= 1)
    {
      v12 = RawRepeatedField;
      v13 = 0;
      v14 = 8;
      do
      {
        if (*v12)
        {
          v15 = (*v12 + v14 - 1);
        }

        else
        {
          v15 = v12;
        }

        v38[0] = *v15;
        std::vector<google::protobuf::Symbol>::push_back[abi:ne200100](a4, v38);
        ++v13;
        v14 += 8;
      }

      while (v13 < *(v12 + 2));
    }
  }

  else
  {
    v16 = google::protobuf::FieldDescriptor::message_type(a3);
    MessageFactory = google::protobuf::Reflection::GetMessageFactory(a2);
    v18 = (*(*MessageFactory + 16))(MessageFactory, v16);
    google::protobuf::Reflection::MapBegin(a3, a2, a1, v19, v38);
    while (1)
    {
      google::protobuf::Reflection::MapEnd(a3, a2, a1, v20, v35);
      v21 = google::protobuf::internal::MapFieldBase::EqualIterator(v39, v38, v35);
      if (v37 == 9 && v36 < 0)
      {
        operator delete(v35[4]);
      }

      if (v21)
      {
        break;
      }

      v35[0] = (*(*v18 + 16))(v18, 0);
      google::protobuf::internal::MapFieldPrinterHelper::CopyKey(&v40, v35[0], *(v16 + 56), v22);
      google::protobuf::internal::MapFieldPrinterHelper::CopyValue(v43, v35[0], (*(v16 + 56) + 88), v23);
      std::vector<google::protobuf::Symbol>::push_back[abi:ne200100](a4, v35);
      google::protobuf::internal::MapFieldBase::IncreaseIterator(v39, v38);
    }

    if (v42 == 9 && v41 < 0)
    {
      operator delete(v40);
    }
  }

  v24 = google::protobuf::FieldDescriptor::message_type(a3);
  v26 = *a4;
  v25 = a4[1];
  v38[0] = *(v24 + 56);
  if (v25 - v26 < 129)
  {
    v32 = 0;
    v28 = 0;
  }

  else
  {
    v27 = MEMORY[0x277D826F0];
    v28 = v25 - v26;
    while (1)
    {
      v29 = operator new(8 * v28, v27);
      if (v29)
      {
        break;
      }

      v30 = v28 >> 1;
      v31 = v28 > 1;
      v28 >>= 1;
      if (!v31)
      {
        v32 = 0;
        v28 = v30;
        goto LABEL_25;
      }
    }

    v32 = v29;
  }

LABEL_25:
  std::__stable_sort<std::_ClassicAlgPolicy,google::protobuf::MapEntryMessageComparator &,std::__wrap_iter<google::protobuf::Message const**>>(v26, v25, v38, v25 - v26, v32, v28);
  if (v32)
  {
    operator delete(v32);
  }

  v33 = *MEMORY[0x277D85DE8];
  return !IsRepeatedFieldValid;
}

void sub_23CDF21BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, int a33)
{
  if (v33)
  {
    operator delete(v33);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::MapFieldPrinterHelper::CopyKey(google::protobuf::internal::MapFieldPrinterHelper *this, const google::protobuf::MapKey *a2, google::protobuf::Message *a3, const google::protobuf::FieldDescriptor *a4)
{
  (*(*a2 + 80))(a2);
  v8 = v7;
  v9 = *(a3 + 3);
  if (v9)
  {
    v25[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v26 = a3;
    if (atomic_load_explicit(v9, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, v25, &v26);
      v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
      if (v10 > 3)
      {
        goto LABEL_4;
      }

LABEL_19:
      switch(v10)
      {
        case 1:
          Int32Value = google::protobuf::MapKey::GetInt32Value(this);
          google::protobuf::Reflection::SetInt32(v8, a2, a3, Int32Value, v21);
          break;
        case 2:
          Int64Value = google::protobuf::MapKey::GetInt64Value(this);
          google::protobuf::Reflection::SetInt64(v8, a2, a3, Int64Value, v23);
          break;
        case 3:
          UInt32Value = google::protobuf::MapKey::GetUInt32Value(this);
          google::protobuf::Reflection::SetUInt32(v8, a2, a3, UInt32Value, v19);
          break;
      }

      return;
    }
  }

  v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
  if (v10 <= 3)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v10 <= 0xA)
  {
    if (v10 == 7)
    {
      BoolValue = google::protobuf::MapKey::GetBoolValue(this);
      google::protobuf::Reflection::SetBool(v8, a2, a3, BoolValue, v15);
      return;
    }

    if (v10 == 9)
    {
      StringValue = google::protobuf::MapKey::GetStringValue(this);
      if (*(StringValue + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *StringValue, *(StringValue + 1));
      }

      else
      {
        v13 = *StringValue;
        __p.__r_.__value_.__r.__words[2] = *(StringValue + 2);
        *&__p.__r_.__value_.__l.__data_ = v13;
      }

      google::protobuf::Reflection::SetString(v8, a2, a3, &__p, v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    }

    if (((1 << v10) & 0x560) != 0)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/text_format.cc", 2559);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "Not supported.", 0xEuLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v25);
      return;
    }
  }

  if (v10 == 4)
  {
    UInt64Value = google::protobuf::MapKey::GetUInt64Value(this);
    google::protobuf::Reflection::SetUInt64(v8, a2, a3, UInt64Value, v17);
  }
}

void sub_23CDF24CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::MapFieldPrinterHelper::CopyValue(google::protobuf::internal::MapFieldPrinterHelper *this, const google::protobuf::MapValueRef *a2, google::protobuf::Message *a3, const google::protobuf::FieldDescriptor *a4)
{
  (*(*a2 + 80))(a2);
  v8 = v7;
  v9 = *(a3 + 3);
  if (v9 && (v37 = a3, v38 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v9, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v38, &v37);
    v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v10 <= 5)
    {
LABEL_4:
      if (v10 <= 2)
      {
        if (v10 == 1)
        {
          Int32Value = google::protobuf::MapValueConstRef::GetInt32Value(this);
          google::protobuf::Reflection::SetInt32(v8, a2, a3, Int32Value, v17);
        }

        else if (v10 == 2)
        {
          Int64Value = google::protobuf::MapValueConstRef::GetInt64Value(this);
          google::protobuf::Reflection::SetInt64(v8, a2, a3, Int64Value, v15);
        }
      }

      else if (v10 == 3)
      {
        UInt32Value = google::protobuf::MapValueConstRef::GetUInt32Value(this);
        google::protobuf::Reflection::SetUInt32(v8, a2, a3, UInt32Value, v19);
      }

      else if (v10 == 4)
      {
        UInt64Value = google::protobuf::MapValueConstRef::GetUInt64Value(this);
        google::protobuf::Reflection::SetUInt64(v8, a2, a3, UInt64Value, v21);
      }

      else
      {
        DoubleValue = google::protobuf::MapValueConstRef::GetDoubleValue(this);
        google::protobuf::Reflection::SetDouble(v8, a2, a3, DoubleValue, v12, v13);
      }

      return;
    }
  }

  else
  {
    v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 2)];
    if (v10 <= 5)
    {
      goto LABEL_4;
    }
  }

  if (v10 <= 7)
  {
    if (v10 == 6)
    {
      FloatValue = google::protobuf::MapValueConstRef::GetFloatValue(this);
      google::protobuf::Reflection::SetFloat(v8, a2, a3, FloatValue, v29, v30);
    }

    else
    {
      BoolValue = google::protobuf::MapValueConstRef::GetBoolValue(this);
      google::protobuf::Reflection::SetBool(v8, a2, a3, BoolValue, v27);
    }
  }

  else
  {
    switch(v10)
    {
      case 8:
        EnumValue = google::protobuf::MapValueConstRef::GetEnumValue(this);
        google::protobuf::Reflection::SetEnumValue(v8, a2, a3, EnumValue, v32);
        break;
      case 9:
        StringValue = google::protobuf::MapValueConstRef::GetStringValue(this);
        if (*(StringValue + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *StringValue, *(StringValue + 8));
        }

        else
        {
          v35 = *StringValue;
          __p.__r_.__value_.__r.__words[2] = *(StringValue + 16);
          *&__p.__r_.__value_.__l.__data_ = v35;
        }

        google::protobuf::Reflection::SetString(v8, a2, a3, &__p, v34);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        break;
      case 10:
        MessageValue = google::protobuf::MapValueConstRef::GetMessageValue(this);
        v23 = (*(*MessageValue + 16))(MessageValue, 0);
        v24 = google::protobuf::MapValueConstRef::GetMessageValue(this);
        google::protobuf::Message::CopyFrom(v23, v24);
        google::protobuf::Reflection::SetAllocatedMessage(v8, a2, v23, a3, v25);
        break;
    }
  }
}
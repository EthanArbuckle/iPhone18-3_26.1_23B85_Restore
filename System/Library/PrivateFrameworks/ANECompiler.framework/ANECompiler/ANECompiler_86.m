void google::protobuf::io::StringOutputStream::BackUp(google::protobuf::io::StringOutputStream *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::io::StringOutputStream::BackUp(a2);
  }

  v2 = *(this + 1);
  if (!v2)
  {
    google::protobuf::io::StringOutputStream::BackUp(&v6);
  }

  v3 = a2;
  v4 = *(v2 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v2 + 8);
  }

  if (v4 < v3)
  {
    google::protobuf::io::StringOutputStream::BackUp(v3, v4);
  }

  v5 = v4 - v3;

  std::string::resize(v2, v5, 0);
}

uint64_t google::protobuf::io::StringOutputStream::ByteCount(google::protobuf::io::StringOutputStream *this)
{
  v3 = *(this + 1);
  if (!v3)
  {
    v5[2] = v1;
    v5[3] = v2;
    google::protobuf::io::StringOutputStream::ByteCount(v5);
  }

  result = *(v3 + 23);
  if (result < 0)
  {
    return *(v3 + 8);
  }

  return result;
}

BOOL google::protobuf::internal::GetAnyFieldDescriptors(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = (*(*a1 + 80))(a1);
  v6 = *(v5 + 1);
  v7 = strlen("google.protobuf.Any");
  v8 = *(v6 + 47);
  if (v8 < 0)
  {
    if (v7 != *(v6 + 32))
    {
      return 0;
    }

    if (v7 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(*(v6 + 24), "google.protobuf.Any", v7))
    {
      return 0;
    }
  }

  else if (v7 != v8 || memcmp((v6 + 24), "google.protobuf.Any", v7))
  {
    return 0;
  }

  *a2 = google::protobuf::Descriptor::FindFieldByNumber(v5, 1u);
  *a3 = google::protobuf::Descriptor::FindFieldByNumber(v5, 2u);
  v9 = *a2;
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 24);
  if (!v10 || (v14 = v9, v15 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v10, memory_order_acquire) == 221))
  {
    if (*(v9 + 2) == 9)
    {
      goto LABEL_12;
    }

    return 0;
  }

  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &v15, &v14);
  if (*(v9 + 2) != 9)
  {
    return 0;
  }

LABEL_12:
  v11 = *a3;
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 24);
  if (v12)
  {
    v14 = v11;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v12, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, &v15, &v14);
    }
  }

  return *(v11 + 2) == 12;
}

void absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(atomic_uint *a1, uint64_t a2, void (**a3)(void), void *a4)
{
  v7 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v7, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v7 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,void (*)(google::protobuf::FieldDescriptor const*) &&,google::protobuf::FieldDescriptor const* &&)::trans))
  {
    (*a3)(*a4);
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

google::protobuf::Any *google::protobuf::Any::Any(google::protobuf::Any *this, google::protobuf::Arena *a2, const google::protobuf::Any *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F45048;
  v7 = *(a3 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v8 = (this + 16);
  v9 = *(a3 + 2);
  if ((v9 & 3) != 0)
  {
    v9 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 16), a2);
  }

  *v8 = v9;
  v12 = *(a3 + 3);
  v11 = (a3 + 24);
  v10 = v12;
  if ((v12 & 3) != 0)
  {
    v10 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v11, a2);
  }

  *(this + 3) = v10;
  *(this + 8) = 0;
  *(this + 5) = v8;
  *(this + 6) = this + 24;
  return this;
}

void google::protobuf::Any::~Any(google::protobuf::Any *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 2);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 2);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);

  JUMPOUT(0x23EED9460);
}

std::string *google::protobuf::Any::MergeImpl(std::string *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
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

  v8 = *(a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9)
  {
    v10 = *(v4 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 24), v8, v10);
  }

  v11 = *(a2 + 1);
  if (v11)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::Any::Clear(google::protobuf::Any *this)
{
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 2);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 3);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Any::_InternalSerialize(google::protobuf::Any *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(*v8, v11, 1, "google.protobuf.Any.type_url");
    v10 = *(v8 + 23);
    if (v10 < 0)
    {
LABEL_7:
      v10 = *(v8 + 8);
      if (v10 > 127)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFFFCLL) + 23))
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String((v7 & 0xFFFFFFFFFFFFFFFCLL), v9, 1, "google.protobuf.Any.type_url");
    v10 = *(v8 + 23);
    if (v10 < 0)
    {
      goto LABEL_7;
    }
  }

  if (*a3 - a2 + 14 >= v10)
  {
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
    v13 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *(v13 + 23);
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_16:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v8, a2);
  v13 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 23);
  if ((v14 & 0x8000000000000000) == 0)
  {
LABEL_14:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_17:
  v14 = *(v13 + 8);
  if (!v14)
  {
    goto LABEL_24;
  }

  if (v14 > 127)
  {
LABEL_26:
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 2, v13, a2);
    v16 = *(this + 1);
    if ((v16 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_27;
  }

LABEL_19:
  if (*a3 - a2 + 14 < v14)
  {
    goto LABEL_26;
  }

  *a2 = 18;
  *(a2 + 1) = v14;
  if (*(v13 + 23) >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = *v13;
  }

  memcpy(a2 + 2, v15, v14);
  a2 = (a2 + v14 + 2);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

LABEL_27:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Any::ByteSizeLong(google::protobuf::Any *this)
{
  v1 = *(this + 2) & 0xFFFFFFFFFFFFFFFCLL;
  v2 = *(v1 + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (*(v1 + 23))
    {
      goto LABEL_3;
    }

LABEL_12:
    v4 = 0;
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *(v5 + 23);
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (!*(v1 + 8))
  {
    goto LABEL_12;
  }

LABEL_3:
  v3 = *(v1 + 8);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  v4 = (v3 + ((352 - 9 * __clz(v3)) >> 6) + 1);
  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v5 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
LABEL_6:
    if (!v6)
    {
      return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, this + 8);
    }

    goto LABEL_7;
  }

LABEL_13:
  if (!*(v5 + 8))
  {
    return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, this + 8);
  }

LABEL_7:
  v7 = *(v5 + 8);
  if (v6 >= 0)
  {
    v7 = v6;
  }

  v4 = (v4 + v7 + ((352 - 9 * __clz(v7)) >> 6) + 1);
  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, this + 8);
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::Any>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *(result + 8) = a1;
  }

  else
  {
    result = operator new(0x38uLL);
    *(result + 8) = 0;
  }

  *result = off_284F45048;
  *(result + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 32) = 0;
  *(result + 40) = result + 16;
  *(result + 48) = result + 24;
  return result;
}

void pb::CppFeatures::~CppFeatures(pb::CppFeatures *this)
{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v1);
  }
}

{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v1);
  }

  JUMPOUT(0x23EED9460);
}

void *pb::CppFeatures::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    *(this + 24) = *(a2 + 24);
  }

  *(this + 4) |= v3;
  v4 = *(a2 + 1);
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *pb::CppFeatures::Clear(pb::CppFeatures *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 16) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *pb::CppFeatures::_InternalSerialize(pb::CppFeatures *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      v8 = a3;
      v9 = this;
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v8;
      this = v9;
    }

    v5 = *(this + 24);
    *a2 = 8;
    a2[1] = v5;
    a2 += 2;
    v4 = vars8;
  }

  v6 = *(this + 1);
  if ((v6 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v6 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t google::protobuf::Arena::DefaultConstruct<pb::CppFeatures>(google::protobuf::Arena *a1)
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

  *result = off_284F450E8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void google::protobuf::DescriptorPool::Tables::Tables(google::protobuf::DescriptorPool::Tables *this)
{
  v1 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 5) = &unk_23CE31C20;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = &unk_23CE31C20;
  *(this + 15) = 0;
  *(this + 88) = xmmword_23CE306D0;
  *(this + 16) = 0;
  *(this + 17) = &unk_23CE31C20;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = xmmword_23CE306D0;
  *(this + 232) = xmmword_23CE306D0;
  *(this + 33) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 34) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = &unk_23CE31C20;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  operator new();
}

void sub_23CD6E4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  do
  {
    v22 = *(v20 - 9);
    v20 -= 4;
    if (v22 < 0)
    {
      operator delete(*v20);
    }
  }

  while (v20 != &__p);
  v23 = *(v16 + 392);
  if (v23)
  {
    *(v16 + 400) = v23;
    operator delete(v23);
    v24 = *(v16 + 368);
    if (!v24)
    {
LABEL_7:
      v25 = *(v16 + 344);
      if (!v25)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v24 = *(v16 + 368);
    if (!v24)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 376) = v24;
  operator delete(v24);
  v25 = *(v16 + 344);
  if (!v25)
  {
LABEL_8:
    v26 = *(v16 + 320);
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(v16 + 352) = v25;
  operator delete(v25);
  v26 = *(v16 + 320);
  if (!v26)
  {
LABEL_10:
    absl::lts_20240722::flat_hash_map<std::string,std::unique_ptr<google::protobuf::FeatureSet>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::~flat_hash_map((v16 + 288));
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::clear((v16 + 264));
    if (*(v16 + 232) >= 2uLL)
    {
      operator delete((*(v16 + 248) - (*(v16 + 240) & 1) - 8));
    }

    if (*(v16 + 200) >= 2uLL)
    {
      operator delete((*(v16 + 216) - (*(v16 + 208) & 1) - 8));
    }

    std::vector<std::unique_ptr<int,google::protobuf::DescriptorPool::Tables::MiscDeleter>>::~vector[abi:ne200100](v19);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(v18);
    if (*(v16 + 88) >= 2uLL)
    {
      operator delete((*(v16 + 104) - (*(v16 + 96) & 1) - 8));
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set(v17);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set((v16 + 24));
    std::vector<std::string>::~vector[abi:ne200100](v16);
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v16 + 328) = v26;
  operator delete(v26);
  goto LABEL_10;
}

void sub_23CD6E798(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *absl::lts_20240722::flat_hash_map<std::string,std::unique_ptr<google::protobuf::FeatureSet>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::~flat_hash_map(void *a1)
{
  if (*a1)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::destroy_slots(a1);
    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

int ***std::vector<std::unique_ptr<google::protobuf::anonymous namespace::FlatAllocation<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>,google::protobuf::DescriptorPool::Tables::FlatAllocDeleter>>::~vector[abi:ne200100](int ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::vector<std::unique_ptr<int,google::protobuf::DescriptorPool::Tables::MiscDeleter>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          operator delete(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void google::protobuf::DescriptorPool::Tables::~Tables(google::protobuf::DescriptorPool::Tables *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    *(this + 50) = v2;
    operator delete(v2);
  }

  v3 = *(this + 46);
  if (v3)
  {
    *(this + 47) = v3;
    operator delete(v3);
  }

  v4 = *(this + 43);
  if (v4)
  {
    *(this + 44) = v4;
    operator delete(v4);
  }

  v5 = *(this + 40);
  if (v5)
  {
    *(this + 41) = v5;
    operator delete(v5);
  }

  if (*(this + 36))
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::destroy_slots(this + 36);
    operator delete((*(this + 38) - (*(this + 37) & 1) - 8));
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::clear(this + 33);
  if (*(this + 29) >= 2uLL)
  {
    operator delete((*(this + 31) - (*(this + 30) & 1) - 8));
    if (*(this + 25) < 2uLL)
    {
LABEL_13:
      v6 = *(this + 22);
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if (*(this + 25) < 2uLL)
  {
    goto LABEL_13;
  }

  operator delete((*(this + 27) - (*(this + 26) & 1) - 8));
  v6 = *(this + 22);
  if (!v6)
  {
LABEL_14:
    v7 = *(this + 19);
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_25:
  v12 = *(this + 23);
  v13 = v6;
  if (v12 != v6)
  {
    do
    {
    }

    while (v12 != v6);
    v13 = *(this + 22);
  }

  *(this + 23) = v6;
  operator delete(v13);
  v7 = *(this + 19);
  if (!v7)
  {
LABEL_15:
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 15);
    if (*(this + 11) < 2uLL)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  v14 = *(this + 20);
  v15 = v7;
  if (v14 != v7)
  {
    do
    {
      v17 = *--v14;
      v16 = v17;
      *v14 = 0;
      if (v17)
      {
        operator delete(v16);
      }
    }

    while (v14 != v7);
    v15 = *(this + 19);
  }

  *(this + 20) = v7;
  operator delete(v15);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 15);
  if (*(this + 11) >= 2uLL)
  {
LABEL_16:
    operator delete((*(this + 13) - (*(this + 12) & 1) - 8));
  }

LABEL_17:
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set(this + 7);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set(this + 3);
  v8 = *this;
  if (*this)
  {
    v9 = *(this + 1);
    v10 = *this;
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *this;
    }

    *(this + 1) = v8;
    operator delete(v10);
  }
}

void google::protobuf::FileDescriptorTables::~FileDescriptorTables(google::protobuf::FileDescriptorTables *this)
{
  explicit = atomic_load_explicit(this + 5, memory_order_acquire);
  if (explicit)
  {
    if (*explicit)
    {
      operator delete((explicit[2] - (explicit[1] & 1) - 8));
    }

    MEMORY[0x23EED9460](explicit, 0x1082C4091D7F878);
  }

  v3 = atomic_load_explicit(this + 6, memory_order_acquire);
  if (v3)
  {
    if (*v3)
    {
      operator delete((v3[2] - (v3[1] & 1) - 8));
    }

    MEMORY[0x23EED9460](v3, 0x1082C4091D7F878);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 192));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 20);
  if (*(this + 15) >= 2uLL)
  {
    operator delete((*(this + 17) - (*(this + 16) & 1) - 8));
    if (*(this + 11) < 2uLL)
    {
LABEL_11:
      if (*(this + 7) < 2uLL)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  else if (*(this + 11) < 2uLL)
  {
    goto LABEL_11;
  }

  operator delete((*(this + 13) - (*(this + 12) & 1) - 8));
  if (*(this + 7) < 2uLL)
  {
LABEL_12:
    if (*this < 2uLL)
    {
      return;
    }

LABEL_17:
    operator delete((*(this + 2) - (*(this + 1) & 1) - 8));
    return;
  }

LABEL_16:
  operator delete((*(this + 9) - (*(this + 8) & 1) - 8));
  if (*this >= 2uLL)
  {
    goto LABEL_17;
  }
}

void google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(google::protobuf::DescriptorPool::Tables *this, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v116 = *(this + 41);
  v6 = *(v116 - 12);
  v7 = *(this + 43);
  if (v6 >= (*(this + 44) - v7) >> 3)
  {
    goto LABEL_70;
  }

  do
  {
    while (1)
    {
      v27 = (v7 + 8 * v6);
      if (*(this + 25) > 1uLL)
      {
        break;
      }

      if (*(this + 26) >= 2uLL && (v28 = google::protobuf::Symbol::full_name(this + 27), v30 = v29, v31 = google::protobuf::Symbol::full_name(v27), v30 == v32) && !memcmp(v28, v31, v30))
      {
        v26 = &absl::lts_20240722::container_internal::kSooControl;
        if (*(this + 25) > 1uLL)
        {
          goto LABEL_69;
        }

LABEL_60:
        *(this + 26) = 0;
        ++v6;
        v7 = *(this + 43);
        if (v6 >= (*(this + 44) - v7) >> 3)
        {
          goto LABEL_70;
        }
      }

      else
      {
LABEL_65:
        ++v6;
        v7 = *(this + 43);
        if (v6 >= (*(this + 44) - v7) >> 3)
        {
          goto LABEL_70;
        }
      }
    }

    _X8 = *(this + 27);
    __asm { PRFM            #4, [X8] }

    v39 = google::protobuf::Symbol::full_name(v27);
    v41 = v40;
    v44 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v39, v40, v42, v43);
    v24 = 0;
    v45 = (((v44 + v41) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v44 + v41));
    v46 = *(this + 27);
    v47 = *(this + 25);
    v25 = (v45 >> 7) ^ (v46 >> 12);
    v48 = vdup_n_s8(v45 & 0x7F);
    v49 = *v27;
    while (1)
    {
      v8 = v25 & v47;
      v9 = *(v46 + (v25 & v47));
      v10 = vceq_s8(v9, v48);
      if (v10)
      {
        break;
      }

LABEL_57:
      if (vceq_s8(v9, 0x8080808080808080))
      {
        goto LABEL_65;
      }

      v24 += 8;
      v25 = v24 + v8;
    }

    v11 = *(this + 28);
    while (1)
    {
      v12 = (v8 + (__clz(__rbit64(v10)) >> 3)) & v47;
      v13 = *(v11 + 8 * v12);
      v14 = *v13;
      if (v14 <= 4)
      {
        if (*v13 > 2u)
        {
          if (v14 != 3 && v14 != 4)
          {
LABEL_157:
            google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(v118);
          }
        }

        else if (v14 != 1 && v14 != 2)
        {
          goto LABEL_157;
        }

        goto LABEL_24;
      }

      if (*v13 <= 7u)
      {
        if (v14 != 5 && v14 != 7)
        {
          goto LABEL_157;
        }

LABEL_24:
        v19 = *(v13 + 1);
        v18 = *(v19 + 47);
        if ((v18 & 0x8000000000000000) != 0)
        {
          v15 = *(v19 + 24);
          v18 = *(v19 + 32);
        }

        else
        {
          v15 = (v19 + 24);
        }

        goto LABEL_27;
      }

      switch(v14)
      {
        case 8u:
          goto LABEL_24;
        case 9u:
          v15 = *(v13 + 2);
          v18 = *(v15 + 23);
          if ((v18 & 0x8000000000000000) != 0)
          {
            v15 = *v15;
            v18 = *(*(v13 + 2) + 8);
          }

          break;
        case 0xAu:
          v15 = *(*(v13 + 1) + 16);
          v16 = *(v15 + 23);
          if ((v16 & 0x8000000000000000) != 0)
          {
            v15 = *v15;
            v16 = *(*(*(v13 + 1) + 16) + 8);
          }

          v17 = *(v13 + 1);
          v18 = v16 >= v17 ? v17 : v16;
          break;
        default:
          goto LABEL_157;
      }

LABEL_27:
      v20 = *v49;
      if (v20 <= 4)
      {
        if (*v49 > 2u)
        {
          if (v20 != 3 && v20 != 4)
          {
LABEL_158:
            google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(v118);
          }
        }

        else if (v20 != 1 && v20 != 2)
        {
          goto LABEL_158;
        }

        goto LABEL_46;
      }

      if (*v49 <= 7u)
      {
        if (v20 != 5 && v20 != 7)
        {
          goto LABEL_158;
        }

LABEL_46:
        v23 = *(v49 + 1);
        v22 = *(v23 + 47);
        if ((v22 & 0x8000000000000000) != 0)
        {
          v21 = *(v23 + 24);
          v22 = *(v23 + 32);
        }

        else
        {
          v21 = (v23 + 24);
        }

        goto LABEL_49;
      }

      switch(v20)
      {
        case 8u:
          goto LABEL_46;
        case 9u:
          v21 = *(v49 + 2);
          v22 = *(v21 + 23);
          if ((v22 & 0x8000000000000000) != 0)
          {
            v21 = *v21;
            v22 = *(*(v49 + 2) + 8);
          }

          break;
        case 0xAu:
          v21 = *(*(v49 + 1) + 16);
          v22 = *(v21 + 23);
          if ((v22 & 0x8000000000000000) != 0)
          {
            v21 = *v21;
            v22 = *(*(*(v49 + 1) + 16) + 8);
          }

          if (v22 >= *(v49 + 1))
          {
            v22 = *(v49 + 1);
          }

          break;
        default:
          goto LABEL_158;
      }

LABEL_49:
      if (v18 == v22 && !memcmp(v15, v21, v18))
      {
        break;
      }

      v10 &= ((v10 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v10)
      {
        goto LABEL_57;
      }
    }

    v26 = (v46 + v12);
    if (v47 <= 1)
    {
      goto LABEL_60;
    }

LABEL_69:
    absl::lts_20240722::container_internal::EraseMetaOnly(this + 25, v26 - *(this + 27));
    ++v6;
    v7 = *(this + 43);
  }

  while (v6 < (*(this + 44) - v7) >> 3);
LABEL_70:
  v50 = *(v116 - 8);
  for (i = *(this + 46); v50 < (*(this + 47) - i) >> 3; i = *(this + 46))
  {
    if (*(this + 29) > 1uLL)
    {
      _X8 = *(this + 31);
      __asm { PRFM            #4, [X8] }

      v64 = *(*(i + 8 * v50) + 8);
      v65 = *(v64 + 23);
      if (v65 >= 0)
      {
        v66 = *(*(i + 8 * v50) + 8);
      }

      else
      {
        v66 = *v64;
      }

      if (v65 >= 0)
      {
        v67 = *(v64 + 23);
      }

      else
      {
        v67 = *(v64 + 8);
      }

      v68 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v66, v67, a4, a5);
      v69 = 0;
      v70 = (((v68 + v67) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v68 + v67));
      v71 = *(this + 31);
      v72 = *(this + 29);
      v73 = vdup_n_s8(v70 & 0x7F);
      v74 = *(i + 8 * v50);
      v75 = ((v70 >> 7) ^ (v71 >> 12)) & v72;
      v76 = *(v71 + v75);
      v77 = vceq_s8(v76, v73);
      if (!v77)
      {
LABEL_114:
        while (!*&vceq_s8(v76, 0x8080808080808080))
        {
          v69 += 8;
          v75 = (v69 + v75) & v72;
          v76 = *(v71 + v75);
          v77 = vceq_s8(v76, v73);
          if (v77)
          {
            goto LABEL_98;
          }
        }

        goto LABEL_73;
      }

LABEL_98:
      v78 = *(this + 32);
      while (1)
      {
        v79 = (v75 + (__clz(__rbit64(v77)) >> 3)) & v72;
        v80 = *(v78 + 8 * v79);
        if (v80 == v74)
        {
          break;
        }

        v81 = *(v80 + 8);
        v82 = *(v74 + 8);
        v83 = *(v81 + 23);
        if (v83 >= 0)
        {
          v84 = *(v81 + 23);
        }

        else
        {
          v84 = *(v81 + 8);
        }

        v85 = *(v82 + 23);
        v86 = v85;
        if ((v85 & 0x80u) != 0)
        {
          v85 = *(v82 + 8);
        }

        if (v84 == v85)
        {
          v87 = v83 >= 0 ? v81 : *v81;
          v88 = v86 >= 0 ? *(v74 + 8) : *v82;
          if (!memcmp(v87, v88, v84))
          {
            break;
          }
        }

        v77 &= ((v77 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v77)
        {
          goto LABEL_114;
        }
      }

      if (v72 > 1)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly(this + 29, v79);
        goto LABEL_73;
      }
    }

    else
    {
      if (*(this + 30) < 2uLL)
      {
        goto LABEL_73;
      }

      v52 = *(this + 31);
      v53 = *(i + 8 * v50);
      if (v52 != v53)
      {
        v54 = *(v52 + 8);
        v55 = *(v53 + 8);
        v56 = *(v54 + 23);
        if (v56 >= 0)
        {
          v57 = *(v54 + 23);
        }

        else
        {
          v57 = *(v54 + 8);
        }

        v58 = *(v55 + 23);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = *(v55 + 8);
        }

        if (v57 != v58)
        {
          goto LABEL_73;
        }

        v60 = v56 >= 0 ? v54 : *v54;
        v61 = v59 >= 0 ? v55 : *v55;
        if (memcmp(v60, v61, v57))
        {
          goto LABEL_73;
        }
      }
    }

    *(this + 30) = 0;
LABEL_73:
    ++v50;
  }

  v89 = *(v116 - 4);
  v90 = *(this + 49);
  if (v89 < (*(this + 50) - v90) >> 4)
  {
    v91 = 16 * v89;
    do
    {
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::equal_range<std::pair<google::protobuf::Descriptor const*,int>>(this + 33, (v90 + v91), v118);
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::pair<google::protobuf::Descriptor const*,int>,google::protobuf::FieldDescriptor const*,std::less<std::pair<google::protobuf::Descriptor const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::Descriptor const*,int> const,google::protobuf::FieldDescriptor const*>>,256,false>>::erase_range(this + 264, v118[0], v118[1], v118[2], v118[3], v117);
      ++v89;
      v90 = *(this + 49);
      v91 += 16;
    }

    while (v89 < (*(this + 50) - v90) >> 4);
  }

  v92 = *(v116 - 12);
  v93 = *(this + 43);
  v94 = (*(this + 44) - v93) >> 3;
  if (v92 <= v94)
  {
    if (v92 < v94)
    {
      *(this + 44) = v93 + 8 * v92;
    }
  }

  else
  {
    std::vector<google::protobuf::Symbol>::__append(this + 344, v92 - v94);
  }

  v95 = *(v116 - 8);
  v96 = *(this + 46);
  v97 = (*(this + 47) - v96) >> 3;
  if (v95 <= v97)
  {
    if (v95 < v97)
    {
      *(this + 47) = v96 + 8 * v95;
    }
  }

  else
  {
    std::vector<google::protobuf::FileDescriptor const*>::__append(this + 368, v95 - v97);
  }

  v98 = *(v116 - 4);
  v99 = *(this + 49);
  v100 = (*(this + 50) - v99) >> 4;
  if (v98 <= v100)
  {
    if (v98 < v100)
    {
      *(this + 50) = v99 + 16 * v98;
    }
  }

  else
  {
    std::vector<std::pair<google::protobuf::Descriptor const*,int>>::__append(this + 392, v98 - v100);
  }

  v101 = *(v116 - 20);
  v102 = *(this + 22);
  v103 = *(this + 23);
  v104 = (v103 - v102) >> 3;
  v105 = v101 - v104;
  if (v101 <= v104)
  {
    if (v101 < v104)
    {
      v108 = (v102 + 8 * v101);
      while (v103 != v108)
      {
      }

      *(this + 23) = v108;
    }
  }

  else
  {
    v106 = *(this + 24);
    if (v105 > (v106 - v103) >> 3)
    {
      if ((v101 & 0x80000000) == 0)
      {
        v107 = v106 - v102;
        if (v107 >> 2 > v101)
        {
          v101 = v107 >> 2;
        }

        if (v107 >= 0x7FFFFFFFFFFFFFF8)
        {
          v101 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (!(v101 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(this + 23), 8 * v105);
    *(this + 23) = &v103[v105];
  }

  v109 = *(this + 19);
  v110 = *(this + 20);
  v111 = *(v116 - 16);
  v112 = (v110 - v109) >> 3;
  if (v111 <= v112)
  {
    if (v111 < v112)
    {
      v113 = (v109 + 8 * v111);
      while (v110 != v113)
      {
        v115 = *--v110;
        v114 = v115;
        *v110 = 0;
        if (v115)
        {
          operator delete(v114);
        }
      }

      *(this + 20) = v113;
    }
  }

  else
  {
    std::vector<std::unique_ptr<int,google::protobuf::DescriptorPool::Tables::MiscDeleter>>::__append(this + 152, v111 - v112);
  }

  *(this + 41) -= 20;
}

_BYTE *google::protobuf::DescriptorPool::Tables::FindByNameHelper(unint64_t *a1, uint64_t a2, void *a3, size_t a4, const unint64_t *a5)
{
  v10 = *a2;
  if (!*a2)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_14;
    }

LABEL_13:
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::clear(a1 + 7);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::clear(a1 + 3);
    goto LABEL_14;
  }

  absl::lts_20240722::Mutex::ReaderLock(*a2);
  v13 = 1;
  if (a1[8] <= 1 && a1[4] <= 1)
  {
    Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(a1, a3, a4, v11, v12);
    if (*Symbol)
    {
      v13 = 0;
    }
  }

  absl::lts_20240722::Mutex::ReaderUnlock(v10);
  if (!v13)
  {
    return Symbol;
  }

  v10 = *a2;
  if (*a2)
  {
    absl::lts_20240722::Mutex::Lock(v10);
  }

  if (*(a2 + 8))
  {
    goto LABEL_13;
  }

LABEL_14:
  Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(a1, a3, a4, a4, a5);
  if (!*Symbol)
  {
    v17 = *(a2 + 24);
    if (!v17 || (Symbol = google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(v17 + 40), v17, a3, a4), !*Symbol))
    {
      if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, a3, a4, v14, v15))
      {
        Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(a1, a3, a4, v18, v19);
      }
    }
  }

  if (v10)
  {
    absl::lts_20240722::Mutex::Unlock(v10);
  }

  return Symbol;
}

void sub_23CD6F5D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::DescriptorPool::Tables::FindSymbol(uint64_t a1, void *a2, size_t a3, unint64_t a4, const unint64_t *a5)
{
  if (*(a1 + 200) <= 1uLL)
  {
    if (*(a1 + 208) < 2uLL)
    {
      return &google::protobuf::Symbol::Symbol(void)::null_symbol;
    }

    v8 = a1 + 216;
    v9 = google::protobuf::Symbol::full_name((a1 + 216));
    if (v10 != a3)
    {
      return &google::protobuf::Symbol::Symbol(void)::null_symbol;
    }

    v11 = memcmp(v9, a2, a3);
    v12 = &absl::lts_20240722::container_internal::kSooControl;
    if (v11)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v13 = v8;
    }

    if (!v12)
    {
      return &google::protobuf::Symbol::Symbol(void)::null_symbol;
    }

    return *v13;
  }

  _X8 = *(a1 + 216);
  __asm { PRFM            #4, [X8] }

  v20 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, a3, a4, a5);
  v21 = 0;
  v22 = (((v20 + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v20 + a3));
  v23 = *(a1 + 216);
  v24 = *(a1 + 200);
  v25 = vdup_n_s8(v22 & 0x7F);
  v26 = ((v22 >> 7) ^ (v23 >> 12)) & v24;
  v27 = *(v23 + v26);
  v28 = vceq_s8(v27, v25);
  if (!v28)
  {
    goto LABEL_39;
  }

LABEL_10:
  v29 = *(a1 + 224);
  while (1)
  {
    v30 = (v26 + (__clz(__rbit64(v28)) >> 3)) & v24;
    v31 = *(v29 + 8 * v30);
    v32 = *v31;
    if (v32 <= 4)
    {
      if (*v31 > 2u)
      {
        if (v32 != 3 && v32 != 4)
        {
LABEL_46:
          google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(&v39);
        }
      }

      else if (v32 != 1 && v32 != 2)
      {
        goto LABEL_46;
      }

      goto LABEL_30;
    }

    if (*v31 <= 7u)
    {
      if (v32 != 5 && v32 != 7)
      {
        goto LABEL_46;
      }

LABEL_30:
      v36 = *(v31 + 1);
      v35 = *(v36 + 47);
      if ((v35 & 0x8000000000000000) != 0)
      {
        v33 = *(v36 + 24);
        v35 = *(v36 + 32);
      }

      else
      {
        v33 = (v36 + 24);
      }

      goto LABEL_33;
    }

    switch(v32)
    {
      case 8u:
        goto LABEL_30;
      case 9u:
        v33 = *(v31 + 2);
        v35 = *(v33 + 23);
        if ((v35 & 0x8000000000000000) != 0)
        {
          v37 = v33;
          v33 = *v33;
          v35 = v37[1];
        }

        break;
      case 0xAu:
        v33 = *(*(v31 + 1) + 16);
        v34 = *(v33 + 23);
        if ((v34 & 0x8000000000000000) != 0)
        {
          v33 = *v33;
          v34 = *(*(*(v31 + 1) + 16) + 8);
        }

        v35 = *(v31 + 1);
        if (v34 < v35)
        {
          v35 = v34;
        }

        break;
      default:
        goto LABEL_46;
    }

LABEL_33:
    if (v35 == a3 && !memcmp(v33, a2, a3))
    {
      break;
    }

    v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (!v28)
    {
LABEL_39:
      while (!*&vceq_s8(v27, 0x8080808080808080))
      {
        v21 += 8;
        v26 = (v21 + v26) & v24;
        v27 = *(v23 + v26);
        v28 = vceq_s8(v27, v25);
        if (v28)
        {
          goto LABEL_10;
        }
      }

      return &google::protobuf::Symbol::Symbol(void)::null_symbol;
    }
  }

  v13 = v29 + 8 * v30;
  if (v23 + v30)
  {
    return *v13;
  }

  return &google::protobuf::Symbol::Symbol(void)::null_symbol;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::clear(unint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v4 = result[2];
    v3 = result[3];
    if (v1 > 6)
    {
      v9 = result[1];
      if (v9 >= 2)
      {
        v10 = v9 >> 1;
        do
        {
          v11 = *v4 & 0x8080808080808080;
          if (v11 != 0x8080808080808080)
          {
            v12 = v11 ^ 0x8080808080808080;
            do
            {
              v13 = v3 + 24 * (__clz(__rbit64(v12)) >> 3);
              if (*(v13 + 23) < 0)
              {
                operator delete(*v13);
              }

              --v10;
              v12 &= v12 - 1;
            }

            while (v12);
          }

          ++v4;
          v3 += 192;
        }

        while (v10);
      }
    }

    else
    {
      v5 = *(v4 + v1) & 0x8080808080808080;
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

    return absl::lts_20240722::container_internal::ClearBackingArray(v2, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::GetPolicyFunctions(void)::value, v1 < 0x80, 0);
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, unint64_t a3, unint64_t a4, const unint64_t *a5)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 + 40);
    _X8 = v7[9];
    __asm { PRFM            #4, [X8] }

    v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, a3, a4, a5);
    v15 = 0;
    v16 = (((v14 + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + a3));
    v17 = v7[9];
    v18 = v7[7];
    v19 = vdup_n_s8(v16 & 0x7F);
    v20 = ((v16 >> 7) ^ (v17 >> 12)) & v18;
    v21 = *(v17 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_3:
    v23 = v7[10];
    while (1)
    {
      v24 = v23 + 24 * ((v20 + (__clz(__rbit64(v22)) >> 3)) & v18);
      v25 = *(v24 + 23);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v24 + 8);
      }

      if (v25 == a3)
      {
        v27 = v26 >= 0 ? v24 : *v24;
        if (!memcmp(v27, a2, a3))
        {
          break;
        }
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v22)
      {
LABEL_12:
        while (!*&vceq_s8(v21, 0x8080808080808080))
        {
          v15 += 8;
          v20 = (v15 + v20) & v18;
          v21 = *(v17 + v20);
          v22 = vceq_s8(v21, v19);
          if (v22)
          {
            goto LABEL_3;
          }
        }

LABEL_17:
        if (a3 < 0x7FFFFFFFFFFFFFF8)
        {
          if (a3 < 0x17)
          {
            v30 = a3;
            if (a3)
            {
              memmove(&__dst, a2, a3);
            }

            *(&__dst + a3) = 0;
            operator new();
          }

          operator new();
        }

        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (!v17)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void sub_23CD6FD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, google::protobuf::FileDescriptorProto *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::unique_ptr<google::protobuf::FileDescriptorProto>::~unique_ptr[abi:ne200100](&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(absl::lts_20240722::Mutex **this)
{
  v1 = *this;
  if (v1)
  {
    absl::lts_20240722::Mutex::Unlock(v1);
  }
}

uint64_t google::protobuf::DescriptorPool::Tables::AddSymbol(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v39 = a4;
  v5 = a1 + 25;
  if (a1[25] > 1uLL)
  {
    _X8 = a1[27];
    __asm { PRFM            #4, [X8] }

    v13 = google::protobuf::Symbol::full_name(&v39);
    v15 = v14;
    v18 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v13, v14, v16, v17);
    v19 = 0;
    v20 = (((v18 + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v18 + v15));
    v21 = a1[27];
    v22 = a1[25];
    v23 = vdup_n_s8(v20 & 0x7F);
    v24 = ((v20 >> 7) ^ (v21 >> 12)) & v22;
    v25 = *(v21 + v24);
    v26 = vceq_s8(v25, v23);
    if (!v26)
    {
      goto LABEL_8;
    }

LABEL_5:
    while (1)
    {
      v27 = google::protobuf::Symbol::full_name((a1[28] + 8 * ((v24 + (__clz(__rbit64(v26)) >> 3)) & v22)));
      v29 = v28;
      v30 = google::protobuf::Symbol::full_name(&v39);
      if (v29 == v31)
      {
        result = memcmp(v27, v30, v29);
        if (!result)
        {
          break;
        }
      }

      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v26)
      {
LABEL_8:
        while (1)
        {
          v33 = vceq_s8(v25, 0x8080808080808080);
          if (v33)
          {
            break;
          }

          v19 += 8;
          v24 = (v19 + v24) & v22;
          v25 = *(v21 + v24);
          v26 = vceq_s8(v25, v23);
          if (v26)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_15;
      }
    }
  }

  else if (a1[26] > 1uLL)
  {
    v34 = google::protobuf::Symbol::full_name(a1 + 27);
    v36 = v35;
    v37 = google::protobuf::Symbol::full_name(&v39);
    if (v36 != v38 || (result = memcmp(v34, v37, v36), result))
    {
    }
  }

  else
  {
    a1[26] = 2;
    v6 = a1 + 27;
LABEL_15:
    *v6 = v39;
    std::vector<google::protobuf::Symbol>::push_back[abi:ne200100]((a1 + 43), &v39);
    return 1;
  }

  return result;
}

void std::vector<google::protobuf::Symbol>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

uint64_t google::protobuf::FileDescriptorTables::AddAliasUnderParent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v28 = a5;
  if (*a1 > 1uLL)
  {
    _X8 = *(a1 + 16);
    __asm { PRFM            #4, [X8] }

    google::protobuf::Symbol::parent_name_key(&v28, &v32);
    v13 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32))) + v32;
    v14 = __n;
    v17 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous((((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v13)), __s1, __n, v15, v16);
    v18 = 0;
    v19 = (((v17 + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v17 + v14));
    v20 = *(a1 + 16);
    v21 = *a1;
    v22 = vdup_n_s8(v19 & 0x7F);
    v23 = ((v19 >> 7) ^ (v20 >> 12)) & *a1;
    v24 = *(v20 + v23);
    v25 = vceq_s8(v24, v22);
    if (!v25)
    {
      goto LABEL_9;
    }

LABEL_5:
    while (1)
    {
      google::protobuf::Symbol::parent_name_key((*(a1 + 24) + 8 * ((v23 + (__clz(__rbit64(v25)) >> 3)) & v21)), &v32);
      google::protobuf::Symbol::parent_name_key(&v28, &v29);
      if (v32 == v29 && __n == v31)
      {
        result = memcmp(__s1, __s2, __n);
        if (!result)
        {
          break;
        }
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v25)
      {
LABEL_9:
        while (1)
        {
          v27 = vceq_s8(v24, 0x8080808080808080);
          if (v27)
          {
            break;
          }

          v18 += 8;
          v23 = (v18 + v23) & v21;
          v24 = *(v20 + v23);
          v25 = vceq_s8(v24, v22);
          if (v25)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_17;
      }
    }
  }

  else if (*(a1 + 8) > 1uLL)
  {
    google::protobuf::Symbol::parent_name_key((a1 + 16), &v32);
    google::protobuf::Symbol::parent_name_key(&v28, &v29);
    if (v32 != v29 || __n != v31 || (result = memcmp(__s1, __s2, __n), result))
    {
    }
  }

  else
  {
    *(a1 + 8) = 2;
    v6 = (a1 + 16);
LABEL_17:
    *v6 = v28;
    return 1;
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::Tables::AddFile(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v49 = a2;
  v7 = a1 + 29;
  if (a1[29] > 1uLL)
  {
    _X8 = a1[31];
    __asm { PRFM            #4, [X8] }

    v15 = *(a2 + 8);
    v16 = *(v15 + 23);
    if (v16 >= 0)
    {
      v17 = *(a2 + 8);
    }

    else
    {
      v17 = *v15;
    }

    if (v16 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = *(v15 + 8);
    }

    v19 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v17, v18, a4, a5);
    v20 = 0;
    v21 = (((v19 + v18) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v19 + v18));
    v22 = a1[31];
    v23 = a1[29];
    v24 = vdup_n_s8(v21 & 0x7F);
    v25 = ((v21 >> 7) ^ (v22 >> 12)) & v23;
    v26 = *(v22 + v25);
    v27 = vceq_s8(v26, v24);
    if (!v27)
    {
LABEL_27:
      while (1)
      {
        v39 = vceq_s8(v26, 0x8080808080808080);
        if (v39)
        {
          break;
        }

        v20 += 8;
        v25 = (v20 + v25) & v23;
        v26 = *(v22 + v25);
        v27 = vceq_s8(v26, v24);
        if (v27)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_46;
    }

LABEL_11:
    v28 = a1[32];
    while (1)
    {
      v29 = *(v28 + 8 * ((v25 + (__clz(__rbit64(v27)) >> 3)) & v23));
      if (v29 == a2)
      {
        return 0;
      }

      v30 = *(v29 + 8);
      v31 = *(a2 + 8);
      v32 = *(v30 + 23);
      if (v32 >= 0)
      {
        v33 = *(v30 + 23);
      }

      else
      {
        v33 = *(v30 + 8);
      }

      v34 = *(v31 + 23);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v31 + 8);
      }

      if (v33 == v34)
      {
        v36 = v32 >= 0 ? v30 : *v30;
        v37 = v35 >= 0 ? *(a2 + 8) : *v31;
        result = memcmp(v36, v37, v33);
        if (!result)
        {
          return result;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v27)
      {
        goto LABEL_27;
      }
    }
  }

  if (a1[30] <= 1uLL)
  {
    a1[30] = 2;
    v8 = a1 + 31;
LABEL_46:
    *v8 = a2;
    std::vector<google::protobuf::Symbol>::push_back[abi:ne200100]((a1 + 46), &v49);
    return 1;
  }

  v40 = a1[31];
  if (v40 == a2)
  {
    return 0;
  }

  v41 = *(v40 + 8);
  v42 = *(a2 + 8);
  v43 = *(v41 + 23);
  if (v43 >= 0)
  {
    v44 = *(v41 + 23);
  }

  else
  {
    v44 = v41[1];
  }

  v45 = *(v42 + 23);
  v46 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v45 = *(v42 + 8);
  }

  if (v44 != v45 || (v43 >= 0 ? (v47 = v41) : (v47 = *v41), v46 >= 0 ? (v48 = *(a2 + 8)) : (v48 = *v42), result = memcmp(v47, v48, v44), result))
  {
  }

  return result;
}

BOOL google::protobuf::FileDescriptorTables::AddFieldByNumber(google::protobuf::FileDescriptorTables *this, google::protobuf::FieldDescriptor *a2)
{
  v2 = *(a2 + 4);
  if (v2 && (v3 = *(a2 + 1), v3 >= 1) && v3 <= *(v2 + 2))
  {
    if ((*(a2 + 1) & 8) == 0)
    {
      return *(v2 + 56) + 88 * v3 - 88 == a2;
    }
  }

  else
  {
    v4 = *(this + 7);
    if (v4 > 1)
    {
      v6 = 0;
      _X12 = *(this + 9);
      __asm { PRFM            #4, [X12] }

      v12 = *(a2 + 1);
      v13 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v2))) + v2;
      v14 = (((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v13)) + v12;
      v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
      v16 = vdup_n_s8(v15 & 0x7F);
      v17 = ((v15 >> 7) ^ (_X12 >> 12)) & v4;
      v18 = *(_X12 + v17);
      v19 = vceq_s8(v18, v16);
      if (!v19)
      {
        goto LABEL_13;
      }

LABEL_8:
      while (1)
      {
        v20 = *(*(this + 10) + 8 * ((v17 + (__clz(__rbit64(v19)) >> 3)) & v4));
        if (*(v20 + 32) == v2 && *(v20 + 4) == v12)
        {
          break;
        }

        v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v19)
        {
LABEL_13:
          while (1)
          {
            v22 = vceq_s8(v18, 0x8080808080808080);
            if (v22)
            {
              break;
            }

            v6 += 8;
            v17 = (v6 + v17) & v4;
            v18 = *(_X12 + v17);
            v19 = vceq_s8(v18, v16);
            if (v19)
            {
              goto LABEL_8;
            }
          }

          return 1;
        }
      }
    }

    else
    {
      if (*(this + 8) <= 1uLL)
      {
        *(this + 8) = 2;
        *(this + 9) = a2;
        return 1;
      }

      v23 = *(this + 9);
      if (*(v23 + 32) != v2 || *(v23 + 4) != *(a2 + 1))
      {
      }
    }
  }

  return 0;
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::EnumValueDescriptor const*>,google::protobuf::anonymous namespace::ParentNumberHash,google::protobuf::anonymous namespace::ParentNumberEq,std::allocator<google::protobuf::EnumValueDescriptor const*>>::insert<google::protobuf::EnumValueDescriptor*,0,0>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2 > 1)
  {
    v7 = 0;
    _X10 = a2[2];
    __asm { PRFM            #4, [X10] }

    v13 = *(*a3 + 4);
    v14 = *(*a3 + 16);
    v15 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14))) + v14;
    v16 = (((v15 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v15)) + v13;
    v17 = ((v16 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v16);
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X10 >> 12)) & v4;
    v20 = *(_X10 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_11;
    }

LABEL_5:
    v22 = a2[3];
    do
    {
      v23 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v4;
      v24 = *(v22 + 8 * v23);
      if (*(v24 + 16) == v14 && *(v24 + 4) == v13)
      {
        *result = _X10 + v23;
        *(result + 8) = v22 + 8 * v23;
        *(result + 16) = 0;
        return result;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v21);
LABEL_11:
    while (1)
    {
      v26 = vceq_s8(v20, 0x8080808080808080);
      if (v26)
      {
        break;
      }

      v7 += 8;
      v19 = (v7 + v19) & v4;
      v20 = *(_X10 + v19);
      v21 = vceq_s8(v20, v18);
      if (v21)
      {
        goto LABEL_5;
      }
    }

    v29 = result;
    result = v29;
    v6 = (a2[2] + inserted);
    v5 = (a2[3] + 8 * inserted);
    goto LABEL_21;
  }

  if (a2[1] <= 1)
  {
    a2[1] = 2;
    v5 = a2 + 2;
    v6 = &absl::lts_20240722::container_internal::kSooControl;
LABEL_21:
    *result = v6;
    *(result + 8) = v5;
    *(result + 16) = 1;
    *v5 = *a3;
    return result;
  }

  v27 = a2[2];
  if (*(v27 + 16) != *(*a3 + 16) || *(v27 + 4) != *(*a3 + 4))
  {
  }

  *result = &absl::lts_20240722::container_internal::kSooControl;
  *(result + 8) = a2 + 2;
  *(result + 16) = 0;
  return result;
}

void std::vector<std::pair<google::protobuf::Descriptor const*,int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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

uint64_t google::protobuf::DescriptorPool::Tables::InternFeatureSet(uint64_t a1, google::protobuf::MessageLite *this)
{
  google::protobuf::MessageLite::SerializeAsString(this, __p);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,std::unique_ptr<google::protobuf::FeatureSet>>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,std::unique_ptr<google::protobuf::FeatureSet>>>>::find_or_prepare_insert_non_soo<std::string>((a1 + 288), __p, v3, v4, v12);
  if (v14 == 1)
  {
    v5 = v13;
    v6 = v11;
    *v13 = *__p;
    *(v5 + 16) = v6;
    *(v5 + 24) = 0;
    v7 = *(v13 + 24);
    if (!v7)
    {
LABEL_8:
      operator new();
    }
  }

  else
  {
    v8 = (v13 + 24);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }
  }

  return v7;
}

void sub_23CD70ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *google::protobuf::DescriptorPool::Tables::AllocateBytes(google::protobuf::DescriptorPool::Tables *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = operator new(a2 + 8);
  v6 = *(this + 20);
  v5 = *(this + 21);
  if (v6 >= v5)
  {
    v9 = *(this + 19);
    v10 = v6 - v9;
    v11 = (v6 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v5 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v6 - v9) >> 3;
    v16 = (8 * v11);
    v17 = (8 * v11 - 8 * v15);
    v18 = v4;
    *v16 = v4;
    v7 = v16 + 1;
    memcpy(v17, v9, v10);
    *(this + 19) = v17;
    *(this + 20) = v7;
    *(this + 21) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    v4 = v18;
  }

  else
  {
    *v6 = v4;
    v7 = v6 + 8;
  }

  *(this + 20) = v7;
  *v4 = a2;
  return v4 + 2;
}

void google::protobuf::FileDescriptorTables::BuildLocationsByPath(uint64_t *a1)
{
  v1 = *(a1[1] + 24);
  if (v1 >= 1)
  {
    v3 = 8;
    do
    {
      v7 = *a1;
      v6 = a1[1];
      v9 = *(v6 + 16);
      v8 = v6 + 16;
      v10 = v9 + v3 - 1;
      if (v9)
      {
        v8 = v10;
      }

      v11 = *v8;
      absl::lts_20240722::strings_internal::JoinAlgorithm<google::protobuf::internal::RepeatedIterator<int const>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(*(*v8 + 32), (*(*v8 + 32) + 4 * *(*v8 + 24)), ",", 1uLL, &__p);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,google::protobuf::SourceCodeInfo_Location const*>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,google::protobuf::SourceCodeInfo_Location const*>>>::find_or_prepare_insert_non_soo<std::string>((v7 + 160), &__p, v12, v13, v16);
      if (v18 == 1)
      {
        v4 = v17;
        v5 = __p.__r_.__value_.__r.__words[2];
        *v17 = *&__p.__r_.__value_.__l.__data_;
        *(v4 + 16) = v5;
        *(v4 + 24) = 0;
        *(v17 + 24) = v11;
      }

      else
      {
        v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(v17 + 24) = v11;
        if (v14 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v3 += 8;
      --v1;
    }

    while (v1);
  }
}

void sub_23CD71120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::FileDescriptorTables::GetSourceLocation(void *a1, uint64_t a2, uint64_t a3)
{
  v40[0] = a1;
  v40[1] = a3;
  v5 = (a1 + 19);
  v39.__r_.__value_.__r.__words[0] = v40;
  if (atomic_load_explicit(v5, memory_order_acquire) != 221)
  {
    v36 = a2;
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(std::pair<google::protobuf::FileDescriptorTables const*,google::protobuf::SourceCodeInfo const*> *),std::pair<google::protobuf::FileDescriptorTables const*,google::protobuf::SourceCodeInfo const*> *>(v5, 1, google::protobuf::FileDescriptorTables::BuildLocationsByPath, &v39);
    a2 = v36;
  }

  v6 = &v39;
  absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<int const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(*a2, *(a2 + 8), ",", 1uLL, &v39);
  _X8 = a1[22];
  __asm { PRFM            #4, [X8] }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v39;
  }

  else
  {
    v15 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v17 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v15, size, v7, v8);
  v18 = 0;
  v19 = (((v17 + size) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v17 + size));
  v20 = a1[22];
  v21 = (v20 >> 12) ^ (v19 >> 7);
  v22 = vdup_n_s8(v19 & 0x7F);
  v23 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
  v24 = v39.__r_.__value_.__r.__words[0];
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v39.__r_.__value_.__l.__size_;
  }

  v26 = a1[20];
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v39.__r_.__value_.__r.__words[0];
  }

  v27 = v21 & v26;
  v28 = *(v20 + (v21 & v26));
  v29 = vceq_s8(v28, v22);
  if (v29)
  {
LABEL_15:
    v30 = a1[23];
    v37 = v30;
    v38 = v18;
    while (1)
    {
      v3 = v30 + 32 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v26);
      v31 = *(v3 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v3 + 8);
      }

      if (v31 == v25)
      {
        v33 = v32 >= 0 ? v3 : *v3;
        if (!memcmp(v33, v6, v25))
        {
          break;
        }
      }

      v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v30 = v37;
      v18 = v38;
      if (!v29)
      {
        goto LABEL_24;
      }
    }

    v34 = v20 == 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    operator delete(v24);
    if (v34)
    {
      return 0;
    }

    return *(v3 + 24);
  }

LABEL_24:
  while (!*&vceq_s8(v28, 0x8080808080808080))
  {
    v18 += 8;
    v27 = (v18 + v27) & v26;
    v28 = *(v20 + v27);
    v29 = vceq_s8(v28, v22);
    if (v29)
    {
      goto LABEL_15;
    }
  }

  v34 = 1;
  if (v23 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v34)
  {
    return 0;
  }

  return *(v3 + 24);
}

void sub_23CD7135C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<absl::lts_20240722::AnyInvocable<void ()(absl::lts_20240722::FunctionRef<void ()(void)>)const>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(v1 + 16))(1, v1, v1);
    MEMORY[0x23EED9460](v1, 0x1082C406F5A9084);
    return v2;
  }

  return result;
}

void google::protobuf::DescriptorPool::~DescriptorPool(google::protobuf::DescriptorPool *this)
{
  v2 = *this;
  if (v2)
  {
    absl::lts_20240722::Mutex::~Mutex(v2);
    MEMORY[0x23EED9460]();
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    google::protobuf::FeatureSetDefaults::~FeatureSetDefaults(v3);
    MEMORY[0x23EED9460]();
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 7);
  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    google::protobuf::DescriptorPool::Tables::~Tables(v4);
    MEMORY[0x23EED9460]();
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    (*(v5 + 16))(1, v5, v5);
    MEMORY[0x23EED9460](v5, 0x1082C406F5A9084);
  }
}

BOOL google::protobuf::DescriptorPool::IsExtendingDescriptor(google::protobuf::DescriptorPool *this, const google::protobuf::FieldDescriptor *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2810C1A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C1A20))
  {
    operator new();
  }

  v6 = _MergedGlobals_58;
  v7 = *(*(a2 + 4) + 8);
  v9 = (_MergedGlobals_58 + 16);
  _X8 = *(_MergedGlobals_58 + 16);
  __asm { PRFM            #4, [X8] }

  v17 = *(v7 + 24);
  v16 = (v7 + 24);
  v15 = v17;
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v16[1];
  }

  v21 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v19, v20, a4, a5);
  v22 = 0;
  v23 = (((v21 + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v21 + v20));
  v24 = *v9;
  v25 = vdup_n_s8(v23 & 0x7F);
  v26 = *(v16 + 23);
  v27 = *v6;
  v28 = (v23 >> 7) ^ (v24 >> 12);
  if (v26 >= 0)
  {
    v29 = *(v16 + 23);
  }

  else
  {
    v29 = v16[1];
  }

  if (v26 < 0)
  {
    v16 = *v16;
  }

  v30 = v28 & v27;
  v31 = *(v24 + (v28 & v27));
  v32 = vceq_s8(v31, v25);
  if (v32)
  {
LABEL_14:
    v33 = v6[3];
    while (1)
    {
      v34 = v33 + 24 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v27);
      v35 = *(v34 + 23);
      v36 = v35;
      if ((v35 & 0x80u) != 0)
      {
        v35 = *(v34 + 8);
      }

      if (v35 == v29)
      {
        v37 = v36 >= 0 ? v34 : *v34;
        if (!memcmp(v37, v16, v29))
        {
          break;
        }
      }

      v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    result = v24 != 0;
    v39 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_23:
    while (!*&vceq_s8(v31, 0x8080808080808080))
    {
      v22 += 8;
      v30 = (v22 + v30) & v27;
      v31 = *(v24 + v30);
      v32 = vceq_s8(v31, v25);
      if (v32)
      {
        goto LABEL_14;
      }
    }

    result = 0;
    v40 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_23CD7172C(_Unwind_Exception *a1)
{
  MEMORY[0x23EED9460](v1, 0x1082C4091D7F878);
  __cxa_guard_abort(&qword_2810C1A20);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::Tables::FindFile(void *a1, absl::lts_20240722::hash_internal::MixingHashState *__s2, size_t __n, unint64_t a4, const unint64_t *a5)
{
  if (a1[29] > 1uLL)
  {
    _X8 = a1[31];
    __asm { PRFM            #4, [X8] }

    v17 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, __s2, __n, a4, a5);
    v18 = 0;
    v19 = (((v17 + __n) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v17 + __n));
    v20 = a1[31];
    v21 = a1[29];
    v22 = vdup_n_s8(v19 & 0x7F);
    v23 = ((v19 >> 7) ^ (v20 >> 12)) & v21;
    v24 = *(v20 + v23);
    v25 = vceq_s8(v24, v22);
    if (!v25)
    {
      goto LABEL_13;
    }

LABEL_7:
    v26 = a1[32];
    while (1)
    {
      v27 = (v23 + (__clz(__rbit64(v25)) >> 3)) & v21;
      v28 = *(*(v26 + 8 * v27) + 8);
      v29 = *(v28 + 23);
      if (v29 < 0)
      {
        v28 = *v28;
        v29 = *(*(*(v26 + 8 * v27) + 8) + 8);
      }

      if (v29 == __n && !memcmp(v28, __s2, __n))
      {
        break;
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v25)
      {
LABEL_13:
        while (!*&vceq_s8(v24, 0x8080808080808080))
        {
          v18 += 8;
          v23 = (v18 + v23) & v21;
          v24 = *(v20 + v23);
          v25 = vceq_s8(v24, v22);
          if (v25)
          {
            goto LABEL_7;
          }
        }

        return 0;
      }
    }

    v8 = (v26 + 8 * v27);
    if (v20 + v27)
    {
      return *v8;
    }

    return 0;
  }

  if (a1[30] >= 2uLL)
  {
    v8 = a1 + 31;
    v9 = *(a1[31] + 8);
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      v30 = v9;
      v9 = *v9;
      if (v30[1] != __n)
      {
        return 0;
      }
    }

    else if (v10 != __n)
    {
      return 0;
    }

    if (!memcmp(v9, __s2, __n) && &absl::lts_20240722::container_internal::kSooControl)
    {
      return *v8;
    }
  }

  return 0;
}

uint64_t google::protobuf::anonymous namespace::GeneratedDatabase(google::protobuf::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_2810C1A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C1A40))
  {
    operator new();
  }

  return qword_2810C1A38;
}

void sub_23CD719E0(_Unwind_Exception *a1)
{
  MEMORY[0x23EED9460](v1, 0xA1C40F4AD4952);
  __cxa_guard_abort(&qword_2810C1A40);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::internal_generated_pool(google::protobuf::DescriptorPool *this)
{
  if ((atomic_load_explicit(&qword_2810C1A30, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2810C1A30);
    if (v2)
    {
    }
  }

  return qword_2810C1A28;
}

void sub_23CD71B88(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x23EED9460](v4, 0x10A2C409C591F68);
  std::unique_ptr<absl::lts_20240722::AnyInvocable<void ()(absl::lts_20240722::FunctionRef<void ()(void)>)const>>::~unique_ptr[abi:ne200100]((v1 + 32));
  MEMORY[0x23EED9460](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::generated_pool(google::protobuf::DescriptorPool *this)
{
  if ((atomic_load_explicit(&qword_2810C1A30, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2810C1A30);
    if (v3)
    {
    }
  }

  v1 = qword_2810C1A28;
  google::protobuf::DescriptorProto::GetMetadata(&google::protobuf::_DescriptorProto_default_instance_);
  pb::CppFeatures::GetMetadata(&pb::_CppFeatures_default_instance_);
  return v1;
}

void google::protobuf::DescriptorPool::InternalAddGeneratedFile(atomic_ullong *this, const void *a2)
{
  v2 = a2;
  v3 = this;
  if ((atomic_load_explicit(&qword_2810C1A30, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_2810C1A30);
    if (this)
    {
    }
  }

  v4 = *qword_2810C1A28;
  v7 = v4;
  if (v4)
  {
    this = absl::lts_20240722::Mutex::Lock(v4);
  }

  if ((google::protobuf::EncodedDescriptorDatabase::Add(v5, v3, v2) & 1) == 0)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v6, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 2110);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v6);
  }

  if (v4)
  {
    absl::lts_20240722::Mutex::Unlock(v4);
  }
}

void sub_23CD71D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void sub_23CD71DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::FindFileByName(atomic_ullong **a1, absl::lts_20240722::hash_internal::MixingHashState *a2, size_t a3, unint64_t a4, const unint64_t *a5)
{
  v8 = *a1;
  if (*a1)
  {
    absl::lts_20240722::Mutex::Lock(v8);
  }

  if (a1[1])
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::clear(a1[5] + 7);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::clear(a1[5] + 3);
  }

  File = google::protobuf::DescriptorPool::Tables::FindFile(a1[5], a2, a3, a4, a5);
  if (!File)
  {
    v12 = a1[3];
    if ((!v12 || (File = google::protobuf::DescriptorPool::FindFileByName(v12, a2, a3)) == 0) && (!google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(a1, a2, a3, v9, v10) || (File = google::protobuf::DescriptorPool::Tables::FindFile(a1[5], a2, a3, v13, v14)) == 0))
    {
      File = 0;
    }
  }

  if (v8)
  {
    absl::lts_20240722::Mutex::Unlock(v8);
  }

  return File;
}

void sub_23CD71EAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void sub_23CD71EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, unint64_t a3, unint64_t a4, const unint64_t *a5)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 + 40);
    _X8 = v7[5];
    __asm { PRFM            #4, [X8] }

    v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, a3, a4, a5);
    v15 = 0;
    v16 = (((v14 + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + a3));
    v17 = v7[5];
    v18 = v7[3];
    v19 = vdup_n_s8(v16 & 0x7F);
    v20 = ((v16 >> 7) ^ (v17 >> 12)) & v18;
    v21 = *(v17 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_3:
    v23 = v7[6];
    while (1)
    {
      v24 = v23 + 24 * ((v20 + (__clz(__rbit64(v22)) >> 3)) & v18);
      v25 = *(v24 + 23);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v24 + 8);
      }

      if (v25 == a3)
      {
        v27 = v26 >= 0 ? v24 : *v24;
        if (!memcmp(v27, a2, a3))
        {
          break;
        }
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v22)
      {
LABEL_12:
        while (!*&vceq_s8(v21, 0x8080808080808080))
        {
          v15 += 8;
          v20 = (v15 + v20) & v18;
          v21 = *(v17 + v20);
          v22 = vceq_s8(v21, v19);
          if (v22)
          {
            goto LABEL_3;
          }
        }

LABEL_17:
        operator new();
      }
    }

    if (!v17)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void sub_23CD720E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<google::protobuf::FileDescriptorProto>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CD72110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<google::protobuf::FileDescriptorProto>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *google::protobuf::DescriptorPool::FindMessageTypeByName(uint64_t a1, void *a2, size_t a3, uint64_t a4, const unint64_t *a5)
{
  result = google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 40), a1, a2, a3, a5);
  if (*result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::FindExtensionByNumber(absl::lts_20240722::base_internal **this, const google::protobuf::Descriptor *a2, int a3)
{
  if (!*(a2 + 34))
  {
    return 0;
  }

  v6 = *this;
  if (!*this)
  {
    goto LABEL_28;
  }

  absl::lts_20240722::Mutex::ReaderLock(*this);
  v7 = this[5];
  v8 = *(v7 + 33);
  v9 = *(v8 + 10);
  if (!*(v8 + 10))
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 0;
  do
  {
    v11 = (v9 + v10) >> 1;
    v12 = &v8[3 * v11 + 2];
    if (*v12 < a2 || *v12 <= a2 && *(v12 + 8) < a3)
    {
      v10 = v11 + 1;
      v11 = v9;
    }

    v9 = v11;
  }

  while (v10 != v11);
  while (!*(v8 + 11))
  {
    v8 = v8[v11 + 32];
    v9 = *(v8 + 10);
    if (*(v8 + 10))
    {
      goto LABEL_4;
    }

LABEL_11:
    LODWORD(v11) = 0;
  }

  while (v11 == *(v8 + 10))
  {
    LODWORD(v11) = *(v8 + 8);
    v8 = *v8;
    if (*(v8 + 11))
    {
      goto LABEL_18;
    }
  }

  v13 = &v8[3 * v11];
  v15 = v13[2];
  v14 = v13 + 2;
  v16 = v15 >= a2;
  if (v15 > a2 || v16 && *(v14 + 2) > a3)
  {
LABEL_18:
    v8 = *(v7 + 34);
    LODWORD(v11) = *(v8 + 10);
  }

  v17 = *(v7 + 34);
  if (v8 == v17 && v11 == *(v17 + 10))
  {
    ExtensionByNumber = 0;
  }

  else
  {
    ExtensionByNumber = v8[3 * v11 + 4];
  }

  absl::lts_20240722::Mutex::ReaderUnlock(v6);
  if (!ExtensionByNumber)
  {
    v6 = *this;
    if (*this)
    {
      absl::lts_20240722::Mutex::Lock(v6);
    }

LABEL_28:
    if (this[1])
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::clear(this[5] + 7);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::clear(this[5] + 3);
    }

    v19 = this[5];
    v20 = *(v19 + 33);
    v21 = *(v20 + 10);
    if (!*(v20 + 10))
    {
      goto LABEL_38;
    }

LABEL_31:
    v22 = 0;
    do
    {
      v23 = (v21 + v22) >> 1;
      v24 = &v20[3 * v23 + 2];
      if (*v24 < a2 || *v24 <= a2 && *(v24 + 8) < a3)
      {
        v22 = v23 + 1;
        v23 = v21;
      }

      v21 = v23;
    }

    while (v22 != v23);
    while (!*(v20 + 11))
    {
      v20 = v20[v23 + 32];
      v21 = *(v20 + 10);
      if (*(v20 + 10))
      {
        goto LABEL_31;
      }

LABEL_38:
      LODWORD(v23) = 0;
    }

    while (v23 == *(v20 + 10))
    {
      LODWORD(v23) = *(v20 + 8);
      v20 = *v20;
      if (*(v20 + 11))
      {
        goto LABEL_45;
      }
    }

    v25 = &v20[3 * v23];
    v27 = v25[2];
    v26 = v25 + 2;
    v28 = v27 >= a2;
    if (v27 > a2 || v28 && *(v26 + 2) > a3)
    {
LABEL_45:
      v20 = *(v19 + 34);
      LODWORD(v23) = *(v20 + 10);
    }

    v29 = *(v19 + 34);
    if (v20 == v29 && v23 == *(v29 + 10) || (ExtensionByNumber = v20[3 * v23 + 4]) == 0)
    {
      v30 = this[3];
      if (!v30 || (ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(v30, a2, a3)) == 0)
      {
        if (!google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(this, a2))
        {
          goto LABEL_71;
        }

        v31 = this[5];
        v32 = *(v31 + 33);
        v33 = *(v32 + 10);
        if (!*(v32 + 10))
        {
          goto LABEL_60;
        }

LABEL_53:
        v34 = 0;
        do
        {
          v35 = (v33 + v34) >> 1;
          v36 = &v32[3 * v35 + 2];
          if (*v36 < a2 || *v36 <= a2 && *(v36 + 8) < a3)
          {
            v34 = v35 + 1;
            v35 = v33;
          }

          v33 = v35;
        }

        while (v34 != v35);
        while (!*(v32 + 11))
        {
          v32 = v32[v35 + 32];
          v33 = *(v32 + 10);
          if (*(v32 + 10))
          {
            goto LABEL_53;
          }

LABEL_60:
          LODWORD(v35) = 0;
        }

        while (v35 == *(v32 + 10))
        {
          LODWORD(v35) = *(v32 + 8);
          v32 = *v32;
          if (*(v32 + 11))
          {
            goto LABEL_67;
          }
        }

        v37 = &v32[3 * v35];
        v39 = v37[2];
        v38 = v37 + 2;
        v40 = v39 >= a2;
        if (v39 > a2 || v40 && *(v38 + 2) > a3)
        {
LABEL_67:
          v32 = *(v31 + 34);
          LODWORD(v35) = *(v32 + 10);
        }

        if ((v41 = *(v31 + 34), v32 == v41) && v35 == *(v41 + 10) || (ExtensionByNumber = v32[3 * v35 + 4]) == 0)
        {
LABEL_71:
          ExtensionByNumber = 0;
        }
      }
    }

    if (v6)
    {
      absl::lts_20240722::Mutex::Unlock(v6);
    }
  }

  return ExtensionByNumber;
}

void sub_23CD7254C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void sub_23CD72564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(google::protobuf::DescriptorPool *this, const google::protobuf::Descriptor *a2)
{
  if (*(this + 1))
  {
    operator new();
  }

  return 0;
}

void sub_23CD72698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<google::protobuf::FileDescriptorProto>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::InternalFindExtensionByNumberNoLock(uint64_t a1, unint64_t a2, int a3)
{
  if (!*(a2 + 136))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(v3 + 264);
  v5 = *(v4 + 10);
  if (!*(v4 + 10))
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = 0;
  do
  {
    v7 = (v5 + v6) >> 1;
    v8 = &v4[3 * v7 + 2];
    if (*v8 < a2 || *v8 <= a2 && *(v8 + 8) < a3)
    {
      v6 = v7 + 1;
      v7 = v5;
    }

    v5 = v7;
  }

  while (v6 != v7);
  while (!*(v4 + 11))
  {
    v4 = v4[v7 + 32];
    v5 = *(v4 + 10);
    if (*(v4 + 10))
    {
      goto LABEL_3;
    }

LABEL_10:
    LODWORD(v7) = 0;
  }

  while (v7 == *(v4 + 10))
  {
    LODWORD(v7) = *(v4 + 8);
    v4 = *v4;
    if (*(v4 + 11))
    {
      goto LABEL_17;
    }
  }

  v9 = &v4[3 * v7];
  v11 = v9[2];
  v10 = v9 + 2;
  v12 = v11 >= a2;
  if (v11 > a2 || v12 && *(v10 + 2) > a3)
  {
LABEL_17:
    v4 = *(v3 + 272);
    LODWORD(v7) = *(v4 + 10);
  }

  v13 = *(v3 + 272);
  if (v4 != v13 || v7 != *(v13 + 10))
  {
    ExtensionByNumberNoLock = v4[3 * v7 + 4];
    if (ExtensionByNumberNoLock)
    {
      return ExtensionByNumberNoLock;
    }
  }

  if (*(a1 + 24) && (ExtensionByNumberNoLock = google::protobuf::DescriptorPool::InternalFindExtensionByNumberNoLock()) != 0)
  {
    return ExtensionByNumberNoLock;
  }

  else
  {
    return 0;
  }
}

_BYTE *google::protobuf::DescriptorPool::FindExtensionByPrintableName(uint64_t a1, uint64_t a2, void *a3, size_t a4, const unint64_t *a5)
{
  if (!*(a2 + 136))
  {
    return 0;
  }

  result = google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 40), a1, a3, a4, a5);
  if (*result != 2 || (result[1] & 8) == 0 || *(result + 4) != a2)
  {
    if (*(*(a2 + 32) + 80) == 1)
    {
      v11 = google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(a1 + 40), a1, a3, a4, v10);
      if (*v11 == 1)
      {
        v12 = *(v11 + 35);
        if (v12 >= 1)
        {
          v13 = 0;
          v14 = 88 * v12;
          while (1)
          {
            v15 = *(v11 + 12);
            v16 = v15 + v13;
            if (*(v15 + v13 + 32) != a2)
            {
              goto LABEL_11;
            }

            v17 = *(v16 + 24);
            if (v17 && (v23 = v15 + v13, v24 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v17, memory_order_acquire) != 221))
            {
              v21 = v11;
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v17, 1, &v24, &v23);
              v11 = v21;
              v18 = v15 + v13;
              if (*(v15 + v13 + 2) != 11)
              {
                goto LABEL_11;
              }
            }

            else
            {
              v18 = v15 + v13;
              if (*(v15 + v13 + 2) != 11)
              {
                goto LABEL_11;
              }
            }

            if ((*(v18 + 1) & 0x60) != 0x20)
            {
              goto LABEL_11;
            }

            v19 = *(v16 + 24);
            if (!v19)
            {
              break;
            }

            v24 = (v15 + v13);
            if (atomic_load_explicit(v19, memory_order_acquire) == 221)
            {
              if ((*(v18 + 2) & 0xFE) == 0xA)
              {
                break;
              }
            }

            else
            {
              v22 = v11;
              v20 = v18;
              absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v19, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v24);
              v11 = v22;
              if ((*(v20 + 2) & 0xFE) == 0xA)
              {
                break;
              }
            }

            if (!v11)
            {
              return (v15 + v13);
            }

LABEL_11:
            v13 += 88;
            if (v14 == v13)
            {
              return 0;
            }
          }

          if (*(v15 + v13 + 48) == v11)
          {
            return (v15 + v13);
          }

          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t google::protobuf::FieldDescriptor::type(google::protobuf::FieldDescriptor *this)
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

  return *(this + 2);
}

uint64_t google::protobuf::FieldDescriptor::message_type(google::protobuf::FieldDescriptor *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v4 = this;
    if (atomic_load_explicit(v1, memory_order_acquire) != 221)
    {
      v3 = this;
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v1, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v4);
      this = v3;
    }
  }

  if ((*(this + 2) & 0xFE) == 0xA)
  {
    return *(this + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindFieldByNumber(google::protobuf::Descriptor *this, unsigned int a2)
{
  result = google::protobuf::FileDescriptorTables::FindFieldByNumber(*(*(this + 2) + 152), this, a2);
  if (result)
  {
    if ((*(result + 1) & 8) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::FileDescriptorTables::FindFieldByNumber(void *a1, uint64_t a2, unsigned int a3)
{
  if (a2 && a3 >= 1 && *(a2 + 2) >= a3)
  {
    return *(a2 + 56) + 88 * a3 - 88;
  }

  v3 = a1[7];
  if (v3 > 1)
  {
    v8 = 0;
    v9 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2))) + a2;
    v10 = (((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9)) + a3;
    v11 = 0x9DDFEA08EB382D69 * v10;
    v12 = (v10 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = a1[9];
    __asm { PRFM            #4, [X10] }

    v18 = v12 ^ v11;
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X10 >> 12)) & v3;
    v21 = *(_X10 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_12:
    v23 = a1[10];
    while (1)
    {
      v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v3;
      v25 = *(v23 + 8 * v24);
      if (*(v25 + 32) == a2 && *(v25 + 4) == a3)
      {
        break;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v22)
      {
LABEL_18:
        while (!*&vceq_s8(v21, 0x8080808080808080))
        {
          v8 += 8;
          v20 = (v8 + v20) & v3;
          v21 = *(_X10 + v20);
          v22 = vceq_s8(v21, v19);
          if (v22)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }
    }

    v4 = (v23 + 8 * v24);
    if (!(_X10 + v24))
    {
      return 0;
    }

    return *v4;
  }

  if (a1[8] >= 2uLL)
  {
    v5 = a1[9];
    v4 = a1 + 9;
    v6 = *(v5 + 4);
    _ZF = *(v5 + 32) == a2 && v6 == a3;
    if (_ZF && &absl::lts_20240722::container_internal::kSooControl)
    {
      return *v4;
    }
  }

  return 0;
}

uint64_t google::protobuf::Descriptor::FindFieldByLowercaseName(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, unint64_t a3, uint64_t a4, const unint64_t *a5)
{
  result = google::protobuf::FileDescriptorTables::FindFieldByLowercaseName(*(*(a1 + 16) + 152), a1, a2, a3, a5);
  if (result)
  {
    if ((*(result + 1) & 8) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::FileDescriptorTables::FindFieldByLowercaseName(uint64_t a1, uint64_t a2, absl::lts_20240722::hash_internal::MixingHashState *a3, unint64_t a4, const unint64_t *a5)
{
  v30 = a1;
  v31 = google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitStatic;
  if (atomic_load_explicit((a1 + 32), memory_order_acquire) != 221)
  {
    v28 = a1;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FileDescriptorTables const*),google::protobuf::FileDescriptorTables const*>((a1 + 32), 1, &v31, &v30);
    a1 = v28;
  }

  explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
  _X8 = explicit[2];
  __asm { PRFM            #4, [X8] }

  v15 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2))) + a2;
  v16 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous((((v15 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v15)), a3, a4, a4, a5);
  v17 = 0;
  v18 = (((v16 + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v16 + a4));
  v19 = explicit[2];
  v20 = *explicit;
  v21 = vdup_n_s8(v18 & 0x7F);
  v22 = ((v18 >> 7) ^ (v19 >> 12)) & *explicit;
  v23 = *(v19 + v22);
  v24 = vceq_s8(v23, v21);
  if (v24)
  {
LABEL_4:
    v25 = explicit[3];
    v29 = v17;
    while (1)
    {
      v26 = v25 + 32 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v20);
      if (*v26 == a2 && *(v26 + 16) == a4 && !memcmp(*(v26 + 8), a3, a4))
      {
        break;
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v17 = v29;
      if (!v24)
      {
        goto LABEL_9;
      }
    }

    if (v19)
    {
      return *(v26 + 24);
    }
  }

  else
  {
LABEL_9:
    while (!*&vceq_s8(v23, 0x8080808080808080))
    {
      v17 += 8;
      v22 = (v17 + v22) & v20;
      v23 = *(v19 + v22);
      v24 = vceq_s8(v23, v21);
      if (v24)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

_BYTE *google::protobuf::Descriptor::FindFieldByName(uint64_t a1, void *a2, size_t a3, uint64_t a4, const unint64_t *a5)
{
  result = google::protobuf::FileDescriptorTables::FindNestedSymbol(*(*(a1 + 16) + 152), a1, a2, a3, a5);
  if (*result != 2)
  {
    return 0;
  }

  if ((result[1] & 8) != 0)
  {
    return 0;
  }

  return result;
}

void *google::protobuf::FileDescriptorTables::FindNestedSymbol(uint64_t *a1, uint64_t a2, void *a3, size_t a4, const unint64_t *a5)
{
  if (*a1 <= 1)
  {
    if (a1[1] < 2)
    {
      return &google::protobuf::Symbol::Symbol(void)::null_symbol;
    }

    v9 = a1 + 2;
    google::protobuf::Symbol::parent_name_key(a1 + 2, v44);
    if (v44[0] != a2 || v44[2] != a4)
    {
      return &google::protobuf::Symbol::Symbol(void)::null_symbol;
    }

    v41 = memcmp(v44[1], a3, a4);
    v42 = &absl::lts_20240722::container_internal::kSooControl;
    if (v41)
    {
      v42 = 0;
      v40 = 0;
    }

    else
    {
      v40 = v9;
    }

    if (!v42)
    {
      return &google::protobuf::Symbol::Symbol(void)::null_symbol;
    }

    return *v40;
  }

  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v17 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2))) + a2;
  v18 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous((((v17 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v17)), a3, a4, a4, a5);
  v19 = 0;
  v20 = (((v18 + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v18 + a4));
  v21 = a1[2];
  v22 = *a1;
  v23 = vdup_n_s8(v20 & 0x7F);
  v24 = ((v20 >> 7) ^ (v21 >> 12)) & *a1;
  v25 = *(v21 + v24);
  v26 = vceq_s8(v25, v23);
  if (!v26)
  {
    goto LABEL_46;
  }

LABEL_10:
  v27 = a1[3];
  v43 = v19;
  while (1)
  {
    v28 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v22;
    v29 = *(v27 + 8 * v28);
    v30 = *v29;
    if (v30 <= 4)
    {
      if (*v29 <= 2u)
      {
        if (v30 != 1)
        {
          if (v30 != 2)
          {
            goto LABEL_56;
          }

          if ((v29[1] & 8) != 0)
          {
            v31 = 40;
          }

          else
          {
            v31 = 32;
          }

          v32 = *&v29[v31];
          if (v32)
          {
LABEL_34:
            v34 = 8;
            goto LABEL_35;
          }

          goto LABEL_30;
        }

        goto LABEL_26;
      }

      if (v30 != 3)
      {
        if (v30 != 4)
        {
          goto LABEL_56;
        }

LABEL_26:
        v32 = *(v29 + 3);
        if (v32)
        {
          goto LABEL_34;
        }
      }

LABEL_30:
      v33 = (v29 + 16);
      goto LABEL_31;
    }

    if (*v29 > 6u)
    {
      if (v30 != 7 && v30 != 8)
      {
LABEL_56:
        google::protobuf::FileDescriptorTables::FindNestedSymbol(v44);
      }

      goto LABEL_30;
    }

    if (v30 != 5)
    {
      if (v30 != 6)
      {
        goto LABEL_56;
      }

      v33 = (v29 + 15);
      v34 = 7;
      goto LABEL_32;
    }

    v35 = *(v29 + 2);
    v32 = *(v35 + 24);
    if (v32)
    {
      goto LABEL_34;
    }

    v33 = (v35 + 16);
LABEL_31:
    v34 = 8;
LABEL_32:
    v32 = *v33;
LABEL_35:
    v36 = *&v29[v34];
    v37 = *(v36 + 23);
    v38 = (v37 & 0x80u) == 0 ? v36 : *v36;
    if (v32 == a2)
    {
      v39 = *(v36 + 8);
      if ((v37 & 0x80u) != 0)
      {
        v37 = v39;
      }

      if (v37 == a4 && !memcmp(v38, a3, a4))
      {
        break;
      }
    }

    v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
    v19 = v43;
    if (!v26)
    {
LABEL_46:
      while (!*&vceq_s8(v25, 0x8080808080808080))
      {
        v19 += 8;
        v24 = (v19 + v24) & v22;
        v25 = *(v21 + v24);
        v26 = vceq_s8(v25, v23);
        if (v26)
        {
          goto LABEL_10;
        }
      }

      return &google::protobuf::Symbol::Symbol(void)::null_symbol;
    }
  }

  v40 = (v27 + 8 * v28);
  if (v21 + v28)
  {
    return *v40;
  }

  return &google::protobuf::Symbol::Symbol(void)::null_symbol;
}

uint64_t google::protobuf::Descriptor::map_key(google::protobuf::Descriptor *this)
{
  if (*(*(this + 4) + 83) == 1)
  {
    return *(this + 7);
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::map_value(google::protobuf::Descriptor *this)
{
  if (*(*(this + 4) + 83) == 1)
  {
    return *(this + 7) + 88;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *google::protobuf::EnumDescriptor::FindValueByName(uint64_t a1, void *a2, size_t a3, uint64_t a4, const unint64_t *a5)
{
  result = google::protobuf::FileDescriptorTables::FindNestedSymbol(*(*(a1 + 16) + 152), a1, a2, a3, a5);
  v6 = *result;
  v7 = result - 1;
  if (v6 != 6)
  {
    v7 = 0;
  }

  if (v6 != 5)
  {
    return v7;
  }

  return result;
}

void *google::protobuf::EnumDescriptor::FindValueByNumber(google::protobuf::EnumDescriptor *this, signed int a2)
{
  v2 = *(this + 7);
  v3 = *(v2 + 4);
  if (a2 >= v3 && *(this + 1) + v3 >= a2)
  {
    return (v2 + 48 * (a2 - v3));
  }

  if (result)
  {
    return *v5;
  }

  return result;
}

uint64_t google::protobuf::FileDescriptorTables::FindEnumValueByNumberCreatingIfUnknown(google::protobuf::FileDescriptorTables *this, const google::protobuf::EnumDescriptor *a2, unsigned int a3)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 7);
  v7 = *(v6 + 4);
  if (a3 >= v7 && *(a2 + 1) + v7 >= a3)
  {
    v10 = v6 + 48 * (a3 - v7);
    if (v10)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = a3;
    {
      goto LABEL_8;
    }

    v10 = *v9;
    if (*v9)
    {
      goto LABEL_39;
    }
  }

  v8 = a3;
LABEL_8:
  absl::lts_20240722::Mutex::ReaderLock((this + 192));
  if (v12)
  {
    v10 = *v11;
  }

  else
  {
    v10 = 0;
  }

  absl::lts_20240722::Mutex::ReaderUnlock(this + 24);
  if (!v12)
  {
    absl::lts_20240722::Mutex::Lock(this + 24);
    {
      v10 = *v13;
    }

    else
    {
      v14 = *(a2 + 1);
      if (*(v14 + 23) < 0)
      {
        v14 = *v14;
      }

      *&v43 = v14;
      *(&v43 + 1) = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<char const*>;
      *&v44 = v8;
      *(&v44 + 1) = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      v15 = absl::lts_20240722::str_format_internal::FormatPack("UNKNOWN_ENUM_VALUE_%s_%d", 24, &v43, 2uLL, &v38);
      v16 = google::protobuf::DescriptorPool::generated_pool(v15);
      v17 = *(v16 + 40);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *&v50 = 0x200000030;
      v18 = *v16;
      v42[0] = v18;
      if (v18)
      {
        absl::lts_20240722::Mutex::Lock(v18);
      }

      if (v18)
      {
        absl::lts_20240722::Mutex::Unlock(v18);
      }

      v19 = *(a2 + 1);
      v22 = *(v19 + 24);
      v20 = v19 + 24;
      v21 = v22;
      v37 = v10;
      v23 = *(v20 + 8);
      if (*(v20 + 23) >= 0)
      {
        v24 = *(v20 + 23);
      }

      else
      {
        v20 = v21;
        v24 = v23;
      }

      v42[0] = v20;
      v42[1] = v24;
      v41[0] = ".";
      v41[1] = 1;
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      v26 = &v38;
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v38.__r_.__value_.__l.__size_;
        v26 = v38.__r_.__value_.__r.__words[0];
      }

      v40[0] = v26;
      v40[1] = size;
      absl::lts_20240722::StrCat(v42, v41, v40, &__p);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
      }

      else
      {
        v39 = v38;
      }

      if (*(v27 + 23) < 0)
      {
        operator delete(*v27);
      }

      v28 = *&v39.__r_.__value_.__l.__data_;
      *(v27 + 16) = *(&v39.__r_.__value_.__l + 2);
      *v27 = v28;
      *(&v39.__r_.__value_.__s + 23) = 0;
      v39.__r_.__value_.__s.__data_[0] = 0;
      v57[0] = __p.__r_.__value_.__l.__size_;
      v29 = __p.__r_.__value_.__r.__words[0];
      *(v57 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
      v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      memset(&__p, 0, sizeof(__p));
      if (*(v27 + 47) < 0)
      {
        operator delete(*(v27 + 24));
        v32 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
        v33 = v57[0];
        *(v27 + 24) = v29;
        *(v27 + 32) = v33;
        *(v27 + 39) = *(v57 + 7);
        *(v27 + 47) = v30;
        if (v32 < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v31 = v57[0];
        *(v27 + 24) = v29;
        *(v27 + 32) = v31;
        *(v27 + 39) = *(v57 + 7);
        *(v27 + 47) = v30;
      }

      *(v10 + 8) = v27;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *(v10 + 4) = a3;
      *(v10 + 16) = a2;
      *(v10 + 24) = &google::protobuf::_EnumValueOptions_default_instance_;
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }
    }

    absl::lts_20240722::Mutex::Unlock((this + 192));
  }

LABEL_39:
  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23CD73674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void google::protobuf::Descriptor::ExtensionRange::CopyTo(google::protobuf::Descriptor::ExtensionRange *this, google::protobuf::DescriptorProto_ExtensionRange *a2)
{
  *(a2 + 8) = *this;
  v4 = *(a2 + 4);
  *(a2 + 4) = v4 | 2;
  *(a2 + 9) = *(this + 1);
  *(a2 + 4) = v4 | 6;
  v5 = *(this + 1);
  if (v5 != &google::protobuf::_ExtensionRangeOptions_default_instance_)
  {
    *(a2 + 4) = v4 | 7;
    v6 = *(a2 + 3);
    if (!v6)
    {
      v7 = *(a2 + 1);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::ExtensionRangeOptions>(v7);
      *(a2 + 3) = v6;
    }

    google::protobuf::ExtensionRangeOptions::CopyFrom(v6, v5);
  }

  v8 = *(this + 3);
  if (v8 != &google::protobuf::_FeatureSet_default_instance_)
  {
    *(a2 + 4) |= 1u;
    v9 = *(a2 + 3);
    if (v9)
    {
      *(v9 + 40) |= 1u;
      v10 = *(v9 + 96);
      if (v10)
      {
LABEL_10:
        v11 = v8;

LABEL_12:
        google::protobuf::FeatureSet::CopyFrom(v10, v11);
        return;
      }
    }

    else
    {
      v12 = *(a2 + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::ExtensionRangeOptions>(v12);
      v9 = v13;
      *(a2 + 3) = v13;
      *(v13 + 40) |= 1u;
      v10 = *(v13 + 96);
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v14 = *(v9 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v14);
    *(v9 + 96) = v10;
    v11 = v8;

    goto LABEL_12;
  }
}

_DWORD *google::protobuf::Descriptor::FindExtensionRangeContainingNumber(google::protobuf::Descriptor *this, int a2)
{
  v2 = *(this + 34);
  if (v2 < 1)
  {
    return 0;
  }

  for (result = *(this + 11); *result > a2 || result[1] <= a2; result += 10)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *google::protobuf::Descriptor::FindReservedRangeContainingNumber(google::protobuf::Descriptor *this, int a2)
{
  v2 = *(this + 36);
  if (v2 < 1)
  {
    return 0;
  }

  for (result = *(this + 13); *result > a2 || result[1] <= a2; result += 2)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(std::string_view)const::$_0::operator()(uint64_t a1, const void *a2, size_t __len, uint64_t a4)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v10 = __len;
  if (__len)
  {
    memmove(&__dst, a2, __len);
  }

  *(&__dst + __len) = 0;
  result = (*(*a1 + 16))(a1, &__dst, a4);
  if (v10 < 0)
  {
    v8 = result;
    operator delete(__dst);
    return v8;
  }

  return result;
}

void sub_23CD73A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorPool::BuildFileFromDatabase(google::protobuf::DescriptorPool *this, const google::protobuf::FileDescriptorProto *a2)
{
  absl::lts_20240722::Mutex::AssertHeld(*this, a2);
  *(this + 55) = 1;
  v6 = *(this + 5);
  v7 = (*(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL);
  _X8 = v6[5];
  __asm { PRFM            #4, [X8] }

  v14 = *(v7 + 23);
  if (v14 >= 0)
  {
    v15 = (*(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v15 = *v7;
  }

  if (v14 >= 0)
  {
    v16 = *(v7 + 23);
  }

  else
  {
    v16 = *(v7 + 1);
  }

  v17 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v15, v16, v4, v5);
  v18 = 0;
  v19 = (((v17 + v16) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v17 + v16));
  v20 = v6[5];
  v21 = vdup_n_s8(v19 & 0x7F);
  v22 = *(v7 + 23);
  if (v22 >= 0)
  {
    v23 = *(v7 + 23);
  }

  else
  {
    v23 = *(v7 + 1);
  }

  v24 = v6[3];
  v25 = (v19 >> 7) ^ (v20 >> 12);
  if (v22 < 0)
  {
    v7 = *v7;
  }

  v26 = v25 & v24;
  v27 = *(v20 + (v25 & v24));
  v28 = vceq_s8(v27, v21);
  if (v28)
  {
LABEL_13:
    v29 = v6[6];
    v43 = v18;
    while (1)
    {
      v30 = v29 + 24 * ((v26 + (__clz(__rbit64(v28)) >> 3)) & v24);
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v23)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        if (!memcmp(v33, v7, v23))
        {
          break;
        }
      }

      v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v18 = v43;
      if (!v28)
      {
        goto LABEL_22;
      }
    }

    if (v20)
    {
      return 0;
    }
  }

  else
  {
LABEL_22:
    while (!*&vceq_s8(v27, 0x8080808080808080))
    {
      v18 += 8;
      v26 = (v18 + v26) & v24;
      v27 = *(v20 + v26);
      v28 = vceq_s8(v27, v21);
      if (v28)
      {
        goto LABEL_13;
      }
    }
  }

  v47[2] = a2;
  v48 = 0;
  v47[0] = &v48;
  v47[1] = this;
  v35 = *(this + 4);
  if (!v35)
  {
    v38 = *(this + 5);
    v39 = *(this + 2);
    operator new();
  }

  v44 = v47;
  v45 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorPool::BuildFileFromDatabase(google::protobuf::FileDescriptorProto const&)::$_0,void>;
  (*(v35 + 24))(v35, &v44);
  result = v48;
  if (!v48)
  {
    v40 = *(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::find_or_prepare_insert_non_soo<std::string>((*(this + 5) + 24), v40, v36, v37, &v44);
    if (v46 == 1)
    {
      v41 = v45;
      if (*(v40 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v45, *v40, *(v40 + 8));
      }

      else
      {
        v42 = *v40;
        v45->__r_.__value_.__r.__words[2] = *(v40 + 16);
        *&v41->__r_.__value_.__l.__data_ = v42;
      }
    }

    return v48;
  }

  return result;
}

void sub_23CD73CE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<google::protobuf::DescriptorBuilder>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

google::protobuf::FileDescriptorProto **std::unique_ptr<google::protobuf::FileDescriptorProto>::~unique_ptr[abi:ne200100](google::protobuf::FileDescriptorProto **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void google::protobuf::FieldDescriptor::DefaultValueAsString(google::protobuf::FieldDescriptor *this@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v36[6] = *MEMORY[0x277D85DE8];
  if ((*(this + 1) & 1) == 0)
  {
    v31 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v36, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 2657);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, "No default value", 0x10uLL);
    goto LABEL_59;
  }

  v7 = *(this + 3);
  if (v7)
  {
    v36[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v35[0] = this;
    if (atomic_load_explicit(v7, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, v36, v35);
    }
  }

  v8 = *(this + 2);
  v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 2)];
  if (v9 <= 4)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v20 = *(this + 20);
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *a4 = 0;
        *(a4 + 23) = 22;
        v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v20, a4, a3);
      }

      else
      {
        v16 = *(this + 10);
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *a4 = 0;
        *(a4 + 23) = 22;
        v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v16, a4, a3);
      }

      std::string::erase(a4, &v17[-a4], 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_54;
    }

    if (v9 == 1)
    {
      v18 = *(this + 20);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      *(a4 + 23) = 22;
      v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v18, a4, a3);
      std::string::erase(a4, &v19[-a4], 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_54;
    }

    if (v9 == 2)
    {
      v14 = *(this + 10);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      *(a4 + 23) = 22;
      v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v14, a4, a3);
      std::string::erase(a4, &v15[-a4], 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_54;
    }

LABEL_60:
    v32 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v36, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 2689);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v32, "Can't get here: failed to get default value as string");
LABEL_59:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v36);
  }

  if (v9 <= 6)
  {
    if (v9 == 5)
    {
      google::protobuf::io::SimpleDtoa(*(this + 10), a4);
    }

    else
    {
      google::protobuf::io::SimpleFtoa(*(this + 20), a4);
    }

    goto LABEL_54;
  }

  if (v9 == 7)
  {
    if (*(this + 80))
    {
      v21 = "true";
    }

    else
    {
      v21 = "false";
    }

    if (*(this + 80))
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }

    *(a4 + 23) = v22;
    memcpy(a4, v21, v22);
    *(a4 + v22) = 0;
    goto LABEL_54;
  }

  if (v9 == 8)
  {
    v23 = *(this + 3);
    if (v23)
    {
      v36[0] = this;
      if (atomic_load_explicit(v23, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v23, 1, google::protobuf::FieldDescriptor::TypeOnceInit, v36);
      }
    }

    v24 = *(*(this + 10) + 8);
    if (*(v24 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a4, *v24, *(v24 + 1));
      goto LABEL_54;
    }

    v25 = *v24;
    v26 = *(v24 + 2);
    goto LABEL_44;
  }

  if (v9 != 9)
  {
    goto LABEL_60;
  }

  if (a2)
  {
    v36[0] = "";
    v36[1] = 1;
    v10 = *(this + 10);
    v11 = v10[23];
    if ((v11 & 0x8000000000000000) != 0)
    {
      v10 = *v10;
      v11 = *(*(this + 10) + 8);
    }

    absl::lts_20240722::CEscape(v10, v11, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v35[0] = p_p;
    v35[1] = size;
    v34[0] = "";
    v34[1] = 1;
    absl::lts_20240722::StrCat(v36, v35, v34, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_54;
  }

  v27 = *(this + 3);
  if (v27)
  {
    v36[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v35[0] = this;
    if (atomic_load_explicit(v27, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v27, 1, v36, v35);
    }

    v8 = *(this + 2);
  }

  v28 = *(this + 10);
  v29 = v28[23];
  if (v8 != 12)
  {
    if ((v29 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(a4, *v28, *(v28 + 1));
      goto LABEL_54;
    }

    v25 = *v28;
    v26 = *(v28 + 2);
LABEL_44:
    *(a4 + 16) = v26;
    *a4 = v25;
    goto LABEL_54;
  }

  if ((v29 & 0x80) != 0)
  {
    v28 = *v28;
    v29 = *(*(this + 10) + 8);
  }

  absl::lts_20240722::CEscape(v28, v29, a4);
LABEL_54:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_23CD74170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::FieldDescriptor::default_value_enum(google::protobuf::FieldDescriptor *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v4 = this;
    if (atomic_load_explicit(v1, memory_order_acquire) != 221)
    {
      v3 = this;
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v1, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v4);
      this = v3;
    }
  }

  return *(this + 10);
}

void google::protobuf::FileDescriptor::CopyTo(atomic_uint **this, google::protobuf::FileDescriptorProto *a2)
{
  google::protobuf::FileDescriptor::CopyHeadingTo(this, a2);
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v7 = this[5];
      if (v7)
      {
        v34 = this;
        if (atomic_load_explicit(v7, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v7, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, &v34);
        }
      }

      v5 = *(*&this[9][2 * v4] + 8);
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::AddString((a2 + 24));
      std::string::operator=(v6, v5);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  if (*(this + 13) >= 1)
  {
    v8 = 0;
    v9 = *(a2 + 36);
    v10 = *(a2 + 37);
    do
    {
      v11 = this[10][v8];
      if (v9 == v10)
      {
        google::protobuf::RepeatedField<int>::Grow(a2 + 144, v9, (v9 + 1));
        LODWORD(v9) = *(a2 + 36);
        v10 = *(a2 + 37);
      }

      v12 = *(a2 + 19);
      *(a2 + 36) = v9 + 1;
      *(v12 + 4 * v9) = v11;
      ++v8;
      v9 = (v9 + 1);
    }

    while (v8 < *(this + 13));
  }

  if (*(this + 14) >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 40);
    v15 = *(a2 + 41);
    do
    {
      v16 = this[11][v13];
      if (v14 == v15)
      {
        google::protobuf::RepeatedField<int>::Grow(a2 + 160, v14, (v14 + 1));
        LODWORD(v14) = *(a2 + 40);
        v15 = *(a2 + 41);
      }

      v17 = *(a2 + 21);
      *(a2 + 40) = v14 + 1;
      *(v17 + 4 * v14) = v16;
      ++v13;
      v14 = (v14 + 1);
    }

    while (v13 < *(this + 14));
  }

  if (*(this + 15) >= 1)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = this[12];
      v21 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 48), google::protobuf::Arena::DefaultConstruct<google::protobuf::DescriptorProto>);
      google::protobuf::Descriptor::CopyTo(&v20[v18], v21);
      ++v19;
      v18 += 38;
    }

    while (v19 < *(this + 15));
  }

  if (*(this + 16) >= 1)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = this[13];
      v25 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 72), google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumDescriptorProto>);
      google::protobuf::EnumDescriptor::CopyTo(&v24[v22], v25);
      ++v23;
      v22 += 22;
    }

    while (v23 < *(this + 16));
  }

  if (*(this + 17) >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = this[14];
      v29 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 96), google::protobuf::Arena::DefaultConstruct<google::protobuf::ServiceDescriptorProto>);
      google::protobuf::ServiceDescriptor::CopyTo(&v28[v26], v29);
      ++v27;
      v26 += 16;
    }

    while (v27 < *(this + 17));
  }

  if (*(this + 1) >= 1)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = this[15];
      v33 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 120), google::protobuf::Arena::DefaultConstruct<google::protobuf::FieldDescriptorProto>);
      google::protobuf::FieldDescriptor::CopyTo(&v32[v30], v33);
      ++v31;
      v30 += 22;
    }

    while (v31 < *(this + 1));
  }
}

void google::protobuf::FileDescriptor::CopyHeadingTo(google::protobuf::FileDescriptor *this, google::protobuf::FileDescriptorProto *a2)
{
  v4 = *(this + 1);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 22, v4, *(v5 & 0xFFFFFFFFFFFFFFFELL));
    v6 = *(this + 2);
    v7 = *(v6 + 23);
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_10:
      *(a2 + 4) |= 2u;
      v10 = *(a2 + 1);
      if (v10)
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 23, v6, *(v10 & 0xFFFFFFFFFFFFFFFELL));
        v8 = *(this + 8);
        if (v8 == 999)
        {
          goto LABEL_5;
        }
      }

      else
      {
        google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 23, v6, v10);
        v8 = *(this + 8);
        if (v8 == 999)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 22, v4, v5);
    v6 = *(this + 2);
    v7 = *(v6 + 23);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*(v6 + 8))
  {
    goto LABEL_10;
  }

LABEL_4:
  v8 = *(this + 8);
  if (v8 == 999)
  {
LABEL_5:
    *(a2 + 4) |= 4u;
    v9 = *(a2 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 24, "proto3", 6uLL, v9);
    goto LABEL_16;
  }

LABEL_12:
  if (v8 >= 1000)
  {
    *(a2 + 4) |= 4u;
    v11 = *(a2 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 24, "editions", 8uLL, v11);
    *(a2 + 54) = *(this + 8);
    *(a2 + 4) |= 0x20u;
  }

LABEL_16:
  v12 = *(this + 16);
  if (v12 != &google::protobuf::_FileOptions_default_instance_)
  {
    *(a2 + 4) |= 8u;
    v13 = *(a2 + 25);
    if (!v13)
    {
      v14 = *(a2 + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FileOptions>(v14);
      *(a2 + 25) = v13;
    }

    google::protobuf::FileOptions::CopyFrom(v13, v12);
  }

  v15 = *(this + 17);
  if (v15 != &google::protobuf::_FeatureSet_default_instance_)
  {
    *(a2 + 4) |= 8u;
    v16 = *(a2 + 25);
    if (v16)
    {
      *(v16 + 40) |= 0x400u;
      v17 = *(v16 + 152);
      if (v17)
      {
LABEL_25:
        v18 = v15;

LABEL_27:
        google::protobuf::FeatureSet::CopyFrom(v17, v18);
        return;
      }
    }

    else
    {
      v19 = *(a2 + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FileOptions>(v19);
      v16 = v20;
      *(a2 + 25) = v20;
      *(v20 + 40) |= 0x400u;
      v17 = *(v20 + 152);
      if (v17)
      {
        goto LABEL_25;
      }
    }

    v21 = *(v16 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v21);
    *(v16 + 152) = v17;
    v18 = v15;

    goto LABEL_27;
  }
}

void google::protobuf::Descriptor::CopyTo(google::protobuf::Descriptor *this, google::protobuf::DescriptorProto *a2)
{
  v4 = *(this + 1);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 27, v4, *(v5 & 0xFFFFFFFFFFFFFFFELL));
    if (*(this + 1) < 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 27, v4, v5);
    if (*(this + 1) < 1)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(this + 7);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 24), google::protobuf::Arena::DefaultConstruct<google::protobuf::FieldDescriptorProto>);
    google::protobuf::FieldDescriptor::CopyTo((v8 + v6), v9);
    ++v7;
    v6 += 88;
  }

  while (v7 < *(this + 1));
LABEL_5:
  if (*(this + 30) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this + 8);
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 144), google::protobuf::Arena::DefaultConstruct<google::protobuf::OneofDescriptorProto>);
      google::protobuf::OneofDescriptor::CopyTo((v12 + v10), v13);
      ++v11;
      v10 += 56;
    }

    while (v11 < *(this + 30));
  }

  if (*(this + 32) >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(this + 9);
      v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 48), google::protobuf::Arena::DefaultConstruct<google::protobuf::DescriptorProto>);
      google::protobuf::Descriptor::CopyTo((v16 + v14), v17);
      ++v15;
      v14 += 152;
    }

    while (v15 < *(this + 32));
  }

  if (*(this + 33) >= 1)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(this + 10);
      v21 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 72), google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumDescriptorProto>);
      google::protobuf::EnumDescriptor::CopyTo((v20 + v18), v21);
      ++v19;
      v18 += 88;
    }

    while (v19 < *(this + 33));
  }

  if (*(this + 34) >= 1)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(this + 11);
      v25 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 96), google::protobuf::Arena::DefaultConstruct<google::protobuf::DescriptorProto_ExtensionRange>);
      google::protobuf::Descriptor::ExtensionRange::CopyTo((v24 + v22), v25);
      ++v23;
      v22 += 40;
    }

    while (v23 < *(this + 34));
  }

  if (*(this + 35) >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(this + 12);
      v29 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 120), google::protobuf::Arena::DefaultConstruct<google::protobuf::FieldDescriptorProto>);
      google::protobuf::FieldDescriptor::CopyTo((v28 + v26), v29);
      ++v27;
      v26 += 88;
    }

    while (v27 < *(this + 35));
  }

  if (*(this + 36) >= 1)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 168), google::protobuf::Arena::DefaultConstruct<google::protobuf::DescriptorProto_ReservedRange>);
      v32[6] = *(*(this + 13) + v30);
      v33 = v32[4];
      v32[4] = v33 | 1;
      v32[7] = *(*(this + 13) + v30 + 4);
      v32[4] = v33 | 3;
      ++v31;
      v30 += 8;
    }

    while (v31 < *(this + 36));
  }

  if (*(this + 37) >= 1)
  {
    v34 = 0;
    do
    {
      v35 = *(*(this + 14) + 8 * v34);
      v36 = google::protobuf::internal::RepeatedPtrFieldBase::AddString((a2 + 192));
      std::string::operator=(v36, v35);
      ++v34;
    }

    while (v34 < *(this + 37));
  }

  v37 = *(this + 4);
  if (v37 != &google::protobuf::_MessageOptions_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v38 = *(a2 + 28);
    if (!v38)
    {
      v39 = *(a2 + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::MessageOptions>(v39);
      *(a2 + 28) = v38;
      v37 = *(this + 4);
    }

    google::protobuf::MessageOptions::CopyFrom(v38, v37);
  }

  v40 = *(this + 5);
  if (v40 != &google::protobuf::_FeatureSet_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v41 = *(a2 + 28);
    if (v41)
    {
      *(v41 + 40) |= 1u;
      v42 = *(v41 + 72);
      if (v42)
      {
LABEL_43:

        google::protobuf::FeatureSet::CopyFrom(v42, v40);
        return;
      }
    }

    else
    {
      v43 = *(a2 + 1);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::MessageOptions>(v43);
      v41 = v44;
      *(a2 + 28) = v44;
      *(v44 + 40) |= 1u;
      v42 = *(v44 + 72);
      if (v42)
      {
        goto LABEL_43;
      }
    }

    v45 = *(v41 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v45);
    *(v41 + 72) = v42;
    goto LABEL_43;
  }
}

void google::protobuf::EnumDescriptor::CopyTo(google::protobuf::EnumDescriptor *this, google::protobuf::EnumDescriptorProto *a2)
{
  v4 = *(this + 1);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 12, v4, *(v5 & 0xFFFFFFFFFFFFFFFELL));
    if (*(this + 1) < 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 12, v4, v5);
    if (*(this + 1) < 1)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(this + 7);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 24), google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumValueDescriptorProto>);
    google::protobuf::EnumValueDescriptor::CopyTo((v8 + v6), v9);
    ++v7;
    v6 += 48;
  }

  while (v7 < *(this + 1));
LABEL_5:
  if (*(this + 16) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 48), google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumDescriptorProto_EnumReservedRange>);
      v12[6] = *(*(this + 9) + v10);
      v13 = v12[4];
      v12[4] = v13 | 1;
      v12[7] = *(*(this + 9) + v10 + 4);
      v12[4] = v13 | 3;
      ++v11;
      v10 += 8;
    }

    while (v11 < *(this + 16));
  }

  if (*(this + 17) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(this + 10) + 8 * v14);
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::AddString((a2 + 72));
      std::string::operator=(v16, v15);
      ++v14;
    }

    while (v14 < *(this + 17));
  }

  v17 = *(this + 4);
  if (v17 != &google::protobuf::_EnumOptions_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v18 = *(a2 + 13);
    if (!v18)
    {
      v19 = *(a2 + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumOptions>(v19);
      *(a2 + 13) = v18;
      v17 = *(this + 4);
    }

    google::protobuf::EnumOptions::CopyFrom(v18, v17);
  }

  v20 = *(this + 5);
  if (v20 != &google::protobuf::_FeatureSet_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v21 = *(a2 + 13);
    if (v21)
    {
      *(v21 + 40) |= 1u;
      v22 = *(v21 + 72);
      if (v22)
      {
LABEL_28:

        google::protobuf::FeatureSet::CopyFrom(v22, v20);
        return;
      }
    }

    else
    {
      v23 = *(a2 + 1);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumOptions>(v23);
      v21 = v24;
      *(a2 + 13) = v24;
      *(v24 + 40) |= 1u;
      v22 = *(v24 + 72);
      if (v22)
      {
        goto LABEL_28;
      }
    }

    v25 = *(v21 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v25);
    *(v21 + 72) = v22;
    goto LABEL_28;
  }
}

void google::protobuf::ServiceDescriptor::CopyTo(google::protobuf::ServiceDescriptor *this, google::protobuf::ServiceDescriptorProto *a2)
{
  v4 = *(this + 1);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 6, v4, *(v5 & 0xFFFFFFFFFFFFFFFELL));
    if (*(this + 14) < 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 6, v4, v5);
    if (*(this + 14) < 1)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(this + 6);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 24), google::protobuf::Arena::DefaultConstruct<google::protobuf::MethodDescriptorProto>);
    google::protobuf::MethodDescriptor::CopyTo((v8 + v6), v9);
    ++v7;
    v6 += 80;
  }

  while (v7 < *(this + 14));
LABEL_5:
  v10 = *(this + 3);
  if (v10 != &google::protobuf::_ServiceOptions_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v11 = *(a2 + 7);
    if (!v11)
    {
      v12 = *(a2 + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::ServiceOptions>(v12);
      *(a2 + 7) = v11;
      v10 = *(this + 3);
    }

    google::protobuf::ServiceOptions::CopyFrom(v11, v10);
  }

  v13 = *(this + 4);
  if (v13 != &google::protobuf::_FeatureSet_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v14 = *(a2 + 7);
    if (v14)
    {
      *(v14 + 40) |= 1u;
      v15 = *(v14 + 72);
      if (v15)
      {
LABEL_22:

        google::protobuf::FeatureSet::CopyFrom(v15, v13);
        return;
      }
    }

    else
    {
      v16 = *(a2 + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::ServiceOptions>(v16);
      v14 = v17;
      *(a2 + 7) = v17;
      *(v17 + 40) |= 1u;
      v15 = *(v17 + 72);
      if (v15)
      {
        goto LABEL_22;
      }
    }

    v18 = *(v14 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v18);
    *(v14 + 72) = v15;
    goto LABEL_22;
  }
}

void google::protobuf::FieldDescriptor::CopyTo(google::protobuf::FieldDescriptor *this, google::protobuf::FieldDescriptorProto *a2)
{
  v4 = *(this + 1);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 3, v4, v5);
  *(a2 + 18) = *(this + 1);
  v7 = *(a2 + 4);
  *(a2 + 4) = v7 | 0x40;
  if ((*(this + 1) & 4) == 0)
  {
    if ((*(this + 1) & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(a2 + 80) = 1;
    *(a2 + 4) |= 0x100u;
    if (*(*(this + 9) + 48) != 3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = (*(this + 1) + 24 * ((*(this + 3) >> 4) & 7));
  *(a2 + 4) = v7 | 0x50;
  v9 = *(a2 + 1);
  if (v9)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 7, v8, *(v9 & 0xFFFFFFFFFFFFFFFELL));
    if ((*(this + 1) & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 7, v8, v9);
    if ((*(this + 1) & 2) != 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (*(*(this + 9) + 48) != 3)
  {
LABEL_11:
    *(a2 + 21) = (*(this + 1) >> 5) & 3;
    *(a2 + 4) |= 0x200u;
    v10 = *(this + 3);
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (*(*(this + 2) + 32) <= 999)
  {
    goto LABEL_11;
  }

  *(a2 + 21) = 1;
  *(a2 + 4) |= 0x200u;
  v10 = *(this + 3);
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_14:
  __p.n128_u64[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
  v57 = this;
  if (atomic_load_explicit(v10, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v10, 1, &__p, &v57);
    v11 = *(this + 2);
    if (v11 != 10)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = *(this + 2);
  if (v11 != 10)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (*(*(this + 2) + 32) > 999)
  {
    *(a2 + 22) = 11;
    v13 = *(a2 + 4);
    v14 = v13 | 0x400;
    *(a2 + 4) = v13 | 0x400;
    if ((*(this + 1) & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_22;
  }

LABEL_17:
  v12 = *(this + 3);
  if (v12)
  {
    __p.n128_u64[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v57 = this;
    if (atomic_load_explicit(v12, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, &__p, &v57);
    }

    v11 = *(this + 2);
  }

  *(a2 + 22) = v11;
  v13 = *(a2 + 4);
  v14 = v13 | 0x400;
  *(a2 + 4) = v13 | 0x400;
  if ((*(this + 1) & 8) != 0)
  {
LABEL_22:
    if ((*(*(this + 4) + 1) & 2) == 0)
    {
      *(a2 + 4) = v13 | 0x402;
      v15 = *(a2 + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(a2 + 4, ".", 1uLL, v15);
      v14 = *(a2 + 4);
    }

    *(a2 + 4) = v14 | 2;
    v16 = *(a2 + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::internal::ArenaStringPtr::Mutable((a2 + 32), v16);
    v18 = *(*(this + 4) + 8);
    v21 = *(v18 + 24);
    v19 = v18 + 24;
    v20 = v21;
    v22 = *(v19 + 23);
    if (v22 >= 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    if (v22 >= 0)
    {
      v24 = *(v19 + 23);
    }

    else
    {
      v24 = *(v19 + 8);
    }

    std::string::append(v17, v23, v24);
  }

LABEL_35:
  v25 = *(this + 3);
  if (v25 && (__p.n128_u64[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v57 = this, atomic_load_explicit(v25, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v25, 1, &__p, &v57);
    v26 = *(this + 2);
    v27 = *(this + 3);
    if ((v26 & 0xFE) == 0xA)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v26 = *(this + 2);
    v27 = *(this + 3);
    if ((v26 & 0xFE) == 0xA)
    {
LABEL_38:
      if (v27 && (__p.n128_u64[0] = this, atomic_load_explicit(v27, memory_order_acquire) != 221))
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v27, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &__p);
        v28 = this + 48;
        if ((*(*(this + 6) + 1) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v28 = this + 48;
        if ((*(*(this + 6) + 1) & 1) == 0)
        {
LABEL_42:
          v29 = *(this + 3);
          if (v29 && (__p.n128_u64[0] = this, atomic_load_explicit(v29, memory_order_acquire) != 221))
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v29, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &__p);
            v30 = *(a2 + 4);
            if ((*(*v28 + 1) & 2) != 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v30 = *(a2 + 4);
            if ((*(*v28 + 1) & 2) != 0)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }
      }

      *(a2 + 22) = 1;
      *(a2 + 4) &= ~0x400u;
      goto LABEL_42;
    }
  }

  if (v27)
  {
    __p.n128_u64[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v57 = this;
    if (atomic_load_explicit(v27, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v27, 1, &__p, &v57);
    }

    v26 = *(this + 2);
  }

  if (v26 == 14)
  {
    v31 = *(this + 3);
    if (v31 && (__p.n128_u64[0] = this, atomic_load_explicit(v31, memory_order_acquire) != 221))
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v31, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &__p);
      v28 = this + 48;
      v30 = *(a2 + 4);
      if ((*(*(this + 6) + 1) & 2) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v28 = this + 48;
      v30 = *(a2 + 4);
      if ((*(*(this + 6) + 1) & 2) != 0)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    *(a2 + 4) = v30 | 4;
    v32 = *(a2 + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 5, ".", 1uLL, v32);
    v30 = *(a2 + 4);
LABEL_62:
    *(a2 + 4) = v30 | 4;
    v33 = *(a2 + 1);
    if (v33)
    {
      v34 = google::protobuf::internal::ArenaStringPtr::Mutable((a2 + 40), *(v33 & 0xFFFFFFFFFFFFFFFELL));
      v35 = *(this + 3);
      if (v35)
      {
LABEL_64:
        __p.n128_u64[0] = this;
        if (atomic_load_explicit(v35, memory_order_acquire) != 221)
        {
          v54 = v34;
          absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v35, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &__p);
          v34 = v54;
        }
      }
    }

    else
    {
      v34 = google::protobuf::internal::ArenaStringPtr::Mutable((a2 + 40), v33);
      v35 = *(this + 3);
      if (v35)
      {
        goto LABEL_64;
      }
    }

    v36 = *(*v28 + 8);
    v39 = *(v36 + 24);
    v37 = v36 + 24;
    v38 = v39;
    v40 = *(v37 + 23);
    if (v40 >= 0)
    {
      v41 = v37;
    }

    else
    {
      v41 = v38;
    }

    if (v40 >= 0)
    {
      v42 = *(v37 + 23);
    }

    else
    {
      v42 = *(v37 + 8);
    }

    std::string::append(v34, v41, v42);
  }

  v43 = *(this + 1);
  if (v43)
  {
    google::protobuf::FieldDescriptor::DefaultValueAsString(this, 0, v6, &__p);
    *(a2 + 4) |= 8u;
    v44 = *(a2 + 1);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 6, &__p, v44);
    if (v56 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v43 = *(this + 1);
  }

  if ((v43 & 0x10) != 0 && (v43 & 8) == 0)
  {
    v45 = *(this + 5);
    if (v45)
    {
      *(a2 + 19) = -1227133513 * ((v45 - *(*(v45 + 16) + 64)) >> 3);
      *(a2 + 4) |= 0x80u;
    }
  }

  v46 = *(this + 7);
  if (v46 != &google::protobuf::_FieldOptions_default_instance_)
  {
    *(a2 + 4) |= 0x20u;
    v47 = *(a2 + 8);
    if (!v47)
    {
      v48 = *(a2 + 1);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = google::protobuf::Arena::DefaultConstruct<google::protobuf::FieldOptions>(v48);
      *(a2 + 8) = v47;
      v46 = *(this + 7);
    }

    google::protobuf::FieldOptions::CopyFrom(v47, v46);
  }

  v49 = *(this + 8);
  if (v49 != &google::protobuf::_FeatureSet_default_instance_)
  {
    *(a2 + 4) |= 0x20u;
    v50 = *(a2 + 8);
    if (v50)
    {
      *(v50 + 40) |= 1u;
      v51 = *(v50 + 112);
      if (v51)
      {
LABEL_99:
        google::protobuf::FeatureSet::CopyFrom(v51, v49);
        return;
      }
    }

    else
    {
      v52 = *(a2 + 1);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = google::protobuf::Arena::DefaultConstruct<google::protobuf::FieldOptions>(v52);
      *(a2 + 8) = v50;
      *(v50 + 40) |= 1u;
      v51 = *(v50 + 112);
      if (v51)
      {
        goto LABEL_99;
      }
    }

    v53 = *(v50 + 8);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v53);
    *(v50 + 112) = v51;
    goto LABEL_99;
  }
}

void sub_23CD75680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::OneofDescriptor::CopyTo(google::protobuf::OneofDescriptor *this, google::protobuf::OneofDescriptorProto *a2)
{
  v4 = *(this + 1);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 3, v4, v5);
  v6 = *(this + 3);
  if (v6 != &google::protobuf::_OneofOptions_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v7 = *(a2 + 4);
    if (!v7)
    {
      v8 = *(a2 + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::OneofOptions>(v8);
      *(a2 + 4) = v7;
      v6 = *(this + 3);
    }

    google::protobuf::OneofOptions::CopyFrom(v7, v6);
  }

  v9 = *(this + 4);
  if (v9 != &google::protobuf::_FeatureSet_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v10 = *(a2 + 4);
    if (v10)
    {
      *(v10 + 40) |= 1u;
      v11 = *(v10 + 72);
      if (v11)
      {
LABEL_12:
        v12 = v9;

LABEL_14:
        google::protobuf::FeatureSet::CopyFrom(v11, v12);
        return;
      }
    }

    else
    {
      v13 = *(a2 + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::OneofOptions>(v13);
      v10 = v14;
      *(a2 + 4) = v14;
      *(v14 + 40) |= 1u;
      v11 = *(v14 + 72);
      if (v11)
      {
        goto LABEL_12;
      }
    }

    v15 = *(v10 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v15);
    *(v10 + 72) = v11;
    v12 = v9;

    goto LABEL_14;
  }
}

uint64_t google::protobuf::FieldDescriptor::enum_type(google::protobuf::FieldDescriptor *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v4 = this;
    if (atomic_load_explicit(v1, memory_order_acquire) != 221)
    {
      v3 = this;
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v1, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v4);
      this = v3;
    }
  }

  if (*(this + 2) == 14)
  {
    return *(this + 6);
  }

  else
  {
    return 0;
  }
}

void google::protobuf::EnumValueDescriptor::CopyTo(google::protobuf::EnumValueDescriptor *this, google::protobuf::EnumValueDescriptorProto *a2)
{
  v4 = *(this + 1);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 3, v4, v5);
  *(a2 + 10) = *(this + 1);
  v6 = *(a2 + 4);
  *(a2 + 4) = v6 | 4;
  v7 = *(this + 3);
  if (v7 != &google::protobuf::_EnumValueOptions_default_instance_)
  {
    *(a2 + 4) = v6 | 6;
    v8 = *(a2 + 4);
    if (!v8)
    {
      v9 = *(a2 + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumValueOptions>(v9);
      *(a2 + 4) = v8;
      v7 = *(this + 3);
    }

    google::protobuf::EnumValueOptions::CopyFrom(v8, v7);
  }

  v10 = *(this + 4);
  if (v10 != &google::protobuf::_FeatureSet_default_instance_)
  {
    *(a2 + 4) |= 2u;
    v11 = *(a2 + 4);
    if (v11)
    {
      *(v11 + 40) |= 1u;
      v12 = *(v11 + 72);
      if (v12)
      {
LABEL_12:
        v13 = v10;

LABEL_14:
        google::protobuf::FeatureSet::CopyFrom(v12, v13);
        return;
      }
    }

    else
    {
      v14 = *(a2 + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::EnumValueOptions>(v14);
      v11 = v15;
      *(a2 + 4) = v15;
      *(v15 + 40) |= 1u;
      v12 = *(v15 + 72);
      if (v12)
      {
        goto LABEL_12;
      }
    }

    v16 = *(v11 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v16);
    *(v11 + 72) = v12;
    v13 = v10;

    goto LABEL_14;
  }
}

void google::protobuf::MethodDescriptor::CopyTo(google::protobuf::MethodDescriptor *this, google::protobuf::MethodDescriptorProto *a2)
{
  v4 = *(this + 1);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 3, v4, v5);
  v6 = this + 24;
  v46 = *(this + 2);
  v7 = *(this + 4);
  if (v7 && (v44 = &v46, v45 = this + 24, atomic_load_explicit(v7, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::LazyDescriptor::Once(google::protobuf::ServiceDescriptor const*)::$_0>(v7, &v44);
    if ((*(*v6 + 1) & 2) != 0)
    {
LABEL_6:
      *(a2 + 4) |= 2u;
      v8 = *(a2 + 1);
      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_55:
      v9 = google::protobuf::internal::ArenaStringPtr::Mutable((a2 + 32), *(v8 & 0xFFFFFFFFFFFFFFFELL));
      v46 = *(this + 2);
      v10 = *(this + 4);
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else if ((*(*v6 + 1) & 2) != 0)
  {
    goto LABEL_6;
  }

  *(a2 + 4) |= 2u;
  v40 = *(a2 + 1);
  if (v40)
  {
    v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(a2 + 4, ".", 1uLL, v40);
  *(a2 + 4) |= 2u;
  v8 = *(a2 + 1);
  if (v8)
  {
    goto LABEL_55;
  }

LABEL_7:
  v9 = google::protobuf::internal::ArenaStringPtr::Mutable((a2 + 32), v8);
  v46 = *(this + 2);
  v10 = *(this + 4);
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_8:
  v44 = &v46;
  v45 = this + 24;
  if (atomic_load_explicit(v10, memory_order_acquire) != 221)
  {
    v41 = v9;
    absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::LazyDescriptor::Once(google::protobuf::ServiceDescriptor const*)::$_0>(v10, &v44);
    v9 = v41;
  }

LABEL_10:
  v11 = *(*(this + 3) + 8);
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

  std::string::append(v9, v16, v17);
  v18 = this + 40;
  v46 = *(this + 2);
  v19 = *(this + 6);
  if (v19 && (v44 = &v46, v45 = this + 40, atomic_load_explicit(v19, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::LazyDescriptor::Once(google::protobuf::ServiceDescriptor const*)::$_0>(v19, &v44);
    if ((*(*v18 + 1) & 2) != 0)
    {
LABEL_19:
      *(a2 + 4) |= 4u;
      v20 = *(a2 + 1);
      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_61:
      v21 = google::protobuf::internal::ArenaStringPtr::Mutable((a2 + 40), *(v20 & 0xFFFFFFFFFFFFFFFELL));
      v46 = *(this + 2);
      v22 = *(this + 6);
      if (!v22)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else if ((*(*v18 + 1) & 2) != 0)
  {
    goto LABEL_19;
  }

  *(a2 + 4) |= 4u;
  v42 = *(a2 + 1);
  if (v42)
  {
    v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(a2 + 5, ".", 1uLL, v42);
  *(a2 + 4) |= 4u;
  v20 = *(a2 + 1);
  if (v20)
  {
    goto LABEL_61;
  }

LABEL_20:
  v21 = google::protobuf::internal::ArenaStringPtr::Mutable((a2 + 40), v20);
  v46 = *(this + 2);
  v22 = *(this + 6);
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_21:
  v44 = &v46;
  v45 = this + 40;
  if (atomic_load_explicit(v22, memory_order_acquire) != 221)
  {
    v43 = v21;
    absl::lts_20240722::base_internal::CallOnceImpl<google::protobuf::internal::LazyDescriptor::Once(google::protobuf::ServiceDescriptor const*)::$_0>(v22, &v44);
    v21 = v43;
  }

LABEL_23:
  v23 = *(*(this + 5) + 8);
  v26 = *(v23 + 24);
  v24 = v23 + 24;
  v25 = v26;
  v27 = *(v24 + 23);
  if (v27 >= 0)
  {
    v28 = v24;
  }

  else
  {
    v28 = v25;
  }

  if (v27 >= 0)
  {
    v29 = *(v24 + 23);
  }

  else
  {
    v29 = *(v24 + 8);
  }

  std::string::append(v21, v28, v29);
  v30 = *(this + 7);
  if (v30 != &google::protobuf::_MethodOptions_default_instance_)
  {
    *(a2 + 4) |= 8u;
    v31 = *(a2 + 6);
    if (!v31)
    {
      v32 = *(a2 + 1);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::MethodOptions>(v32);
      *(a2 + 6) = v31;
      v30 = *(this + 7);
    }

    google::protobuf::MethodOptions::CopyFrom(v31, v30);
  }

  if (*(this + 1) == 1)
  {
    *(a2 + 56) = 1;
    *(a2 + 4) |= 0x10u;
    v33 = *(this + 2);
    if (v33 != 1)
    {
LABEL_37:
      v34 = *(this + 8);
      if (v34 == &google::protobuf::_FeatureSet_default_instance_)
      {
        return;
      }

LABEL_41:
      *(a2 + 4) |= 8u;
      v35 = *(a2 + 6);
      if (v35)
      {
        *(v35 + 40) |= 1u;
        v36 = *(v35 + 72);
        if (v36)
        {
LABEL_50:
          google::protobuf::FeatureSet::CopyFrom(v36, v34);
          return;
        }
      }

      else
      {
        v37 = *(a2 + 1);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::Arena::DefaultConstruct<google::protobuf::MethodOptions>(v37);
        v35 = v38;
        *(a2 + 6) = v38;
        *(v38 + 40) |= 1u;
        v36 = *(v38 + 72);
        if (v36)
        {
          goto LABEL_50;
        }
      }

      v39 = *(v35 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v39);
      *(v35 + 72) = v36;
      goto LABEL_50;
    }
  }

  else
  {
    v33 = *(this + 2);
    if (v33 != 1)
    {
      goto LABEL_37;
    }
  }

  *(a2 + 57) = v33;
  *(a2 + 4) |= 0x20u;
  v34 = *(this + 8);
  if (v34 != &google::protobuf::_FeatureSet_default_instance_)
  {
    goto LABEL_41;
  }
}

void google::protobuf::anonymous namespace::SourceLocationCommentPrinter::AddPreComment(uint64_t a1, std::string *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v4 = *(a1 + 72);
    for (i = *(a1 + 80); v4 != i; v4 += 24)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v13 = p_p;
      v14 = size;
      v12[0].__r_.__value_.__r.__words[0] = "\n";
      v12[0].__r_.__value_.__l.__size_ = 1;
      absl::lts_20240722::StrAppend(a2, &v13, v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if ((*(a1 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(a1 + 47))
    {
      goto LABEL_23;
    }

    v8 = HIBYTE(v12[0].__r_.__value_.__r.__words[2]);
    if ((v12[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v12[0].__r_.__value_.__r.__words[0];
    }

    if ((v12[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v12[0].__r_.__value_.__l.__size_;
    }

    v13 = v9;
    v14 = v8;
    absl::lts_20240722::StrAppend(a2, &v13);
    if (SHIBYTE(v12[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12[0].__r_.__value_.__l.__data_);
    }
  }

LABEL_23:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_23CD75FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::anonymous namespace::SourceLocationCommentPrinter::AddPostComment(uint64_t a1, std::string *a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    if ((*(a1 + 71) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 56))
      {
        goto LABEL_13;
      }
    }

    else if (!*(a1 + 71))
    {
      goto LABEL_13;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v7[0] = p_p;
    v7[1] = size;
    absl::lts_20240722::StrAppend(a2, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_13:
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23CD760B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::anonymous namespace::SourceLocationCommentPrinter::~SourceLocationCommentPrinter(void **this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[9];
  if (v2)
  {
    v3 = this[10];
    v4 = this[9];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = this[9];
    }

    this[10] = v2;
    operator delete(v4);
  }

  if ((*(this + 71) & 0x80000000) == 0)
  {
    if ((*(this + 47) & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(this[3]);
    return;
  }

  operator delete(this[6]);
  if (*(this + 47) < 0)
  {
    goto LABEL_15;
  }
}

BOOL google::protobuf::anonymous namespace::FormatLineOptions(int a1, google::protobuf::MessageLite *a2, uint64_t a3, std::string *a4)
{
  v26[4] = *MEMORY[0x277D85DE8];
  if (a1 < 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = 2 * a1;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v25 = 2 * a1;
  if (a1)
  {
    memset(__b, 32, v8);
  }

  *(__b + v8) = 0;
  __p = 0;
  v22 = 0;
  v23 = 0;
  v10 = __p;
  if (Options)
  {
    v11 = v22;
    if (__p != v22)
    {
      v12 = __p;
      do
      {
        v13 = v25;
        if ((v25 & 0x80u) == 0)
        {
          v14 = __b;
        }

        else
        {
          v14 = __b[0];
        }

        if ((v25 & 0x80u) != 0)
        {
          v13 = __b[1];
        }

        v15 = *(v12 + 23);
        if (v15 >= 0)
        {
          v16 = v12;
        }

        else
        {
          v16 = *v12;
        }

        if (v15 < 0)
        {
          v15 = v12[1];
        }

        v26[0] = v14;
        v26[1] = v13;
        v26[2] = v16;
        v26[3] = v15;
        absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a4, "$0option $1;\n", 0xDuLL, v26, 2uLL);
        v12 += 3;
      }

      while (v12 != v11);
    }
  }

  else
  {
    v11 = v22;
  }

  if (v10)
  {
    if (v10 != v11)
    {
      v17 = v11;
      do
      {
        v18 = *(v17 - 1);
        v17 -= 3;
        if (v18 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v10);
    }

    operator delete(v10);
  }

  if (v25 < 0)
  {
    operator delete(__b[0]);
  }

  result = v10 != v11;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD7637C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::EnumDescriptor::DebugString(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v75 = *MEMORY[0x277D85DE8];
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
  v57 = 0;
  v55 = 0u;
  *v56 = 0u;
  *v53 = 0u;
  *v54 = 0u;
  v58 = *a4;
  v59 = *(a4 + 2);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, __b.__r_.__value_.__l.__data_, __b.__r_.__value_.__l.__size_);
  }

  else
  {
    v60 = __b;
  }

  if (*a4 == 1)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    google::protobuf::EnumDescriptor::GetLocationPath(a1, &v66);
    SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 16), &v66, &v52);
    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }
  }

  else
  {
    SourceLocation = 0;
  }

  v51[0] = SourceLocation;
  size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  p_b = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __b.__r_.__value_.__l.__size_;
    p_b = __b.__r_.__value_.__r.__words[0];
  }

  v12 = *(a1 + 8);
  v13 = *(v12 + 23);
  v14 = v12[1];
  if ((v13 & 0x80u) != 0)
  {
    v12 = *v12;
    v13 = v14;
  }

  v66 = p_b;
  v67 = size;
  v68 = v12;
  v69 = v13;
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0enum $1 {\n", 0xCuLL, &v66, 2uLL);
  google::protobuf::EnumOptions::EnumOptions(&v66, 0, *(a1 + 32));
  v15 = *(a1 + 40);
  if (v15 != &google::protobuf::_FeatureSet_default_instance_)
  {
    v70 |= 1u;
    v16 = v71;
    if (!v71)
    {
      v17 = v67;
      if (v67)
      {
        v17 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v17);
      v71 = v16;
    }

    google::protobuf::FeatureSet::CopyFrom(v16, v15);
  }

  if (*(a1 + 4) >= 1)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      google::protobuf::EnumValueDescriptor::DebugString(*(a1 + 56) + v18, a2 + 1, a3, a4);
      ++v19;
      v18 += 48;
    }

    while (v19 < *(a1 + 4));
  }

  if (*(a1 + 64) > 0)
  {
    v20 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v21 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __b.__r_.__value_.__l.__size_;
      v21 = __b.__r_.__value_.__r.__words[0];
    }

    __p[0].__r_.__value_.__r.__words[0] = v21;
    __p[0].__r_.__value_.__l.__size_ = v20;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  reserved ", 0xDuLL, __p, 1uLL);
    if (*(a1 + 64) >= 1)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = (*(a1 + 72) + v23);
        v26 = *v25;
        v27 = v25[1];
        if (v27 == v26)
        {
          v28 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v25[1], &__p[0].__r_.__value_.__s.__data_[16], v22);
          __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
          __p[0].__r_.__value_.__l.__size_ = v28 - &__p[0].__r_.__value_.__r.__words[2];
          v62 = &__p[0].__r_.__value_.__r.__words[2];
          v63 = v28 - &__p[0].__r_.__value_.__r.__words[2];
          absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0, ", 4uLL, &v62, 1uLL);
        }

        else if (v27 == 0x7FFFFFFF)
        {
          v29 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v26, &__p[0].__r_.__value_.__s.__data_[16], v22);
          __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
          __p[0].__r_.__value_.__l.__size_ = v29 - &__p[0].__r_.__value_.__r.__words[2];
          v62 = &__p[0].__r_.__value_.__r.__words[2];
          v63 = v29 - &__p[0].__r_.__value_.__r.__words[2];
          absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0 to max, ", 0xBuLL, &v62, 1uLL);
        }

        else
        {
          v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v26, &__p[0].__r_.__value_.__s.__data_[16], v22);
          __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
          __p[0].__r_.__value_.__l.__size_ = v30 - &__p[0].__r_.__value_.__r.__words[2];
          v32 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v25[1], v64, v31);
          v62 = v64;
          v63 = v32 - v64;
          v72 = *&__p[0].__r_.__value_.__l.__data_;
          v73 = v64;
          v74 = v32 - v64;
          absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0 to $1, ", 0xAuLL, &v72, 2uLL);
        }

        ++v24;
        v23 += 8;
      }

      while (v24 < *(a1 + 64));
    }

    v33 = *(a3 + 23);
    if (v33 < 0)
    {
      v33 = *(a3 + 8);
    }

    std::string::replace(a3, v33 - 2, 2uLL, ";\n");
  }

  if (*(a1 + 68) >= 1)
  {
    v34 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v35 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = __b.__r_.__value_.__l.__size_;
      v35 = __b.__r_.__value_.__r.__words[0];
    }

    __p[0].__r_.__value_.__r.__words[0] = v35;
    __p[0].__r_.__value_.__l.__size_ = v34;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  reserved ", 0xDuLL, __p, 1uLL);
    if (*(a1 + 68) >= 1)
    {
      v36 = 0;
      do
      {
        v37 = *(a1 + 80);
        v38 = *(v37 + 8 * v36);
        v39 = v38[23];
        if ((v39 & 0x8000000000000000) != 0)
        {
          v38 = *v38;
          v39 = *(*(v37 + 8 * v36) + 8);
        }

        absl::lts_20240722::CEscape(v38, v39, __p);
        v40 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0].__r_.__value_.__r.__words[0];
        }

        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = __p[0].__r_.__value_.__l.__size_;
        }

        v62 = v41;
        v63 = v40;
        absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0, ", 6uLL, &v62, 1uLL);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        ++v36;
      }

      while (v36 < *(a1 + 68));
    }

    v42 = *(a3 + 23);
    if (v42 < 0)
    {
      v42 = *(a3 + 8);
    }

    std::string::replace(a3, v42 - 2, 2uLL, ";\n");
  }

  v43 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  v44 = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v43 = __b.__r_.__value_.__l.__size_;
    v44 = __b.__r_.__value_.__r.__words[0];
  }

  __p[0].__r_.__value_.__r.__words[0] = v44;
  __p[0].__r_.__value_.__l.__size_ = v43;
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0}\n", 4uLL, __p, 1uLL);
  google::protobuf::EnumOptions::~EnumOptions(&v66);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v45 = v56[0];
  if (v56[0])
  {
    v46 = v56[1];
    v47 = v56[0];
    if (v56[1] != v56[0])
    {
      do
      {
        v48 = *(v46 - 1);
        v46 -= 3;
        if (v48 < 0)
        {
          operator delete(*v46);
        }
      }

      while (v46 != v45);
      v47 = v56[0];
    }

    v56[1] = v45;
    operator delete(v47);
  }

  if ((SHIBYTE(v55) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v54[0]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_76:
    operator delete(v53[0]);
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_77;
  }

  operator delete(v54[1]);
  if (SHIBYTE(v54[0]) < 0)
  {
    goto LABEL_76;
  }

LABEL_73:
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_74:
    v49 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_77:
  operator delete(__b.__r_.__value_.__l.__data_);
  v50 = *MEMORY[0x277D85DE8];
}

void sub_23CD769D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  google::protobuf::SourceLocation::~SourceLocation((v46 + 8));
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::Descriptor::DebugString(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v160 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 83))
  {
    goto LABEL_182;
  }

  if (a2 < 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if ((2 * a2) >= 0x17)
  {
    operator new();
  }

  *(&__b.__r_.__value_.__s + 23) = 2 * a2;
  if (a2)
  {
    memset(&__b, 32, 2 * a2);
  }

  __b.__r_.__value_.__s.__data_[2 * a2] = 0;
  v144 = 0;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v145 = *a4;
  v146 = *(a4 + 2);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, __b.__r_.__value_.__l.__data_, __b.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = __b;
  }

  if (*a4 == 1)
  {
    memset(&v156, 0, sizeof(v156));
    google::protobuf::Descriptor::GetLocationPath(a1, &v156);
    SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 16), &v156, &v139);
    if (v156.__r_.__value_.__r.__words[0])
    {
      v156.__r_.__value_.__l.__size_ = v156.__r_.__value_.__r.__words[0];
      operator delete(v156.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    SourceLocation = 0;
  }

  v138[0] = SourceLocation;
  if (a5)
  {
    size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    p_b = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __b.__r_.__value_.__l.__size_;
      p_b = __b.__r_.__value_.__r.__words[0];
    }

    v13 = *(a1 + 8);
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) != 0)
    {
      v13 = *v13;
      v14 = v15;
    }

    v156.__r_.__value_.__r.__words[0] = p_b;
    v156.__r_.__value_.__l.__size_ = size;
    v156.__r_.__value_.__r.__words[2] = v13;
    v157 = v14;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0message $1", 0xCuLL, &v156, 2uLL);
  }

  std::string::append(a3, " {\n");
  google::protobuf::MessageOptions::MessageOptions(v134, 0, *(a1 + 32));
  v16 = *(a1 + 40);
  if (v16 != &google::protobuf::_FeatureSet_default_instance_)
  {
    v136 |= 1u;
    v17 = v137;
    if (!v137)
    {
      v18 = v135;
      if (v135)
      {
        v18 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v18);
      v137 = v17;
    }

    google::protobuf::FeatureSet::CopyFrom(v17, v16);
  }

  v131 = xmmword_23CE306D0;
  if (*(a1 + 4) >= 1)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      if (*(*(a1 + 16) + 32) <= 999)
      {
        v22 = *(a1 + 56);
        v23 = *(v22 + v20 + 24);
        if (v23)
        {
          v156.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v153 = (v22 + v20);
          if (atomic_load_explicit(v23, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v23, 1, &v156, &v153);
          }
        }

        if (*(v22 + v20 + 2) == 10)
        {
          v24 = *(a1 + 56);
          v25 = *(v24 + v20 + 24);
          if (v25)
          {
            v156.__r_.__value_.__r.__words[0] = v24 + v20;
            if (atomic_load_explicit(v25, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v25, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v156);
            }
          }

          if ((*(v24 + v20 + 2) & 0xFE) == 0xA)
          {
            v26 = *(v24 + v20 + 48);
          }

          else
          {
            v26 = 0;
          }

          v153 = v26;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<google::protobuf::Descriptor const*>>::find_or_prepare_insert<google::protobuf::Descriptor const*>(&v131, &v153, &v156);
          if (v156.__r_.__value_.__s.__data_[16] == 1)
          {
            *v156.__r_.__value_.__l.__size_ = v153;
          }
        }
      }

      ++v21;
      v20 += 88;
    }

    while (v21 < *(a1 + 4));
  }

  if (*(a1 + 140) >= 1)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      if (*(*(a1 + 16) + 32) <= 999)
      {
        v29 = *(a1 + 96);
        v30 = *(v29 + v27 + 24);
        if (v30)
        {
          v156.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v153 = (v29 + v27);
          if (atomic_load_explicit(v30, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v30, 1, &v156, &v153);
          }
        }

        if (*(v29 + v27 + 2) == 10)
        {
          v31 = *(a1 + 96);
          v32 = *(v31 + v27 + 24);
          if (v32)
          {
            v156.__r_.__value_.__r.__words[0] = v31 + v27;
            if (atomic_load_explicit(v32, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v32, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v156);
            }
          }

          if ((*(v31 + v27 + 2) & 0xFE) == 0xA)
          {
            v33 = *(v31 + v27 + 48);
          }

          else
          {
            v33 = 0;
          }

          v153 = v33;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<google::protobuf::Descriptor const*>>::find_or_prepare_insert<google::protobuf::Descriptor const*>(&v131, &v153, &v156);
          if (v156.__r_.__value_.__s.__data_[16] == 1)
          {
            *v156.__r_.__value_.__l.__size_ = v153;
          }
        }
      }

      ++v28;
      v27 += 88;
    }

    while (v28 < *(a1 + 140));
  }

  v34 = *(a1 + 128);
  if (v34 >= 1)
  {
    for (i = 0; i < v34; ++i)
    {
      while (1)
      {
        v41 = *(a1 + 72) + 152 * i;
        if (v131 <= 1)
        {
          break;
        }

        v39 = 0;
        _X10 = v132;
        __asm { PRFM            #4, [X10] }

        v48 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41))) + v41;
        v49 = ((v48 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v48);
        v40 = (v49 >> 7) ^ (v132 >> 12);
        v50 = vdup_n_s8(v49 & 0x7F);
        while (1)
        {
          v36 = v40 & v131;
          v37 = *(v132 + v36);
          v38 = vceq_s8(v37, v50);
          if (v38)
          {
            break;
          }

LABEL_64:
          if (vceq_s8(v37, 0x8080808080808080))
          {
            goto LABEL_73;
          }

          v39 += 8;
          v40 = v39 + v36;
        }

        while (*(v133 + 8 * ((v36 + (__clz(__rbit64(v38)) >> 3)) & v131)) != v41)
        {
          v38 &= ((v38 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v38)
          {
            goto LABEL_64;
          }
        }

        if (!v132)
        {
          goto LABEL_73;
        }

LABEL_67:
        if (++i >= v34)
        {
          goto LABEL_76;
        }
      }

      if (*(&v131 + 1) >= 2uLL && v132 == v41)
      {
        goto LABEL_67;
      }

LABEL_73:
      google::protobuf::Descriptor::DebugString();
      v34 = *(a1 + 128);
    }
  }

LABEL_76:
  if (*(a1 + 132) >= 1)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      google::protobuf::EnumDescriptor::DebugString(*(a1 + 80) + v51, a2 + 1, a3, a4);
      ++v52;
      v51 += 88;
    }

    while (v52 < *(a1 + 132));
  }

  if (*(a1 + 4) >= 1)
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(a1 + 56) + v53;
      if ((*(v55 + 1) & 0x10) == 0 || (v56 = *(v55 + 40)) == 0 || (v57 = *(v56 + 48), *(v56 + 4) == 1) && (*(v57 + 1) & 2) != 0)
      {
        google::protobuf::FieldDescriptor::DebugString(v55);
      }

      else if (v55 == v57)
      {
        google::protobuf::OneofDescriptor::DebugString(*(v55 + 40), a2 + 1, a3, a4);
      }

      ++v54;
      v53 += 88;
    }

    while (v54 < *(a1 + 4));
  }

  if (*(a1 + 136) >= 1)
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      v61 = *&__b.__r_.__value_.__l.__data_;
      v62 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(*(a1 + 88) + v58), &v156.__r_.__value_.__s.__data_[16], v19);
      v156.__r_.__value_.__r.__words[0] = &v156.__r_.__value_.__r.__words[2];
      v156.__r_.__value_.__l.__size_ = v62 - &v156.__r_.__value_.__r.__words[2];
      v63 = &__b;
      if ((v60 & 0x80u) == 0)
      {
        v64 = v60;
      }

      else
      {
        v64 = *(&v61 + 1);
        v63 = v61;
      }

      v153 = v63;
      v154 = v64;
      v155[0] = &v156.__r_.__value_.__l + 16;
      v155[1] = v62 - &v156.__r_.__value_.__r.__words[2];
      absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  extensions $1", 0x11uLL, &v153, 2uLL);
      v66 = *(a1 + 88);
      v67 = *(v66 + v58 + 4);
      if (v67 > *(v66 + v58) + 1)
      {
        v68 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v67 - 1), &v156.__r_.__value_.__s.__data_[16], v65);
        v156.__r_.__value_.__r.__words[0] = &v156.__r_.__value_.__r.__words[2];
        v156.__r_.__value_.__l.__size_ = v68 - &v156.__r_.__value_.__r.__words[2];
        v153 = &v156.__r_.__value_.__s.__data_[16];
        v154 = v68 - &v156.__r_.__value_.__r.__words[2];
        absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, " to $0", 6uLL, &v153, 1uLL);
        v66 = *(a1 + 88);
      }

      google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(&v156, 0, *(v66 + v58 + 8));
      v69 = *(*(a1 + 88) + v58 + 24);
      if (v69 != &google::protobuf::_FeatureSet_default_instance_)
      {
        v158 |= 1u;
        v70 = v159;
        if (!v159)
        {
          v71 = v156.__r_.__value_.__l.__size_;
          if (v156.__r_.__value_.__s.__data_[8])
          {
            v71 = *(v156.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v71);
          v159 = v70;
        }

        google::protobuf::FeatureSet::CopyFrom(v70, v69);
      }

      memset(&__p, 0, sizeof(__p));
      {
        v153 = " [";
        v154 = 2;
        v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v72 = __p.__r_.__value_.__l.__size_;
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *&v150 = p_p;
        *(&v150 + 1) = v72;
        v149[0] = "]";
        v149[1] = 1;
        absl::lts_20240722::StrAppend(a3, &v153, &v150, v149);
      }

      v153 = ";\n";
      v154 = 2;
      absl::lts_20240722::StrAppend(a3, &v153);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(&v156);
      ++v59;
      v58 += 40;
    }

    while (v59 < *(a1 + 136));
  }

  if (*(a1 + 140) >= 1)
  {
    v74 = *(a1 + 96);
    v75 = *(v74 + 4);
    if (v75)
    {
      v76 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      v77 = *(v75 + 8);
      v79 = *(v77 + 24);
      v80 = *(v77 + 32);
      v78 = v77 + 24;
      v81 = *(v78 + 23);
      v82 = &__b;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v76 = __b.__r_.__value_.__l.__size_;
        v82 = __b.__r_.__value_.__r.__words[0];
      }

      if (v81 >= 0)
      {
        v83 = v78;
      }

      else
      {
        v83 = v79;
      }

      if (v81 >= 0)
      {
        v84 = *(v78 + 23);
      }

      else
      {
        v84 = v80;
      }

      v156.__r_.__value_.__r.__words[0] = v82;
      v156.__r_.__value_.__l.__size_ = v76;
      v156.__r_.__value_.__r.__words[2] = v83;
      v157 = v84;
      absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  extend .$1 {\n", 0x11uLL, &v156, 2uLL);
      v74 = *(a1 + 96);
    }

    google::protobuf::FieldDescriptor::DebugString(v74);
    LODWORD(v85) = *(a1 + 140);
    if (v85 > 1)
    {
      v86 = 1;
      v87 = 120;
      do
      {
        v88 = *(a1 + 96);
        if (*(v88 + v87) != v75)
        {
          v89 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v90 = &__b;
          }

          else
          {
            v90 = __b.__r_.__value_.__r.__words[0];
          }

          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v89 = __b.__r_.__value_.__l.__size_;
          }

          v156.__r_.__value_.__r.__words[0] = v90;
          v156.__r_.__value_.__l.__size_ = v89;
          absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  }\n", 6uLL, &v156, 1uLL);
          v75 = *(*(a1 + 96) + v87);
          v91 = *(v75 + 8);
          v93 = *(v91 + 24);
          v94 = *(v91 + 32);
          v92 = v91 + 24;
          v95 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v96 = &__b;
          }

          else
          {
            v96 = __b.__r_.__value_.__r.__words[0];
          }

          if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v95 = __b.__r_.__value_.__l.__size_;
          }

          if (*(v92 + 23) >= 0)
          {
            v97 = *(v92 + 23);
          }

          else
          {
            v92 = v93;
            v97 = v94;
          }

          v156.__r_.__value_.__r.__words[0] = v96;
          v156.__r_.__value_.__l.__size_ = v95;
          v156.__r_.__value_.__r.__words[2] = v92;
          v157 = v97;
          absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  extend .$1 {\n", 0x11uLL, &v156, 2uLL);
          v88 = *(a1 + 96);
        }

        google::protobuf::FieldDescriptor::DebugString((v88 + v87 - 32));
        ++v86;
        v85 = *(a1 + 140);
        v87 += 88;
      }

      while (v86 < v85);
    }

    if (v85 >= 1)
    {
      v98 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      v99 = &__b;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v98 = __b.__r_.__value_.__l.__size_;
        v99 = __b.__r_.__value_.__r.__words[0];
      }

      v156.__r_.__value_.__r.__words[0] = v99;
      v156.__r_.__value_.__l.__size_ = v98;
      absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  }\n", 6uLL, &v156, 1uLL);
    }
  }

  if (*(a1 + 144) >= 1)
  {
    v100 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v101 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v100 = __b.__r_.__value_.__l.__size_;
      v101 = __b.__r_.__value_.__r.__words[0];
    }

    v156.__r_.__value_.__r.__words[0] = v101;
    v156.__r_.__value_.__l.__size_ = v100;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  reserved ", 0xDuLL, &v156, 1uLL);
    if (*(a1 + 144) >= 1)
    {
      v103 = 0;
      v104 = 0;
      do
      {
        v105 = (*(a1 + 104) + v103);
        v106 = *v105;
        v107 = v105[1];
        if (v107 == v106 + 1)
        {
          v108 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v106, &v156.__r_.__value_.__s.__data_[16], v102);
          v156.__r_.__value_.__r.__words[0] = &v156.__r_.__value_.__r.__words[2];
          v156.__r_.__value_.__l.__size_ = v108 - &v156.__r_.__value_.__r.__words[2];
          v153 = &v156.__r_.__value_.__s.__data_[16];
          v154 = v108 - &v156.__r_.__value_.__r.__words[2];
          absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0, ", 4uLL, &v153, 1uLL);
        }

        else if (v107 < 0x20000000)
        {
          v110 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v106, &v156.__r_.__value_.__s.__data_[16], v102);
          v156.__r_.__value_.__r.__words[0] = &v156.__r_.__value_.__r.__words[2];
          v156.__r_.__value_.__l.__size_ = v110 - &v156.__r_.__value_.__r.__words[2];
          v112 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v105[1] - 1), v155, v111);
          v153 = v155;
          v154 = v112 - v155;
          v150 = *&v156.__r_.__value_.__l.__data_;
          v151 = v155;
          v152 = v112 - v155;
          absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0 to $1, ", 0xAuLL, &v150, 2uLL);
        }

        else
        {
          v109 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v106, &v156.__r_.__value_.__s.__data_[16], v102);
          v156.__r_.__value_.__r.__words[0] = &v156.__r_.__value_.__r.__words[2];
          v156.__r_.__value_.__l.__size_ = v109 - &v156.__r_.__value_.__r.__words[2];
          v153 = &v156.__r_.__value_.__s.__data_[16];
          v154 = v109 - &v156.__r_.__value_.__r.__words[2];
          absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0 to max, ", 0xBuLL, &v153, 1uLL);
        }

        ++v104;
        v103 += 8;
      }

      while (v104 < *(a1 + 144));
    }

    v113 = *(a3 + 23);
    if (v113 < 0)
    {
      v113 = *(a3 + 8);
    }

    std::string::replace(a3, v113 - 2, 2uLL, ";\n");
  }

  if (*(a1 + 148) >= 1)
  {
    v114 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v115 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v114 = __b.__r_.__value_.__l.__size_;
      v115 = __b.__r_.__value_.__r.__words[0];
    }

    v156.__r_.__value_.__r.__words[0] = v115;
    v156.__r_.__value_.__l.__size_ = v114;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0  reserved ", 0xDuLL, &v156, 1uLL);
    if (*(a1 + 148) >= 1)
    {
      v116 = 0;
      do
      {
        v117 = *(a1 + 112);
        v118 = *(v117 + 8 * v116);
        v119 = v118[23];
        if ((v119 & 0x8000000000000000) != 0)
        {
          v118 = *v118;
          v119 = *(*(v117 + 8 * v116) + 8);
        }

        absl::lts_20240722::CEscape(v118, v119, &v156);
        v120 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
        if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v121 = &v156;
        }

        else
        {
          v121 = v156.__r_.__value_.__r.__words[0];
        }

        if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v120 = v156.__r_.__value_.__l.__size_;
        }

        v153 = v121;
        v154 = v120;
        absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0, ", 6uLL, &v153, 1uLL);
        if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v156.__r_.__value_.__l.__data_);
        }

        ++v116;
      }

      while (v116 < *(a1 + 148));
    }

    v122 = *(a3 + 23);
    if (v122 < 0)
    {
      v122 = *(a3 + 8);
    }

    std::string::replace(a3, v122 - 2, 2uLL, ";\n");
  }

  v123 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  v124 = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v123 = __b.__r_.__value_.__l.__size_;
    v124 = __b.__r_.__value_.__r.__words[0];
  }

  v156.__r_.__value_.__r.__words[0] = v124;
  v156.__r_.__value_.__l.__size_ = v123;
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0}\n", 4uLL, &v156, 1uLL);
  if (v131 >= 2)
  {
    operator delete((v132 - (BYTE8(v131) & 1) - 8));
    google::protobuf::MessageOptions::~MessageOptions(v134);
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_178:
      v125 = v143;
      if (!v143)
      {
        goto LABEL_179;
      }

LABEL_185:
      v127 = *(&v143 + 1);
      if (*(&v143 + 1) == v125)
      {
        *(&v143 + 1) = v125;
        operator delete(v125);
        if (SHIBYTE(v142) < 0)
        {
          goto LABEL_192;
        }
      }

      else
      {
        do
        {
          v128 = *(v127 - 1);
          v127 -= 3;
          if (v128 < 0)
          {
            operator delete(*v127);
          }
        }

        while (v127 != v125);
        *(&v143 + 1) = v125;
        operator delete(v143);
        if (SHIBYTE(v142) < 0)
        {
          goto LABEL_192;
        }
      }

LABEL_180:
      if ((SBYTE7(v141) & 0x80000000) == 0)
      {
        goto LABEL_181;
      }

LABEL_193:
      operator delete(v140);
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_182;
      }

      goto LABEL_194;
    }
  }

  else
  {
    google::protobuf::MessageOptions::~MessageOptions(v134);
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_178;
    }
  }

  operator delete(v147.__r_.__value_.__l.__data_);
  v125 = v143;
  if (v143)
  {
    goto LABEL_185;
  }

LABEL_179:
  if ((SHIBYTE(v142) & 0x80000000) == 0)
  {
    goto LABEL_180;
  }

LABEL_192:
  operator delete(*(&v141 + 1));
  if (SBYTE7(v141) < 0)
  {
    goto LABEL_193;
  }

LABEL_181:
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_182:
    v126 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_194:
  operator delete(__b.__r_.__value_.__l.__data_);
  v129 = *MEMORY[0x277D85DE8];
}

void sub_23CD77920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a16 >= 2)
  {
    operator delete((a18 - (a17 & 1) - 8));
  }

  google::protobuf::MessageOptions::~MessageOptions(&a20);
  if (a55 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::FieldDescriptor::DebugString(google::protobuf::FieldDescriptor *this, int a2, std::string *a3, uint64_t a4)
{
  v100 = *MEMORY[0x277D85DE8];
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
    __b.__r_.__value_.__s.__data_[v8] = 0;
    memset(&__p, 0, sizeof(__p));
    v9 = *(this + 3);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    __b.__r_.__value_.__s.__data_[0] = 0;
    memset(&__p, 0, sizeof(__p));
    v9 = *(this + 3);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v79.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
  v89 = this;
  if (atomic_load_explicit(v9, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v9, 1, &v79, &v89);
  }

LABEL_10:
  if (*(this + 2) == 11 && (v10 = *(this + 6), *(*(v10 + 32) + 83) == 1))
  {
    v11 = *(this + 3);
    if (v11)
    {
      v79.__r_.__value_.__r.__words[0] = this;
      if (atomic_load_explicit(v11, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v79);
      }

      v10 = *(this + 6);
    }

    google::protobuf::FieldDescriptor::FieldTypeNameDebugString(*(v10 + 56), &v89);
    if ((v91 & 0x80u) == 0)
    {
      v12 = &v89;
    }

    else
    {
      v12 = v89;
    }

    if ((v91 & 0x80u) == 0)
    {
      v13 = v91;
    }

    else
    {
      v13 = v90;
    }

    v14 = *(this + 3);
    if (v14)
    {
      v79.__r_.__value_.__r.__words[0] = this;
      if (atomic_load_explicit(v14, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v14, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v79);
      }
    }

    google::protobuf::FieldDescriptor::FieldTypeNameDebugString((*(*(this + 6) + 56) + 88), v88);
    size = HIBYTE(v88[0].__r_.__value_.__r.__words[2]);
    if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = v88;
    }

    else
    {
      v16 = v88[0].__r_.__value_.__r.__words[0];
    }

    if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v88[0].__r_.__value_.__l.__size_;
    }

    v79.__r_.__value_.__r.__words[0] = v12;
    v79.__r_.__value_.__l.__size_ = v13;
    v79.__r_.__value_.__r.__words[2] = v16;
    v80 = size;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(&__p, "map<$0, $1>", 0xBuLL, &v79, 2uLL);
    if (SHIBYTE(v88[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88[0].__r_.__value_.__l.__data_);
      if (v91 < 0)
      {
LABEL_182:
        operator delete(v89);
      }
    }

    else if (v91 < 0)
    {
      goto LABEL_182;
    }
  }

  else
  {
    google::protobuf::FieldDescriptor::FieldTypeNameDebugString(this, &v79);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v79;
  }

  v17 = strlen((&google::protobuf::FieldDescriptor::kLabelToName)[(*(this + 1) >> 5) & 3]);
  v79.__r_.__value_.__r.__words[0] = (&google::protobuf::FieldDescriptor::kLabelToName)[(*(this + 1) >> 5) & 3];
  v79.__r_.__value_.__l.__size_ = v17;
  v89 = " ";
  v90 = 1;
  absl::lts_20240722::StrCat(&v79.__r_.__value_.__l.__data_, &v89, &v74);
  v18 = *(this + 3);
  if (v18)
  {
    v79.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v89 = this;
    if (atomic_load_explicit(v18, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v18, 1, &v79, &v89);
    }
  }

  if ((*(this + 2) != 11 || (*(*(*(this + 6) + 32) + 83) & 1) == 0) && ((*(this + 1) & 0x10) == 0 || (v19 = *(this + 5)) == 0 || *(v19 + 4) == 1 && (*(*(v19 + 48) + 1) & 2) != 0) && ((*(this + 1) & 0x62) != 0x20 || *(*(this + 2) + 32) == 998 && ((*(this + 1) & 0x10) == 0 || !*(this + 5))))
  {
LABEL_51:
    if ((*(this + 1) & 0x60) != 0x20)
    {
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v74.__r_.__value_.__s.__data_[0] = 0;
    *(&v74.__r_.__value_.__s + 23) = 0;
    goto LABEL_51;
  }

  *v74.__r_.__value_.__l.__data_ = 0;
  v74.__r_.__value_.__l.__size_ = 0;
  if ((*(this + 1) & 0x60) != 0x20)
  {
LABEL_52:
    if (*(*(this + 9) + 48) != 3)
    {
      goto LABEL_59;
    }
  }

LABEL_55:
  if (*(*(this + 2) + 32) >= 1000)
  {
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      *v74.__r_.__value_.__l.__data_ = 0;
      v74.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v74.__r_.__value_.__s.__data_[0] = 0;
      *(&v74.__r_.__value_.__s + 23) = 0;
    }
  }

LABEL_59:
  v96 = 0;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v97 = *a4;
  v98 = *(a4 + 2);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, __b.__r_.__value_.__l.__data_, __b.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = __b;
  }

  if (*a4 == 1)
  {
    memset(&v79, 0, sizeof(v79));
    google::protobuf::FieldDescriptor::GetLocationPath(this, &v79);
    SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(this + 2), &v79, &v90);
    if (v79.__r_.__value_.__r.__words[0])
    {
      v79.__r_.__value_.__l.__size_ = v79.__r_.__value_.__r.__words[0];
      operator delete(v79.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    SourceLocation = 0;
  }

  v71 = a2;
  v72 = a4;
  LOBYTE(v89) = SourceLocation;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_b = &__b;
  }

  else
  {
    p_b = __b.__r_.__value_.__r.__words[0];
  }

  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __b.__r_.__value_.__l.__size_;
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v74;
  }

  else
  {
    v24 = v74.__r_.__value_.__r.__words[0];
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v74.__r_.__value_.__l.__size_;
  }

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

  v28 = this;
  if (*(*(this + 2) + 32) <= 999)
  {
    v29 = *(this + 3);
    if (v29)
    {
      v79.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v88[0].__r_.__value_.__r.__words[0] = this;
      if (atomic_load_explicit(v29, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v29, 1, &v79, v88);
      }
    }

    v28 = this;
    if (*(this + 2) == 10)
    {
      v30 = *(this + 3);
      if (v30)
      {
        v79.__r_.__value_.__r.__words[0] = this;
        if (atomic_load_explicit(v30, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v30, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v79);
        }
      }

      v28 = *(this + 6);
    }
  }

  v70 = v27;
  v31 = p_p;
  v32 = this;
  v33 = v25;
  v73 = a3;
  v34 = *(v28 + 1);
  v35 = *(v34 + 23);
  v36 = *v34;
  v37 = v34[1];
  v69 = v32;
  v38 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v32 + 1), &v88[0].__r_.__value_.__s.__data_[16], v21);
  v88[0].__r_.__value_.__r.__words[0] = &v88[0].__r_.__value_.__r.__words[2];
  v88[0].__r_.__value_.__l.__size_ = v38 - &v88[0].__r_.__value_.__r.__words[2];
  if ((v35 & 0x80u) == 0)
  {
    v39 = v34;
  }

  else
  {
    v39 = v36;
  }

  if ((v35 & 0x80u) == 0)
  {
    v40 = v35;
  }

  else
  {
    v40 = v37;
  }

  v79.__r_.__value_.__r.__words[0] = p_b;
  v79.__r_.__value_.__l.__size_ = v23;
  v79.__r_.__value_.__r.__words[2] = v24;
  v80 = v33;
  v81 = v31;
  v82 = v70;
  v83 = v39;
  v84 = v40;
  v85 = &v88[0].__r_.__value_.__s.__data_[16];
  v86 = v38 - &v88[0].__r_.__value_.__r.__words[2];
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(v73, "$0$1$2 $3 = $4", 0xEuLL, &v79, 5uLL);
  if ((*(v69 + 1) & 1) == 0)
  {
    v43 = v72;
    v42 = v73;
    v44 = v71;
    if ((*(v69 + 1) & 4) == 0)
    {
      v47 = 0;
      goto LABEL_125;
    }

    v48 = " [";
    goto LABEL_113;
  }

  google::protobuf::FieldDescriptor::DefaultValueAsString(v69, 1, v41, &v79);
  v43 = v72;
  v42 = v73;
  v44 = v71;
  v45 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = &v79;
  }

  else
  {
    v46 = v79.__r_.__value_.__r.__words[0];
  }

  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v45 = v79.__r_.__value_.__l.__size_;
  }

  v88[0].__r_.__value_.__r.__words[0] = v46;
  v88[0].__r_.__value_.__l.__size_ = v45;
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(v73, " [default = $0", 0xEuLL, v88, 1uLL);
  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((*(v69 + 1) & 4) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_112;
  }

  operator delete(v79.__r_.__value_.__l.__data_);
  if ((*(v69 + 1) & 4) != 0)
  {
LABEL_112:
    v48 = ", ";
LABEL_113:
    std::string::append(v42, v48);
    std::string::append(v42, "json_name = ");
    v49 = *(v69 + 1);
    v50 = (v49 + 24 * ((*(v69 + 3) >> 4) & 7));
    v51 = v50[23];
    if ((v51 & 0x8000000000000000) != 0)
    {
      v50 = *v50;
      v51 = *(v49 + 24 * ((*(v69 + 3) >> 4) & 7) + 8);
    }

    absl::lts_20240722::CEscape(v50, v51, &v79);
    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v79;
    }

    else
    {
      v52 = v79.__r_.__value_.__r.__words[0];
    }

    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = v79.__r_.__value_.__l.__size_;
    }

    std::string::append(v42, v52, v53);
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    std::string::append(v42, "");
  }

LABEL_124:
  v47 = 1;
LABEL_125:
  google::protobuf::FieldOptions::FieldOptions(&v79, 0, *(v69 + 7));
  v54 = *(v69 + 8);
  if (v54 != &google::protobuf::_FeatureSet_default_instance_)
  {
    LODWORD(v82) = v82 | 1;
    v55 = v87;
    if (!v87)
    {
      v56 = v79.__r_.__value_.__l.__size_;
      if (v79.__r_.__value_.__s.__data_[8])
      {
        v56 = *(v79.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v56);
      v87 = v55;
    }

    google::protobuf::FeatureSet::CopyFrom(v55, v54);
  }

  memset(v88, 0, 24);
  {
    if (v47)
    {
      v57 = ", ";
    }

    else
    {
      v57 = " [";
    }

    std::string::append(v42, v57);
    if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = v88;
    }

    else
    {
      v58 = v88[0].__r_.__value_.__r.__words[0];
    }

    if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v88[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v88[0].__r_.__value_.__l.__size_;
    }

    std::string::append(v42, v58, v59);
    goto LABEL_143;
  }

  if (v47)
  {
LABEL_143:
    std::string::append(v42, "]");
  }

  if (*(*(v69 + 2) + 32) > 999)
  {
    goto LABEL_151;
  }

  v60 = *(v69 + 3);
  if (v60)
  {
    v77 = v69;
    v78 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v60, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v60, 1, &v78, &v77);
    }
  }

  if (*(v69 + 2) != 10)
  {
LABEL_151:
    v61 = ";\n";
    goto LABEL_152;
  }

  if (*(v43 + 1))
  {
    v61 = " { ... };\n";
LABEL_152:
    std::string::append(v42, v61);
    goto LABEL_153;
  }

  v67 = *(v69 + 3);
  if (!v67)
  {
    goto LABEL_180;
  }

  v78 = v69;
  if (atomic_load_explicit(v67, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v67, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v78);
  }

  if ((*(v69 + 2) & 0xFE) != 0xA)
  {
    v68 = 0;
  }

  else
  {
LABEL_180:
    v68 = *(v69 + 6);
  }

  google::protobuf::Descriptor::DebugString(v68, v44, v42, v43, 0);
LABEL_153:
  if (SHIBYTE(v88[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88[0].__r_.__value_.__l.__data_);
    google::protobuf::FieldOptions::~FieldOptions(&v79);
    if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_155:
      v62 = v95;
      if (!v95)
      {
        goto LABEL_156;
      }

LABEL_164:
      v64 = *(&v95 + 1);
      if (*(&v95 + 1) == v62)
      {
        *(&v95 + 1) = v62;
        operator delete(v62);
        if (SHIBYTE(v94) < 0)
        {
          goto LABEL_171;
        }
      }

      else
      {
        do
        {
          v65 = *(v64 - 1);
          v64 -= 3;
          if (v65 < 0)
          {
            operator delete(*v64);
          }
        }

        while (v64 != v62);
        *(&v95 + 1) = v62;
        operator delete(v95);
        if (SHIBYTE(v94) < 0)
        {
          goto LABEL_171;
        }
      }

LABEL_157:
      if ((SBYTE7(v93) & 0x80000000) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_172;
    }
  }

  else
  {
    google::protobuf::FieldOptions::~FieldOptions(&v79);
    if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_155;
    }
  }

  operator delete(v99.__r_.__value_.__l.__data_);
  v62 = v95;
  if (v95)
  {
    goto LABEL_164;
  }

LABEL_156:
  if ((SHIBYTE(v94) & 0x80000000) == 0)
  {
    goto LABEL_157;
  }

LABEL_171:
  operator delete(*(&v93 + 1));
  if ((SBYTE7(v93) & 0x80000000) == 0)
  {
LABEL_158:
    if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_173;
  }

LABEL_172:
  operator delete(v92);
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_159:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

LABEL_174:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_175;
  }

LABEL_173:
  operator delete(v74.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_174;
  }

LABEL_160:
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_161:
    v63 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_175:
  operator delete(__b.__r_.__value_.__l.__data_);
  v66 = *MEMORY[0x277D85DE8];
}

void sub_23CD784F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  _Unwind_Resume(a1);
}

void google::protobuf::OneofDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, __int16 *a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
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
  v34 = 0;
  *v33 = 0u;
  v32 = 0u;
  *v31 = 0u;
  *v30 = 0u;
  v35 = *a4;
  v36 = *(a4 + 2);
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
    SourceLocation = google::protobuf::OneofDescriptor::GetSourceLocation(a1, &v29);
  }

  else
  {
    SourceLocation = 0;
  }

  v28[0] = SourceLocation;
  size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  p_b = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __b.__r_.__value_.__l.__size_;
    p_b = __b.__r_.__value_.__r.__words[0];
  }

  v12 = *(a1 + 8);
  v13 = *(v12 + 23);
  v14 = v12[1];
  if ((v13 & 0x80u) != 0)
  {
    v12 = *v12;
    v13 = v14;
  }

  v39 = p_b;
  v40 = size;
  v41 = v12;
  v42 = v13;
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0oneof $1 {", 0xCuLL, &v39, 2uLL);
  google::protobuf::OneofOptions::OneofOptions(&v39, 0, *(a1 + 24));
  v15 = *(a1 + 32);
  if (v15 != &google::protobuf::_FeatureSet_default_instance_)
  {
    v43 |= 1u;
    v16 = v44;
    if (!v44)
    {
      v17 = v40;
      if (v40)
      {
        v17 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v17);
      v44 = v16;
    }

    google::protobuf::FeatureSet::CopyFrom(v16, v15);
  }

  if (*(a4 + 2) == 1)
  {
    std::string::append(a3, " ... }\n");
  }

  else
  {
    std::string::append(a3, "\n");
    if (*(a1 + 4) >= 1)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        google::protobuf::FieldDescriptor::DebugString((*(a1 + 48) + v18));
        ++v19;
        v18 += 88;
      }

      while (v19 < *(a1 + 4));
    }

    v20 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v21 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __b.__r_.__value_.__l.__size_;
      v21 = __b.__r_.__value_.__r.__words[0];
    }

    v45[0] = v21;
    v45[1] = v20;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0}\n", 4uLL, v45, 1uLL);
  }

  google::protobuf::OneofOptions::~OneofOptions(&v39);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = v33[0];
  if (v33[0])
  {
    v23 = v33[1];
    v24 = v33[0];
    if (v33[1] != v33[0])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = v33[0];
    }

    v33[1] = v22;
    operator delete(v24);
  }

  if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v31[0]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_46:
    operator delete(v30[0]);
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  operator delete(v31[1]);
  if (SHIBYTE(v31[0]) < 0)
  {
    goto LABEL_46;
  }

LABEL_43:
  if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_44:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_47:
  operator delete(__b.__r_.__value_.__l.__data_);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_23CD789F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  google::protobuf::SourceLocation::~SourceLocation((v34 + 8));
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL google::protobuf::anonymous namespace::FormatBracketedOptions(int a1, google::protobuf::MessageLite *a2, uint64_t a3, std::string *a4)
{
  __src = 0;
  v15 = 0;
  v16 = 0;
  v6 = __src;
  if (Options)
  {
    v7 = v15;
    absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(__src, v15, ", ", 2uLL, &__p);
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

    std::string::append(a4, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = v15;
  }

  if (v6)
  {
    if (v6 != v7)
    {
      v10 = v7;
      do
      {
        v11 = *(v10 - 1);
        v10 -= 3;
        if (v11 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v6);
    }

    operator delete(v6);
  }

  return v6 != v7;
}

void sub_23CD78B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void google::protobuf::FieldDescriptor::DebugString(google::protobuf::FieldDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::FieldDescriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::FieldDescriptor::DebugStringWithOptions(google::protobuf::FieldDescriptor *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v14[2] = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if ((*(this + 1) & 8) != 0)
  {
    v7 = *(*(this + 4) + 8);
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

    v14[0] = v8;
    v14[1] = v12;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "extend .$0 {\n", 0xDuLL, v14, 1uLL);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  google::protobuf::FieldDescriptor::DebugString(this, v6, a3, a2);
  if ((*(this + 1) & 8) != 0)
  {
    std::string::append(a3, "}\n");
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23CD78CA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t google::protobuf::FieldDescriptor::FieldTypeNameDebugString@<X0>(google::protobuf::FieldDescriptor *this@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *(this + 3);
  if (v4)
  {
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v27 = this;
    if (atomic_load_explicit(v4, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, &v29, &v27);
    }
  }

  v5 = *(this + 2);
  if ((v5 - 10) < 2)
  {
    v6 = *(this + 3);
    if (*(*(this + 2) + 32) <= 999)
    {
      if (!v6)
      {
        if (v5 == 10)
        {
          goto LABEL_37;
        }

        v29 = ".";
        v30 = 1;
LABEL_25:
        v16 = *(*(this + 6) + 8);
        v19 = *(v16 + 24);
        v17 = v16 + 24;
        v18 = v19;
        v20 = *(v17 + 8);
        if (*(v17 + 23) >= 0)
        {
          v21 = *(v17 + 23);
        }

        else
        {
          v17 = v18;
          v21 = v20;
        }

        v27 = v17;
        v28 = v21;
        result = absl::lts_20240722::StrCat(&v29, &v27, a2);
        goto LABEL_45;
      }

      v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v27 = this;
      if (atomic_load_explicit(v6, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v29, &v27);
      }

      v6 = *(this + 3);
      if (*(this + 2) == 10)
      {
        if (v6)
        {
          v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v27 = this;
          if (atomic_load_explicit(v6, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v29, &v27);
          }

          v7 = *(this + 2);
          goto LABEL_38;
        }

LABEL_37:
        v7 = 10;
LABEL_38:
        v23 = (&google::protobuf::FieldDescriptor::kTypeToName)[v7];
        result = strlen(v23);
        if (result > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v24 = result;
        if (result >= 0x17)
        {
          operator new();
        }

LABEL_40:
        *(a2 + 23) = v24;
        if (v24)
        {
          result = memmove(a2, v23, v24);
        }

        *(a2 + v24) = 0;
        goto LABEL_45;
      }
    }

    v29 = ".";
    v30 = 1;
    if (v6)
    {
      v26 = this;
      if (atomic_load_explicit(v6, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v26);
      }
    }

    goto LABEL_25;
  }

  if (v5 != 14)
  {
    v22 = *(this + 3);
    if (v22)
    {
      v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v27 = this;
      if (atomic_load_explicit(v22, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v22, 1, &v29, &v27);
      }

      v5 = *(this + 2);
    }

    v23 = (&google::protobuf::FieldDescriptor::kTypeToName)[v5];
    result = strlen(v23);
    if (result > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v24 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    goto LABEL_40;
  }

  v29 = ".";
  v30 = 1;
  v8 = *(this + 3);
  if (v8)
  {
    v27 = this;
    if (atomic_load_explicit(v8, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v27);
    }
  }

  v9 = *(*(this + 6) + 8);
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

  v27 = v10;
  v28 = v14;
  result = absl::lts_20240722::StrCat(&v29, &v27, a2);
LABEL_45:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}
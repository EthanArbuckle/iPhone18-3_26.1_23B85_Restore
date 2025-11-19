unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(google::protobuf::io::EpsCopyOutputStream *a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*a1 <= a4)
  {
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a4);
    a2 = v20;
    a3 = v21;
    a4 = v22;
    a1 = v19;
  }

  if (*(a3 + 23) >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = *(a3 + 8);
  }

  v5 = (8 * a2) | 2;
  if ((8 * a2) >= 0x80)
  {
    do
    {
      *a4++ = v5 | 0x80;
      v6 = v5 >> 7;
      v17 = v5 >> 14;
      v5 >>= 7;
    }

    while (v17);
  }

  else
  {
    LOBYTE(v6) = (8 * a2) | 2;
  }

  *a4 = v6;
  v7 = a4 + 1;
  v8 = v4;
  if (v4 >= 0x80)
  {
    do
    {
      *v7++ = v8 | 0x80;
      v18 = v8 >> 14;
      v8 >>= 7;
    }

    while (v18);
    a4 = v7 - 1;
  }

  v9 = a4 + 2;
  *v7 = v8;
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (*(a1 + 57) == 1)
  {
    v11 = v4;
    v12 = *a1 - v9;
    if (v12 + 16 <= v4)
    {
      v13 = a1;
      v14 = v10;
      v15 = google::protobuf::io::EpsCopyOutputStream::Trim(a1, a4 + 2);
      if ((*(**(v13 + 6) + 40))(*(v13 + 6), v14, v4))
      {
        return v15;
      }

      *(v13 + 56) = 1;
      result = v13 + 16;
      *v13 = v13 + 32;
      return result;
    }
  }

  else
  {
    v12 = *a1 - v9;
    v11 = v4;
  }

  if (v12 < v11)
  {
    v23 = a4 + 2;

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a1, v10, v4, v23);
  }

  else
  {
    memcpy(a4 + 2, v10, v4);
    return &v9[v11];
  }
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(google::protobuf::io::EpsCopyOutputStream *a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*a1 <= a4)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a4);
    a2 = v16;
    a3 = v17;
    a4 = v18;
    a1 = v15;
  }

  LODWORD(v4) = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  v5 = (8 * a2) | 2;
  if ((8 * a2) >= 0x80)
  {
    do
    {
      *a4++ = v5 | 0x80;
      v6 = v5 >> 7;
      v13 = v5 >> 14;
      v5 >>= 7;
    }

    while (v13);
  }

  else
  {
    LOBYTE(v6) = (8 * a2) | 2;
  }

  *a4 = v6;
  v7 = a4 + 1;
  v8 = v4;
  if (v4 >= 0x80)
  {
    do
    {
      *v7++ = v8 | 0x80;
      v14 = v8 >> 14;
      v8 >>= 7;
    }

    while (v14);
    a4 = v7 - 1;
  }

  v9 = a4 + 2;
  *v7 = v8;
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  v11 = v4;
  if (*a1 - v9 < v4)
  {
    v19 = a4 + 2;

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a1, v10, v4, v19);
  }

  else
  {
    memcpy(a4 + 2, v10, v4);
    return &v9[v11];
  }
}

const absl::lts_20240722::Cord *google::protobuf::io::EpsCopyOutputStream::WriteCordOutline(google::protobuf::io::EpsCopyOutputStream *this, const absl::lts_20240722::Cord *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  if (v3)
  {
    v4 = **(a2 + 1);
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4 >= 0x80)
  {
    do
    {
      *a3++ = v4 | 0x80;
      v6 = v4 >> 7;
      v7 = v4 >> 14;
      LODWORD(v4) = v4 >> 7;
    }

    while (v7);
    *a3 = v6;
    v5 = (a3 + 1);
  }

  else
  {
    *a3 = v4;
    v5 = (a3 + 1);
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteCord(this, a2, v5);
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<6ul>(unsigned __int8 *a1, void *a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 1);
  v3 = vmovl_u16(*&vmovl_u8(a3));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  *a2 = vaddvq_s64(vaddq_s64(vshlq_u64(v6, xmmword_23CE4EEF0), vshlq_u64(vandq_s8(v4, v5), xmmword_23CE4EEE0))) + (a1[5] << 35) + *a1 - 0x810204080;
  return a1 + 6;
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<7ul>(unsigned __int8 *a1, void *a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 2);
  v3 = vmovl_u16(*&vmovl_u8(a3));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  *a2 = vaddvq_s64(vaddq_s64(vshlq_u64(v6, xmmword_23CE4EF10), vshlq_u64(vandq_s8(v4, v5), xmmword_23CE4EF00))) + (a1[1] << 7) + (*a1 | (a1[6] << 42)) - 0x40810204080;
  return a1 + 7;
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<8ul>(unsigned __int8 *a1, void *a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 3);
  v3 = vmovl_u16(*&vmovl_u8(a3));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  *a2 = vaddvq_s64(vaddq_s64(vshlq_u64(v6, xmmword_23CE4EEE0), vshlq_u64(vandq_s8(v4, v5), xmmword_23CE4EF20))) + (a1[2] << 14) + ((a1[7] << 49) | (a1[1] << 7)) + *a1 - 0x2040810204080;
  return a1 + 8;
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<9ul>(unsigned __int8 *a1, void *a2)
{
  v2 = vmovl_u8(*(a1 + 1));
  v3 = vmovl_u16(*v2.i8);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  v5 = v4;
  v6 = vmovl_high_u16(v2);
  v4.i64[0] = v6.u32[2];
  v4.i64[1] = v6.u32[3];
  v7 = v4;
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v8 = v4;
  v4.i64[0] = v6.u32[0];
  v4.i64[1] = v6.u32[1];
  *a2 = vaddvq_s64(vaddq_s64(vorrq_s8(vshlq_u64(v8, xmmword_23CE4EEF0), vshlq_u64(v4, xmmword_23CE4EF20)), vorrq_s8(vshlq_u64(v5, xmmword_23CE4EEE0), vshlq_u64(v7, xmmword_23CE4EF30)))) + *a1 - 0x102040810204080;
  return a1 + 9;
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<10ul>(unsigned __int8 *a1, void *a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 1);
  v3 = vmovl_u16(*&vmovl_u8(a3));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  *a2 = vaddvq_s64(vaddq_s64(vshlq_u64(v6, xmmword_23CE4EF00), vshlq_u64(vandq_s8(v4, v5), xmmword_23CE4EF40))) + (a1[3] << 21) + (a1[2] << 14) + (a1[1] << 7) + (((a1[9] << 63) + (a1[8] << 56)) | *a1) + 0x7EFDFBF7EFDFBF80;
  return a1 + 10;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(uint64_t a1, const char **a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v8, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v8);
  if (*a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = "(null)";
  }

  v6 = strlen(v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v8);
  return a1;
}

void sub_23CD45630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD45644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::GeneratedExtensionFinder::Find(void *a1, unsigned int a2, _OWORD *a3)
{
  if (qword_2810C19D0)
  {
    v3 = 0;
    _X11 = *(qword_2810C19D0 + 16);
    __asm { PRFM            #4, [X11] }

    v9 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a1))) + *a1;
    v10 = (((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9)) + a2;
    v11 = ((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v10);
    v12 = *qword_2810C19D0;
    v13 = vdup_n_s8(v11 & 0x7F);
    v14 = ((v11 >> 7) ^ (_X11 >> 12)) & *qword_2810C19D0;
    v15 = *(_X11 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_3:
      v17 = *(qword_2810C19D0 + 24) + 48 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v12);
      if (*v17 == *a1 && *(v17 + 8) == a2)
      {
        v20 = *v17;
        v21 = *(v17 + 32);
        a3[1] = *(v17 + 16);
        a3[2] = v21;
        *a3 = v20;
        return 1;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v16);
LABEL_8:
    while (!*&vceq_s8(v15, 0x8080808080808080))
    {
      v3 += 8;
      v14 = (v3 + v14) & v12;
      v15 = *(_X11 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

__n128 google::protobuf::internal::anonymous namespace::Register(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2810C19E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C19E0))
  {
    operator new();
  }

  v2 = 0;
  v3 = qword_2810C19D8;
  qword_2810C19D0 = qword_2810C19D8;
  v4 = *(a1 + 8);
  _X10 = *(qword_2810C19D8 + 16);
  __asm { PRFM            #4, [X10] }

  v10 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a1))) + *a1;
  v11 = (((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v10)) + v4;
  v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
  v13 = *qword_2810C19D8;
  v14 = vdup_n_s8(v12 & 0x7F);
  v15 = ((v12 >> 7) ^ (_X10 >> 12)) & *qword_2810C19D8;
  v16 = *(_X10 + v15);
  for (i = vceq_s8(v16, v14); i; i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080)
  {
LABEL_3:
    v18 = *(qword_2810C19D8 + 24) + 48 * ((v15 + (__clz(__rbit64(i)) >> 3)) & v13);
    v19 = *v18;
    v20 = *(v18 + 8);
    if (v19 == *a1 && v20 == v4)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v29, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 78);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, "Multiple extension registrations for type ", 0x2BuLL);
      google::protobuf::MessageLite::GetTypeName(*a1, &v28);
      v23 = absl::lts_20240722::log_internal::LogMessage::operator<<(v29, &v28);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, ", field number ", 0x10uLL);
      v30 = *(a1 + 8);
      v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v23, &v30);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v24, ".");
      std::string::~string(&v28);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v29);
    }
  }

  while (1)
  {
    v22 = vceq_s8(v16, 0x8080808080808080);
    if (v22)
    {
      break;
    }

    v2 += 8;
    v15 = (v2 + v15) & v13;
    v16 = *(_X10 + v15);
    i = vceq_s8(v16, v14);
    if (i)
    {
      goto LABEL_3;
    }
  }

  result = *a1;
  v27 = *(a1 + 32);
  *(v25 + 16) = *(a1 + 16);
  *(v25 + 32) = v27;
  *v25 = result;
  return result;
}

void sub_23CD45A04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&a15);
}

double google::protobuf::internal::ExtensionSet::RegisterMessageExtension(uint64_t a1, int a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a3 & 0xFE) != 0xA)
  {
    google::protobuf::internal::ExtensionSet::RegisterMessageExtension(&v9);
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a8;
  v17 = 0;
  v18 = a7;
  v15 = a6;
  v16 = 0;
  return result;
}

void google::protobuf::internal::ExtensionSet::~ExtensionSet(google::protobuf::internal::ExtensionSet *this)
{
  if (!*this)
  {
    v2 = *(this + 5);
    v3 = *(this + 2);
    if (v2 < 0)
    {
      google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::~()::$_0>(**v3, 0, *(v3 + 8), *(*(v3 + 8) + 10));
    }

    else if (*(this + 5))
    {
      v4 = 32 * v2;
      v5 = (v3 + 8);
      do
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(v5);
        v5 = (v5 + 32);
        v4 -= 32;
      }

      while (v4);
    }

    v6 = *(this + 2);
    if (*(this + 5) < 0)
    {
      if (v6)
      {
        v7 = *(this + 2);
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::clear(v6);
        MEMORY[0x23EED9460](v7, 0x1020C4062D53EE8);
      }
    }

    else
    {
      operator delete[](v6);
    }
  }
}

uint64_t google::protobuf::internal::ExtensionSet::Has(int **this, int a2)
{
  v2 = *(this + 5);
  if (*(this + 5))
  {
    if ((v2 & 0x8000) != 0)
    {
      v10 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
      if (!v10)
      {
LABEL_10:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }

    else
    {
      v3 = this[2];
      v4 = 32 * v2 - 32;
      if (v4)
      {
        v5 = v4 >> 5;
        do
        {
          v6 = v5 >> 1;
          v7 = &v3[8 * (v5 >> 1)];
          v9 = *v7;
          v8 = v7 + 8;
          v5 += ~(v5 >> 1);
          if (v9 < a2)
          {
            v3 = v8;
          }

          else
          {
            v5 = v6;
          }
        }

        while (v5);
      }

      v11 = *v3;
      v10 = (v3 + 2);
      if (v11 != a2)
      {
        goto LABEL_10;
      }
    }

    LOBYTE(v2) = *(v10 + 10) ^ 1;
  }

  return v2 & 1;
}

_DWORD *google::protobuf::internal::ExtensionSet::FindOrNull(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 5);
  if (!*(this + 5))
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    return google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
  }

  v3 = *(this + 2);
  v4 = 32 * v2 - 32;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  v11 = *v3;
  v10 = v3 + 2;
  if (v11 == a2)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSize(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 5);
  if (!*(this + 5))
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    v10 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (v10)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v3 = *(this + 2);
  v4 = 32 * v2 - 32;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  v11 = *v3;
  v10 = (v3 + 2);
  if (v11 != a2)
  {
    return 0;
  }

LABEL_12:

  return google::protobuf::internal::ExtensionSet::Extension::GetSize(v10);
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::GetSize(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (v1 <= 5)
  {
    if (v1 > 2 || v1 == 1 || v1 == 2)
    {
      return **this;
    }

LABEL_11:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v3, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 1500);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v3, "Can't get here.");
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v3);
  }

  if (v1 > 8)
  {
    if (v1 == 9 || v1 == 10)
    {
      return *(*this + 8);
    }

    goto LABEL_11;
  }

  return **this;
}

int *google::protobuf::internal::ExtensionSet::ClearExtension(int *this, int a2)
{
  v2 = *(this + 5);
  if (!*(this + 5))
  {
    return this;
  }

  if ((v2 & 0x8000) != 0)
  {
    this = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (!this)
    {
      return this;
    }

    goto LABEL_12;
  }

  v3 = *(this + 2);
  v4 = 32 * v2 - 32;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  v10 = *v3;
  this = v3 + 2;
  if (v10 == a2)
  {
LABEL_12:

    return google::protobuf::internal::ExtensionSet::Extension::Clear(this);
  }

  return this;
}

int *google::protobuf::internal::ExtensionSet::Extension::Clear(int *this)
{
  if (*(this + 9) == 1)
  {
    v2 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
    if (v2 > 5)
    {
      if (v2 <= 8)
      {
LABEL_19:
        **this = 0;
        return this;
      }

      if (v2 == 9)
      {
        this = *this;
        if (this[2] >= 1)
        {

          return google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(this);
        }
      }

      else if (v2 == 10)
      {
        this = *this;
        if (this[2] >= 1)
        {

          return google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this);
        }
      }
    }

    else if (v2 > 2 || v2 == 1 || v2 == 2)
    {
      goto LABEL_19;
    }
  }

  else if ((*(this + 10) & 1) == 0)
  {
    v3 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
    if (v3 == 10)
    {
      v5 = this;
      v6 = **this;
      if ((*(this + 10) & 0x10) != 0)
      {
        (*(v6 + 128))();
      }

      else
      {
        (*(v6 + 24))();
      }

      this = v5;
    }

    else if (v3 == 9)
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 1) = 0;
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
      }
    }

    *(this + 10) = *(this + 10) & 0xF0 | 1;
  }

  return this;
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetInt32(google::protobuf::internal::ExtensionSet *this, int a2, google::protobuf::internal::ExtensionSet *a3)
{
  v4 = *(this + 5);
  if (!*(this + 5))
  {
    return a3;
  }

  if ((v4 & 0x8000) != 0)
  {
    v12 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (!v12)
    {
      return a3;
    }

    goto LABEL_10;
  }

  v5 = *(this + 2);
  v6 = 32 * v4 - 32;
  if (v6)
  {
    v7 = v6 >> 5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[8 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        v5 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  v13 = *v5;
  v12 = v5 + 2;
  if (v13 == a2)
  {
LABEL_10:
    if ((v12[10] & 1) == 0)
    {
      return *v12;
    }
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::MaybeNewExtension(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::internal::ExtensionSet::Extension **a4)
{
  v6 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *a4 = v6;
  *(v6 + 2) = a3;
  return v7 & 1;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 4 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 342);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 4 * a3);
}

void *google::protobuf::internal::ExtensionSet::AddInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    result[1] = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v16 = HIDWORD(*result);
  v17 = *result;
  if (v17 == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<int>::Grow(result, v16, (v16 + 1));
    result = v19;
    v17 = *v19;
  }

  v18 = result[1];
  *result = v17 + 1;
  *(v18 + 4 * v17) = a5;
  return result;
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetInt64(google::protobuf::internal::ExtensionSet *this, int a2, google::protobuf::internal::ExtensionSet *a3)
{
  v4 = *(this + 5);
  if (!*(this + 5))
  {
    return a3;
  }

  if ((v4 & 0x8000) != 0)
  {
    v12 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (!v12)
    {
      return a3;
    }

    goto LABEL_10;
  }

  v5 = *(this + 2);
  v6 = 32 * v4 - 32;
  if (v6)
  {
    v7 = v6 >> 5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[8 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        v5 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  v13 = *v5;
  v12 = v5 + 2;
  if (v13 == a2)
  {
LABEL_10:
    if ((v12[10] & 1) == 0)
    {
      return *v12;
    }
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, uint64_t a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 8 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 343);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 8 * a3);
}

_DWORD *google::protobuf::internal::ExtensionSet::AddInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, uint64_t a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    *(result + 1) = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v17 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<long long>::Grow(result, v16);
    result = v19;
    v17 = *v19;
  }

  v18 = *(result + 1);
  *result = v17 + 1;
  *(v18 + 8 * v17) = a5;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 4 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 344);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 4 * a3);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 8 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 345);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 8 * a3);
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetFloat(google::protobuf::internal::ExtensionSet *this, int a2, float a3)
{
  v3 = *(this + 5);
  if (*(this + 5))
  {
    if ((v3 & 0x8000) != 0)
    {
      this = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
      if (!this)
      {
        return this;
      }

      goto LABEL_10;
    }

    v4 = *(this + 2);
    v5 = 32 * v3 - 32;
    if (v5)
    {
      v6 = v5 >> 5;
      do
      {
        v7 = v6 >> 1;
        v8 = &v4[8 * (v6 >> 1)];
        v10 = *v8;
        v9 = v8 + 8;
        v6 += ~(v6 >> 1);
        if (v10 < a2)
        {
          v4 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
    }

    v11 = *v4;
    this = (v4 + 2);
    if (v11 == a2)
    {
LABEL_10:
      if ((*(this + 10) & 1) == 0)
      {
        v12 = *this;
      }
    }
  }

  return this;
}

char *google::protobuf::internal::ExtensionSet::SetFloat(google::protobuf::internal::ExtensionSet *this, int a2, char a3, float a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

float google::protobuf::internal::ExtensionSet::GetRepeatedFloat(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 4 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 346);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 4 * a3);
}

_DWORD *google::protobuf::internal::ExtensionSet::AddFloat(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, float a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    *(result + 1) = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v17 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<int>::Grow(result, v16, (v16 + 1));
    result = v19;
    v17 = *v19;
  }

  v18 = *(result + 1);
  *result = v17 + 1;
  *(v18 + 4 * v17) = a5;
  return result;
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetDouble(google::protobuf::internal::ExtensionSet *this, int a2, double a3)
{
  v3 = *(this + 5);
  if (*(this + 5))
  {
    if ((v3 & 0x8000) != 0)
    {
      this = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
      if (!this)
      {
        return this;
      }

      goto LABEL_10;
    }

    v4 = *(this + 2);
    v5 = 32 * v3 - 32;
    if (v5)
    {
      v6 = v5 >> 5;
      do
      {
        v7 = v6 >> 1;
        v8 = &v4[8 * (v6 >> 1)];
        v10 = *v8;
        v9 = v8 + 8;
        v6 += ~(v6 >> 1);
        if (v10 < a2)
        {
          v4 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
    }

    v11 = *v4;
    this = (v4 + 2);
    if (v11 == a2)
    {
LABEL_10:
      if ((*(this + 10) & 1) == 0)
      {
        v12 = *this;
      }
    }
  }

  return this;
}

char *google::protobuf::internal::ExtensionSet::SetDouble(google::protobuf::internal::ExtensionSet *this, int a2, char a3, double a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

double google::protobuf::internal::ExtensionSet::GetRepeatedDouble(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 8 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 347);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 8 * a3);
}

_DWORD *google::protobuf::internal::ExtensionSet::AddDouble(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, double a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    *(result + 1) = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v17 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<long long>::Grow(result, v16);
    result = v19;
    v17 = *v19;
  }

  v18 = *(result + 1);
  *result = v17 + 1;
  *(v18 + 8 * v17) = a5;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    return a3 & 1;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (!v11)
    {
      return a3 & 1;
    }

    goto LABEL_10;
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 == a2)
  {
LABEL_10:
    if ((v11[10] & 1) == 0)
    {
      a3 = *v11;
    }
  }

  return a3 & 1;
}

char *google::protobuf::internal::ExtensionSet::SetBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedBool(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 348);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + a3);
}

_DWORD *google::protobuf::internal::ExtensionSet::AddBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, char a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    *(result + 1) = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v17 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<BOOL>::Grow(result, v16, (v16 + 1));
    result = v19;
    v17 = *v19;
  }

  v18 = *(result + 1);
  *result = v17 + 1;
  *(v18 + v17) = a5;
  return result;
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetRawRepeatedField(int **this, int a2, google::protobuf::internal::ExtensionSet *a3)
{
  v4 = *(this + 5);
  if (*(this + 5))
  {
    if ((v4 & 0x8000) != 0)
    {
      v12 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
      if (!v12)
      {
        return a3;
      }

      return *v12;
    }

    v5 = this[2];
    v6 = 32 * v4 - 32;
    if (v6)
    {
      v7 = v6 >> 5;
      do
      {
        v8 = v7 >> 1;
        v9 = &v5[8 * (v7 >> 1)];
        v11 = *v9;
        v10 = v9 + 8;
        v7 += ~(v7 >> 1);
        if (v11 < a2)
        {
          v5 = v10;
        }

        else
        {
          v7 = v8;
        }
      }

      while (v7);
    }

    v13 = *v5;
    v12 = (v5 + 2);
    if (v13 == a2)
    {
      return *v12;
    }
  }

  return a3;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(google::protobuf::internal::ExtensionSet *this, int a2, int a3, char a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  *(v9 + 2) = a5;
  if (v11)
  {
    v9[9] = 1;
    v9[8] = a3;
    v9[11] = a4;
    v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3];
    if (v12 > 5)
    {
      if (v12 <= 8)
      {
LABEL_12:
        v15 = *this;
        if (!v15)
        {
          operator new();
        }

        v14 = google::protobuf::Arena::Allocate(v15);
        *v14 = 0;
        v14[1] = v15;
LABEL_14:
        *v10 = v14;
        return *v10;
      }

      if (v12 == 9 || v12 == 10)
      {
        v13 = *this;
        if (!v13)
        {
          operator new();
        }

        v14 = google::protobuf::Arena::Allocate(v13);
        *v14 = 0;
        v14[1] = 0;
        v14[2] = v13;
        goto LABEL_14;
      }
    }

    else if (v12 > 2 || v12 == 1 || v12 == 2)
    {
      goto LABEL_12;
    }
  }

  return *v10;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedEnum(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 4 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 477);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 4 * a3);
}

void *google::protobuf::internal::ExtensionSet::MutableString(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  *(v7 + 2) = a4;
  if (v9)
  {
    v7[8] = a3;
    v7[9] = 0;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(*this);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *v8 = result;
  }

  else
  {
    result = *v7;
  }

  v8[10] &= 0xF0u;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedString(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_14;
  }

  if ((v3 & 0x8000) != 0)
  {
    v16 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v16;
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_14:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v17, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 546);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v17);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_14;
  }

LABEL_10:
  v13 = *v11;
  v14 = **v11;
  if (v14)
  {
    v13 = (v14 + 8 * a3 + 7);
  }

  return *v13;
}

void *google::protobuf::internal::ExtensionSet::AddString(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  *(v7 + 2) = a4;
  if (v9)
  {
    v7[8] = a3;
    v7[9] = 1;
    v7[11] = 0;
    v10 = *this;
    if (!v10)
    {
      operator new();
    }

    v11 = google::protobuf::Arena::Allocate(v10);
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = v10;
    *v8 = v11;
  }

  else
  {
    v11 = *v7;
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::AddString(v11);
}

const google::protobuf::MessageLite *google::protobuf::internal::ExtensionSet::GetMessage(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    return a3;
  }

  if ((v3 & 0x8000) != 0)
  {
    v13 = this;
    v18 = a3;
    v19 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v18;
    v11 = v19;
    if (!v19)
    {
      return a3;
    }
  }

  else
  {
    v4 = *(this + 2);
    v5 = 32 * v3 - 32;
    if (v5)
    {
      v6 = v5 >> 5;
      do
      {
        v7 = v6 >> 1;
        v8 = &v4[8 * (v6 >> 1)];
        v10 = *v8;
        v9 = v8 + 8;
        v6 += ~(v6 >> 1);
        if (v10 < a2)
        {
          v4 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
    }

    v12 = *v4;
    v11 = v4 + 2;
    if (v12 != a2)
    {
      return a3;
    }

    v13 = this;
  }

  v14 = *v11;
  if ((v11[10] & 0x10) == 0)
  {
    return *v11;
  }

  v16 = *v13;
  v17 = *(*v14 + 24);

  return v17();
}

uint64_t google::protobuf::internal::ExtensionSet::MutableMessage(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::MessageLite *a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(v9 + 2) = a5;
  if (v10)
  {
    v9[8] = a3;
    v9[9] = 0;
    v9[10] &= 0xFu;
    v11 = *this;
    v12 = v9;
    result = (*(*a4 + 16))(a4, v11);
    *v12 = result;
    v12[10] &= 0xF0u;
  }

  else
  {
    v14 = v9[10];
    v9[10] = v14 & 0xF0;
    result = *v9;
    if ((v14 & 0x10) != 0)
    {
      v15 = *this;
      v16 = *(*result + 32);

      return v16();
    }
  }

  return result;
}

int *google::protobuf::internal::ExtensionSet::UnsafeArenaSetAllocatedMessage(int *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4, google::protobuf::MessageLite *a5)
{
  v5 = this;
  if (a5)
  {
    this = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    *(this + 2) = a4;
    if (v9)
    {
      *(this + 8) = a3;
      *(this + 9) = 0;
      *(this + 10) &= 0xFu;
    }

    else
    {
      if ((*(this + 10) & 0x10) != 0)
      {
        v20 = *v5;
        v21 = this;
        (*(**this + 48))(*this, a5, v20);
        this = v21;
        goto LABEL_22;
      }

      if (!*v5)
      {
        if (*this)
        {
          v19 = this;
          (*(**this + 8))(*this);
          this = v19;
        }
      }
    }

    *this = a5;
LABEL_22:
    *(this + 10) &= 0xF0u;
    return this;
  }

  v10 = *(this + 5);
  if (!*(this + 5))
  {
    return this;
  }

  if ((v10 & 0x8000) != 0)
  {
    this = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (!this)
    {
      return this;
    }

    goto LABEL_13;
  }

  v11 = *(this + 2);
  v12 = 32 * v10 - 32;
  if (v12)
  {
    v13 = v12 >> 5;
    do
    {
      v14 = v13 >> 1;
      v15 = &v11[8 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 8;
      v13 += ~(v13 >> 1);
      if (v17 < a2)
      {
        v11 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
  }

  v18 = *v11;
  this = v11 + 2;
  if (v18 == a2)
  {
LABEL_13:

    return google::protobuf::internal::ExtensionSet::Extension::Clear(this);
  }

  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::Erase(uint64_t this, int a2)
{
  v11 = a2;
  v2 = *(this + 10);
  v3 = *(this + 16);
  if (v2 < 0)
  {
    return absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>>::erase<int>(*(this + 16), &v11);
  }

  v4 = &v3[32 * v2];
  if (*(this + 10))
  {
    v5 = *(this + 10);
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[32 * (v5 >> 1)];
      v9 = *v7;
      v8 = (v7 + 8);
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  if (v3 != v4 && *v3 == a2)
  {
    if (v4 != v3 + 32)
    {
      v10 = this;
      memmove(v3, v3 + 32, v4 - (v3 + 32));
      this = v10;
      LOWORD(v2) = *(v10 + 10);
    }

    *(this + 10) = v2 - 1;
  }

  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_14;
  }

  if ((v3 & 0x8000) != 0)
  {
    v16 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v16;
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_14:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v17, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 764);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v17);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_14;
  }

LABEL_10:
  v13 = *v11;
  v14 = **v11;
  if (v14)
  {
    v13 = (v14 + 8 * a3 + 7);
  }

  return *v13;
}

void *google::protobuf::internal::ExtensionSet::AddMessage(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::MessageLite *a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  *(v9 + 2) = a5;
  if (v11)
  {
    v9[8] = a3;
    v9[9] = 1;
    v12 = *this;
    if (!*this)
    {
      operator new();
    }

    v13 = google::protobuf::Arena::Allocate(*this);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = v12;
    *v10 = v13;
    v14 = *(v13 + 2);
    v15 = *v13;
    if (*v13)
    {
LABEL_4:
      if (v14 >= *(v15 - 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v13 = *v9;
    v14 = *(*v10 + 8);
    v15 = **v10;
    if (v15)
    {
      goto LABEL_4;
    }
  }

  if (v14 >= (v15 != 0))
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v13 + 2) = v14 + 1;
  v16 = (v15 + 8 * v14 + 7);
  if ((v15 & 1) == 0)
  {
    v16 = v13;
  }

  v17 = *v16;
  if (*v16)
  {
    return v17;
  }

LABEL_12:
  v17 = (*(*a4 + 16))(a4, *this);
  v19 = *v10;
  v20 = v17[1];
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    v21 = v19[2];
    if (v21 != v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = v19[2];
    if (v21 != v20)
    {
LABEL_14:
      google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v19, v17, v20, v21);
      return v17;
    }
  }

  v22 = *v19;
  if ((*v19 & 1) == 0)
  {
    if (v22)
    {
      goto LABEL_14;
    }

    v23 = *(v19 + 2);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *v10;
      goto LABEL_25;
    }

    v25 = 0;
    v28 = &v19[v23];
    v24 = *v10;
    goto LABEL_24;
  }

  v27 = *(v22 - 1);
  v26 = v22 - 1;
  v25 = v27;
  if (v27 > *(v19 + 3))
  {
    goto LABEL_14;
  }

  v24 = (v26 + 8);
  v23 = *(v19 + 2);
  if (v23 < v25)
  {
    v28 = &v24[v23];
LABEL_24:
    v24[v25] = *v28;
  }

LABEL_25:
  *(v19 + 2) = v23 + 1;
  v24[v23] = v17;
  if ((*v19 & 1) == 0)
  {
    return v17;
  }

  ++*(*v19 - 1);
  return v17;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::RemoveLast(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_31;
  }

  if ((v2 & 0x8000) != 0)
  {
    result = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_31:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v21, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 811);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v21);
  }

  v3 = *(this + 2);
  v4 = 32 * v2 - 32;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  v11 = *v3;
  result = (v3 + 2);
  if (v11 != a2)
  {
    goto LABEL_31;
  }

LABEL_10:
  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[result[8]];
  if (v12 > 5)
  {
    if (v12 <= 8)
    {
LABEL_24:
      --**result;
      return result;
    }

    if (v12 == 9)
    {
      v17 = *result;
      v18 = *(*result + 8) - 1;
      v17[2] = v18;
      v19 = *v17 + 8 * v18 + 7;
      if (*v17)
      {
        v17 = v19;
      }

      v20 = *v17;
      if (*(v20 + 23) < 0)
      {
        **v20 = 0;
        *(v20 + 8) = 0;
      }

      else
      {
        *v20 = 0;
        *(v20 + 23) = 0;
      }
    }

    else if (v12 == 10)
    {
      v13 = *result;
      v14 = *(*result + 8) - 1;
      v13[2] = v14;
      v15 = *v13 + 8 * v14 + 7;
      if (*v13)
      {
        v13 = v15;
      }

      v16 = *(**v13 + 24);

      return v16();
    }
  }

  else if (v12 > 2 || v12 == 1 || v12 == 2)
  {
    goto LABEL_24;
  }

  return result;
}

int *google::protobuf::internal::ExtensionSet::Clear(google::protobuf::internal::ExtensionSet *this)
{
  v1 = *(this + 5);
  result = *(this + 2);
  if (v1 < 0)
  {
    return google::protobuf::internal::ExtensionSet::Clear(result);
  }

  if (v1)
  {
    v3 = 32 * v1;
    v4 = result + 2;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Clear(v4);
      v4 += 8;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t google::protobuf::internal::anonymous namespace::SizeOfUnion<google::protobuf::internal::ExtensionSet::KeyValue *,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>>(char *a1, char *a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5, int a6)
{
  if (a1 != a2)
  {
    v6 = 0;
    while (1)
    {
      if (a3 == a5 && a4 == a6)
      {
        goto LABEL_30;
      }

      v7 = &a3[32 * a4];
      v9 = *(v7 + 4);
      v8 = v7 + 16;
      v10 = *a1 == v9;
      if (*a1 < v9)
      {
        ++v6;
        a1 += 32;
      }

      else
      {
        if (v10)
        {
          ++v6;
          a1 += 32;
          if (a3[11])
          {
            if (++a4 == a3[10])
            {
              v11 = a3;
              while (1)
              {
                v12 = *v11;
                if (*(*v11 + 11))
                {
                  break;
                }

                v13 = v11[8];
                v11 = *v11;
                if (v13 != v12[10])
                {
LABEL_21:
                  a3 = v12;
                  a4 = v13;
                  goto LABEL_4;
                }
              }
            }

            goto LABEL_4;
          }

          v15 = &a3[8 * (a4 + 1) + 240];
          do
          {
            a3 = *v15;
            v16 = *(*v15 + 11);
            v15 = *v15 + 240;
          }

          while (!v16);
        }

        else
        {
          v6 += (v8[18] & 1) == 0;
          if (a3[11])
          {
            if (++a4 == a3[10])
            {
              v14 = a3;
              while (1)
              {
                v12 = *v14;
                if (*(*v14 + 11))
                {
                  break;
                }

                v13 = v14[8];
                v14 = *v14;
                if (v13 != v12[10])
                {
                  goto LABEL_21;
                }
              }
            }

            goto LABEL_4;
          }

          v17 = &a3[8 * (a4 + 1) + 240];
          do
          {
            a3 = *v17;
            v18 = *(*v17 + 11);
            v17 = *v17 + 240;
          }

          while (!v18);
        }

        a4 = 0;
      }

LABEL_4:
      if (a1 == a2)
      {
        a1 = a2;
        goto LABEL_30;
      }
    }
  }

  v6 = 0;
LABEL_30:
  result = v6 + ((a2 - a1) >> 5);
  while (a3 != a5 || a6 != a4)
  {
    v20 = a3;
    v21 = a4;
    if (a3[11])
    {
      if (++a4 == a3[10])
      {
        v22 = a3;
        while (1)
        {
          a3 = *v22;
          if (*(*v22 + 11))
          {
            break;
          }

          v23 = v22[8];
          v22 = *v22;
          if (v23 != a3[10])
          {
            a4 = v23;
            goto LABEL_32;
          }
        }
      }

      a3 = v20;
    }

    else
    {
      v24 = &a3[8 * (a4 + 1) + 240];
      do
      {
        a3 = *v24;
        v25 = *(*v24 + 11);
        v24 = *v24 + 240;
      }

      while (!v25);
      a4 = 0;
    }

LABEL_32:
    result += (v20[32 * v21 + 34] & 1) == 0;
  }

  return result;
}

void google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, int a3, const google::protobuf::internal::ExtensionSet::Extension *a4, google::protobuf::Arena *a5)
{
  if (*(a4 + 9) != 1)
  {
    if (*(a4 + 10))
    {
      return;
    }

    v15 = *(a4 + 8);
    v16 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v15];
    if (v16 <= 5)
    {
      if (v16 <= 2)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            return;
          }

LABEL_73:
          v57 = *a4;
          v58 = *(a4 + 2);
          v59 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
          *(v59 + 2) = v58;
          if (v60)
          {
            v59[8] = v15;
            v59[9] = 0;
          }

          v59[10] &= 0xF0u;
          *v59 = v57;
          return;
        }
      }

      else if (v16 != 3)
      {
        if (v16 != 4)
        {
          v17 = *a4;
          v18 = *(a4 + 2);
          v19 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
          *(v19 + 2) = v18;
          if (v20)
          {
            v19[8] = v15;
            v19[9] = 0;
          }

          v19[10] &= 0xF0u;
          *v19 = v17;
          return;
        }

        goto LABEL_73;
      }

LABEL_76:
      v61 = *a4;
      v62 = *(a4 + 2);
      v63 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
      *(v63 + 2) = v62;
      if (v64)
      {
        v63[8] = v15;
        v63[9] = 0;
      }

      v63[10] &= 0xF0u;
      *v63 = v61;
      return;
    }

    if (v16 <= 7)
    {
      if (v16 == 6)
      {
        v107 = *a4;
        v108 = *(a4 + 2);
        v109 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
        *(v109 + 2) = v108;
        if (v110)
        {
          v109[8] = v15;
          v109[9] = 0;
        }

        v109[10] &= 0xF0u;
        *v109 = v107;
      }

      else
      {
        v65 = *a4;
        v66 = *(a4 + 2);
        v67 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
        *(v67 + 2) = v66;
        if (v68)
        {
          v67[8] = v15;
          v67[9] = 0;
        }

        v67[10] &= 0xF0u;
        *v67 = v65;
      }

      return;
    }

    if (v16 == 8)
    {
      goto LABEL_76;
    }

    if (v16 == 9)
    {
      v195 = *a4;
      if (*(*a4 + 23) < 0)
      {
        v217 = a3;
        std::string::__init_copy_ctor_external(&v245, *v195, *(v195 + 1));
        a3 = v217;
      }

      else
      {
        v196 = *v195;
        v245.__r_.__value_.__r.__words[2] = *(v195 + 2);
        *&v245.__r_.__value_.__l.__data_ = v196;
      }

      v218 = *(a4 + 2);
      v219 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
      v220 = v219;
      *(v219 + 2) = v218;
      if (v221)
      {
        v219[8] = v15;
        v219[9] = 0;
        if (!*this)
        {
          operator new();
        }

        v222 = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(*this);
        *v222 = 0;
        *(v222 + 8) = 0;
        *(v222 + 16) = 0;
        *v220 = v222;
      }

      else
      {
        v222 = *v219;
      }

      v220[10] &= 0xF0u;
      if (*(v222 + 23) < 0)
      {
        operator delete(*v222);
      }

      v223 = *&v245.__r_.__value_.__l.__data_;
      *(v222 + 16) = *(&v245.__r_.__value_.__l + 2);
      *v222 = v223;
      return;
    }

    if (v16 != 10)
    {
      return;
    }

    v28 = *this;
    v29 = *(a4 + 2);
    v30 = a3;
    v31 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
    v32 = v31;
    *(v31 + 2) = v29;
    if (v33)
    {
      v31[8] = *(a4 + 8);
      v31[11] = *(a4 + 11);
      v31[9] = 0;
      v34 = v31[10] & 0xF;
      if ((*(a4 + 10) & 0x10) == 0)
      {
        v31[10] = v34;
        v35 = (*(**a4 + 16))(*a4, v28);
        *v32 = v35;
LABEL_205:
        (*(*v35 + 40))(v35, *a4);
LABEL_219:
        v32[10] &= 0xF0u;
        return;
      }

      v31[10] = v34 | 0x10;
      v31 = (*(**a4 + 16))(*a4, v28);
      v214 = v31;
      *v32 = v31;
LABEL_218:
      PrototypeForLazyMessage = google::protobuf::internal::ExtensionSet::GetPrototypeForLazyMessage(v31, a2, v30);
      (*(*v214 + 112))(v214, PrototypeForLazyMessage, *a4, v28);
      goto LABEL_219;
    }

    v213 = v31[10];
    v214 = *v31;
    if ((*(a4 + 10) & 0x10) != 0)
    {
      if ((v31[10] & 0x10) != 0)
      {
        goto LABEL_218;
      }

      v215 = (*(**a4 + 24))(*a4, *v31, a5);
      v216 = *v214;
    }

    else
    {
      v215 = *a4;
      v216 = *v214;
      if ((v31[10] & 0x10) != 0)
      {
        v35 = (*(v216 + 32))(*v31, v215, v28);
        goto LABEL_205;
      }
    }

    (*(v216 + 40))(v214, v215);
    goto LABEL_219;
  }

  v7 = *(a4 + 2);
  v8 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
  v10 = v8;
  *(v8 + 2) = v7;
  v11 = *(a4 + 8);
  if (v9)
  {
    v8[8] = v11;
    v8[11] = *(a4 + 11);
    v8[9] = 1;
  }

  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v11];
  if (v12 > 5)
  {
    if (v12 > 7)
    {
      if (v12 == 8)
      {
        if (v9)
        {
          v75 = *this;
          if (!v75)
          {
            operator new();
          }

          v76 = google::protobuf::Arena::Allocate(v75);
          *v76 = 0;
          *(v76 + 1) = v75;
          *v10 = v76;
        }

        else
        {
          v76 = *v8;
        }

        v162 = *a4;
        v163 = **a4;
        if (v163)
        {
          v164 = *v76;
          v165 = (v164 + v163);
          if (v76[1] < v165)
          {
            v242 = v76;
            google::protobuf::RepeatedField<int>::Grow(v76, v164, v165);
            LODWORD(v164) = *v242;
            v166 = *(v242 + 1);
            *v242 += v163;
            if (v163 < 1)
            {
              return;
            }
          }

          else
          {
            v166 = *(v76 + 1);
            *v76 = v165;
            if (v163 < 1)
            {
              return;
            }
          }

          v167 = *(v162 + 8);
          v168 = (v166 + 4 * v164);
          if (v163 < 8)
          {
            goto LABEL_173;
          }

          v169 = 4 * v164 + v166;
          if ((v169 - v167) < 0x20)
          {
            goto LABEL_173;
          }

          v170 = v163;
          v171 = v163 & 0x7FFFFFF8;
          LODWORD(v163) = v163 - (v163 & 0x7FFFFFF8);
          v168 += v171;
          v172 = &v167[v171];
          v173 = (v167 + 4);
          v174 = (v169 + 16);
          v175 = v171;
          do
          {
            v176 = *v173;
            *(v174 - 1) = *(v173 - 1);
            *v174 = v176;
            v173 += 2;
            v174 += 2;
            v175 -= 8;
          }

          while (v175);
          v167 = v172;
          if (v171 != v170)
          {
LABEL_173:
            v177 = v163 + 1;
            do
            {
              v178 = *v167++;
              *v168++ = v178;
              --v177;
            }

            while (v177 > 1);
          }
        }

        return;
      }

      if (v12 == 9)
      {
        if (v9)
        {
          v79 = *this;
          if (!v79)
          {
            operator new();
          }

          v80 = google::protobuf::Arena::Allocate(v79);
          *v80 = 0;
          v80[1] = 0;
          v80[2] = v79;
          *v10 = v80;
        }

        v81 = *a4;
        if (*(*a4 + 8))
        {
          v82 = *v10;

          google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(v82, v81);
        }

        return;
      }

      if (v12 != 10)
      {
        return;
      }

      v21 = *this;
      if (v9)
      {
        if (!v21)
        {
          operator new();
        }

        v22 = google::protobuf::Arena::Allocate(v21);
        *v22 = 0;
        v22[1] = 0;
        v22[2] = v21;
        *v10 = v22;
      }

      v23 = *a4;
      if (*(*a4 + 8) < 1)
      {
        return;
      }

      v24 = 0;
      for (i = 8; ; i += 8)
      {
        if (*v23)
        {
          v36 = (*v23 + i - 1);
        }

        else
        {
          v36 = v23;
        }

        v37 = *v10;
        v38 = **v10;
        if (v38)
        {
          v39 = *v36;
          v40 = *(v37 + 8);
          if (v40 >= *(v38 - 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v39 = *v36;
          v40 = *(v37 + 8);
          if (v40 >= (v38 != 0))
          {
            goto LABEL_48;
          }
        }

        *(v37 + 8) = v40 + 1;
        v41 = v38 + 8 * v40 + 7;
        if (v38)
        {
          v37 = v41;
        }

        v42 = *v37;
        if (*v37)
        {
          goto LABEL_37;
        }

LABEL_48:
        v42 = (*(*v39 + 16))(v39, v21);
        v43 = v42[1];
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          v44 = *v10;
          v45 = *(*v10 + 16);
          if (v45 != v43)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v44 = *v10;
          v45 = *(*v10 + 16);
          if (v45 != v43)
          {
            goto LABEL_36;
          }
        }

        v46 = *v44;
        if (*v44)
        {
          v49 = *(v46 - 1);
          v48 = v46 - 1;
          v47 = v49;
          if (v49 <= *(v44 + 3))
          {
            v50 = (v48 + 8);
            v51 = *(v44 + 2);
            if (v51 < v47)
            {
              v52 = &v50[v51];
              goto LABEL_57;
            }

            goto LABEL_58;
          }
        }

        else if (!v46)
        {
          v51 = *(v44 + 2);
          if (v51 < 0)
          {
            v47 = 0;
            v52 = &v44[v51];
            v50 = v44;
LABEL_57:
            v50[v47] = *v52;
          }

          else
          {
            v50 = v44;
          }

LABEL_58:
          *(v44 + 2) = v51 + 1;
          v50[v51] = v42;
          if (*v44)
          {
            ++*(*v44 - 1);
          }

          goto LABEL_37;
        }

LABEL_36:
        google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v44, v42, v43, v45);
LABEL_37:
        (*(*v42 + 40))(v42, v39);
        if (++v24 >= *(v23 + 8))
        {
          return;
        }
      }
    }

    if (v12 == 6)
    {
      if (v9)
      {
        v71 = *this;
        if (!v71)
        {
          operator new();
        }

        v72 = google::protobuf::Arena::Allocate(v71);
        *v72 = 0;
        *(v72 + 1) = v71;
        *v10 = v72;
      }

      else
      {
        v72 = *v8;
      }

      v128 = *a4;
      v129 = **a4;
      if (v129)
      {
        v130 = *v72;
        v131 = (v130 + v129);
        if (v72[1] < v131)
        {
          v240 = v72;
          google::protobuf::RepeatedField<int>::Grow(v72, v130, v131);
          LODWORD(v130) = *v240;
          v132 = *(v240 + 1);
          *v240 += v129;
          if (v129 < 1)
          {
            return;
          }
        }

        else
        {
          v132 = *(v72 + 1);
          *v72 = v131;
          if (v129 < 1)
          {
            return;
          }
        }

        v133 = *(v128 + 8);
        v134 = (v132 + 4 * v130);
        if (v129 < 8)
        {
          goto LABEL_149;
        }

        v135 = 4 * v130 + v132;
        if ((v135 - v133) < 0x20)
        {
          goto LABEL_149;
        }

        v136 = v129;
        v137 = v129 & 0x7FFFFFF8;
        LODWORD(v129) = v129 - (v129 & 0x7FFFFFF8);
        v134 += v137;
        v138 = &v133[v137];
        v139 = (v133 + 4);
        v140 = (v135 + 16);
        v141 = v137;
        do
        {
          v142 = *v139;
          *(v140 - 1) = *(v139 - 1);
          *v140 = v142;
          v139 += 2;
          v140 += 2;
          v141 -= 8;
        }

        while (v141);
        v133 = v138;
        if (v137 != v136)
        {
LABEL_149:
          v143 = v129 + 1;
          do
          {
            v144 = *v133++;
            *v134++ = v144;
            --v143;
          }

          while (v143 > 1);
        }
      }

      return;
    }

    if (v9)
    {
      v55 = *this;
      if (!v55)
      {
        operator new();
      }

      v56 = google::protobuf::Arena::Allocate(v55);
      *v56 = 0;
      *(v56 + 1) = v55;
      *v10 = v56;
    }

    else
    {
      v56 = *v8;
    }

    v99 = *a4;
    v100 = **a4;
    if (!v100)
    {
      return;
    }

    v101 = *v56;
    v102 = (v101 + v100);
    if (v56[1] < v102)
    {
      v238 = v56;
      google::protobuf::RepeatedField<BOOL>::Grow(v56, v101, v102);
      LODWORD(v101) = *v238;
      v103 = *(v238 + 1);
      *v238 += v100;
      if (v100 < 1)
      {
        return;
      }
    }

    else
    {
      v103 = *(v56 + 1);
      *v56 = v102;
      if (v100 < 1)
      {
        return;
      }
    }

    v104 = *(v99 + 8);
    v105 = (v103 + v101);
    if (v100 >= 8 && (v105 - v104) >= 0x20)
    {
      if (v100 >= 0x20)
      {
        v106 = v100 & 0x7FFFFFE0;
        v225 = (v104 + 16);
        v226 = (v101 + v103 + 16);
        v227 = v106;
        do
        {
          v228 = *v225;
          *(v226 - 1) = *(v225 - 1);
          *v226 = v228;
          v225 += 2;
          v226 += 2;
          v227 -= 32;
        }

        while (v227);
        if (v106 == v100)
        {
          return;
        }

        if ((v100 & 0x18) == 0)
        {
          v104 += v106;
          v105 += v106;
          LODWORD(v100) = v100 - v106;
          goto LABEL_230;
        }
      }

      else
      {
        v106 = 0;
      }

      v105 += v100 & 0x7FFFFFF8;
      v229 = &v104[v100 & 0x7FFFFFF8];
      v230 = &v104[v106];
      v231 = (v103 + v106 + v101);
      v232 = v106 - (v100 & 0x7FFFFFF8);
      do
      {
        v233 = *v230++;
        *v231++ = v233;
        v232 += 8;
      }

      while (v232);
      v104 = v229;
      v234 = (v100 & 0x7FFFFFF8) == v100;
      LODWORD(v100) = v100 - (v100 & 0x7FFFFFF8);
      if (v234)
      {
        return;
      }
    }

LABEL_230:
    v235 = v100 + 1;
    do
    {
      v236 = *v104++;
      *v105++ = v236;
      --v235;
    }

    while (v235 > 1);
    return;
  }

  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      if (v9)
      {
        v69 = *this;
        if (!v69)
        {
          operator new();
        }

        v70 = google::protobuf::Arena::Allocate(v69);
        *v70 = 0;
        *(v70 + 1) = v69;
        *v10 = v70;
      }

      else
      {
        v70 = *v8;
      }

      v111 = *a4;
      v112 = **a4;
      if (v112)
      {
        v113 = *v70;
        v114 = (v113 + v112);
        if (v70[1] < v114)
        {
          v239 = v70;
          google::protobuf::RepeatedField<int>::Grow(v70, v113, v114);
          LODWORD(v113) = *v239;
          v115 = *(v239 + 1);
          *v239 += v112;
          if (v112 < 1)
          {
            return;
          }
        }

        else
        {
          v115 = *(v70 + 1);
          *v70 = v114;
          if (v112 < 1)
          {
            return;
          }
        }

        v116 = *(v111 + 8);
        v117 = (v115 + 4 * v113);
        if (v112 < 8)
        {
          goto LABEL_137;
        }

        v118 = 4 * v113 + v115;
        if ((v118 - v116) < 0x20)
        {
          goto LABEL_137;
        }

        v119 = v112;
        v120 = v112 & 0x7FFFFFF8;
        LODWORD(v112) = v112 - (v112 & 0x7FFFFFF8);
        v117 += v120;
        v121 = &v116[v120];
        v122 = (v116 + 4);
        v123 = (v118 + 16);
        v124 = v120;
        do
        {
          v125 = *v122;
          *(v123 - 1) = *(v122 - 1);
          *v123 = v125;
          v122 += 2;
          v123 += 2;
          v124 -= 8;
        }

        while (v124);
        v116 = v121;
        if (v120 != v119)
        {
LABEL_137:
          v126 = v112 + 1;
          do
          {
            v127 = *v116++;
            *v117++ = v127;
            --v126;
          }

          while (v126 > 1);
        }
      }
    }

    else if (v12 == 2)
    {
      if (v9)
      {
        v53 = *this;
        if (!v53)
        {
          operator new();
        }

        v54 = google::protobuf::Arena::Allocate(v53);
        *v54 = 0;
        *(v54 + 1) = v53;
        *v10 = v54;
      }

      else
      {
        v54 = *v8;
      }

      v83 = *a4;
      v84 = **a4;
      if (v84)
      {
        v85 = *v54;
        if (v54[1] < v85 + v84)
        {
          v237 = v54;
          google::protobuf::RepeatedField<long long>::Grow(v54, v85);
          LODWORD(v85) = *v237;
          v86 = *(v237 + 1);
          *v237 += v84;
          if (v84 < 1)
          {
            return;
          }
        }

        else
        {
          v86 = *(v54 + 1);
          *v54 = v85 + v84;
          if (v84 < 1)
          {
            return;
          }
        }

        v87 = *(v83 + 8);
        v88 = (v86 + 8 * v85);
        if (v84 < 8)
        {
          goto LABEL_114;
        }

        v89 = 8 * v85 + v86;
        if ((v89 - v87) < 0x20)
        {
          goto LABEL_114;
        }

        v90 = v84;
        v91 = v84 & 0x7FFFFFFC;
        LODWORD(v84) = v84 - (v84 & 0x7FFFFFFC);
        v88 += v91;
        v92 = &v87[v91];
        v93 = (v87 + 2);
        v94 = (v89 + 16);
        v95 = v91;
        do
        {
          v96 = *v93;
          *(v94 - 1) = *(v93 - 1);
          *v94 = v96;
          v93 += 2;
          v94 += 2;
          v95 -= 4;
        }

        while (v95);
        v87 = v92;
        if (v91 != v90)
        {
LABEL_114:
          v97 = v84 + 1;
          do
          {
            v98 = *v87++;
            *v88++ = v98;
            --v97;
          }

          while (v97 > 1);
        }
      }
    }
  }

  else if (v12 == 3)
  {
    if (v9)
    {
      v73 = *this;
      if (!v73)
      {
        operator new();
      }

      v74 = google::protobuf::Arena::Allocate(v73);
      *v74 = 0;
      *(v74 + 1) = v73;
      *v10 = v74;
    }

    else
    {
      v74 = *v8;
    }

    v145 = *a4;
    v146 = **a4;
    if (v146)
    {
      v147 = *v74;
      v148 = (v147 + v146);
      if (v74[1] < v148)
      {
        v241 = v74;
        google::protobuf::RepeatedField<int>::Grow(v74, v147, v148);
        LODWORD(v147) = *v241;
        v149 = *(v241 + 1);
        *v241 += v146;
        if (v146 < 1)
        {
          return;
        }
      }

      else
      {
        v149 = *(v74 + 1);
        *v74 = v148;
        if (v146 < 1)
        {
          return;
        }
      }

      v150 = *(v145 + 8);
      v151 = (v149 + 4 * v147);
      if (v146 < 8)
      {
        goto LABEL_161;
      }

      v152 = 4 * v147 + v149;
      if ((v152 - v150) < 0x20)
      {
        goto LABEL_161;
      }

      v153 = v146;
      v154 = v146 & 0x7FFFFFF8;
      LODWORD(v146) = v146 - (v146 & 0x7FFFFFF8);
      v151 += v154;
      v155 = &v150[v154];
      v156 = (v150 + 4);
      v157 = (v152 + 16);
      v158 = v154;
      do
      {
        v159 = *v156;
        *(v157 - 1) = *(v156 - 1);
        *v157 = v159;
        v156 += 2;
        v157 += 2;
        v158 -= 8;
      }

      while (v158);
      v150 = v155;
      if (v154 != v153)
      {
LABEL_161:
        v160 = v146 + 1;
        do
        {
          v161 = *v150++;
          *v151++ = v161;
          --v160;
        }

        while (v160 > 1);
      }
    }
  }

  else if (v12 == 4)
  {
    if (v9)
    {
      v77 = *this;
      if (!v77)
      {
        operator new();
      }

      v78 = google::protobuf::Arena::Allocate(v77);
      *v78 = 0;
      *(v78 + 1) = v77;
      *v10 = v78;
    }

    else
    {
      v78 = *v8;
    }

    v197 = *a4;
    v198 = **a4;
    if (v198)
    {
      v199 = *v78;
      if (v78[1] < v199 + v198)
      {
        v244 = v78;
        google::protobuf::RepeatedField<long long>::Grow(v78, v199);
        LODWORD(v199) = *v244;
        v200 = *(v244 + 1);
        *v244 += v198;
        if (v198 < 1)
        {
          return;
        }
      }

      else
      {
        v200 = *(v78 + 1);
        *v78 = v199 + v198;
        if (v198 < 1)
        {
          return;
        }
      }

      v201 = *(v197 + 8);
      v202 = (v200 + 8 * v199);
      if (v198 < 8)
      {
        goto LABEL_199;
      }

      v203 = 8 * v199 + v200;
      if ((v203 - v201) < 0x20)
      {
        goto LABEL_199;
      }

      v204 = v198;
      v205 = v198 & 0x7FFFFFFC;
      LODWORD(v198) = v198 - (v198 & 0x7FFFFFFC);
      v202 += v205;
      v206 = &v201[v205];
      v207 = (v201 + 2);
      v208 = (v203 + 16);
      v209 = v205;
      do
      {
        v210 = *v207;
        *(v208 - 1) = *(v207 - 1);
        *v208 = v210;
        v207 += 2;
        v208 += 2;
        v209 -= 4;
      }

      while (v209);
      v201 = v206;
      if (v205 != v204)
      {
LABEL_199:
        v211 = v198 + 1;
        do
        {
          v212 = *v201++;
          *v202++ = v212;
          --v211;
        }

        while (v211 > 1);
      }
    }
  }

  else
  {
    if (v9)
    {
      v13 = *this;
      if (!v13)
      {
        operator new();
      }

      v14 = google::protobuf::Arena::Allocate(v13);
      *v14 = 0;
      *(v14 + 1) = v13;
      *v10 = v14;
    }

    else
    {
      v14 = *v8;
    }

    v179 = *a4;
    v180 = **a4;
    if (v180)
    {
      v181 = *v14;
      if (v14[1] < v181 + v180)
      {
        v243 = v14;
        google::protobuf::RepeatedField<long long>::Grow(v14, v181);
        LODWORD(v181) = *v243;
        v182 = *(v243 + 1);
        *v243 += v180;
        if (v180 < 1)
        {
          return;
        }
      }

      else
      {
        v182 = *(v14 + 1);
        *v14 = v181 + v180;
        if (v180 < 1)
        {
          return;
        }
      }

      v183 = *(v179 + 8);
      v184 = (v182 + 8 * v181);
      if (v180 < 8)
      {
        goto LABEL_185;
      }

      v185 = 8 * v181 + v182;
      if ((v185 - v183) < 0x20)
      {
        goto LABEL_185;
      }

      v186 = v180;
      v187 = v180 & 0x7FFFFFFC;
      LODWORD(v180) = v180 - (v180 & 0x7FFFFFFC);
      v184 += v187;
      v188 = &v183[v187];
      v189 = (v183 + 2);
      v190 = (v185 + 16);
      v191 = v187;
      do
      {
        v192 = *v189;
        *(v190 - 1) = *(v189 - 1);
        *v190 = v192;
        v189 += 2;
        v190 += 2;
        v191 -= 4;
      }

      while (v191);
      v183 = v188;
      if (v187 != v186)
      {
LABEL_185:
        v193 = v180 + 1;
        do
        {
          v194 = *v183++;
          *v184++ = v194;
          --v193;
        }

        while (v193 > 1);
      }
    }
  }
}

void sub_23CD490C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::GetPrototypeForLazyMessage(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_2810C19D0)
  {
    v3 = 0;
    _X10 = *(qword_2810C19D0 + 16);
    __asm { PRFM            #4, [X10] }

    v9 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2))) + a2;
    v10 = (((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9)) + a3;
    v11 = ((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v10);
    v12 = *qword_2810C19D0;
    v13 = vdup_n_s8(v11 & 0x7F);
    v14 = ((v11 >> 7) ^ (_X10 >> 12)) & *qword_2810C19D0;
    v15 = *(_X10 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_3:
      v17 = *(qword_2810C19D0 + 24) + 48 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v12);
      if (*v17 == a2 && *(v17 + 8) == a3)
      {
        v20 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[*(v17 + 12)];
        if (v20 == 2)
        {
          v21 = 1;
        }

        else
        {
          v21 = ((v20 - 5) < 0xFFFFFFFD) & *(v17 + 13);
        }

        if (v21)
        {
          return *(v17 + 16);
        }

        else
        {
          return 0;
        }
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v16);
LABEL_8:
    while (!*&vceq_s8(v15, 0x8080808080808080))
    {
      v3 += 8;
      v14 = (v3 + v14) & v12;
      v15 = *(_X10 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

uint64_t *google::protobuf::internal::ExtensionSet::InternalSwap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LOWORD(v2) = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v2;
  LOWORD(v2) = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v2;
  v3 = result[2];
  result[2] = a2[2];
  a2[2] = v3;
  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::internal::ExtensionSet::Extension::Free(google::protobuf::internal::RepeatedPtrFieldBase *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (*(this + 9) == 1)
  {
    if (v1 <= 5)
    {
      if (v1 <= 2 && v1 != 1 && v1 != 2)
      {
        return this;
      }

      goto LABEL_26;
    }

    if (v1 <= 8)
    {
LABEL_26:
      this = *this;
      if (this)
      {
        if (*(this + 1) >= 1)
        {
          v5 = *(this + 1);
          v7 = *(v5 - 8);
          v6 = (v5 - 8);
          if (!v7)
          {
            operator delete(v6);
          }
        }

        goto LABEL_45;
      }

      return this;
    }

    if (v1 == 9)
    {
      v8 = *this;
      if (!*this)
      {
        return this;
      }

      if (*v8 && !v8[2])
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(*v8, v8);
      }
    }

    else
    {
      if (v1 != 10 || !*this)
      {
        return this;
      }

      if (**this)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(*this);
      }
    }

LABEL_45:
    JUMPOUT(0x23EED9460);
  }

  if (v1 == 10)
  {
    v3 = *(this + 10);
    this = *this;
    if ((v3 & 0x10) != 0)
    {
      if (!this)
      {
        return this;
      }

      v4 = *(*this + 8);
    }

    else
    {
      if (!this)
      {
        return this;
      }

      v4 = *(*this + 8);
    }

    return v4();
  }

  if (v1 == 9)
  {
    v2 = *this;
    if (*this)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      goto LABEL_45;
    }
  }

  return this;
}

char *google::protobuf::internal::ExtensionSet::Insert(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 5);
  if (v2 < 0)
  {
    v16 = *(this + 2);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v17 = a2;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::insert_unique<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(v16, &v17, &v17, &v21);
    return (v21 + 32 * v22 + 24);
  }

  else
  {
    v3 = *(this + 2);
    v4 = &v3[32 * v2];
    v5 = *(this + 5);
    if (*(this + 5))
    {
      v6 = *(this + 5);
      do
      {
        v7 = v6 >> 1;
        v8 = &v3[32 * (v6 >> 1)];
        v10 = *v8;
        v9 = (v8 + 8);
        v6 += ~(v6 >> 1);
        if (v10 < a2)
        {
          v3 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
    }

    if (v3 == v4)
    {
      if (v5 < *(this + 4))
      {
LABEL_15:
        *(this + 5) = v5 + 1;
        *v3 = a2;
        *(v3 + 1) = 0;
        result = v3 + 8;
        *(v3 + 2) = 0;
        *(v3 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v3 == a2)
      {
        return v3 + 8;
      }

      if (v5 < *(this + 4))
      {
        v12 = this;
        v13 = a2;
        memmove(v3 + 32, v3, v4 - v3);
        this = v12;
        a2 = v13;
        LOWORD(v5) = *(v12 + 5);
        goto LABEL_15;
      }
    }

    v14 = a2;
    v15 = this;
    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v2 + 1);
    return google::protobuf::internal::ExtensionSet::Insert(v15, v14);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::IsInitialized(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2)
{
  v4 = *this;
  if ((*(this + 5) & 0x80000000) == 0)
  {
    if (*(this + 5))
    {
      v5 = *(this + 2);
      do
      {
        v7 = *v5;
        v6 = (v5 + 2);
        result = google::protobuf::internal::ExtensionSet::Extension::IsInitialized(v6, a2, a2, v7);
        if ((result & 1) == 0)
        {
          break;
        }

        v5 = (v6 + 24);
      }

      while (v5 != (*(this + 2) + 32 * *(this + 5)));
      return result;
    }

    return 1;
  }

  v9 = *(this + 2);
  v10 = **v9;
  v17 = v10;
  v18 = 0;
  v11 = v9[1];
  v12 = *(v11 + 10);
  if (v10 == v11 && v12 == 0)
  {
    return 1;
  }

  v14 = 0;
  do
  {
    IsInitialized = google::protobuf::internal::ExtensionSet::Extension::IsInitialized(&v10[4 * v14 + 3], a2, a2, v10[4 * v14 + 2]);
    if (!IsInitialized)
    {
      break;
    }

    absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>::operator++(&v17);
    v10 = v17;
    v14 = v18;
  }

  while (v17 != v11 || v18 != v12);
  return IsInitialized;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::IsInitialized(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a1[8]] != 10)
  {
    return 1;
  }

  if (a1[9] == 1)
  {
    v5 = *a1;
    if (*(*a1 + 8) >= 1)
    {
      v6 = 0;
      v7 = 8;
      do
      {
        if (*v5)
        {
          v5 = *v5 + v7 - 1;
        }

        result = (*(**v5 + 32))();
        if ((result & 1) == 0)
        {
          break;
        }

        ++v6;
        v5 = *a1;
        v7 += 8;
      }

      while (v6 < *(*a1 + 8));
      return result;
    }

    return 1;
  }

  if (a1[10])
  {
    return 1;
  }

  if ((a1[10] & 0x10) != 0)
  {
    if (qword_2810C19D0)
    {
      v11 = 0;
      _X10 = *(qword_2810C19D0 + 16);
      __asm { PRFM            #4, [X10] }

      v17 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3))) + a3;
      v18 = (((v17 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v17)) + a4;
      v19 = ((v18 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v18);
      v20 = *qword_2810C19D0;
      v21 = vdup_n_s8(v19 & 0x7F);
      v22 = ((v19 >> 7) ^ (_X10 >> 12)) & *qword_2810C19D0;
      v23 = *(_X10 + v22);
      v24 = vceq_s8(v23, v21);
      if (!v24)
      {
        goto LABEL_23;
      }

      do
      {
LABEL_18:
        v25 = *(qword_2810C19D0 + 24) + 48 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v20);
        if (*v25 == a3 && *(v25 + 8) == a4)
        {
          v27 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[*(v25 + 12)];
          if (v27 == 2)
          {
            v28 = 1;
          }

          else
          {
            v28 = ((v27 - 5) < 0xFFFFFFFD) & *(v25 + 13);
          }

          if (v28)
          {
            v29 = *(v25 + 16);
          }

          goto LABEL_32;
        }

        v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v24);
LABEL_23:
      while (!*&vceq_s8(v23, 0x8080808080808080))
      {
        v11 += 8;
        v22 = (v11 + v22) & v20;
        v23 = *(_X10 + v22);
        v24 = vceq_s8(v23, v21);
        if (v24)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_32:
    v30 = *a1;
    v31 = *(**a1 + 72);

    return v31();
  }

  else
  {
    v9 = *a1;
    v10 = *(**a1 + 32);

    return v10();
  }
}

_DWORD *absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>::operator++(_DWORD *result)
{
  v1 = *result;
  v2 = result[2];
  if (!*(*result + 11))
  {
    goto LABEL_8;
  }

  result[2] = ++v2;
  v3 = v1[10];
  if (v2 < v3)
  {
    return result;
  }

  if (v1[11])
  {
    v9 = *result;
    if (v2 == v3)
    {
      while (1)
      {
        v4 = *v1;
        if (*(*v1 + 11))
        {
          break;
        }

        v5 = v1[8];
        result[2] = v5;
        *result = v4;
        v1 = v4;
        if (v5 != v4[10])
        {
          return result;
        }
      }

      *result = v9;
      result[2] = DWORD2(v9);
    }
  }

  else
  {
LABEL_8:
    v6 = &v1[8 * (v2 + 1) + 240];
    do
    {
      v7 = *v6;
      *result = v7;
      v8 = *(v7 + 11);
      v6 = (v7 + 240);
    }

    while (!v8);
    result[2] = 0;
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::_InternalSerializeImpl(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, const google::protobuf::internal::ExtensionSet *a3, int a4, unsigned __int8 *a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v32 = a3;
  v10 = *(this + 5);
  v11 = *(this + 2);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v19 = *(v11 + 1);
    v20 = *(v19 + 10);
    v21 = absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>>::lower_bound<int>(*(this + 2), &v32);
    v30 = v21;
    v31 = v22;
    if (v19 != v21 || v22 != v20)
    {
      do
      {
        v25 = &v21[4 * v22];
        v28 = *(v25 + 4);
        v27 = v25 + 2;
        v26 = v28;
        if (v28 >= a4)
        {
          break;
        }

        a5 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray((v27 + 1), a2, v23, v26, a5, a6);
        absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>::operator++(&v30);
        v21 = v30;
        LOBYTE(v22) = v31;
      }

      while (v30 != v19 || v31 != v20);
    }
  }

  else
  {
    v12 = &v11[8 * v10];
    if (*(this + 5))
    {
      do
      {
        v13 = v10 >> 1;
        v14 = &v11[8 * (v10 >> 1)];
        v16 = *v14;
        v15 = (v14 + 8);
        v10 += ~(v10 >> 1);
        if (v16 < a3)
        {
          v11 = v15;
        }

        else
        {
          v10 = v13;
        }
      }

      while (v10);
    }

    while (v11 != v12)
    {
      v17 = *v11;
      if (v17 >= a4)
      {
        break;
      }

      a5 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray((v11 + 2), a2, a3, v17, a5, a6);
      v11 += 8;
    }
  }

  return a5;
}

uint64_t *absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>>::lower_bound<int>(uint64_t **a1, _DWORD *a2)
{
  result = *a1;
  v4 = *(result + 10);
  if (!*(result + 10))
  {
    goto LABEL_6;
  }

LABEL_2:
  v5 = 0;
  v6 = (result + 2);
  do
  {
    v7 = *v6;
    v6 += 8;
    if (v7 >= *a2)
    {
      goto LABEL_7;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_7:
  while (!*(result + 11))
  {
    result = result[v5 + 30];
    v4 = *(result + 10);
    if (*(result + 10))
    {
      goto LABEL_2;
    }

LABEL_6:
    LODWORD(v5) = 0;
  }

  while (v5 == *(result + 10))
  {
    LODWORD(v5) = *(result + 8);
    result = *result;
    if (*(result + 11))
    {
      result = a1[1];
      v8 = *(result + 10);
      return result;
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(google::protobuf::internal::ExtensionSet::Extension *this, const google::protobuf::MessageLite *a2, const google::protobuf::internal::ExtensionSet *a3, google::protobuf::internal::WireFormatLite *a4, google::protobuf::MessageLite *a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a5;
  if (*(this + 9) != 1)
  {
    if (*(this + 10))
    {
      return v7;
    }

    switch(*(this + 8))
    {
      case 1:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_276;
          }
        }

        else
        {
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_276;
          }
        }

        do
        {
          *v7 = v18 | 0x80;
          v7 = (v7 + 1);
          v19 = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        goto LABEL_277;
      case 2:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_311;
          }
        }

        else
        {
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_311;
          }
        }

        do
        {
          *v7 = v47 | 0x80;
          v7 = (v7 + 1);
          v48 = v47 >> 7;
          v157 = v47 >> 14;
          v47 >>= 7;
        }

        while (v157);
        goto LABEL_312;
      case 3:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v79 = *this;
          v112 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v79 = *this;
          v112 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_168:
            LOBYTE(v113) = v112;
            goto LABEL_169;
          }
        }

        do
        {
          *v7 = v112 | 0x80;
          v7 = (v7 + 1);
          v113 = v112 >> 7;
          v291 = v112 >> 14;
          v112 >>= 7;
        }

        while (v291);
LABEL_169:
        *v7 = v113;
        v82 = v7 + 1;
        if (v79 < 0x80)
        {
          goto LABEL_293;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v114 = v79 >> 14;
          v79 >>= 7;
        }

        while (v114);
        goto LABEL_500;
      case 4:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v79 = *this;
          v133 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_204;
          }
        }

        else
        {
          v79 = *this;
          v133 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_204:
            LOBYTE(v134) = v133;
            goto LABEL_205;
          }
        }

        do
        {
          *v7 = v133 | 0x80;
          v7 = (v7 + 1);
          v134 = v133 >> 7;
          v292 = v133 >> 14;
          v133 >>= 7;
        }

        while (v292);
LABEL_205:
        *v7 = v134;
        v82 = v7 + 1;
        if (v79 < 0x80)
        {
          goto LABEL_293;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v135 = v79 >> 14;
          v79 >>= 7;
        }

        while (v135);
        goto LABEL_500;
      case 5:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v79 = *this;
          v80 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v79 = *this;
          v80 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_114:
            LOBYTE(v81) = v80;
            goto LABEL_115;
          }
        }

        do
        {
          *v7 = v80 | 0x80;
          v7 = (v7 + 1);
          v81 = v80 >> 7;
          v289 = v80 >> 14;
          v80 >>= 7;
        }

        while (v289);
LABEL_115:
        *v7 = v81;
        v82 = v7 + 1;
        if (v79 < 0x80)
        {
          goto LABEL_293;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v84 = v79 >> 14;
          v79 >>= 7;
        }

        while (v84);
        goto LABEL_500;
      case 6:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_276;
          }
        }

        else
        {
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_276;
          }
        }

        do
        {
          *v7 = v18 | 0x80;
          v7 = (v7 + 1);
          v19 = v18 >> 7;
          v295 = v18 >> 14;
          v18 >>= 7;
        }

        while (v295);
        goto LABEL_277;
      case 7:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_311;
          }
        }

        else
        {
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_311;
          }
        }

        do
        {
          *v7 = v47 | 0x80;
          v7 = (v7 + 1);
          v48 = v47 >> 7;
          v297 = v47 >> 14;
          v47 >>= 7;
        }

        while (v297);
        goto LABEL_312;
      case 8:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v146 = *this;
          v147 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_225;
          }
        }

        else
        {
          v146 = *this;
          v147 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_225:
            LOBYTE(v148) = v147;
            goto LABEL_226;
          }
        }

        do
        {
          *v7 = v147 | 0x80;
          v7 = (v7 + 1);
          v148 = v147 >> 7;
          v293 = v147 >> 14;
          v147 >>= 7;
        }

        while (v293);
LABEL_226:
        *v7 = v148;
        *(v7 + 1) = v146;
        return v7 + 2;
      case 9:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v57 = *this;
          v58 = *(*this + 23);
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_337;
          }
        }

        else
        {
          v57 = *this;
          v58 = *(*this + 23);
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_337;
          }
        }

        v58 = v57[1];
        if (v58 > 127)
        {
          goto LABEL_494;
        }

LABEL_337:
        v215 = 8 * a4;
        v216 = 1;
        v217 = 2;
        v218 = 3;
        v219 = 4;
        if ((8 * a4) >> 28)
        {
          v219 = 5;
        }

        if (v215 >= 0x200000)
        {
          v218 = v219;
        }

        if (v215 >= 0x4000)
        {
          v217 = v218;
        }

        if (v215 >= 0x80)
        {
          v216 = v217;
        }

        if ((*a6 + ~(v7 + v216) + 16) < v58)
        {
          goto LABEL_494;
        }

        v64 = v215 | 2;
        if (v215 < 0x80)
        {
          goto LABEL_347;
        }

        do
        {
          *v7 = v64 | 0x80;
          v7 = (v7 + 1);
          v65 = v64 >> 7;
          v298 = v64 >> 14;
          v64 >>= 7;
        }

        while (v298);
        goto LABEL_348;
      case 0xA:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
        }

        v107 = *this;

        return google::protobuf::internal::WireFormatLite::InternalWriteGroup(a4, v107, v7, a6, a5);
      case 0xB:
        if ((*(this + 10) & 0x10) != 0)
        {
          google::protobuf::internal::ExtensionSet::GetPrototypeForLazyMessage(this, a2, a4);
          v283 = *(**this + 144);

          return v283();
        }

        else
        {
          v206 = *this;
          CachedSize = google::protobuf::MessageLite::GetCachedSize(*this);

          return google::protobuf::internal::WireFormatLite::InternalWriteMessage(a4, v206, CachedSize, v7, a6, v208);
        }

      case 0xC:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v57 = *this;
          v58 = *(*this + 23);
          if (v58 < 0)
          {
LABEL_72:
            v58 = v57[1];
            if (v58 > 127)
            {
              goto LABEL_494;
            }
          }
        }

        else
        {
          v57 = *this;
          v58 = *(*this + 23);
          if (v58 < 0)
          {
            goto LABEL_72;
          }
        }

        v59 = 8 * a4;
        v60 = 1;
        v61 = 2;
        v62 = 3;
        v63 = 4;
        if ((8 * a4) >> 28)
        {
          v63 = 5;
        }

        if (v59 >= 0x200000)
        {
          v62 = v63;
        }

        if (v59 >= 0x4000)
        {
          v61 = v62;
        }

        if (v59 >= 0x80)
        {
          v60 = v61;
        }

        if ((*a6 + ~(v7 + v60) + 16) >= v58)
        {
          v64 = v59 | 2;
          if (v59 < 0x80)
          {
LABEL_347:
            LOBYTE(v65) = v64;
          }

          else
          {
            do
            {
              *v7 = v64 | 0x80;
              v7 = (v7 + 1);
              v65 = v64 >> 7;
              v66 = v64 >> 14;
              v64 >>= 7;
            }

            while (v66);
          }

LABEL_348:
          *v7 = v65;
          *(v7 + 1) = v58;
          if (*(v57 + 23) < 0)
          {
            v57 = *v57;
          }

          memcpy(v7 + 2, v57, v58);
          return v7 + v58 + 2;
        }

LABEL_494:

        return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a6, a4, v57, v7);
      case 0xD:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v32 = *this;
          v95 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v32 = *this;
          v95 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_135:
            LOBYTE(v96) = v95;
            goto LABEL_136;
          }
        }

        do
        {
          *v7 = v95 | 0x80;
          v7 = (v7 + 1);
          v96 = v95 >> 7;
          v290 = v95 >> 14;
          v95 >>= 7;
        }

        while (v290);
LABEL_136:
        *v7 = v96;
        v31 = v7 + 1;
        if (v32 < 0x80)
        {
          goto LABEL_137;
        }

        do
        {
          *v31++ = v32 | 0x80;
          v33 = v32 >> 7;
          v286 = v32 >> 14;
          v32 >>= 7;
        }

        while (v286);
        goto LABEL_498;
      case 0xE:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v79 = *this;
          v187 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_291;
          }
        }

        else
        {
          v79 = *this;
          v187 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_291:
            LOBYTE(v188) = v187;
            goto LABEL_292;
          }
        }

        do
        {
          *v7 = v187 | 0x80;
          v7 = (v7 + 1);
          v188 = v187 >> 7;
          v296 = v187 >> 14;
          v187 >>= 7;
        }

        while (v296);
LABEL_292:
        *v7 = v188;
        v82 = v7 + 1;
        if (v79 < 0x80)
        {
          goto LABEL_293;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v287 = v79 >> 14;
          v79 >>= 7;
        }

        while (v287);
        goto LABEL_500;
      case 0xF:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) >= 0x80)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) >= 0x80)
          {
            do
            {
LABEL_57:
              *v7 = v47 | 0x80;
              v7 = (v7 + 1);
              v48 = v47 >> 7;
              v49 = v47 >> 14;
              v47 >>= 7;
            }

            while (v49);
LABEL_312:
            *v7 = v48;
            *(v7 + 1) = v46;
            return v7 + 5;
          }
        }

LABEL_311:
        LOBYTE(v48) = v47;
        goto LABEL_312;
      case 0x10:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) >= 0x80)
          {
            goto LABEL_189;
          }
        }

        else
        {
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) >= 0x80)
          {
            do
            {
LABEL_189:
              *v7 = v18 | 0x80;
              v7 = (v7 + 1);
              v19 = v18 >> 7;
              v125 = v18 >> 14;
              v18 >>= 7;
            }

            while (v125);
LABEL_277:
            *v7 = v19;
            *(v7 + 1) = v17;
            return v7 + 9;
          }
        }

LABEL_276:
        LOBYTE(v19) = v18;
        goto LABEL_277;
      case 0x11:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v28 = *this;
          v29 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v28 = *this;
          v29 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_36:
            LOBYTE(v30) = v29;
            goto LABEL_37;
          }
        }

        do
        {
          *v7 = v29 | 0x80;
          v7 = (v7 + 1);
          v30 = v29 >> 7;
          v288 = v29 >> 14;
          v29 >>= 7;
        }

        while (v288);
LABEL_37:
        *v7 = v30;
        v31 = v7 + 1;
        v32 = (2 * v28) ^ (v28 >> 31);
        if (v32 < 0x80)
        {
LABEL_137:
          *v31 = v32;
          return v31 + 1;
        }

        do
        {
          *v31++ = v32 | 0x80;
          v33 = v32 >> 7;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
LABEL_498:
        *v31 = v33;
        return v31 + 1;
      case 0x12:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v165 = *this;
          v166 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_255;
          }
        }

        else
        {
          v165 = *this;
          v166 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_255:
            LOBYTE(v167) = v166;
            goto LABEL_256;
          }
        }

        do
        {
          *v7 = v166 | 0x80;
          v7 = (v7 + 1);
          v167 = v166 >> 7;
          v294 = v166 >> 14;
          v166 >>= 7;
        }

        while (v294);
LABEL_256:
        *v7 = v167;
        v82 = v7 + 1;
        v79 = (2 * v165) ^ (v165 >> 63);
        if (v79 < 0x80)
        {
LABEL_293:
          *v82 = v79;
          return v82 + 1;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v168 = v79 >> 14;
          v79 >>= 7;
        }

        while (v168);
LABEL_500:
        *v82 = v83;
        return v82 + 1;
      default:
        return v7;
    }
  }

  if (*(this + 11) != 1)
  {
    switch(*(this + 8))
    {
      case 1:
        v21 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v22 = 0;
        v23 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v24 = *(*(*this + 8) + 8 * v22);
            if (v23 >= 0x80)
            {
LABEL_31:
              v26 = (8 * a4) | 1;
              do
              {
                *v7 = v26 | 0x80;
                v7 = (v7 + 1);
                v25 = v26 >> 7;
                v27 = v26 >> 14;
                v26 >>= 7;
              }

              while (v27);
              goto LABEL_28;
            }
          }

          else
          {
            v24 = *(*(v21 + 8) + 8 * v22);
            if (v23 >= 0x80)
            {
              goto LABEL_31;
            }
          }

          LOBYTE(v25) = (8 * a4) | 1;
LABEL_28:
          *v7 = v25;
          *(v7 + 1) = v24;
          v7 = (v7 + 9);
          ++v22;
          v21 = *this;
          if (v22 >= **this)
          {
            return v7;
          }
        }

      case 2:
        v158 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v159 = 0;
        v160 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v161 = *(*(*this + 8) + 4 * v159);
            if (v160 >= 0x80)
            {
LABEL_250:
              v163 = (8 * a4) | 5;
              do
              {
                *v7 = v163 | 0x80;
                v7 = (v7 + 1);
                v162 = v163 >> 7;
                v164 = v163 >> 14;
                v163 >>= 7;
              }

              while (v164);
              goto LABEL_247;
            }
          }

          else
          {
            v161 = *(*(v158 + 8) + 4 * v159);
            if (v160 >= 0x80)
            {
              goto LABEL_250;
            }
          }

          LOBYTE(v162) = (8 * a4) | 5;
LABEL_247:
          *v7 = v162;
          *(v7 + 1) = v161;
          v7 = (v7 + 5);
          ++v159;
          v158 = *this;
          if (v159 >= **this)
          {
            return v7;
          }
        }

      case 3:
        v115 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v116 = 0;
        v117 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v118 = *(*(*this + 8) + 8 * v116);
            if (v117 < 0x80)
            {
LABEL_176:
              LOBYTE(v119) = v117;
              goto LABEL_177;
            }
          }

          else
          {
            v118 = *(*(v115 + 8) + 8 * v116);
            if (v117 < 0x80)
            {
              goto LABEL_176;
            }
          }

          v123 = v117;
          do
          {
            *v7 = v123 | 0x80;
            v7 = (v7 + 1);
            v119 = v123 >> 7;
            v124 = v123 >> 14;
            v123 >>= 7;
          }

          while (v124);
LABEL_177:
          *v7 = v119;
          v120 = v7 + 1;
          if (v118 >= 0x80)
          {
            do
            {
              *v120++ = v118 | 0x80;
              v121 = v118 >> 7;
              v122 = v118 >> 14;
              v118 >>= 7;
            }

            while (v122);
          }

          else
          {
            LOBYTE(v121) = v118;
          }

          *v120 = v121;
          v7 = (v120 + 1);
          ++v116;
          v115 = *this;
          if (v116 >= **this)
          {
            return v7;
          }
        }

      case 4:
        v136 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v137 = 0;
        v138 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v139 = *(*(*this + 8) + 8 * v137);
            if (v138 < 0x80)
            {
LABEL_212:
              LOBYTE(v140) = v138;
              goto LABEL_213;
            }
          }

          else
          {
            v139 = *(*(v136 + 8) + 8 * v137);
            if (v138 < 0x80)
            {
              goto LABEL_212;
            }
          }

          v144 = v138;
          do
          {
            *v7 = v144 | 0x80;
            v7 = (v7 + 1);
            v140 = v144 >> 7;
            v145 = v144 >> 14;
            v144 >>= 7;
          }

          while (v145);
LABEL_213:
          *v7 = v140;
          v141 = v7 + 1;
          if (v139 >= 0x80)
          {
            do
            {
              *v141++ = v139 | 0x80;
              v142 = v139 >> 7;
              v143 = v139 >> 14;
              v139 >>= 7;
            }

            while (v143);
          }

          else
          {
            LOBYTE(v142) = v139;
          }

          *v141 = v142;
          v7 = (v141 + 1);
          ++v137;
          v136 = *this;
          if (v137 >= **this)
          {
            return v7;
          }
        }

      case 5:
        v85 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v86 = 0;
        v87 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v88 = *(*(*this + 8) + 4 * v86);
            if (v87 < 0x80)
            {
LABEL_122:
              LOBYTE(v89) = v87;
              goto LABEL_123;
            }
          }

          else
          {
            v88 = *(*(v85 + 8) + 4 * v86);
            if (v87 < 0x80)
            {
              goto LABEL_122;
            }
          }

          v93 = v87;
          do
          {
            *v7 = v93 | 0x80;
            v7 = (v7 + 1);
            v89 = v93 >> 7;
            v94 = v93 >> 14;
            v93 >>= 7;
          }

          while (v94);
LABEL_123:
          *v7 = v89;
          v90 = v7 + 1;
          if (v88 >= 0x80)
          {
            do
            {
              *v90++ = v88 | 0x80;
              v91 = v88 >> 7;
              v92 = v88 >> 14;
              v88 >>= 7;
            }

            while (v92);
          }

          else
          {
            LOBYTE(v91) = v88;
          }

          *v90 = v91;
          v7 = (v90 + 1);
          ++v86;
          v85 = *this;
          if (v86 >= **this)
          {
            return v7;
          }
        }

      case 6:
        v180 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v181 = 0;
        v182 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v183 = *(*(*this + 8) + 8 * v181);
            if (v182 >= 0x80)
            {
LABEL_286:
              v185 = (8 * a4) | 1;
              do
              {
                *v7 = v185 | 0x80;
                v7 = (v7 + 1);
                v184 = v185 >> 7;
                v186 = v185 >> 14;
                v185 >>= 7;
              }

              while (v186);
              goto LABEL_283;
            }
          }

          else
          {
            v183 = *(*(v180 + 8) + 8 * v181);
            if (v182 >= 0x80)
            {
              goto LABEL_286;
            }
          }

          LOBYTE(v184) = (8 * a4) | 1;
LABEL_283:
          *v7 = v184;
          *(v7 + 1) = v183;
          v7 = (v7 + 9);
          ++v181;
          v180 = *this;
          if (v181 >= **this)
          {
            return v7;
          }
        }

      case 7:
        v199 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v200 = 0;
        v201 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v202 = *(*(*this + 8) + 4 * v200);
            if (v201 >= 0x80)
            {
LABEL_321:
              v204 = (8 * a4) | 5;
              do
              {
                *v7 = v204 | 0x80;
                v7 = (v7 + 1);
                v203 = v204 >> 7;
                v205 = v204 >> 14;
                v204 >>= 7;
              }

              while (v205);
              goto LABEL_318;
            }
          }

          else
          {
            v202 = *(*(v199 + 8) + 4 * v200);
            if (v201 >= 0x80)
            {
              goto LABEL_321;
            }
          }

          LOBYTE(v203) = (8 * a4) | 5;
LABEL_318:
          *v7 = v203;
          *(v7 + 1) = v202;
          v7 = (v7 + 5);
          ++v200;
          v199 = *this;
          if (v200 >= **this)
          {
            return v7;
          }
        }

      case 8:
        v149 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v150 = 0;
        v151 = 8 * a4;
        for (i = a5; ; i += 2)
        {
          if (*a6 <= i)
          {
            i = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, i);
            v153 = *(*(*this + 8) + v150);
            if (v151 >= 0x80)
            {
LABEL_235:
              v155 = v151;
              do
              {
                *i++ = v155 | 0x80;
                v154 = v155 >> 7;
                v156 = v155 >> 14;
                v155 >>= 7;
              }

              while (v156);
              goto LABEL_232;
            }
          }

          else
          {
            v153 = *(*(v149 + 8) + v150);
            if (v151 >= 0x80)
            {
              goto LABEL_235;
            }
          }

          LOBYTE(v154) = v151;
LABEL_232:
          *i = v154;
          v7 = (i + 2);
          i[1] = v153;
          ++v150;
          v149 = *this;
          if (v150 >= **this)
          {
            return v7;
          }
        }

      case 9:
        v220 = *this;
        if (*(*this + 8) < 1)
        {
          return v7;
        }

        v221 = 0;
        v222 = 8 * a4;
        v223 = -3;
        if ((8 * a4) < 0x80)
        {
          v223 = -2;
        }

        v224 = -6;
        if (((a4 >> 25) & 0xF) == 0)
        {
          v224 = -5;
        }

        if (v222 < 0x200000)
        {
          v224 = -4;
        }

        if (v222 >= 0x4000)
        {
          v225 = v224;
        }

        else
        {
          v225 = v223;
        }

        do
        {
          while (1)
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v220 = *this;
            }

            if (*v220)
            {
              v220 = *v220 + 8 * v221 + 7;
            }

            v227 = *v220;
            v228 = *(*v220 + 23);
            if ((v228 & 0x8000000000000000) == 0 || (v228 = v227[1], v228 <= 127))
            {
              if (*a6 + v225 - v7 + 16 >= v228)
              {
                break;
              }
            }

            v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a6, a4, v227, v7);
            ++v221;
            v220 = *this;
            if (v221 >= *(*this + 8))
            {
              return v7;
            }
          }

          if (v222 >= 0x80)
          {
            v230 = (8 * a4) | 2;
            do
            {
              *v7 = v230 | 0x80;
              v7 = (v7 + 1);
              v229 = v230 >> 7;
              v231 = v230 >> 14;
              v230 >>= 7;
            }

            while (v231);
          }

          else
          {
            LOBYTE(v229) = (8 * a4) | 2;
          }

          *v7 = v229;
          *(v7 + 1) = v228;
          if (*(v227 + 23) < 0)
          {
            v227 = *v227;
          }

          v226 = v7 + 2;
          memcpy(v226, v227, v228);
          v7 = &v226[v228];
          ++v221;
          v220 = *this;
        }

        while (v221 < *(*this + 8));
        return v7;
      case 0xA:
        v109 = *this;
        if (*(*this + 8) >= 1)
        {
          v110 = 0;
          v111 = 8;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v109 = *this;
            }

            if (*v109)
            {
              v109 = (*v109 + v111 - 1);
            }

            v7 = google::protobuf::internal::WireFormatLite::InternalWriteGroup(a4, *v109, v7, a6, a5);
            ++v110;
            v109 = *this;
            v111 += 8;
          }

          while (v110 < *(*this + 8));
        }

        return v7;
      case 0xB:
        v209 = *this;
        if (*(*this + 8) >= 1)
        {
          v210 = 0;
          v211 = 8;
          do
          {
            if (*v209)
            {
              v209 = (*v209 + v211 - 1);
            }

            v212 = *v209;
            v213 = google::protobuf::MessageLite::GetCachedSize(*v209);
            v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(a4, v212, v213, v7, a6, v214);
            ++v210;
            v209 = *this;
            v211 += 8;
          }

          while (v210 < *(*this + 8));
        }

        return v7;
      case 0xC:
        v67 = *this;
        if (*(*this + 8) < 1)
        {
          return v7;
        }

        v68 = 0;
        v69 = 8 * a4;
        v70 = -3;
        if ((8 * a4) < 0x80)
        {
          v70 = -2;
        }

        v71 = -6;
        if (((a4 >> 25) & 0xF) == 0)
        {
          v71 = -5;
        }

        if (v69 < 0x200000)
        {
          v71 = -4;
        }

        if (v69 >= 0x4000)
        {
          v72 = v71;
        }

        else
        {
          v72 = v70;
        }

        do
        {
          while (1)
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v67 = *this;
            }

            if (*v67)
            {
              v67 = *v67 + 8 * v68 + 7;
            }

            v74 = *v67;
            v75 = *(*v67 + 23);
            if ((v75 & 0x8000000000000000) == 0 || (v75 = v74[1], v75 <= 127))
            {
              if (*a6 + v72 - v7 + 16 >= v75)
              {
                break;
              }
            }

            v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a6, a4, v74, v7);
            ++v68;
            v67 = *this;
            if (v68 >= *(*this + 8))
            {
              return v7;
            }
          }

          if (v69 >= 0x80)
          {
            v77 = (8 * a4) | 2;
            do
            {
              *v7 = v77 | 0x80;
              v7 = (v7 + 1);
              v76 = v77 >> 7;
              v78 = v77 >> 14;
              v77 >>= 7;
            }

            while (v78);
          }

          else
          {
            LOBYTE(v76) = (8 * a4) | 2;
          }

          *v7 = v76;
          *(v7 + 1) = v75;
          if (*(v74 + 23) < 0)
          {
            v74 = *v74;
          }

          v73 = v7 + 2;
          memcpy(v73, v74, v75);
          v7 = &v73[v75];
          ++v68;
          v67 = *this;
        }

        while (v68 < *(*this + 8));
        return v7;
      case 0xD:
        v97 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v98 = 0;
        v99 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v100 = *(*(*this + 8) + 4 * v98);
            if (v99 < 0x80)
            {
LABEL_142:
              LOBYTE(v101) = v99;
              goto LABEL_143;
            }
          }

          else
          {
            v100 = *(*(v97 + 8) + 4 * v98);
            if (v99 < 0x80)
            {
              goto LABEL_142;
            }
          }

          v105 = v99;
          do
          {
            *v7 = v105 | 0x80;
            v7 = (v7 + 1);
            v101 = v105 >> 7;
            v106 = v105 >> 14;
            v105 >>= 7;
          }

          while (v106);
LABEL_143:
          *v7 = v101;
          v102 = v7 + 1;
          if (v100 >= 0x80)
          {
            do
            {
              *v102++ = v100 | 0x80;
              v103 = v100 >> 7;
              v104 = v100 >> 14;
              v100 >>= 7;
            }

            while (v104);
          }

          else
          {
            LOBYTE(v103) = v100;
          }

          *v102 = v103;
          v7 = (v102 + 1);
          ++v98;
          v97 = *this;
          if (v98 >= **this)
          {
            return v7;
          }
        }

      case 0xE:
        v189 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v190 = 0;
        v191 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v192 = *(*(*this + 8) + 4 * v190);
            if (v191 < 0x80)
            {
LABEL_298:
              LOBYTE(v193) = v191;
              goto LABEL_299;
            }
          }

          else
          {
            v192 = *(*(v189 + 8) + 4 * v190);
            if (v191 < 0x80)
            {
              goto LABEL_298;
            }
          }

          v197 = v191;
          do
          {
            *v7 = v197 | 0x80;
            v7 = (v7 + 1);
            v193 = v197 >> 7;
            v198 = v197 >> 14;
            v197 >>= 7;
          }

          while (v198);
LABEL_299:
          *v7 = v193;
          v194 = v7 + 1;
          if (v192 >= 0x80)
          {
            do
            {
              *v194++ = v192 | 0x80;
              v195 = v192 >> 7;
              v196 = v192 >> 14;
              v192 >>= 7;
            }

            while (v196);
          }

          else
          {
            LOBYTE(v195) = v192;
          }

          *v194 = v195;
          v7 = (v194 + 1);
          ++v190;
          v189 = *this;
          if (v190 >= **this)
          {
            return v7;
          }
        }

      case 0xF:
        v50 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v51 = 0;
        v52 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v53 = *(*(*this + 8) + 4 * v51);
            if (v52 >= 0x80)
            {
LABEL_67:
              v55 = (8 * a4) | 5;
              do
              {
                *v7 = v55 | 0x80;
                v7 = (v7 + 1);
                v54 = v55 >> 7;
                v56 = v55 >> 14;
                v55 >>= 7;
              }

              while (v56);
              goto LABEL_64;
            }
          }

          else
          {
            v53 = *(*(v50 + 8) + 4 * v51);
            if (v52 >= 0x80)
            {
              goto LABEL_67;
            }
          }

          LOBYTE(v54) = (8 * a4) | 5;
LABEL_64:
          *v7 = v54;
          *(v7 + 1) = v53;
          v7 = (v7 + 5);
          ++v51;
          v50 = *this;
          if (v51 >= **this)
          {
            return v7;
          }
        }

      case 0x10:
        v126 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v127 = 0;
        v128 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v129 = *(*(*this + 8) + 8 * v127);
            if (v128 >= 0x80)
            {
LABEL_199:
              v131 = (8 * a4) | 1;
              do
              {
                *v7 = v131 | 0x80;
                v7 = (v7 + 1);
                v130 = v131 >> 7;
                v132 = v131 >> 14;
                v131 >>= 7;
              }

              while (v132);
              goto LABEL_196;
            }
          }

          else
          {
            v129 = *(*(v126 + 8) + 8 * v127);
            if (v128 >= 0x80)
            {
              goto LABEL_199;
            }
          }

          LOBYTE(v130) = (8 * a4) | 1;
LABEL_196:
          *v7 = v130;
          *(v7 + 1) = v129;
          v7 = (v7 + 9);
          ++v127;
          v126 = *this;
          if (v127 >= **this)
          {
            return v7;
          }
        }

      case 0x11:
        v35 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v36 = 0;
        v37 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v38 = *(*(*this + 8) + 4 * v36);
            if (v37 < 0x80)
            {
LABEL_44:
              LOBYTE(v39) = v37;
              goto LABEL_45;
            }
          }

          else
          {
            v38 = *(*(v35 + 8) + 4 * v36);
            if (v37 < 0x80)
            {
              goto LABEL_44;
            }
          }

          v44 = v37;
          do
          {
            *v7 = v44 | 0x80;
            v7 = (v7 + 1);
            v39 = v44 >> 7;
            v45 = v44 >> 14;
            v44 >>= 7;
          }

          while (v45);
LABEL_45:
          *v7 = v39;
          v40 = v7 + 1;
          v41 = (2 * v38) ^ (v38 >> 31);
          if (v41 >= 0x80)
          {
            do
            {
              *v40++ = v41 | 0x80;
              v42 = v41 >> 7;
              v43 = v41 >> 14;
              v41 >>= 7;
            }

            while (v43);
          }

          else
          {
            LOBYTE(v42) = v41;
          }

          *v40 = v42;
          v7 = (v40 + 1);
          ++v36;
          v35 = *this;
          if (v36 >= **this)
          {
            return v7;
          }
        }

      case 0x12:
        v169 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v170 = 0;
        v171 = 8 * a4;
        break;
      default:
        return v7;
    }

    while (1)
    {
      if (*a6 <= v7)
      {
        v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
        v172 = *(*(*this + 8) + 8 * v170);
        if (v171 < 0x80)
        {
LABEL_263:
          LOBYTE(v173) = v171;
          goto LABEL_264;
        }
      }

      else
      {
        v172 = *(*(v169 + 8) + 8 * v170);
        if (v171 < 0x80)
        {
          goto LABEL_263;
        }
      }

      v178 = v171;
      do
      {
        *v7 = v178 | 0x80;
        v7 = (v7 + 1);
        v173 = v178 >> 7;
        v179 = v178 >> 14;
        v178 >>= 7;
      }

      while (v179);
LABEL_264:
      *v7 = v173;
      v174 = v7 + 1;
      v175 = (2 * v172) ^ (v172 >> 63);
      if (v175 >= 0x80)
      {
        do
        {
          *v174++ = v175 | 0x80;
          v176 = v175 >> 7;
          v177 = v175 >> 14;
          v175 >>= 7;
        }

        while (v177);
      }

      else
      {
        LOBYTE(v176) = v175;
      }

      *v174 = v176;
      v7 = (v174 + 1);
      ++v170;
      v169 = *this;
      if (v170 >= **this)
      {
        return v7;
      }
    }
  }

  if (*(this + 3))
  {
    if (*a6 <= a5)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
      v10 = (8 * a4) | 2;
      if ((8 * a4) < 0x80)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = (8 * a4) | 2;
      if ((8 * a4) < 0x80)
      {
LABEL_6:
        LOBYTE(v11) = v10;
        goto LABEL_7;
      }
    }

    do
    {
      *v7 = v10 | 0x80;
      v7 = (v7 + 1);
      v11 = v10 >> 7;
      v285 = v10 >> 14;
      v10 >>= 7;
    }

    while (v285);
LABEL_7:
    *v7 = v11;
    v12 = v7 + 1;
    v13 = *(this + 3);
    if (v13 >= 0x80)
    {
      do
      {
        *v12++ = v13 | 0x80;
        v14 = v13 >> 7;
        v284 = v13 >> 14;
        v13 >>= 7;
      }

      while (v284);
    }

    else
    {
      LODWORD(v14) = *(this + 3);
    }

    *v12 = v14;
    v7 = (v12 + 1);
    switch(*(this + 8))
    {
      case 1:
        v15 = *this;
        if (**this >= 1)
        {
          v16 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v15 = *this;
            }

            *v7 = *(*(v15 + 8) + 8 * v16);
            v7 = (v7 + 8);
            ++v16;
            v15 = *this;
          }

          while (v16 < **this);
        }

        return v7;
      case 2:
        v270 = *this;
        if (**this >= 1)
        {
          v271 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v270 = *this;
            }

            *v7 = *(*(v270 + 8) + 4 * v271);
            v7 = (v7 + 4);
            ++v271;
            v270 = *this;
          }

          while (v271 < **this);
        }

        return v7;
      case 3:
        v258 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v259 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v260 = *(*(*this + 8) + 8 * v259);
            if (v260 >= 0x80)
            {
              do
              {
LABEL_439:
                *v7 = v260 | 0x80;
                v7 = (v7 + 1);
                v261 = v260 >> 7;
                v262 = v260 >> 14;
                v260 >>= 7;
              }

              while (v262);
              goto LABEL_436;
            }
          }

          else
          {
            v260 = *(*(v258 + 8) + 8 * v259);
            if (v260 >= 0x80)
            {
              goto LABEL_439;
            }
          }

          LOBYTE(v261) = v260;
LABEL_436:
          *v7 = v261;
          v7 = (v7 + 1);
          ++v259;
          v258 = *this;
          if (v259 >= **this)
          {
            return v7;
          }
        }

      case 4:
        v263 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v264 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v265 = *(*(*this + 8) + 8 * v264);
            if (v265 >= 0x80)
            {
              do
              {
LABEL_449:
                *v7 = v265 | 0x80;
                v7 = (v7 + 1);
                v266 = v265 >> 7;
                v267 = v265 >> 14;
                v265 >>= 7;
              }

              while (v267);
              goto LABEL_446;
            }
          }

          else
          {
            v265 = *(*(v263 + 8) + 8 * v264);
            if (v265 >= 0x80)
            {
              goto LABEL_449;
            }
          }

          LOBYTE(v266) = v265;
LABEL_446:
          *v7 = v266;
          v7 = (v7 + 1);
          ++v264;
          v263 = *this;
          if (v264 >= **this)
          {
            return v7;
          }
        }

      case 5:
        v246 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v247 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v248 = *(*(*this + 8) + 4 * v247);
            if (v248 >= 0x80)
            {
              do
              {
LABEL_413:
                *v7 = v248 | 0x80;
                v7 = (v7 + 1);
                v249 = v248 >> 7;
                v250 = v248 >> 14;
                v248 >>= 7;
              }

              while (v250);
              goto LABEL_410;
            }
          }

          else
          {
            v248 = *(*(v246 + 8) + 4 * v247);
            if (v248 >= 0x80)
            {
              goto LABEL_413;
            }
          }

          LOBYTE(v249) = v248;
LABEL_410:
          *v7 = v249;
          v7 = (v7 + 1);
          ++v247;
          v246 = *this;
          if (v247 >= **this)
          {
            return v7;
          }
        }

      case 6:
        v272 = *this;
        if (**this >= 1)
        {
          v273 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v272 = *this;
            }

            *v7 = *(*(v272 + 8) + 8 * v273);
            v7 = (v7 + 8);
            ++v273;
            v272 = *this;
          }

          while (v273 < **this);
        }

        return v7;
      case 7:
        v281 = *this;
        if (**this >= 1)
        {
          v282 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v281 = *this;
            }

            *v7 = *(*(v281 + 8) + 4 * v282);
            v7 = (v7 + 4);
            ++v282;
            v281 = *this;
          }

          while (v282 < **this);
        }

        return v7;
      case 8:
        v268 = *this;
        if (**this >= 1)
        {
          v269 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v268 = *this;
            }

            *v7 = *(*(v268 + 8) + v269);
            v7 = (v7 + 1);
            ++v269;
            v268 = *this;
          }

          while (v269 < **this);
        }

        return v7;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v299, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 1744);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v299, "Non-primitive types can't be packed.");
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v299);
      case 0xD:
        v253 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v254 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v255 = *(*(*this + 8) + 4 * v254);
            if (v255 >= 0x80)
            {
              do
              {
LABEL_429:
                *v7 = v255 | 0x80;
                v7 = (v7 + 1);
                v256 = v255 >> 7;
                v257 = v255 >> 14;
                v255 >>= 7;
              }

              while (v257);
              goto LABEL_426;
            }
          }

          else
          {
            v255 = *(*(v253 + 8) + 4 * v254);
            if (v255 >= 0x80)
            {
              goto LABEL_429;
            }
          }

          LOBYTE(v256) = v255;
LABEL_426:
          *v7 = v256;
          v7 = (v7 + 1);
          ++v254;
          v253 = *this;
          if (v254 >= **this)
          {
            return v7;
          }
        }

      case 0xE:
        v241 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v242 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v243 = *(*(*this + 8) + 4 * v242);
            if (v243 >= 0x80)
            {
              do
              {
LABEL_403:
                *v7 = v243 | 0x80;
                v7 = (v7 + 1);
                v244 = v243 >> 7;
                v245 = v243 >> 14;
                v243 >>= 7;
              }

              while (v245);
              goto LABEL_400;
            }
          }

          else
          {
            v243 = *(*(v241 + 8) + 4 * v242);
            if (v243 >= 0x80)
            {
              goto LABEL_403;
            }
          }

          LOBYTE(v244) = v243;
LABEL_400:
          *v7 = v244;
          v7 = (v7 + 1);
          ++v242;
          v241 = *this;
          if (v242 >= **this)
          {
            return v7;
          }
        }

      case 0xF:
        v251 = *this;
        if (**this >= 1)
        {
          v252 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v251 = *this;
            }

            *v7 = *(*(v251 + 8) + 4 * v252);
            v7 = (v7 + 4);
            ++v252;
            v251 = *this;
          }

          while (v252 < **this);
        }

        return v7;
      case 0x10:
        v239 = *this;
        if (**this >= 1)
        {
          v240 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v239 = *this;
            }

            *v7 = *(*(v239 + 8) + 8 * v240);
            v7 = (v7 + 8);
            ++v240;
            v239 = *this;
          }

          while (v240 < **this);
        }

        return v7;
      case 0x11:
        v274 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v275 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v279 = *(*(*this + 8) + 4 * v275);
            v277 = (2 * v279) ^ (v279 >> 31);
            if (v277 >= 0x80)
            {
              do
              {
LABEL_477:
                *v7 = v277 | 0x80;
                v7 = (v7 + 1);
                v278 = v277 >> 7;
                v280 = v277 >> 14;
                v277 >>= 7;
              }

              while (v280);
              goto LABEL_474;
            }
          }

          else
          {
            v276 = *(*(v274 + 8) + 4 * v275);
            v277 = (2 * v276) ^ (v276 >> 31);
            if (v277 >= 0x80)
            {
              goto LABEL_477;
            }
          }

          LOBYTE(v278) = v277;
LABEL_474:
          *v7 = v278;
          v7 = (v7 + 1);
          ++v275;
          v274 = *this;
          if (v275 >= **this)
          {
            return v7;
          }
        }

      case 0x12:
        v232 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v233 = 0;
        break;
      default:
        return v7;
    }

    do
    {
      if (*a6 <= v7)
      {
        v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
        v237 = *(*(*this + 8) + 8 * v233);
        v235 = (2 * v237) ^ (v237 >> 63);
        if (v235 >= 0x80)
        {
          do
          {
LABEL_387:
            *v7 = v235 | 0x80;
            v7 = (v7 + 1);
            v236 = v235 >> 7;
            v238 = v235 >> 14;
            v235 >>= 7;
          }

          while (v238);
          goto LABEL_384;
        }
      }

      else
      {
        v234 = *(*(v232 + 8) + 8 * v233);
        v235 = (2 * v234) ^ (v234 >> 63);
        if (v235 >= 0x80)
        {
          goto LABEL_387;
        }
      }

      LOBYTE(v236) = v235;
LABEL_384:
      *v7 = v236;
      v7 = (v7 + 1);
      ++v233;
      v232 = *this;
    }

    while (v233 < **this);
  }

  return v7;
}

uint64_t google::protobuf::internal::ExtensionSet::ByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v8[0] = 0;
  v1 = *(this + 5);
  v2 = *(this + 2);
  if (v1 < 0)
  {
    google::protobuf::internal::ExtensionSet::ByteSize(v8, v2);
    return v8[1];
  }

  else
  {
    v3 = 0;
    if (*(this + 5))
    {
      v4 = &v2[4 * v1];
      v5 = *(this + 2);
      do
      {
        v6 = *v5;
        v5 += 8;
        v3 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v2 + 1, v6);
        v2 = v5;
      }

      while (v5 != v4);
    }

    return v3;
  }
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::ByteSize(uint64_t **this, int a2)
{
  if (*(this + 9) == 1)
  {
    v3 = *(this + 8);
    if (*(this + 11) != 1)
    {
      v7 = v3 - 1;
      v8 = ((352 - 9 * __clz(8 * a2)) >> 6) << (v3 == 10);
      switch(v7)
      {
        case 0:
        case 5:
        case 15:
          v9 = v8 + 8;
          return v9 * **this;
        case 1:
        case 6:
        case 14:
          v9 = v8 + 4;
          return v9 * **this;
        case 2:
          v59 = **this;
          v6 = v8 * v59;
          if (v59 < 1)
          {
            return v6;
          }

          v60 = (*this)[1];
          if (v59 == 1)
          {
            v61 = 0;
          }

          else
          {
            v183 = 0;
            v61 = v59 & 0x7FFFFFFE;
            v184 = (v60 + 8);
            v185 = v61;
            do
            {
              v6 += (640 - 9 * __clz(*(v184 - 1))) >> 6;
              v183 += (640 - 9 * __clz(*v184)) >> 6;
              v184 += 2;
              v185 -= 2;
            }

            while (v185);
            v6 += v183;
            if (v61 == v59)
            {
              return v6;
            }
          }

          v186 = (v60 + 8 * v61);
          v187 = v59 - v61;
          do
          {
            v188 = *v186++;
            v6 += (640 - 9 * __clz(v188)) >> 6;
            --v187;
          }

          while (v187);
          return v6;
        case 3:
          v62 = **this;
          v6 = v8 * v62;
          if (v62 < 1)
          {
            return v6;
          }

          v63 = (*this)[1];
          if (v62 == 1)
          {
            v64 = 0;
          }

          else
          {
            v189 = 0;
            v64 = v62 & 0x7FFFFFFE;
            v190 = (v63 + 8);
            v191 = v64;
            do
            {
              v6 += (640 - 9 * __clz(*(v190 - 1))) >> 6;
              v189 += (640 - 9 * __clz(*v190)) >> 6;
              v190 += 2;
              v191 -= 2;
            }

            while (v191);
            v6 += v189;
            if (v64 == v62)
            {
              return v6;
            }
          }

          v192 = (v63 + 8 * v64);
          v193 = v62 - v64;
          do
          {
            v194 = *v192++;
            v6 += (640 - 9 * __clz(v194)) >> 6;
            --v193;
          }

          while (v193);
          return v6;
        case 4:
          v53 = **this;
          v6 = v8 * v53;
          if (v53 < 1)
          {
            return v6;
          }

          v54 = (*this)[1];
          if (v53 == 1)
          {
            v55 = 0;
          }

          else
          {
            v171 = 0;
            v55 = v53 & 0x7FFFFFFE;
            v172 = (v54 + 4);
            v173 = v55;
            do
            {
              v6 += (640 - 9 * __clz(*(v172 - 1))) >> 6;
              v171 += (640 - 9 * __clz(*v172)) >> 6;
              v172 += 2;
              v173 -= 2;
            }

            while (v173);
            v6 += v171;
            if (v55 == v53)
            {
              return v6;
            }
          }

          v174 = (v54 + 4 * v55);
          v175 = v53 - v55;
          do
          {
            v176 = *v174++;
            v6 += (640 - 9 * __clz(v176)) >> 6;
            --v175;
          }

          while (v175);
          return v6;
        case 7:
          return **this + **this * v8;
        case 8:
          v72 = *this;
          v73 = *(*this + 2);
          v6 = v8 * v73;
          if (v73 < 1)
          {
            return v6;
          }

          v74 = *v72;
          if (v73 == 1)
          {
            v75 = 0;
          }

          else
          {
            v212 = 0;
            v75 = v73 & 0x7FFFFFFE;
            v213 = *v72 + 15;
            v214 = v75;
            do
            {
              v215 = (v213 - 8);
              if (v74)
              {
                v216 = v213;
              }

              else
              {
                v215 = *this;
                v216 = *this;
              }

              v217 = *v215;
              v218 = *v216;
              v219 = *(v217 + 23);
              v220 = *(v218 + 23);
              v221 = *(v217 + 8);
              v222 = *(v218 + 8);
              if ((v219 & 0x80u) == 0)
              {
                v221 = v219;
              }

              if ((v220 & 0x80u) == 0)
              {
                v222 = v220;
              }

              v6 += v221 + ((352 - 9 * __clz(v221)) >> 6);
              v212 += v222 + ((352 - 9 * __clz(v222)) >> 6);
              v213 += 16;
              v214 -= 2;
            }

            while (v214);
            v6 += v212;
            if (v75 == v73)
            {
              return v6;
            }
          }

          v223 = *v72 - 1 + 8 * v75 + 8;
          v224 = v73 - v75;
          do
          {
            if (v74)
            {
              v225 = v223;
            }

            else
            {
              v225 = *this;
            }

            v226 = *v225;
            v227 = *(v226 + 23);
            v228 = *(v226 + 8);
            if ((v227 & 0x80u) == 0)
            {
              v228 = v227;
            }

            v6 += v228 + ((352 - 9 * __clz(v228)) >> 6);
            v223 += 8;
            --v224;
          }

          while (v224);
          return v6;
        case 9:
          v40 = *this;
          v41 = *(*this + 2);
          v6 = v8 * v41;
          if (v41 >= 1)
          {
            v42 = 0;
            v43 = 8;
            do
            {
              if (*v40)
              {
                v40 = *v40 + v43 - 1;
              }

              v6 += (*(**v40 + 48))();
              ++v42;
              v40 = *this;
              v43 += 8;
            }

            while (v42 < *(*this + 2));
          }

          return v6;
        case 10:
          v44 = *this;
          v45 = *(*this + 2);
          v6 = v8 * v45;
          if (v45 >= 1)
          {
            v46 = 0;
            v47 = 8;
            do
            {
              if (*v44)
              {
                v44 = *v44 + v47 - 1;
              }

              v48 = (*(**v44 + 48))();
              v6 += v48 + ((352 - 9 * __clz(v48)) >> 6);
              ++v46;
              v44 = *this;
              v47 += 8;
            }

            while (v46 < *(*this + 2));
          }

          return v6;
        case 11:
          v65 = *this;
          v66 = *(*this + 2);
          v6 = v8 * v66;
          if (v66 < 1)
          {
            return v6;
          }

          v67 = *v65;
          if (v66 == 1)
          {
            v68 = 0;
          }

          else
          {
            v195 = 0;
            v68 = v66 & 0x7FFFFFFE;
            v196 = *v65 + 15;
            v197 = v68;
            do
            {
              v198 = (v196 - 8);
              if (v67)
              {
                v199 = v196;
              }

              else
              {
                v198 = *this;
                v199 = *this;
              }

              v200 = *v198;
              v201 = *v199;
              v202 = *(v200 + 23);
              v203 = *(v201 + 23);
              v204 = *(v200 + 8);
              v205 = *(v201 + 8);
              if ((v202 & 0x80u) == 0)
              {
                v204 = v202;
              }

              if ((v203 & 0x80u) == 0)
              {
                v205 = v203;
              }

              v6 += v204 + ((352 - 9 * __clz(v204)) >> 6);
              v195 += v205 + ((352 - 9 * __clz(v205)) >> 6);
              v196 += 16;
              v197 -= 2;
            }

            while (v197);
            v6 += v195;
            if (v68 == v66)
            {
              return v6;
            }
          }

          v206 = *v65 - 1 + 8 * v68 + 8;
          v207 = v66 - v68;
          do
          {
            if (v67)
            {
              v208 = v206;
            }

            else
            {
              v208 = *this;
            }

            v209 = *v208;
            v210 = *(v209 + 23);
            v211 = *(v209 + 8);
            if ((v210 & 0x80u) == 0)
            {
              v211 = v210;
            }

            v6 += v211 + ((352 - 9 * __clz(v211)) >> 6);
            v206 += 8;
            --v207;
          }

          while (v207);
          return v6;
        case 12:
          v37 = **this;
          v6 = v8 * v37;
          if (v37 < 1)
          {
            return v6;
          }

          v38 = (*this)[1];
          if (v37 >= 8)
          {
            v39 = v37 & 0x7FFFFFF8;
            v152 = 0uLL;
            v153 = v6;
            v154 = v38 + 1;
            v155.i64[0] = 0x800000008;
            v155.i64[1] = 0x800000008;
            v156 = vdupq_n_s32(0x160u);
            v157 = v39;
            v158 = 0uLL;
            v159 = 0uLL;
            do
            {
              v160 = vshrq_n_u32(vmlaq_s32(v156, vclzq_s32(v154[-1]), v155), 6uLL);
              v161 = vshrq_n_u32(vmlaq_s32(v156, vclzq_s32(*v154), v155), 6uLL);
              v152 = vaddw_high_u32(v152, v160);
              v153 = vaddw_u32(v153, *v160.i8);
              v159 = vaddw_high_u32(v159, v161);
              v158 = vaddw_u32(v158, *v161.i8);
              v154 += 2;
              v157 -= 8;
            }

            while (v157);
            v6 = vaddvq_s64(vaddq_s64(vaddq_s64(v158, v153), vaddq_s64(v159, v152)));
            if (v39 == v37)
            {
              return v6;
            }
          }

          else
          {
            v39 = 0;
          }

          v162 = v38 + v39;
          v163 = v37 - v39;
          do
          {
            v164 = *v162++;
            v6 += (352 - 9 * __clz(v164)) >> 6;
            --v163;
          }

          while (v163);
          return v6;
        case 13:
          v50 = **this;
          v6 = v8 * v50;
          if (v50 < 1)
          {
            return v6;
          }

          v51 = (*this)[1];
          if (v50 == 1)
          {
            v52 = 0;
          }

          else
          {
            v165 = 0;
            v52 = v50 & 0x7FFFFFFE;
            v166 = (v51 + 4);
            v167 = v52;
            do
            {
              v6 += (640 - 9 * __clz(*(v166 - 1))) >> 6;
              v165 += (640 - 9 * __clz(*v166)) >> 6;
              v166 += 2;
              v167 -= 2;
            }

            while (v167);
            v6 += v165;
            if (v52 == v50)
            {
              return v6;
            }
          }

          v168 = (v51 + 4 * v52);
          v169 = v50 - v52;
          do
          {
            v170 = *v168++;
            v6 += (640 - 9 * __clz(v170)) >> 6;
            --v169;
          }

          while (v169);
          return v6;
        case 16:
          v33 = **this;
          v6 = v8 * v33;
          if (v33 < 1)
          {
            return v6;
          }

          v34 = (*this)[1];
          if (v33 >= 8)
          {
            v35 = v33 & 0x7FFFFFF8;
            v139 = 0uLL;
            v140 = v6;
            v141 = v34 + 1;
            v142.i64[0] = 0x800000008;
            v142.i64[1] = 0x800000008;
            v143 = vdupq_n_s32(0x160u);
            v144 = v35;
            v145 = 0uLL;
            v146 = 0uLL;
            do
            {
              v147 = vshrq_n_u32(vmlaq_s32(v143, vclzq_s32(veorq_s8(vaddq_s32(v141[-1], v141[-1]), vcltzq_s32(v141[-1]))), v142), 6uLL);
              v148 = vshrq_n_u32(vmlaq_s32(v143, vclzq_s32(veorq_s8(vaddq_s32(*v141, *v141), vcltzq_s32(*v141))), v142), 6uLL);
              v139 = vaddw_high_u32(v139, v147);
              v140 = vaddw_u32(v140, *v147.i8);
              v146 = vaddw_high_u32(v146, v148);
              v145 = vaddw_u32(v145, *v148.i8);
              v141 += 2;
              v144 -= 8;
            }

            while (v144);
            v6 = vaddvq_s64(vaddq_s64(vaddq_s64(v145, v140), vaddq_s64(v146, v139)));
            if (v35 == v33)
            {
              return v6;
            }
          }

          else
          {
            v35 = 0;
          }

          v149 = &v34->i32[v35];
          v150 = v33 - v35;
          do
          {
            v151 = *v149++;
            v6 += (352 - 9 * __clz((2 * v151) ^ (v151 >> 31))) >> 6;
            --v150;
          }

          while (v150);
          return v6;
        case 17:
          v56 = **this;
          v6 = v8 * v56;
          if (v56 < 1)
          {
            return v6;
          }

          v57 = (*this)[1];
          if (v56 == 1)
          {
            v58 = 0;
          }

          else
          {
            v177 = 0;
            v58 = v56 & 0x7FFFFFFE;
            v178 = (v57 + 8);
            v179 = v58;
            do
            {
              v6 += (640 - 9 * __clz((2 * *(v178 - 1)) ^ (*(v178 - 1) >> 63))) >> 6;
              v177 += (640 - 9 * __clz((2 * *v178) ^ (*v178 >> 63))) >> 6;
              v178 += 2;
              v179 -= 2;
            }

            while (v179);
            v6 += v177;
            if (v58 == v56)
            {
              return v6;
            }
          }

          v180 = (v57 + 8 * v58);
          v181 = v56 - v58;
          do
          {
            v182 = *v180++;
            v6 += (640 - 9 * __clz((2 * v182) ^ (v182 >> 63))) >> 6;
            --v181;
          }

          while (v181);
          return v6;
        default:
          return 0;
      }
    }

    switch(*(this + 8))
    {
      case 1:
      case 6:
      case 0x10:
        v4 = 8 * **this;
        goto LABEL_135;
      case 2:
      case 7:
      case 0xF:
        v4 = 4 * **this;
        goto LABEL_135;
      case 3:
        v24 = **this;
        if (v24 < 1)
        {
          goto LABEL_42;
        }

        v25 = (*this)[1];
        if (v24 == 1)
        {
          v26 = 0;
          v4 = 0;
LABEL_121:
          v114 = (v25 + 8 * v26);
          v115 = v24 - v26;
          do
          {
            v116 = *v114++;
            v4 += (640 - 9 * __clz(v116)) >> 6;
            --v115;
          }

          while (v115);
          goto LABEL_135;
        }

        v110 = 0;
        v111 = 0;
        v26 = v24 & 0x7FFFFFFE;
        v112 = (v25 + 8);
        v113 = v26;
        do
        {
          v110 += (640 - 9 * __clz(*(v112 - 1))) >> 6;
          v111 += (640 - 9 * __clz(*v112)) >> 6;
          v112 += 2;
          v113 -= 2;
        }

        while (v113);
        v4 = v111 + v110;
        if (v26 != v24)
        {
          goto LABEL_121;
        }

        goto LABEL_135;
      case 4:
        v27 = **this;
        if (v27 < 1)
        {
          goto LABEL_42;
        }

        v28 = (*this)[1];
        if (v27 == 1)
        {
          v29 = 0;
          v4 = 0;
LABEL_127:
          v121 = (v28 + 8 * v29);
          v122 = v27 - v29;
          do
          {
            v123 = *v121++;
            v4 += (640 - 9 * __clz(v123)) >> 6;
            --v122;
          }

          while (v122);
          goto LABEL_135;
        }

        v117 = 0;
        v118 = 0;
        v29 = v27 & 0x7FFFFFFE;
        v119 = (v28 + 8);
        v120 = v29;
        do
        {
          v117 += (640 - 9 * __clz(*(v119 - 1))) >> 6;
          v118 += (640 - 9 * __clz(*v119)) >> 6;
          v119 += 2;
          v120 -= 2;
        }

        while (v120);
        v4 = v118 + v117;
        if (v29 != v27)
        {
          goto LABEL_127;
        }

        goto LABEL_135;
      case 5:
        v21 = **this;
        if (v21 < 1)
        {
          goto LABEL_42;
        }

        v22 = (*this)[1];
        if (v21 == 1)
        {
          v23 = 0;
          v4 = 0;
LABEL_115:
          v107 = (v22 + 4 * v23);
          v108 = v21 - v23;
          do
          {
            v109 = *v107++;
            v4 += (640 - 9 * __clz(v109)) >> 6;
            --v108;
          }

          while (v108);
          goto LABEL_135;
        }

        v103 = 0;
        v104 = 0;
        v23 = v21 & 0x7FFFFFFE;
        v105 = (v22 + 4);
        v106 = v23;
        do
        {
          v103 += (640 - 9 * __clz(*(v105 - 1))) >> 6;
          v104 += (640 - 9 * __clz(*v105)) >> 6;
          v105 += 2;
          v106 -= 2;
        }

        while (v106);
        v4 = v104 + v103;
        if (v23 != v21)
        {
          goto LABEL_115;
        }

        goto LABEL_135;
      case 8:
        v4 = **this;
        goto LABEL_135;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v229, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 1383);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v229, "Non-primitive types can't be packed.");
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v229);
      case 0xD:
        v18 = **this;
        if (v18 < 1)
        {
          goto LABEL_42;
        }

        v19 = (*this)[1];
        if (v18 <= 7)
        {
          v20 = 0;
          v4 = 0;
LABEL_109:
          v100 = v19 + v20;
          v101 = v18 - v20;
          do
          {
            v102 = *v100++;
            v4 += (352 - 9 * __clz(v102)) >> 6;
            --v101;
          }

          while (v101);
          goto LABEL_135;
        }

        v20 = v18 & 0x7FFFFFF8;
        v90 = v19 + 1;
        v91 = 0uLL;
        v92.i64[0] = 0x800000008;
        v92.i64[1] = 0x800000008;
        v93 = vdupq_n_s32(0x160u);
        v94 = v20;
        v95 = 0uLL;
        v96 = 0uLL;
        v97 = 0uLL;
        do
        {
          v98 = vshrq_n_u32(vmlaq_s32(v93, vclzq_s32(v90[-1]), v92), 6uLL);
          v99 = vshrq_n_u32(vmlaq_s32(v93, vclzq_s32(*v90), v92), 6uLL);
          v95 = vaddw_high_u32(v95, v98);
          v91 = vaddw_u32(v91, *v98.i8);
          v97 = vaddw_high_u32(v97, v99);
          v96 = vaddw_u32(v96, *v99.i8);
          v90 += 2;
          v94 -= 8;
        }

        while (v94);
        v4 = vaddvq_s64(vaddq_s64(vaddq_s64(v96, v91), vaddq_s64(v97, v95)));
        if (v20 != v18)
        {
          goto LABEL_109;
        }

        goto LABEL_135;
      case 0xE:
        v15 = **this;
        if (v15 < 1)
        {
          goto LABEL_42;
        }

        v16 = (*this)[1];
        if (v15 == 1)
        {
          v17 = 0;
          v4 = 0;
LABEL_103:
          v87 = (v16 + 4 * v17);
          v88 = v15 - v17;
          do
          {
            v89 = *v87++;
            v4 += (640 - 9 * __clz(v89)) >> 6;
            --v88;
          }

          while (v88);
          goto LABEL_135;
        }

        v83 = 0;
        v84 = 0;
        v17 = v15 & 0x7FFFFFFE;
        v85 = (v16 + 4);
        v86 = v17;
        do
        {
          v83 += (640 - 9 * __clz(*(v85 - 1))) >> 6;
          v84 += (640 - 9 * __clz(*v85)) >> 6;
          v85 += 2;
          v86 -= 2;
        }

        while (v86);
        v4 = v84 + v83;
        if (v17 != v15)
        {
          goto LABEL_103;
        }

        goto LABEL_135;
      case 0x11:
        v30 = **this;
        if (v30 < 1)
        {
          goto LABEL_42;
        }

        v31 = (*this)[1];
        if (v30 <= 7)
        {
          v32 = 0;
          v4 = 0;
LABEL_133:
          v134 = &v31->i32[v32];
          v135 = v30 - v32;
          do
          {
            v136 = *v134++;
            v4 += (352 - 9 * __clz((2 * v136) ^ (v136 >> 31))) >> 6;
            --v135;
          }

          while (v135);
          goto LABEL_135;
        }

        v32 = v30 & 0x7FFFFFF8;
        v124 = v31 + 1;
        v125 = 0uLL;
        v126.i64[0] = 0x800000008;
        v126.i64[1] = 0x800000008;
        v127 = vdupq_n_s32(0x160u);
        v128 = v32;
        v129 = 0uLL;
        v130 = 0uLL;
        v131 = 0uLL;
        do
        {
          v132 = vshrq_n_u32(vmlaq_s32(v127, vclzq_s32(veorq_s8(vaddq_s32(v124[-1], v124[-1]), vcltzq_s32(v124[-1]))), v126), 6uLL);
          v133 = vshrq_n_u32(vmlaq_s32(v127, vclzq_s32(veorq_s8(vaddq_s32(*v124, *v124), vcltzq_s32(*v124))), v126), 6uLL);
          v129 = vaddw_high_u32(v129, v132);
          v125 = vaddw_u32(v125, *v132.i8);
          v131 = vaddw_high_u32(v131, v133);
          v130 = vaddw_u32(v130, *v133.i8);
          v124 += 2;
          v128 -= 8;
        }

        while (v128);
        v4 = vaddvq_s64(vaddq_s64(vaddq_s64(v130, v125), vaddq_s64(v131, v129)));
        if (v32 != v30)
        {
          goto LABEL_133;
        }

        goto LABEL_135;
      case 0x12:
        v12 = **this;
        if (v12 < 1)
        {
          goto LABEL_42;
        }

        v13 = (*this)[1];
        if (v12 == 1)
        {
          v14 = 0;
          v4 = 0;
LABEL_97:
          v80 = (v13 + 8 * v14);
          v81 = v12 - v14;
          do
          {
            v82 = *v80++;
            v4 += (640 - 9 * __clz((2 * v82) ^ (v82 >> 63))) >> 6;
            --v81;
          }

          while (v81);
          goto LABEL_135;
        }

        v76 = 0;
        v77 = 0;
        v14 = v12 & 0x7FFFFFFE;
        v78 = (v13 + 8);
        v79 = v14;
        do
        {
          v76 += (640 - 9 * __clz((2 * *(v78 - 1)) ^ (*(v78 - 1) >> 63))) >> 6;
          v77 += (640 - 9 * __clz((2 * *v78) ^ (*v78 >> 63))) >> 6;
          v78 += 2;
          v79 -= 2;
        }

        while (v79);
        v4 = v77 + v76;
        if (v14 != v12)
        {
          goto LABEL_97;
        }

LABEL_135:
        *(this + 3) = v4;
        v137 = v4 + ((352 - 9 * __clz((8 * a2) | 2)) >> 6) + ((352 - 9 * __clz(v4)) >> 6);
        if (v4)
        {
          v6 = v137;
        }

        else
        {
          v6 = 0;
        }

        break;
      default:
LABEL_42:
        v6 = 0;
        *(this + 3) = 0;
        return v6;
    }
  }

  else
  {
    v5 = *(this + 10);
    if (v5)
    {
      return 0;
    }

    else
    {
      v6 = ((352 - 9 * __clz(8 * a2)) >> 6) << (*(this + 8) == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v6 += 8;
          return v6;
        case 2:
        case 7:
        case 0xF:
          v6 += 4;
          return v6;
        case 3:
        case 4:
          v11 = *this;
          goto LABEL_74;
        case 5:
        case 0xE:
          v11 = *this;
          goto LABEL_74;
        case 8:
          return ++v6;
        case 9:
        case 0xC:
          v10 = (*this)[1];
          if (*(*this + 23) >= 0)
          {
            v10 = *(*this + 23);
          }

          v6 += v10 + ((352 - 9 * __clz(v10)) >> 6);
          return v6;
        case 0xA:
          v49 = *this;
          v6 += (*(**this + 48))();
          return v6;
        case 0xB:
          v69 = *this;
          v70 = **this;
          if ((v5 & 0x10) != 0)
          {
            v71 = (*(v70 + 96))();
          }

          else
          {
            v71 = (*(v70 + 48))();
          }

          v6 += v71 + ((352 - 9 * __clz(v71)) >> 6);
          return v6;
        case 0xD:
          v36 = *this;
          goto LABEL_85;
        case 0x11:
          v36 = (2 * *this) ^ (*this >> 31);
LABEL_85:
          v6 += (352 - 9 * __clz(v36)) >> 6;
          break;
        case 0x12:
          v11 = (2 * *this) ^ (*this >> 63);
LABEL_74:
          v6 += (-9 * __clz(v11) + 640) >> 6;
          break;
        default:
          return v6;
      }
    }
  }

  return v6;
}

uint64_t google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 2);
  v3 = *v2;
  v4 = *(*v2 + 10);
  if (!*(*v2 + 10))
  {
    goto LABEL_6;
  }

LABEL_2:
  v5 = 0;
  v6 = (v3 + 2);
  do
  {
    v7 = *v6;
    v6 += 8;
    if (v7 >= a2)
    {
      goto LABEL_7;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_7:
  while (!*(v3 + 11))
  {
    v3 = v3[v5 + 30];
    v4 = *(v3 + 10);
    if (*(v3 + 10))
    {
      goto LABEL_2;
    }

LABEL_6:
    LODWORD(v5) = 0;
  }

  while (v5 == *(v3 + 10))
  {
    LODWORD(v5) = *(v3 + 8);
    v3 = *v3;
    if (*(v3 + 11))
    {
      goto LABEL_14;
    }
  }

  if (SLODWORD(v3[4 * v5 + 2]) > a2)
  {
LABEL_14:
    v8 = v2[1];
    v9 = *(v8 + 10);
    v3 = v8;
    LODWORD(v5) = v9;
    goto LABEL_16;
  }

  v8 = v2[1];
  v9 = *(v8 + 10);
LABEL_16:
  v10 = v5 == v9 && v3 == v8;
  v11 = &v3[4 * v5 + 3];
  if (v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>>::erase<int>(uint64_t *a1, int *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = *(*a1 + 10);
  if (*(*a1 + 10))
  {
    goto LABEL_4;
  }

LABEL_8:
  LODWORD(v5) = 0;
LABEL_9:
  while (!*(v3 + 11))
  {
    v3 = *(v3 + 8 * v5 + 240);
    v4 = *(v3 + 10);
    if (!*(v3 + 10))
    {
      goto LABEL_8;
    }

LABEL_4:
    v5 = 0;
    v6 = (v3 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7 >= v2)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = v4;
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
    v8 = *(v3 + 10);
    if (v5 != v8)
    {
      break;
    }

    LODWORD(v5) = *(v3 + 8);
    v3 = *v3;
    if (*(v3 + 11))
    {
      v9 = a1[1];
      v10 = *(v9 + 10);
      v11 = v10;
LABEL_13:
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase_range(a1, v9, v11, v9, v11, v21);
      return v21[0];
    }
  }

  v9 = a1[1];
  v11 = *(v9 + 10);
  if (v3 == v9 && v5 == v11)
  {
    goto LABEL_13;
  }

  v14 = v5;
  if (v2 >= *(v3 + 32 * v5 + 16))
  {
    if (*(v3 + 11))
    {
      v15 = v5 + 1;
      if (v15 == v8)
      {
        v16 = v3;
        while (1)
        {
          v17 = *v16;
          if (*(*v16 + 11))
          {
            break;
          }

          v18 = v16[8];
          v16 = *v16;
          if (v18 != *(v17 + 10))
          {
            v15 = v18;
            goto LABEL_30;
          }
        }
      }

      v17 = v3;
    }

    else
    {
      v19 = v3 + 8 * (v5 + 1) + 240;
      do
      {
        v17 = *v19;
        v20 = *(*v19 + 11);
        v19 = *v19 + 240;
      }

      while (!v20);
      v15 = 0;
    }

LABEL_30:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase_range(a1, v3, v14, v17, v15, v21);
    return v21[0];
  }

  else
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase_range(a1, v3, v5, v3, v5, v21);
    return v21[0];
  }
}

void *google::protobuf::internal::OnShutdownDelete<absl::lts_20240722::flat_hash_set<google::protobuf::internal::ExtensionInfo,google::protobuf::internal::anonymous namespace::ExtensionHasher,google::protobuf::internal::anonymous namespace::ExtensionEq,std::allocator<google::protobuf::internal::ExtensionInfo>>>(absl::lts_20240722::flat_hash_set<google::protobuf::internal::ExtensionInfo,google::protobuf::internal::anonymous namespace::ExtensionHasher,google::protobuf::internal::anonymous namespace::ExtensionEq,std::allocator<google::protobuf::internal::ExtensionInfo>> *)::{lambda(void const*)#1}::__invoke(void *result)
{
  if (result)
  {
    if (*result)
    {
      operator delete((result[2] - (result[1] & 1) - 8));
      v1 = vars8;
    }

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::internal::ExtensionInfo>,google::protobuf::internal::anonymous namespace::ExtensionHasher,google::protobuf::internal::anonymous namespace::ExtensionEq,std::allocator<google::protobuf::internal::ExtensionInfo>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,48ul,true,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<google::protobuf::internal::anonymous namespace::ExtensionHasher,google::protobuf::internal::ExtensionInfo>(uint64_t a1, uint64_t a2)
{
  v2 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
  v3 = (((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2)) + *(a2 + 8);
  return ((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3);
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::clear(unsigned __int8 ***a1)
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
    v2 = v2[30];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 240];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 240]);
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
    v6 = *(v6 + 30);
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
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::~()::$_0>(google::protobuf::internal::RepeatedPtrFieldBase *result, int a2, unsigned __int8 *a3, int a4)
{
  v7 = result;
  if (result != a3)
  {
    do
    {
LABEL_3:
      while (1)
      {
        result = google::protobuf::internal::ExtensionSet::Extension::Free(&v7[32 * a2 + 24]);
        if (v7[11])
        {
          break;
        }

        v11 = &v7[8 * (a2 + 1) + 240];
        do
        {
          v7 = *v11;
          v12 = *(*v11 + 11);
          v11 = *v11 + 240;
        }

        while (!v12);
        a2 = 0;
        if (v7 == a3)
        {
          goto LABEL_2;
        }
      }

      if (++a2 == v7[10])
      {
        v8 = v7;
        while (1)
        {
          v9 = *v8;
          if (*(*v8 + 11))
          {
            break;
          }

          v10 = v8[8];
          v8 = *v8;
          if (v10 != v9[10])
          {
            a2 = v10;
            v7 = v9;
            break;
          }
        }
      }
    }

    while (v7 != a3);
  }

LABEL_2:
  if (a2 != a4)
  {
    goto LABEL_3;
  }

  return result;
}

void google::protobuf::RepeatedField<int>::GrowNoAnnotate(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (!v5)
  {
    if (a3 >= 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = 2;
    v8 = 8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v6 = *(v6 - 1);
  if (a3 < 2)
  {
    goto LABEL_7;
  }

  if (v5 > 1073741819)
  {
    v7 = 0x7FFFFFFF;
    v8 = 0x1FFFFFFFCLL;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = 2 * v5 + 2;
  if (v10 <= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v10;
  }

  v8 = 4 * v7;
  if (!v6)
  {
LABEL_14:
    v9 = operator new(v8 + 8);
    *v9 = v6;
    if (*(a1 + 4) < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

LABEL_8:
  v9 = google::protobuf::Arena::AllocateForArray(v6, (v8 + 15) & 0x3FFFFFFF8);
  *v9 = v6;
  if (*(a1 + 4) < 1)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a2 >= 1)
  {
    memcpy(v9 + 1, *(a1 + 8), 4 * a2);
    v11 = *(a1 + 4);
  }

  v12 = *(a1 + 8);
  v14 = *(v12 - 8);
  v13 = (v12 - 8);
  if (v14)
  {
    v15 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
    if (*(v15 + 8) == *v17)
    {
      v18 = 4 * v16 + 8;
      v19 = *(v15 + 16);
      v20 = 59 - __clz(v18);
      v21 = *(v19 + 80);
      if (v20 >= v21)
      {
        if (*(v19 + 80))
        {
          v27 = v18;
          memmove(v13, *(v19 + 88), 8 * v21);
          v18 = v27;
          v23 = *(v19 + 80);
        }

        else
        {
          v23 = 0;
        }

        v24 = v18 >> 3;
        v25 = (v18 & 0xFFFFFFFFFFFFFFF8) - v23 * 8;
        if (v25 >= 1)
        {
          v28 = v18 >> 3;
          bzero(&v13[v23], v25);
          v24 = v28;
        }

        *(v19 + 88) = v13;
        v26 = 64;
        if (v24 < 0x40)
        {
          v26 = v24;
        }

        *(v19 + 80) = v26;
      }

      else
      {
        v22 = *(v19 + 88);
        *v13 = *(v22 + 8 * v20);
        *(v22 + 8 * v20) = v13;
      }
    }
  }

  else
  {
    operator delete(v13);
  }

LABEL_22:
  *(a1 + 4) = v7;
  *(a1 + 8) = v9 + 1;
}

void google::protobuf::RepeatedField<long long>::GrowNoAnnotate(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (!v5)
  {
    if (a3 >= 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    v8 = 8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v6 = *(v6 - 1);
  if (a3 < 1)
  {
    goto LABEL_13;
  }

  if (v5 > 1073741819)
  {
    v7 = 0x7FFFFFFF;
    v8 = 0x3FFFFFFF8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_7:
  if (((2 * v5) | 1) > a3)
  {
    v7 = 2 * v5 + 1;
  }

  else
  {
    v7 = a3;
  }

  v8 = 8 * v7;
  if (!v6)
  {
LABEL_14:
    v9 = operator new(v8 + 8);
    *v9 = v6;
    if (*(a1 + 4) < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

LABEL_11:
  v9 = google::protobuf::Arena::AllocateForArray(v6, (v8 + 15) & 0x7FFFFFFF8);
  *v9 = v6;
  if (*(a1 + 4) < 1)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a2 >= 1)
  {
    memcpy(v9 + 1, *(a1 + 8), 8 * a2);
    v10 = *(a1 + 4);
  }

  v11 = *(a1 + 8);
  v13 = *(v11 - 8);
  v12 = (v11 - 8);
  if (v13)
  {
    v14 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
    if (*(v14 + 8) == *v16)
    {
      v17 = 8 * v15 + 8;
      v18 = *(v14 + 16);
      v19 = 59 - __clz(v17);
      v20 = *(v18 + 80);
      if (v19 >= v20)
      {
        if (*(v18 + 80))
        {
          v25 = v17;
          memmove(v12, *(v18 + 88), 8 * v20);
          v17 = v25;
          v22 = *(v18 + 80);
        }

        else
        {
          v22 = 0;
        }

        v23 = v17 >> 3;
        if ((v17 - v22 * 8) >= 1)
        {
          v26 = v17 >> 3;
          bzero(&v12[v22], v17 - v22 * 8);
          v23 = v26;
        }

        *(v18 + 88) = v12;
        v24 = 64;
        if (v23 < 0x40)
        {
          v24 = v23;
        }

        *(v18 + 80) = v24;
      }

      else
      {
        v21 = *(v18 + 88);
        *v12 = *(v21 + 8 * v19);
        *(v21 + 8 * v19) = v12;
      }
    }
  }

  else
  {
    operator delete(v12);
  }

LABEL_22:
  *(a1 + 4) = v7;
  *(a1 + 8) = v9 + 1;
}

void google::protobuf::RepeatedField<BOOL>::GrowNoAnnotate(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (!v5)
  {
    if (a3 >= 8)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = 8;
    v8 = 8;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v6 = *(v6 - 1);
  if (a3 < 8)
  {
    goto LABEL_7;
  }

  if (v5 > 1073741819)
  {
    v7 = 0x7FFFFFFF;
    v8 = 0x7FFFFFFFLL;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = 2 * v5 + 8;
  if (v10 <= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v10;
  }

  v8 = v7;
  if (!v6)
  {
LABEL_14:
    v9 = operator new(v8 + 8);
    *v9 = v6;
    if (*(a1 + 4) < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

LABEL_8:
  v9 = google::protobuf::Arena::AllocateForArray(v6, (v8 + 15) & 0xFFFFFFF8);
  *v9 = v6;
  if (*(a1 + 4) < 1)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a2 >= 1)
  {
    memcpy(v9 + 1, *(a1 + 8), a2);
    v11 = *(a1 + 4);
  }

  v12 = *(a1 + 8);
  v14 = *(v12 - 8);
  v13 = (v12 - 8);
  if (v14)
  {
    v15 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
    if (*(v15 + 8) == *v17)
    {
      v18 = v16 + 8;
      v19 = *(v15 + 16);
      v20 = 59 - __clz(v18);
      v21 = *(v19 + 80);
      if (v20 >= v21)
      {
        if (*(v19 + 80))
        {
          v27 = v18;
          memmove(v13, *(v19 + 88), 8 * v21);
          v18 = v27;
          v23 = *(v19 + 80);
        }

        else
        {
          v23 = 0;
        }

        v24 = v18 >> 3;
        v25 = (v18 & 0xFFFFFFFFFFFFFFF8) - v23 * 8;
        if (v25 >= 1)
        {
          v28 = v18 >> 3;
          bzero(&v13[v23], v25);
          v24 = v28;
        }

        *(v19 + 88) = v13;
        v26 = 64;
        if (v24 < 0x40)
        {
          v26 = v24;
        }

        *(v19 + 80) = v26;
      }

      else
      {
        v22 = *(v19 + 88);
        *v13 = *(v22 + 8 * v20);
        *(v22 + 8 * v20) = v13;
      }
    }
  }

  else
  {
    operator delete(v13);
  }

LABEL_22:
  *(a1 + 4) = v7;
  *(a1 + 8) = v9 + 1;
}

uint64_t google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(uint64_t a1, void *a2, google::protobuf::internal::ThreadSafeArena *a3, google::protobuf::internal::ThreadSafeArena *this)
{
  if (!a3 && this)
  {
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      google::protobuf::internal::ThreadSafeArena::AddCleanup(this, a2, google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>);
      a2 = v5;
      a1 = v4;
    }

    goto LABEL_5;
  }

  if (this == a3)
  {
LABEL_5:

    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(a1, a2);
  }

  v7 = a1;
  v8 = a2;
  v9 = google::protobuf::internal::NewFromPrototypeHelper(a2);
  google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>::Merge(v8, v9);
  a1 = v7;
  a2 = v9;

  return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(a1, a2);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(uint64_t result, google::protobuf::MessageLite *a2)
{
  v3 = result;
  v4 = *(result + 12);
  v5 = *(result + 8);
  if (v5 > v4)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(result, 1);
LABEL_3:
    ++*(*v3 - 1);
    goto LABEL_21;
  }

  v6 = *result;
  if ((*result & 1) == 0)
  {
    if (!v6)
    {
      if ((v5 & 0x80000000) != 0)
      {
        v7 = 0;
        v8 = 0;
        v9 = 7;
LABEL_16:
        v12 = (v9 + 8 * v8);
        if (v6)
        {
          v13 = v12;
        }

        else
        {
          v13 = result;
        }

        *v13 = v7;
        goto LABEL_3;
      }

      goto LABEL_21;
    }

LABEL_9:
    if (!*(result + 16))
    {
      v10 = v6 + 8 * v5 + 7;
      if (v6)
      {
        v11 = v10;
      }

      else
      {
        v11 = result;
      }

      result = google::protobuf::internal::InternalOutOfLineDeleteMessageLite(*v11, a2);
    }

    goto LABEL_21;
  }

  v8 = *(v6 - 1);
  if (v8 > v4)
  {
    goto LABEL_9;
  }

  if (v5 < v8)
  {
    v9 = v6 + 7;
    v7 = *(v6 + 7 + 8 * v5);
    goto LABEL_16;
  }

  *(v6 - 1) = v8 + 1;
LABEL_21:
  v14 = *(v3 + 8);
  *(v3 + 8) = v14 + 1;
  v15 = (*v3 + 8 * v14 + 7);
  if ((*v3 & 1) == 0)
  {
    v15 = v3;
  }

  *v15 = a2;
  return result;
}

int *google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::Clear(void)::$_0>(int *result, int a2, unsigned __int8 *a3, int a4)
{
  v7 = result;
  if (result != a3)
  {
    do
    {
LABEL_3:
      while (1)
      {
        result = google::protobuf::internal::ExtensionSet::Extension::Clear(&v7[32 * a2 + 24]);
        if (v7[11])
        {
          break;
        }

        v11 = &v7[8 * (a2 + 1) + 240];
        do
        {
          v7 = *v11;
          v12 = *(*v11 + 11);
          v11 = *v11 + 240;
        }

        while (!v12);
        a2 = 0;
        if (v7 == a3)
        {
          goto LABEL_2;
        }
      }

      if (++a2 == v7[10])
      {
        v8 = v7;
        while (1)
        {
          v9 = *v8;
          if (*(*v8 + 11))
          {
            break;
          }

          v10 = v8[8];
          v8 = *v8;
          if (v10 != v9[10])
          {
            a2 = v10;
            v7 = v9;
            break;
          }
        }
      }
    }

    while (v7 != a3);
  }

LABEL_2:
  if (a2 != a4)
  {
    goto LABEL_3;
  }

  return result;
}

__n128 google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::MessageLite const*,google::protobuf::internal::ExtensionSet const&)::$_0>(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6)
{
  v10 = a2;
  while (v10 != a4)
  {
LABEL_3:
    while (1)
    {
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(*(a6 + 8), *a6, *&v10[32 * a3 + 16], &v10[32 * a3 + 24], **(a6 + 16));
      if (v10[11])
      {
        break;
      }

      v15 = &v10[8 * (a3 + 1) + 240];
      do
      {
        v10 = *v15;
        v16 = *(*v15 + 11);
        v15 = *v15 + 240;
      }

      while (!v16);
      a3 = 0;
      if (v10 == a4)
      {
        goto LABEL_2;
      }
    }

    if (++a3 == v10[10])
    {
      v12 = v10;
      while (1)
      {
        v13 = *v12;
        if (*(*v12 + 11))
        {
          break;
        }

        v14 = v12[8];
        v12 = *v12;
        if (v14 != v13[10])
        {
          a3 = v14;
          v10 = v13;
          break;
        }
      }
    }
  }

LABEL_2:
  if (a3 != a5)
  {
    goto LABEL_3;
  }

  result = *a6;
  *a1 = *a6;
  *(a1 + 16) = *(a6 + 16);
  return result;
}

void *google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::ByteSize(void)::$_0>(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, void *a5)
{
  v9 = a1;
  while (v9 != a3)
  {
LABEL_3:
    while (1)
    {
      *a5 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(&v9[32 * a2 + 24], *&v9[32 * a2 + 16]);
      if (v9[11])
      {
        break;
      }

      v13 = &v9[8 * (a2 + 1) + 240];
      do
      {
        v9 = *v13;
        v14 = *(*v13 + 11);
        v13 = *v13 + 240;
      }

      while (!v14);
      a2 = 0;
      if (v9 == a3)
      {
        goto LABEL_2;
      }
    }

    if (++a2 == v9[10])
    {
      v10 = v9;
      while (1)
      {
        v11 = *v10;
        if (*(*v10 + 11))
        {
          break;
        }

        v12 = v10[8];
        v10 = *v10;
        if (v12 != v11[10])
        {
          a2 = v12;
          v9 = v11;
          break;
        }
      }
    }
  }

LABEL_2:
  if (a2 != a4)
  {
    goto LABEL_3;
  }

  return a5;
}
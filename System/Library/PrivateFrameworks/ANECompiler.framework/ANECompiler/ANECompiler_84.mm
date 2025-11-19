void google::protobuf::internal::TcParser::MpPackedVarint<false>(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  if ((a4 & 7) == 2)
  {
    v8 = (a5 + HIDWORD(a4));
    v9 = *(v8 + 5);
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v10 = (v9 >> 6) & 7;
    if (v10)
    {
      v11 = v9 & 0x600;
      if (v10 == 2)
      {
        v12 = v11 >> 9;
        v13 = (a1 + *v8);
        if (v11 >> 9 > 1)
        {
          v22 = v6;
          v23 = v7;
          *&v18 = *(&a5[4 * *(v8 + 4)] + *(a5 + 6));
          *(&v18 + 1) = a1;
          v19 = a5;
          v20 = a4;
          v21 = v13;
          if (v12 == 2)
          {
            google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, a2, &v18);
          }

          else
          {
            google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, a2, &v18);
          }
        }

        else if (v12)
        {

          google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, a2, v13);
        }

        else
        {

          google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, a2, v13);
        }
      }

      else
      {
        v17 = (a1 + *v8);
        if (v11)
        {

          google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, a2, v17);
        }

        else
        {

          google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, a2, v17);
        }
      }
    }

    else
    {
      v15 = (a1 + *v8);

      google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, a2, v15);
    }
  }

  else
  {

    google::protobuf::internal::TcParser::MpRepeatedVarint<false>();
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::MpFixed<false>(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  v7 = (a5 + HIDWORD(a4));
  v8 = *(v7 + 5);
  v9 = v8 & 0x30;
  if (v9 == 32)
  {

    return google::protobuf::internal::TcParser::MpRepeatedFixed<false>(a1, a2, a3, a4, a5, a6);
  }

  v11 = v8 & 0x1C0;
  v12 = a4 & 7;
  if (v11 == 192)
  {
    if (v12 != 1)
    {
LABEL_7:
      v13 = *(a5 + 5);
LABEL_20:

      return v13(a1, a2, a3, a4);
    }
  }

  else if (v12 != 5)
  {
    goto LABEL_7;
  }

  if (v9 == 48)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a5;
    v19 = a6;
    google::protobuf::internal::TcParser::ChangeOneof(a5, a5 + HIDWORD(a4), a4 >> 3, a7, a4, a1);
    a2 = v16;
    a1 = v15;
    a3 = v17;
    a5 = v18;
    LODWORD(a6) = v19;
    v14 = *v7;
    if (v11 == 192)
    {
      goto LABEL_13;
    }

LABEL_18:
    *(a1 + v14) = *a2;
    a2 += 4;
    if (*a3 <= a2)
    {
      goto LABEL_14;
    }

LABEL_19:
    v20 = *a2;
    v21 = &a5[(v20 & a5[4])];
    v13 = *(v21 + 6);
    a4 = *(v21 + 7) ^ v20;
    goto LABEL_20;
  }

  if (v9 == 16)
  {
    *(a1 + ((v7[1] >> 3) & 0x1FFFFFFC)) |= 1 << v7[1];
  }

  v14 = *v7;
  if (v11 != 192)
  {
    goto LABEL_18;
  }

LABEL_13:
  *(a1 + v14) = *a2;
  a2 += 8;
  if (*a3 > a2)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return a2;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::MpPackedFixed<false>(uint64_t a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  if ((a4 & 7) == 2)
  {
    v10 = (a5 + HIDWORD(a4));
    v11 = *(v10 + 5);
    v12 = *this;
    if (*this < 0)
    {
      google::protobuf::internal::ReadSizeFallback(this, *this);
      v13 = v15;
      v12 = v16;
    }

    else
    {
      v13 = this + 1;
    }

    v17 = (a1 + *v10);
    if ((v11 & 0x1C0) == 0xC0)
    {
      result = google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(a3, v13, v12, v17);
    }

    else
    {
      result = google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(a3, v13, v12, v17);
    }

    if (result)
    {
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }
      }

      else
      {
        v20 = *result;
        v21 = &a5[(v20 & a5[4])];
        v22 = *(v21 + 6);
        v23 = *(v21 + 7) ^ v20;

        return v22(a1, result, a3, v23, a5, a6);
      }
    }

    else
    {

      return google::protobuf::internal::TcParser::Error(a1, 0, v18, v19, a5, a6);
    }
  }

  else
  {

    return google::protobuf::internal::TcParser::MpRepeatedFixed<false>(a1, this, a3);
  }

  return result;
}

void google::protobuf::internal::TcParser::MpString<false>(uint64_t a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, uint64_t a5, int a6, __n128 a7)
{
  if ((a4 & 7) != 2)
  {
    v11 = *(a5 + 40);
LABEL_7:

    v11(a1, this, a3);
    return;
  }

  v7 = HIDWORD(a4);
  v8 = (a5 + HIDWORD(a4));
  v9 = *(v8 + 5);
  v10 = v9 & 0x30;
  if (v10 == 32)
  {

    google::protobuf::internal::TcParser::MpRepeatedString<false>(a1, this, a3, a4, a5, a6);
    return;
  }

  v14 = a1;
  v15 = a3;
  if (v10 != 48)
  {
    if (v10 == 16)
    {
      *(a1 + ((v8[1] >> 3) & 0x1FFFFFFC)) |= 1 << v8[1];
      if ((v9 & 0x1C0) != 0)
      {
LABEL_13:
        AlignedWithCleanup = (a1 + *v8);
        goto LABEL_14;
      }
    }

    else if ((v9 & 0x1C0) != 0)
    {
      goto LABEL_13;
    }

    v22 = (a1 + *v8);
    v23 = *(a1 + 8);
    if ((v23 & 1) == 0)
    {
LABEL_23:
      if (v23)
      {
        goto LABEL_24;
      }

      goto LABEL_39;
    }

LABEL_38:
    v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    if (v23)
    {
LABEL_24:
      google::protobuf::internal::EpsCopyInputStream::ReadArenaString(a3, this, v22, v23);
      v28 = a6;
      v29 = a5;
      v30 = v14;
      if (!CordFallback)
      {
        goto LABEL_68;
      }

      goto LABEL_40;
    }

LABEL_39:
    v34 = this;
    v35 = google::protobuf::internal::ArenaStringPtr::Mutable(v22, 0);
    CordFallback = google::protobuf::internal::InlineGreedyStringParser(v35, v34);
    v28 = a6;
    v29 = a5;
    v30 = v14;
    if (!CordFallback)
    {
      goto LABEL_68;
    }

LABEL_40:
    v36 = (*v22 & 0xFFFFFFFFFFFFFFFCLL);
    v37 = v36[23];
    if (v37 < 0)
    {
      v36 = *v36;
      v37 = *((*v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    if ((v9 & 0x600) != 0x400)
    {
      goto LABEL_44;
    }

    v38 = CordFallback;
    IsStructurallyValid = utf8_range::IsStructurallyValid(v36, v37);
    v29 = a5;
    v28 = a6;
    v41 = IsStructurallyValid;
    CordFallback = v38;
    v30 = v14;
    if (v41)
    {
      goto LABEL_44;
    }

    v45 = (*(a5 + 24) + a5 + 8 * *(a5 + 22));
    v46 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *(a5 + 16)) >> 2);
    v47 = __CFADD__(v46, 1);
    v48 = v46 + 1;
    v49 = &v45[v46 + 1];
    if (v47)
    {
      v50 = (*(a5 + 20) + 8) & 0x1FFF8;
LABEL_67:
      google::protobuf::internal::PrintUTF8ErrorLog(&v45[(*(a5 + 20) + 8) & 0x1FFF8], *v45, &v45[v50], *v49, "parsing");
      v28 = a6;
      v29 = a5;
      v30 = v14;
      goto LABEL_68;
    }

    if (v48 < 4)
    {
      v50 = (*(a5 + 20) + 8) & 0x1FFF8;
      v51 = (*(a5 + 24) + a5 + 8 * *(a5 + 22));
      goto LABEL_66;
    }

    if (v48 >= 0x10)
    {
      v52 = v48 & 0xFFFFFFFFFFFFFFF0;
      v53 = 0uLL;
      v54 = ((*(a5 + 20) + 8) & 0x1FFF8);
      v40.i32[1] = -255;
      v55 = v48 & 0xFFFFFFFFFFFFFFF0;
      v56 = (*(a5 + 24) + a5 + 8 * *(a5 + 22));
      v57 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      do
      {
        v63 = *v56++;
        v64 = vqtbl1q_s8(v63, xmmword_23CE4EF60);
        v65 = vqtbl1q_s8(v63, xmmword_23CE4EF70);
        v66 = vqtbl1q_s8(v63, xmmword_23CE4EF80);
        v67 = vqtbl1q_s8(v63, xmmword_23CE4EF90);
        v53 = vaddw_high_u32(v53, v65);
        v58 = vaddw_high_u32(v58, v64);
        v57 = vaddw_u32(v57, *v64.i8);
        v54 = vaddw_u32(v54, *v65.i8);
        v59 = vaddw_u32(v59, *v66.i8);
        v60 = vaddw_high_u32(v60, v66);
        v61 = vaddw_u32(v61, *v67.i8);
        v62 = vaddw_high_u32(v62, v67);
        v55 -= 16;
      }

      while (v55);
      v50 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v54, v59), vaddq_s64(v57, v61)), vaddq_s64(vaddq_s64(v53, v60), vaddq_s64(v58, v62))));
      if (v48 == v52)
      {
        goto LABEL_67;
      }

      if ((v48 & 0xC) == 0)
      {
        v51 = &v45[v52];
        do
        {
LABEL_66:
          v77 = *v51++;
          v50 += v77;
        }

        while (v51 != v49);
        goto LABEL_67;
      }
    }

    else
    {
      v52 = 0;
      v50 = (*(a5 + 20) + 8) & 0x1FFF8;
    }

    v51 = &v45[v48 & 0xFFFFFFFFFFFFFFFCLL];
    v68 = 0uLL;
    v69 = v50;
    v70 = &v45[v52];
    v71 = v52 - (v48 & 0xFFFFFFFFFFFFFFFCLL);
    v72.i64[0] = 255;
    v72.i64[1] = 255;
    do
    {
      v73 = *v70;
      v70 += 4;
      v40.i32[0] = v73;
      v74 = vmovl_u16(*&vmovl_u8(*v40.i8));
      v75.i64[0] = v74.u32[0];
      v75.i64[1] = v74.u32[1];
      v76 = vandq_s8(v75, v72);
      v75.i64[0] = v74.u32[2];
      v75.i64[1] = v74.u32[3];
      v40 = vandq_s8(v75, v72);
      v68 = vaddq_s64(v68, v40);
      v69 = vaddq_s64(v69, v76);
      v71 += 4;
    }

    while (v71);
    v50 = vaddvq_s64(vaddq_s64(v69, v68));
    if (v48 == (v48 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v19 = this;
  v20 = google::protobuf::internal::TcParser::ChangeOneof(a5, a5 + HIDWORD(a4), a4 >> 3, a7, a4, a1);
  if ((v9 & 0x1C0) == 0)
  {
    v22 = (v14 + *v8);
    if (v20)
    {
      *v22 = &google::protobuf::internal::fixed_address_empty_string;
    }

    a3 = v15;
    this = v19;
    v23 = *(v14 + 8);
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

  if (v20)
  {
    v21 = *(v14 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      if (v21)
      {
        goto LABEL_20;
      }
    }

    else if (v21)
    {
LABEL_20:
      AlignedWithCleanup = google::protobuf::Arena::AllocateAlignedWithCleanup(v21, 0x10uLL, 8uLL, google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>);
      *AlignedWithCleanup = 0;
      *(AlignedWithCleanup + 1) = 0;
      *(v14 + *v8) = AlignedWithCleanup;
      a3 = v15;
      this = v19;
      goto LABEL_14;
    }

    operator new();
  }

  this = v19;
  AlignedWithCleanup = *(v14 + *v8);
  a3 = v15;
LABEL_14:
  v17 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v18 = (this + 1);
    goto LABEL_28;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  v30 = v14;
  v28 = a6;
  v29 = a5;
  if (!v31)
  {
LABEL_68:

    google::protobuf::internal::TcParser::Error(v30, v25, v26, v27, v29, v28);
    return;
  }

  v18 = v31;
  v17 = v25;
  a3 = v15;
LABEL_28:
  v32 = *(a3 + 2) - v18 + 16;
  if (v32 >= 512)
  {
    v32 = 512;
  }

  if (v32 >= v17)
  {
    v33 = v17;
    absl::lts_20240722::Cord::operator=(AlignedWithCleanup, v18, v17);
    CordFallback = (v18 + v33);
    v28 = a6;
    v29 = a5;
    v30 = v14;
    if (!(v18 + v33))
    {
      goto LABEL_68;
    }
  }

  else
  {
    CordFallback = google::protobuf::internal::EpsCopyInputStream::ReadCordFallback(a3, v18, v17, AlignedWithCleanup);
    v28 = a6;
    v29 = a5;
    v30 = v14;
    if (!CordFallback)
    {
      goto LABEL_68;
    }
  }

LABEL_44:
  if (*v15 > CordFallback)
  {
    a3 = v15;
    v42 = *CordFallback;
    v43 = &v29[(v42 & v29[4])];
    v11 = *(v43 + 6);
    v44 = *(v43 + 7) ^ v42;
    this = CordFallback;
    a1 = v30;
    goto LABEL_7;
  }

  if (*v29)
  {
    *(v30 + *v29) |= v28;
  }
}

void google::protobuf::internal::TcParser::MpMessage<false>(uint64_t a1, google::protobuf::internal *this, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  v7 = (a5 + HIDWORD(a4));
  v8 = *(v7 + 5);
  v9 = v8 & 0x30;
  if (v9 != 32)
  {
    v10 = a4 & 7;
    v11 = v8 & 0x1C0;
    if (v11 == 64)
    {
      if (v10 != 3)
      {
LABEL_12:
        v13 = *(a5 + 5);

        v13(a1, this, a3);
        return;
      }
    }

    else if ((v8 & 0x1C0) != 0 || v10 != 2)
    {
      goto LABEL_12;
    }

    if (v9 == 48)
    {
      v38 = a1;
      v39 = this;
      v40 = a3;
      v41 = a5;
      v42 = a6;
      v43 = google::protobuf::internal::TcParser::ChangeOneof(a5, a5 + HIDWORD(a4), a4 >> 3, a7, a4, a1);
      a6 = v42;
      a5 = v41;
      this = v39;
      a3 = v40;
      v14 = v43;
      a1 = v38;
      v15 = *v41;
      if (!*v41)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v9 == 16)
      {
        v14 = 0;
        *(a1 + ((v7[1] >> 3) & 0x1FFFFFFC)) |= 1 << v7[1];
        v15 = *a5;
        if (!*a5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v14 = 0;
      v15 = *a5;
      if (!*a5)
      {
LABEL_23:
        v16 = *v7;
        if ((v8 & 0x600) == 0x400)
        {
          v17 = *(&a5[4 * *(v7 + 4)] + *(a5 + 6));
          if (!*(a1 + v16))
          {
            v14 = 1;
          }

          if (v14 == 1)
          {
            v18 = *(a1 + 8);
            v19 = this;
            v20 = a1;
            v21 = a3;
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = (*(**(v17 + 32) + 16))(*(v17 + 32), v18);
            a1 = v20;
            *(v20 + v16) = v22;
            a3 = v21;
            this = v19;
          }

          if (v11 == 64)
          {
            v23 = a3[11].i32[0];
            v24 = __OFSUB__(v23--, 1);
            a3[11].i32[0] = v23;
            if (v23 < 0 == v24)
            {
              ++a3[11].i32[1];
              v25 = *(a1 + v16);
              v26 = a3;
              google::protobuf::internal::TcParser::ParseLoop(v25, this, a3, v17);
              v26[11] = vadd_s32(v26[11], 0xFFFFFFFF00000001);
              v27 = v26[10].i32[0];
              v26[10].i32[0] = 0;
            }
          }

          else
          {
            v44 = *this;
            if (*this < 0)
            {
              v48 = a1;
              v49 = a3;
              google::protobuf::internal::ReadSizeFallback(this, *this);
              if (!v50)
              {
                return;
              }

              v44 = v51;
              v45 = v50;
              a3 = v49;
              a1 = v48;
              v52 = *(v49 + 22);
              v24 = __OFSUB__(v52, 1);
              v47 = v52 - 1;
              if (v47 < 0 != v24)
              {
                return;
              }
            }

            else
            {
              v45 = (this + 1);
              v46 = a3[11].i32[0];
              v24 = __OFSUB__(v46, 1);
              v47 = v46 - 1;
              if (v47 < 0 != v24)
              {
                return;
              }
            }

            v53 = a3[1];
            v54 = v44 + v45 - v53.i32[0];
            *a3 = (*&v53 + (v54 & (v54 >> 31)));
            v53.i32[0] = a3[3].i32[1];
            a3[3].i32[1] = v54;
            v55 = v53.i32[0] - v54;
            a3[11].i32[0] = v47;
            v56 = *(a1 + v16);
            v57 = a3;
            google::protobuf::internal::TcParser::ParseLoop(v56, v45, a3, v17);
            ++v57[11].i32[0];
            v58 = v57[3].i32[1] + v55;
            v57[3].i32[1] = v58;
            if (!v57[10].i32[0])
            {
              *v57 = (*&v57[1] + (v58 & (v58 >> 31)));
            }
          }
        }

        else
        {
          v28 = *(a1 + v16);
          if (!v28)
          {
            v14 = 1;
          }

          if (v14 == 1)
          {
            v29 = (&a5[4 * *(v7 + 4)] + *(a5 + 6));
            if ((v8 & 0x600) != 0x200)
            {
              v29 = *v29;
            }

            v30 = *v29;
            v31 = *(a1 + 8);
            v32 = this;
            v33 = a1;
            v34 = a3;
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = (*(*v30 + 16))(v30, v31);
            *(v33 + v16) = v28;
            a3 = v34;
            this = v32;
          }

          if (v11 == 64)
          {
            v35 = a3[11].i32[0];
            v24 = __OFSUB__(v35--, 1);
            a3[11].i32[0] = v35;
            if (v35 < 0 == v24)
            {
              ++a3[11].i32[1];
              v36 = a3;
              (*(*v28 + 56))(v28, this);
              v36[11] = vadd_s32(v36[11], 0xFFFFFFFF00000001);
              v37 = v36[10].i32[0];
              v36[10].i32[0] = 0;
            }
          }

          else
          {

            google::protobuf::internal::ParseContext::ParseMessage(a3, v28, this);
          }
        }

        return;
      }
    }

LABEL_22:
    *(a1 + v15) |= a6;
    goto LABEL_23;
  }

  if ((v8 & 0x1C0) != 0x40)
  {
    if ((*(v7 + 5) & 0x1C0) == 0)
    {

      google::protobuf::internal::TcParser::MpRepeatedMessageOrGroup<false,false>(a1, this, a3, a4, a5, a6);
      return;
    }

    goto LABEL_12;
  }

  google::protobuf::internal::TcParser::MpRepeatedMessageOrGroup<false,true>(a1, this, a3, a4, a5, a6);
}

uint64_t google::protobuf::internal::TcParser::MpMap<false>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  v6 = a4;
  v8 = a2;
  v65 = (a5 + HIDWORD(a4));
  v9 = &a5[4 * *(v65 + 4)] + *(a5 + 6);
  v10 = *v9;
  if ((*v9 & 0x10000) != 0 && (a4 & 7) == 2)
  {
    v11 = a1 + *v65;
    v64 = BYTE2(*v9);
    if ((v10 & 0x20000) == 0)
    {
      v11 = (**v11)(v11, 1);
    }

    v12 = (v10 >> 3) & 7;
    __sz = HIWORD(v10);
    v61 = v10;
    LODWORD(v10) = (v10 >> 11) & 7;
    while (1)
    {
      v13 = v6;
      v14 = *(v11 + 24);
      if (v14)
      {
        v17 = google::protobuf::Arena::AllocateForArray(v14, __sz);
        if (v12 <= 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v17 = operator new(__sz);
        if (v12 <= 1)
        {
LABEL_14:
          if (v12)
          {
            *(v17 + 2) = 0;
            v19 = (v17 + WORD2(v10));
            if (v10 > 1)
            {
LABEL_21:
              if (v10 == 2)
              {
                *v19 = 0;
                v21 = *v8;
                if ((*v8 & 0x80000000) == 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_38;
              }

              if (v10 != 3)
              {
                (*(v9 + 8))(*(v11 + 24), v19);
                v21 = *v8;
                if ((*v8 & 0x80000000) == 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_38;
              }

              v20 = *(v11 + 24);
              *v19 = 0;
              v19[1] = 0;
              v19[2] = 0;
              if (v20)
              {
                google::protobuf::internal::ThreadSafeArena::AddCleanup(v20, v19, google::protobuf::internal::cleanup::arena_destruct_object<std::string>);
                v21 = *v8;
                if ((*v8 & 0x80000000) == 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_38;
              }

              goto LABEL_33;
            }
          }

          else
          {
            *(v17 + 8) = 0;
            v19 = (v17 + WORD2(v10));
            if (v10 > 1)
            {
              goto LABEL_21;
            }
          }

          goto LABEL_31;
        }
      }

      if (v12 == 2)
      {
        v17[1] = 0;
        v19 = (v17 + WORD2(v10));
        if (v10 > 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v18 = *(v11 + 24);
          v17[1] = 0;
          v17[2] = 0;
          v17[3] = 0;
          if (v18)
          {
            google::protobuf::internal::ThreadSafeArena::AddCleanup(v18, v17 + 1, google::protobuf::internal::cleanup::arena_destruct_object<std::string>);
            v19 = (v17 + WORD2(v10));
            if (v10 > 1)
            {
              goto LABEL_21;
            }

            goto LABEL_31;
          }
        }

        else
        {
          (*(v9 + 8))(*(v11 + 24), v17 + 1);
        }

        v19 = (v17 + WORD2(v10));
        if (v10 > 1)
        {
          goto LABEL_21;
        }
      }

LABEL_31:
      if (!v10)
      {
        *v19 = 0;
LABEL_33:
        v21 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }

      *v19 = 0;
      v21 = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
LABEL_34:
        v22 = (v8 + 1);
        v23 = *(a3 + 88);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 != v24)
        {
          goto LABEL_48;
        }

        goto LABEL_40;
      }

LABEL_38:
      google::protobuf::internal::ReadSizeFallback(v8, v21);
      if (!v26 || (LODWORD(v21) = v22, v22 = v26, v27 = *(a3 + 88), v24 = __OFSUB__(v27, 1), v25 = v27 - 1, (v25 < 0) ^ v24))
      {
LABEL_48:
        v34 = 0;
        v42 = 1;
        if (!v17)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

LABEL_40:
      v28 = *(a3 + 8);
      v29 = v21 + v22 - v28;
      *a3 = v28 + (v29 & (v29 >> 31));
      LODWORD(v28) = *(a3 + 28);
      *(a3 + 28) = v29;
      v30 = v28 - v29;
      *(a3 + 88) = v25;
      google::protobuf::internal::TcParser::ParseOneMapEntry(v17, v22, a3, v9, a5, v65);
      ++*(a3 + 88);
      v33 = *(a3 + 28) + v30;
      *(a3 + 28) = v33;
      if (*(a3 + 80))
      {
        goto LABEL_48;
      }

      v34 = v31;
      *a3 = *(a3 + 8) + (v33 & (v33 >> 31));
      if (!v31)
      {
        v42 = 1;
        if (!v17)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      if ((v64 & 0x10) != 0)
      {
        v35 = *v19;
        v36 = *(v9 + 8);
        v37 = *v36;
        v38 = v37 >> 16;
        v39 = v35 - v37;
        v40 = v39 >= v38;
        v41 = v39 - v38;
        if (v40)
        {
          v45 = v36[1];
          if (v41 >= v45)
          {
            v47 = 0;
            v48 = v45 >> 16;
            v49 = &v36[(v45 >> 5) + 2];
            while (v47 < v48)
            {
              v50 = *(v49 + 4 * v47);
              v51 = v50 == v35;
              v52 = v50 <= v35;
              v53 = 1;
              if (v52)
              {
                v53 = 2;
              }

              v47 = v53 + 2 * v47;
              if (v51)
              {
                goto LABEL_44;
              }
            }

LABEL_68:
            google::protobuf::internal::TcParser::WriteMapEntryAsUnknown(a1, a5, v13, v17, v61);
            v42 = 0;
            if (!v17)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          if (((v36[(v41 >> 5) + 2] >> v41) & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_44:
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v17 = google::protobuf::internal::KeyMapBase<unsigned long long>::InsertOrReplaceNode(v11, v17);
          v42 = 0;
          if (!v17)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v17 = google::protobuf::internal::KeyMapBase<std::string>::InsertOrReplaceNode(v11, v17, v15, v16, v32);
          v42 = 0;
          if (!v17)
          {
            goto LABEL_58;
          }
        }
      }

      else if (v12)
      {
        v17 = google::protobuf::internal::KeyMapBase<unsigned int>::InsertOrReplaceNode(v11, v17);
        v42 = 0;
        if (!v17)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v17 = google::protobuf::internal::KeyMapBase<BOOL>::InsertOrReplaceNode(v11, v17);
        v42 = 0;
        if (!v17)
        {
          goto LABEL_58;
        }
      }

LABEL_56:
      if (!*(v11 + 24))
      {
        google::protobuf::internal::TcParser::DestroyMapNode(v17, v61, v11);
      }

LABEL_58:
      if (v42)
      {

        return google::protobuf::internal::TcParser::Error(a1, v22, v15, v16, a5, a6);
      }

      if (*a3 <= v34)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v34;
      }

      v8 = (v34 + 1);
      v43 = *v34;
      if (*v34 < 0)
      {
        v44 = *v8 | (v43 << 57);
        if (*v8 < 0)
        {
          v46 = __ROR8__(v44, 7) & 0xFFFC000000000000 | v34[2];
          if (v34[2] < 0)
          {
            v54 = __ROR8__(v46, 7) & 0xFFFFF80000000000 | v34[3];
            if (v34[3] < 0)
            {
              v55 = v34[4];
              if (v55 < 0)
              {
                v8 = 0;
                v6 = v13;
                if (v13)
                {
LABEL_89:
                  v56 = *v34;
                  v57 = &a5[(v56 & a5[4])];
                  v58 = *(v57 + 6);
                  v59 = *(v57 + 7) ^ v56;

                  return v58(a1, v34, a3, v59);
                }
              }

              else
              {
                v8 = (v34 + 5);
                v6 = v13;
                if (__ROR8__(__ROR8__(v54, 7) & 0xFFFFFFF000000000 | v55, 36) != v13)
                {
                  goto LABEL_89;
                }
              }
            }

            else
            {
              v8 = (v34 + 4);
              v6 = v13;
              if (__ROR8__(v54, 43) != v13)
              {
                goto LABEL_89;
              }
            }
          }

          else
          {
            v8 = (v34 + 3);
            v6 = v13;
            if (__ROR8__(v46, 50) != v13)
            {
              goto LABEL_89;
            }
          }
        }

        else
        {
          v6 = v13;
          v8 = (v34 + 2);
          if (__ROR8__(v44, 57) != v13)
          {
            goto LABEL_89;
          }
        }
      }

      else
      {
        v6 = v13;
        if (v43 != v13)
        {
          goto LABEL_89;
        }
      }
    }
  }

  return google::protobuf::internal::TcParser::MpFallback(a1, a2, a3, a4, a5);
}

void google::protobuf::internal::TcParser::MpVarint<true>(uint64_t a1, google::protobuf::internal *this, unsigned int *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  v7 = (a5 + HIDWORD(a4));
  v8 = *(v7 + 5);
  v9 = v8 & 0x30;
  if (v9 == 32)
  {

    google::protobuf::internal::TcParser::MpRepeatedVarint<true>(a1, this, a3, a4, a5, a6);
    return;
  }

  if ((a4 & 7) != 0)
  {
    v10 = *(a5 + 5);
LABEL_49:

    v10(a1, this, a3, a4);
    return;
  }

  *v59 = 0;
  v11 = *this;
  if ((*this & 0x80) != 0)
  {
    if ((v11 & 0x8000) != 0)
    {
      v45 = v8;
      v46 = v8 & 0x30;
      v47 = a4;
      v48 = a3;
      v49 = a1;
      v50 = a5;
      *v58 = a6;
      v51 = this;
      v52 = google::protobuf::internal::VarintParseSlowArm(this, v59, v11);
      if (!v52)
      {

        google::protobuf::internal::TcParser::Error(v49, v53, v54, v55, v50, v58[0]);
        return;
      }

      v13 = v52;
      a6 = *v58;
      v12 = *v59;
      a5 = v50;
      a1 = v49;
      a3 = v48;
      a4 = v47;
      this = v51;
      v9 = v46;
      v8 = v45;
    }

    else
    {
      v12 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
      v13 = (this + 2);
    }
  }

  else
  {
    v12 = *this & 0x7FLL;
    v13 = (this + 1);
  }

  v14 = v8 & 0x600;
  v15 = v8 & 0x1C0;
  if (v15 == 192)
  {
    v16 = -(v12 & 1) ^ (v12 >> 1);
    goto LABEL_11;
  }

  if (v15 != 128)
  {
    goto LABEL_22;
  }

  if ((v8 & 0x400) == 0)
  {
    v16 = (-(v12 & 1) ^ (v12 >> 1));
LABEL_11:
    if (v14 == 512)
    {
      v12 = v16;
    }

LABEL_22:
    if (v9 == 48)
    {
      v21 = a1;
      v22 = a3;
      v23 = a5;
      v24 = a6;
      google::protobuf::internal::TcParser::ChangeOneof(a5, v7, a4 >> 3, a7, a4, a1);
      a3 = v22;
      a1 = v21;
      a5 = v23;
      LODWORD(a6) = v24;
    }

    else if (v9 == 16)
    {
      *(a1 + ((v7[1] >> 3) & 0x1FFFFFFC)) |= 1 << v7[1];
    }

    v25 = a5 + *(a5 + 6);
    v26 = *(v25 + 2);
    v27 = *(*(a5 + 4) + v26);
    v28 = *(a1 + v26);
    if (v28 != v27)
    {
      if (v15 == 192)
      {
        goto LABEL_28;
      }

      goto LABEL_42;
    }

    v29 = *(v25 + 4);
    v30 = *(a1 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      *v56 = a3;
      v31 = a1;
      v32 = a5;
      v33 = a6;
      if (v30)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v56 = a3;
      v31 = a1;
      v32 = a5;
      v33 = a6;
      if (v30)
      {
LABEL_32:
        v34 = google::protobuf::Arena::Allocate(v30);
        goto LABEL_41;
      }
    }

    v34 = operator new(v29);
LABEL_41:
    *(v31 + v26) = v34;
    memcpy(v34, v27, v29);
    a1 = v31;
    v28 = *(v31 + v26);
    LODWORD(a6) = v33;
    a5 = v32;
    a3 = *v56;
    if (v15 == 192)
    {
LABEL_28:
      *&v28[*v7] = v12;
      if (*a3 > v13)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }

LABEL_42:
    v42 = *v7;
    if (v15 == 128)
    {
      *&v28[v42] = v12;
      if (*a3 <= v13)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v28[v42] = v12 != 0;
      if (*a3 <= v13)
      {
LABEL_44:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return;
      }
    }

LABEL_48:
    v43 = *v13;
    v44 = &a5[(v43 & a5[4])];
    v10 = *(v44 + 6);
    a4 = *(v44 + 7) ^ v43;
    this = v13;
    goto LABEL_49;
  }

  v17 = *(&a5[4 * *(v7 + 4)] + *(a5 + 6));
  if (v14 == 1536)
  {
    v18 = v17;
    v19 = v17 + (v17 >> 16);
    if (v18 <= v12 && v19 > v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v57 = a1;
    v35 = this;
    v36 = a6;
    v37 = a5;
    v38 = a3;
    v39 = a4;
    v40 = google::protobuf::internal::ValidateEnum(v12, v17, a3);
    this = v35;
    a4 = v39;
    a3 = v38;
    a5 = v37;
    a6 = v36;
    v41 = v40;
    a1 = *v57;
    if (v41)
    {
      goto LABEL_22;
    }
  }

  google::protobuf::internal::TcParser::MpUnknownEnumFallback(a1, this, a3, a4, a5, a6);
}

void google::protobuf::internal::TcParser::MpPackedVarint<true>(uint64_t a1, google::protobuf::internal *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  if ((a4 & 7) == 2)
  {
    v6 = *(a5 + HIDWORD(a4) + 10);
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v7 = (v6 >> 6) & 7;
    if (v7)
    {
      if (v7 == 2)
      {
        google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(a1, a2, a3, a4, a5);
      }

      else
      {
        google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(a1, a2, a3, a4, a5);
      }
    }

    else
    {
      google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    google::protobuf::internal::TcParser::MpRepeatedVarint<true>(a1, a2, a3);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::MpFixed<true>(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  v7 = (a5 + HIDWORD(a4));
  v8 = *(v7 + 5);
  v9 = v8 & 0x30;
  if (v9 == 32)
  {

    return google::protobuf::internal::TcParser::MpRepeatedFixed<true>(a1, a2, a3, a4, a5, a6);
  }

  v11 = v8 & 0x1C0;
  v12 = a4 & 7;
  if (v11 == 192)
  {
    if (v12 != 1)
    {
LABEL_7:
      v13 = *(a5 + 5);
LABEL_27:

      return v13(a1, a2, a3, a4);
    }
  }

  else if (v12 != 5)
  {
    goto LABEL_7;
  }

  if (v9 == 48)
  {
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = a5;
    v18 = a6;
    google::protobuf::internal::TcParser::ChangeOneof(a5, a5 + HIDWORD(a4), a4 >> 3, a7, a4, a1);
    a2 = v15;
    a1 = v14;
    a3 = v16;
    a5 = v17;
    LODWORD(a6) = v18;
  }

  else if (v9 == 16)
  {
    *(a1 + ((v7[1] >> 3) & 0x1FFFFFFC)) |= 1 << v7[1];
  }

  v19 = a5 + *(a5 + 6);
  v20 = *(v19 + 2);
  v21 = *(*(a5 + 4) + v20);
  v22 = *(a1 + v20);
  if (v22 != v21)
  {
    v23 = *v7;
    if (v11 == 192)
    {
      goto LABEL_15;
    }

LABEL_25:
    *&v22[v23] = *a2;
    a2 += 4;
    if (*a3 <= a2)
    {
      goto LABEL_16;
    }

LABEL_26:
    v32 = *a2;
    v33 = &a5[(v32 & a5[4])];
    v13 = *(v33 + 6);
    a4 = *(v33 + 7) ^ v32;
    goto LABEL_27;
  }

  v24 = *(v19 + 4);
  v25 = *(a1 + 8);
  if (v25)
  {
    v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    v26 = a2;
    v27 = a1;
    v28 = a3;
    v29 = a5;
    v30 = a6;
    if (v25)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v26 = a2;
    v27 = a1;
    v28 = a3;
    v29 = a5;
    v30 = a6;
    if (v25)
    {
LABEL_21:
      v31 = google::protobuf::Arena::Allocate(v25);
      goto LABEL_24;
    }
  }

  v31 = operator new(*(v19 + 4));
LABEL_24:
  *(v27 + v20) = v31;
  memcpy(v31, v21, v24);
  a1 = v27;
  v22 = *(v27 + v20);
  LODWORD(a6) = v30;
  a5 = v29;
  a3 = v28;
  a2 = v26;
  v23 = *v7;
  if (v11 != 192)
  {
    goto LABEL_25;
  }

LABEL_15:
  *&v22[v23] = *a2;
  a2 += 8;
  if (*a3 > a2)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return a2;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::MpPackedFixed<true>(uint64_t a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v6 = a6;
  if ((a4 & 7) == 2)
  {
    v10 = (a5 + HIDWORD(a4));
    v11 = *(v10 + 5);
    v12 = a5 + *(a5 + 6);
    v13 = *(v12 + 2);
    v14 = *(*(a5 + 4) + v13);
    v15 = *(a1 + v13);
    if (v15 != v14)
    {
      v16 = *this;
      if ((*this & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }

    v25 = *(v12 + 4);
    v26 = *(a1 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      v27 = this;
      if (v26)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v27 = this;
      if (v26)
      {
LABEL_15:
        v28 = google::protobuf::Arena::Allocate(v26);
        goto LABEL_18;
      }
    }

    v28 = operator new(v25);
LABEL_18:
    *(a1 + v13) = v28;
    memcpy(v28, v14, v25);
    v15 = *(a1 + v13);
    this = v27;
    v6 = a6;
    v16 = *this;
    if ((*this & 0x80000000) == 0)
    {
LABEL_4:
      v17 = this + 1;
      v18 = v11 & 0x1C0;
      v19 = *v10;
      v20 = *&v15[v19];
      if (v18 == 192)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }

LABEL_19:
    google::protobuf::internal::ReadSizeFallback(this, v16);
    v17 = v29;
    LODWORD(v16) = v30;
    v31 = v11 & 0x1C0;
    v19 = *v10;
    v20 = *&v15[v19];
    if (v31 == 192)
    {
LABEL_5:
      if (v20 != &google::protobuf::internal::kZeroBuffer)
      {
LABEL_9:
        result = google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(a3, v17, v16, v20);
        goto LABEL_25;
      }

      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        if (v21)
        {
          goto LABEL_8;
        }
      }

      else if (v21)
      {
LABEL_8:
        v20 = google::protobuf::Arena::Allocate(v21);
        *v20 = 0;
        *(v20 + 8) = v21;
        *&v15[v19] = v20;
        goto LABEL_9;
      }

      operator new();
    }

LABEL_20:
    if (v20 != &google::protobuf::internal::kZeroBuffer)
    {
LABEL_24:
      result = google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(a3, v17, v16, v20);
LABEL_25:
      if (result)
      {
        if (*a3 <= result)
        {
          if (*a5)
          {
            *(a1 + *a5) |= v6;
          }
        }

        else
        {
          v33 = *result;
          v34 = &a5[(v33 & a5[4])];
          v35 = *(v34 + 6);
          v36 = *(v34 + 7) ^ v33;

          return v35(a1, result, a3, v36, a5, v6);
        }
      }

      else
      {

        return google::protobuf::internal::TcParser::Error(a1, 0, v23, v24, a5, v6);
      }

      return result;
    }

    v32 = *(a1 + 8);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      if (v32)
      {
        goto LABEL_23;
      }
    }

    else if (v32)
    {
LABEL_23:
      v20 = google::protobuf::Arena::Allocate(v32);
      *v20 = 0;
      *(v20 + 8) = v32;
      *&v15[v19] = v20;
      goto LABEL_24;
    }

    operator new();
  }

  return google::protobuf::internal::TcParser::MpRepeatedFixed<true>(a1);
}

void google::protobuf::internal::TcParser::MpString<true>(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, uint64_t a5, int a6, __n128 a7)
{
  if ((a4 & 7) != 2)
  {
    v11 = *(a5 + 40);
LABEL_7:

    v11();
    return;
  }

  v7 = HIDWORD(a4);
  v8 = (a5 + HIDWORD(a4));
  v9 = *(v8 + 5);
  v10 = v9 & 0x30;
  if (v10 == 32)
  {

    google::protobuf::internal::TcParser::MpRepeatedString<true>(a1, a2, a3, a4, a5, a6);
    return;
  }

  v85 = a5;
  v86 = a3;
  v87 = a1;
  if (v10 == 16)
  {
    v12 = 0;
    *(a1 + ((v8[1] >> 3) & 0x1FFFFFFC)) |= 1 << v8[1];
  }

  else if (v10 == 48)
  {
    v13 = a2;
    v14 = google::protobuf::internal::TcParser::ChangeOneof(a5, a5 + HIDWORD(a4), a4 >> 3, a7, a4, a1);
    a2 = v13;
    a5 = v85;
    a3 = v86;
    v12 = v14;
    a1 = v87;
  }

  else
  {
    v12 = 0;
  }

  v15 = *(a5 + 24) + a5;
  v16 = *(v15 + 8);
  v17 = *(*(a5 + 32) + v16);
  v18 = *(a1 + v16);
  if (v18 != v17)
  {
    if ((v9 & 0x1C0) != 0)
    {
      goto LABEL_17;
    }

LABEL_41:
    v37 = *v8;
    if (v12)
    {
      *&v18[v37] = &google::protobuf::internal::fixed_address_empty_string;
      v38 = *(a1 + 8);
      if ((v38 & 1) == 0)
      {
LABEL_43:
        if (v38)
        {
          goto LABEL_44;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v38 = *(a1 + 8);
      if ((v38 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    if (v38)
    {
LABEL_44:
      google::protobuf::internal::EpsCopyInputStream::ReadArenaString(v86, a2, &v18[v37], v38);
      v33 = a6;
      v32 = v85;
      v31 = v87;
      if (!CordFallback)
      {
        goto LABEL_76;
      }

      goto LABEL_49;
    }

LABEL_48:
    v39 = a2;
    v40 = google::protobuf::internal::ArenaStringPtr::Mutable(&v18[v37], 0);
    CordFallback = google::protobuf::internal::InlineGreedyStringParser(v40, v39);
    v33 = a6;
    v32 = v85;
    v31 = v87;
    if (!CordFallback)
    {
      goto LABEL_76;
    }

LABEL_49:
    v41 = (*&v18[v37] & 0xFFFFFFFFFFFFFFFCLL);
    v42 = v41[23];
    if (v42 < 0)
    {
      v41 = *v41;
      v42 = *((*&v18[v37] & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    if ((v9 & 0x600) != 0x400)
    {
      goto LABEL_53;
    }

    v43 = CordFallback;
    IsStructurallyValid = utf8_range::IsStructurallyValid(v41, v42);
    v33 = a6;
    v32 = v85;
    v46 = IsStructurallyValid;
    CordFallback = v43;
    v31 = v87;
    if (v46)
    {
      goto LABEL_53;
    }

    v50 = &v85[4 * v85[11]] + *(v85 + 6);
    v51 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *(v85 + 4)) >> 2);
    v52 = __CFADD__(v51, 1);
    v53 = v51 + 1;
    v54 = &v50[v51 + 1];
    if (v52)
    {
      v55 = (v85[10] + 8) & 0x1FFF8;
LABEL_75:
      google::protobuf::internal::PrintUTF8ErrorLog(&v50[(v85[10] + 8) & 0x1FFF8], *v50, &v50[v55], *v54, "parsing");
      v33 = a6;
      v32 = v85;
      v31 = v87;
      goto LABEL_76;
    }

    if (v53 < 4)
    {
      v55 = (v85[10] + 8) & 0x1FFF8;
      v56 = &v85[4 * v85[11]] + *(v85 + 6);
      goto LABEL_74;
    }

    if (v53 >= 0x10)
    {
      v57 = v53 & 0xFFFFFFFFFFFFFFF0;
      v58 = 0uLL;
      v59 = ((v85[10] + 8) & 0x1FFF8);
      v45.i32[1] = -255;
      v60 = v53 & 0xFFFFFFFFFFFFFFF0;
      v61 = (&v85[4 * v85[11]] + *(v85 + 6));
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      do
      {
        v68 = *v61++;
        v69 = vqtbl1q_s8(v68, xmmword_23CE4EF60);
        v70 = vqtbl1q_s8(v68, xmmword_23CE4EF70);
        v71 = vqtbl1q_s8(v68, xmmword_23CE4EF80);
        v72 = vqtbl1q_s8(v68, xmmword_23CE4EF90);
        v58 = vaddw_high_u32(v58, v70);
        v63 = vaddw_high_u32(v63, v69);
        v62 = vaddw_u32(v62, *v69.i8);
        v59 = vaddw_u32(v59, *v70.i8);
        v64 = vaddw_u32(v64, *v71.i8);
        v65 = vaddw_high_u32(v65, v71);
        v66 = vaddw_u32(v66, *v72.i8);
        v67 = vaddw_high_u32(v67, v72);
        v60 -= 16;
      }

      while (v60);
      v55 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v59, v64), vaddq_s64(v62, v66)), vaddq_s64(vaddq_s64(v58, v65), vaddq_s64(v63, v67))));
      if (v53 == v57)
      {
        goto LABEL_75;
      }

      if ((v53 & 0xC) == 0)
      {
        v56 = &v50[v57];
        do
        {
LABEL_74:
          v82 = *v56++;
          v55 += v82;
        }

        while (v56 != v54);
        goto LABEL_75;
      }
    }

    else
    {
      v57 = 0;
      v55 = (v85[10] + 8) & 0x1FFF8;
    }

    v56 = &v50[v53 & 0xFFFFFFFFFFFFFFFCLL];
    v73 = 0uLL;
    v74 = v55;
    v75 = &v50[v57];
    v76 = v57 - (v53 & 0xFFFFFFFFFFFFFFFCLL);
    v77.i64[0] = 255;
    v77.i64[1] = 255;
    do
    {
      v78 = *v75;
      v75 += 4;
      v45.i32[0] = v78;
      v79 = vmovl_u16(*&vmovl_u8(*v45.i8));
      v80.i64[0] = v79.u32[0];
      v80.i64[1] = v79.u32[1];
      v81 = vandq_s8(v80, v77);
      v80.i64[0] = v79.u32[2];
      v80.i64[1] = v79.u32[3];
      v45 = vandq_s8(v80, v77);
      v73 = vaddq_s64(v73, v45);
      v74 = vaddq_s64(v74, v81);
      v76 += 4;
    }

    while (v76);
    v55 = vaddvq_s64(vaddq_s64(v74, v73));
    if (v53 == (v53 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v23 = *(v15 + 16);
  v24 = *(a1 + 8);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v83 = a2;
    if (v24)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v83 = a2;
    if (v24)
    {
LABEL_25:
      v25 = google::protobuf::Arena::Allocate(v24);
      goto LABEL_40;
    }
  }

  v25 = operator new(v23);
LABEL_40:
  *(v87 + v16) = v25;
  memcpy(v25, v17, v23);
  a1 = v87;
  v18 = *(v87 + v16);
  a3 = v86;
  a2 = v83;
  if ((v9 & 0x1C0) == 0)
  {
    goto LABEL_41;
  }

LABEL_17:
  if (v10 != 48)
  {
    AlignedWithCleanup = &v18[*v8];
    v22 = *a2;
    if (*a2 < 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v12)
  {
    AlignedWithCleanup = *(a1 + *v8);
    v22 = *a2;
    if (*a2 < 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v26 = (a2 + 1);
    goto LABEL_31;
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    v20 = a2;
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_80:
    operator new();
  }

  v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
  v20 = a2;
  if (!v19)
  {
    goto LABEL_80;
  }

LABEL_21:
  AlignedWithCleanup = google::protobuf::Arena::AllocateAlignedWithCleanup(v19, 0x10uLL, 8uLL, google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>);
  *AlignedWithCleanup = 0;
  *(AlignedWithCleanup + 1) = 0;
  a3 = v86;
  *(v87 + *v8) = AlignedWithCleanup;
  a2 = v20;
  v22 = *v20;
  if ((*v20 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  google::protobuf::internal::ReadSizeFallback(a2, v22);
  v31 = v87;
  v33 = a6;
  v32 = v85;
  if (!v27)
  {
LABEL_76:

    google::protobuf::internal::TcParser::Error(v31, v28, v29, v30, v32, v33);
    return;
  }

  v26 = v27;
  v22 = v28;
  a3 = v86;
LABEL_31:
  v34 = *(a3 + 2) - v26 + 16;
  if (v34 >= 512)
  {
    v34 = 512;
  }

  if (v34 >= v22)
  {
    v36 = v22;
    absl::lts_20240722::Cord::operator=(AlignedWithCleanup, v26, v22);
    CordFallback = (v26 + v36);
    v33 = a6;
    v32 = v85;
    v31 = v87;
    if (!(v26 + v36))
    {
      goto LABEL_76;
    }
  }

  else
  {
    CordFallback = google::protobuf::internal::EpsCopyInputStream::ReadCordFallback(a3, v26, v22, AlignedWithCleanup);
    v33 = a6;
    v32 = v85;
    v31 = v87;
    if (!CordFallback)
    {
      goto LABEL_76;
    }
  }

LABEL_53:
  if (*v86 > CordFallback)
  {
    v47 = *CordFallback;
    v48 = &v32[(v47 & v32[4])];
    v11 = *(v48 + 6);
    v49 = *(v48 + 7) ^ v47;
    goto LABEL_7;
  }

  if (*v32)
  {
    *(v31 + *v32) |= v33;
  }
}

void google::protobuf::internal::TcParser::MpMessage<true>(uint64_t a1, google::protobuf::internal *this, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, int a6, __n128 a7)
{
  v7 = (a5 + HIDWORD(a4));
  v8 = *(v7 + 5);
  v9 = v8 & 0x30;
  if (v9 != 32)
  {
    v10 = a4 & 7;
    v11 = v8 & 0x1C0;
    if (v11 == 64)
    {
      if (v10 != 3)
      {
LABEL_12:
        v13 = *(a5 + 5);

        v13(a1, this, a3);
        return;
      }
    }

    else if ((v8 & 0x1C0) != 0 || v10 != 2)
    {
      goto LABEL_12;
    }

    v60 = a3;
    if (v9 == 48)
    {
      v15 = a1;
      v16 = this;
      v17 = a5;
      v18 = a6;
      v19 = google::protobuf::internal::TcParser::ChangeOneof(a5, a5 + HIDWORD(a4), a4 >> 3, a7, a4, a1);
      a6 = v18;
      a5 = v17;
      this = v16;
      a3 = v60;
      v14 = v19;
      a1 = v15;
    }

    else
    {
      v14 = 0;
      if (v9 == 16)
      {
        *(a1 + ((v7[1] >> 3) & 0x1FFFFFFC)) |= 1 << v7[1];
      }
    }

    v20 = a5 + *(a5 + 6);
    v21 = *(v20 + 2);
    v22 = *(*(a5 + 4) + v21);
    v23 = *(a1 + v21);
    if (v23 != v22)
    {
LABEL_30:
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      v29 = *v7;
      if ((v8 & 0x600) == 0x400)
      {
        v30 = *(&a5[4 * *(v7 + 4)] + *(a5 + 6));
        if (*&v23[v29])
        {
          v31 = v14;
        }

        else
        {
          v31 = 1;
        }

        if (v31 == 1)
        {
          v32 = *(a1 + 8);
          v33 = this;
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          *&v23[v29] = (*(**(v30 + 32) + 16))(*(v30 + 32), v32, a3);
          a3 = v60;
          this = v33;
        }

        if (v11 == 64)
        {
          v34 = a3[11].i32[0];
          v35 = __OFSUB__(v34--, 1);
          a3[11].i32[0] = v34;
          if (v34 < 0 == v35)
          {
            ++a3[11].i32[1];
            v36 = a3;
            google::protobuf::internal::TcParser::ParseLoop(*&v23[v29], this, a3, v30);
            v36[11] = vadd_s32(v36[11], 0xFFFFFFFF00000001);
            v37 = v36[10].i32[0];
            v36[10].i32[0] = 0;
          }
        }

        else
        {
          v47 = *this;
          if (*this < 0)
          {
            google::protobuf::internal::ReadSizeFallback(this, *this);
            if (!v51)
            {
              return;
            }

            v47 = v52;
            v48 = v51;
            a3 = v60;
            v53 = *(v60 + 22);
            v35 = __OFSUB__(v53, 1);
            v50 = v53 - 1;
            if (v50 < 0 != v35)
            {
              return;
            }
          }

          else
          {
            v48 = (this + 1);
            v49 = a3[11].i32[0];
            v35 = __OFSUB__(v49, 1);
            v50 = v49 - 1;
            if (v50 < 0 != v35)
            {
              return;
            }
          }

          v54 = a3[1];
          v55 = v47 + v48 - v54.i32[0];
          *a3 = (*&v54 + (v55 & (v55 >> 31)));
          v54.i32[0] = a3[3].i32[1];
          a3[3].i32[1] = v55;
          v56 = v54.i32[0] - v55;
          a3[11].i32[0] = v50;
          google::protobuf::internal::TcParser::ParseLoop(*&v23[v29], v48, v60, v30);
          ++*(v60 + 22);
          v57 = *(v60 + 7) + v56;
          *(v60 + 7) = v57;
          if (!*(v60 + 20))
          {
            *v60 = *(v60 + 1) + (v57 & (v57 >> 31));
          }
        }
      }

      else
      {
        v38 = *&v23[v29];
        if (v38)
        {
          v39 = v14;
        }

        else
        {
          v39 = 1;
        }

        if (v39 == 1)
        {
          v40 = (&a5[4 * *(v7 + 4)] + *(a5 + 6));
          if ((v8 & 0x600) != 0x200)
          {
            v40 = *v40;
          }

          v41 = *v40;
          v42 = *(a1 + 8);
          v43 = this;
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v38 = (*(*v41 + 16))(v41, v42, a3);
          *&v23[v29] = v38;
          a3 = v60;
          this = v43;
        }

        if (v11 == 64)
        {
          v44 = a3[11].i32[0];
          v35 = __OFSUB__(v44--, 1);
          a3[11].i32[0] = v44;
          if (v44 < 0 == v35)
          {
            ++a3[11].i32[1];
            v45 = a3;
            (*(*v38 + 56))(v38, this);
            v45[11] = vadd_s32(v45[11], 0xFFFFFFFF00000001);
            v46 = v45[10].i32[0];
            v45[10].i32[0] = 0;
          }
        }

        else
        {

          google::protobuf::internal::ParseContext::ParseMessage(a3, v38, this);
        }
      }

      return;
    }

    v24 = *(v20 + 4);
    v25 = *(a1 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      v58 = a5;
      v59 = a6;
      v26 = a1;
      v27 = this;
      if (v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v58 = a5;
      v59 = a6;
      v26 = a1;
      v27 = this;
      if (v25)
      {
LABEL_26:
        v28 = google::protobuf::Arena::Allocate(v25);
LABEL_29:
        *(v26 + v21) = v28;
        memcpy(v28, v22, v24);
        a1 = v26;
        v23 = *(v26 + v21);
        a6 = v59;
        a3 = v60;
        this = v27;
        a5 = v58;
        goto LABEL_30;
      }
    }

    v28 = operator new(v24);
    goto LABEL_29;
  }

  if ((v8 & 0x1C0) != 0x40)
  {
    if ((*(v7 + 5) & 0x1C0) == 0)
    {

      google::protobuf::internal::TcParser::MpRepeatedMessageOrGroup<true,false>(a1, this, a3, a4, a5, a6);
      return;
    }

    goto LABEL_12;
  }

  google::protobuf::internal::TcParser::MpRepeatedMessageOrGroup<true,true>(a1, this, a3, a4, a5, a6);
}

uint64_t google::protobuf::internal::TcParser::MpMap<true>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  v7 = a2;
  v74 = (a5 + HIDWORD(a4));
  v9 = a5 + *(a5 + 6);
  v10 = &v9[8 * *(v74 + 4)];
  v11 = *v10;
  if ((*v10 & 0x10000) != 0 && (a4 & 7) == 2)
  {
    v12 = BYTE2(*v10);
    v13 = *(v9 + 2);
    v14 = *(*(a5 + 4) + v13);
    v15 = *(a1 + v13);
    v76 = a4;
    if (v15 != v14)
    {
      v16 = v15 + *v74;
      v71 = a6;
      v72 = a1;
      v73 = BYTE2(*v10);
      if ((v11 & 0x20000) != 0)
      {
LABEL_6:
        v17 = HIWORD(v11);
        v18 = (v11 >> 3) & 7;
        v70 = v11;
        LODWORD(v11) = (v11 >> 11) & 7;
        while (1)
        {
          v19 = *(v16 + 24);
          if (v19)
          {
            v22 = google::protobuf::Arena::AllocateForArray(v19, v17);
            if (v18 <= 1)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v22 = operator new(v17);
            if (v18 <= 1)
            {
LABEL_15:
              if (v18)
              {
                *(v22 + 2) = 0;
                v24 = (v22 + WORD2(v11));
                if (v11 > 1)
                {
LABEL_22:
                  if (v11 == 2)
                  {
                    *v24 = 0;
                    v26 = *v7;
                    if ((*v7 & 0x80000000) == 0)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_39;
                  }

                  if (v11 != 3)
                  {
                    (*(v10 + 1))(*(v16 + 24), v24);
                    v26 = *v7;
                    if ((*v7 & 0x80000000) == 0)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_39;
                  }

                  v25 = *(v16 + 24);
                  *v24 = 0;
                  v24[1] = 0;
                  v24[2] = 0;
                  if (v25)
                  {
                    google::protobuf::internal::ThreadSafeArena::AddCleanup(v25, v24, google::protobuf::internal::cleanup::arena_destruct_object<std::string>);
                    v26 = *v7;
                    if ((*v7 & 0x80000000) == 0)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_39;
                  }

                  goto LABEL_34;
                }
              }

              else
              {
                *(v22 + 8) = 0;
                v24 = (v22 + WORD2(v11));
                if (v11 > 1)
                {
                  goto LABEL_22;
                }
              }

              goto LABEL_32;
            }
          }

          if (v18 == 2)
          {
            v22[1] = 0;
            v24 = (v22 + WORD2(v11));
            if (v11 > 1)
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v18 == 3)
            {
              v23 = *(v16 + 24);
              v22[1] = 0;
              v22[2] = 0;
              v22[3] = 0;
              if (v23)
              {
                google::protobuf::internal::ThreadSafeArena::AddCleanup(v23, v22 + 1, google::protobuf::internal::cleanup::arena_destruct_object<std::string>);
                v24 = (v22 + WORD2(v11));
                if (v11 > 1)
                {
                  goto LABEL_22;
                }

                goto LABEL_32;
              }
            }

            else
            {
              (*(v10 + 1))(*(v16 + 24), v22 + 1);
            }

            v24 = (v22 + WORD2(v11));
            if (v11 > 1)
            {
              goto LABEL_22;
            }
          }

LABEL_32:
          if (!v11)
          {
            *v24 = 0;
LABEL_34:
            v26 = *v7;
            if ((*v7 & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_39;
          }

          *v24 = 0;
          v26 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
LABEL_35:
            v27 = (v7 + 1);
            v28 = *(a3 + 88);
            v29 = __OFSUB__(v28, 1);
            v30 = v28 - 1;
            if (v30 < 0 != v29)
            {
              goto LABEL_49;
            }

            goto LABEL_41;
          }

LABEL_39:
          google::protobuf::internal::ReadSizeFallback(v7, v26);
          if (!v31 || (LODWORD(v26) = v27, v27 = v31, v32 = *(a3 + 88), v29 = __OFSUB__(v32, 1), v30 = v32 - 1, (v30 < 0) ^ v29))
          {
LABEL_49:
            v39 = 0;
            v47 = 1;
            v48 = v76;
            if (!v22)
            {
              goto LABEL_59;
            }

            goto LABEL_57;
          }

LABEL_41:
          v33 = *(a3 + 8);
          v34 = v26 + v27 - v33;
          *a3 = v33 + (v34 & (v34 >> 31));
          LODWORD(v33) = *(a3 + 28);
          *(a3 + 28) = v34;
          v35 = v33 - v34;
          *(a3 + 88) = v30;
          google::protobuf::internal::TcParser::ParseOneMapEntry(v22, v27, a3, v10, a5, v74);
          ++*(a3 + 88);
          v38 = *(a3 + 28) + v35;
          *(a3 + 28) = v38;
          if (*(a3 + 80))
          {
            goto LABEL_49;
          }

          v39 = v36;
          *a3 = *(a3 + 8) + (v38 & (v38 >> 31));
          if (!v36)
          {
            v47 = 1;
            v48 = v76;
            if (!v22)
            {
              goto LABEL_59;
            }

            goto LABEL_57;
          }

          if ((v73 & 0x10) != 0)
          {
            v40 = *v24;
            v41 = *(v10 + 1);
            v42 = *v41;
            v43 = v42 >> 16;
            v44 = v40 - v42;
            v45 = v44 >= v43;
            v46 = v44 - v43;
            if (v45)
            {
              v50 = v41[1];
              if (v46 >= v50)
              {
                v51 = 0;
                v52 = v50 >> 16;
                v53 = &v41[(v50 >> 5) + 2];
                while (v51 < v52)
                {
                  v54 = *(v53 + 4 * v51);
                  v55 = v54 == v40;
                  v56 = v54 <= v40;
                  v57 = 1;
                  if (v56)
                  {
                    v57 = 2;
                  }

                  v51 = v57 + 2 * v51;
                  if (v55)
                  {
                    goto LABEL_45;
                  }
                }

LABEL_68:
                v48 = v76;
                google::protobuf::internal::TcParser::WriteMapEntryAsUnknown(v72, a5, v76, v22, v70);
                v47 = 0;
                if (!v22)
                {
                  goto LABEL_59;
                }

                goto LABEL_57;
              }

              if (((v41[(v46 >> 5) + 2] >> v46) & 1) == 0)
              {
                goto LABEL_68;
              }
            }
          }

LABEL_45:
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v22 = google::protobuf::internal::KeyMapBase<unsigned long long>::InsertOrReplaceNode(v16, v22);
              v47 = 0;
              v48 = v76;
              if (!v22)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v22 = google::protobuf::internal::KeyMapBase<std::string>::InsertOrReplaceNode(v16, v22, v20, v21, v37);
              v47 = 0;
              v48 = v76;
              if (!v22)
              {
                goto LABEL_59;
              }
            }
          }

          else if (v18)
          {
            v22 = google::protobuf::internal::KeyMapBase<unsigned int>::InsertOrReplaceNode(v16, v22);
            v47 = 0;
            v48 = v76;
            if (!v22)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v22 = google::protobuf::internal::KeyMapBase<BOOL>::InsertOrReplaceNode(v16, v22);
            v47 = 0;
            v48 = v76;
            if (!v22)
            {
              goto LABEL_59;
            }
          }

LABEL_57:
          if (!*(v16 + 24))
          {
            google::protobuf::internal::TcParser::DestroyMapNode(v22, v70, v16);
          }

LABEL_59:
          if (v47)
          {

            return google::protobuf::internal::TcParser::Error(v72, v27, v20, v21, a5, v71);
          }

          if (*a3 <= v39)
          {
            if (*a5)
            {
              *(v72 + *a5) |= v71;
            }

            return v39;
          }

          v7 = (v39 + 1);
          v49 = *v39;
          if (*v39 < 0)
          {
            v49 = *v7 | (v49 << 57);
            if (*v7 < 0)
            {
              v49 = __ROR8__(v49, 7) & 0xFFFC000000000000 | v39[2];
              if (v39[2] < 0)
              {
                v49 = __ROR8__(v49, 7) & 0xFFFFF80000000000 | v39[3];
                if (v39[3] < 0)
                {
                  v58 = v39[4];
                  if (v58 < 0)
                  {
                    LODWORD(v49) = 0;
                    v7 = 0;
                  }

                  else
                  {
                    LODWORD(v49) = __ROR8__(__ROR8__(v49, 7) & 0xFFFFFFF000000000 | v58, 36);
                    v7 = (v39 + 5);
                  }

                  v48 = v76;
                }

                else
                {
                  LODWORD(v49) = __ROR8__(v49, 43);
                  v7 = (v39 + 4);
                  v48 = v76;
                }
              }

              else
              {
                LODWORD(v49) = __ROR8__(v49, 50);
                v7 = (v39 + 3);
                v48 = v76;
              }
            }

            else
            {
              LODWORD(v49) = __ROR8__(v49, 57);
              v7 = (v39 + 2);
            }
          }

          if (v49 != v48)
          {
            v59 = *v39;
            v60 = &a5[(v59 & a5[4])];
            v61 = *(v60 + 6);
            v62 = *(v60 + 7) ^ v59;

            return v61(v72, v39, a3, v62);
          }
        }
      }

LABEL_5:
      v16 = (**v16)(v16, 1);
      goto LABEL_6;
    }

    v64 = *(v9 + 4);
    v65 = *(a1 + 8);
    if (v65)
    {
      v66 = *v10;
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
      v67 = a6;
      if (v65)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v66 = *v10;
      v67 = a6;
      if (v65)
      {
LABEL_92:
        v68 = google::protobuf::Arena::Allocate(v65);
        goto LABEL_104;
      }
    }

    v68 = operator new(v64);
LABEL_104:
    *(a1 + v13) = v68;
    memcpy(v68, v14, v64);
    v69 = v67;
    v11 = v66;
    v16 = *(a1 + v13) + *v74;
    v71 = v69;
    v72 = a1;
    v73 = v12;
    if ((v12 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return google::protobuf::internal::TcParser::MpFallback(a1, a2, a3, a4, a5);
}

void google::protobuf::internal::TcParser::MpRepeatedVarint<false>(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  if ((a4 & 7) != 0)
  {
    if ((a4 & 7) == 2)
    {
      google::protobuf::internal::TcParser::MpPackedVarint<false>(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      (*(a5 + 5))(a1, a2, a3);
    }
  }

  else
  {
    v6 = *(a5 + HIDWORD(a4) + 10);
    v7 = (v6 >> 6) & 7;
    if (v7)
    {
      v8 = v6 & 0x600;
      if (v7 == 2)
      {
        v9 = v8 >> 9;
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)1024>(a1, a2, a3, a4, a5, a6);
          }

          else
          {
            google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)1536>(a1, a2, a3, a4, a5, a6);
          }
        }

        else if (v9)
        {
          google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)512>(a1, a2, a3, a4, a5, a6);
        }

        else
        {
          google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)0>(a1, a2, a3, a4, a5, a6);
        }
      }

      else if (v8)
      {
        google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned long long,(unsigned short)512>(a1, a2, a3, a4, a5, a6);
      }

      else
      {
        google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned long long,(unsigned short)0>(a1, a2, a3, a4, a5, a6);
      }
    }

    else
    {
      google::protobuf::internal::TcParser::MpRepeatedVarintT<false,BOOL,(unsigned short)0>(a1, a2, a3, a4, a5, a6);
    }
  }
}

uint64_t google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned long long,(unsigned short)0>(uint64_t a1, google::protobuf::internal *a2, void *a3, unint64_t a4, _WORD *a5, int a6)
{
  v8 = a4;
  v11 = a2;
  v12 = a1 + *(a5 + HIDWORD(a4));
  do
  {
    *v24 = 0;
    v13 = *v11;
    if ((*v11 & 0x80) != 0)
    {
      if ((v13 & 0x8000) != 0)
      {
        v22 = google::protobuf::internal::VarintParseSlowArm(v11, v24, v13);
        if (!v22)
        {
LABEL_20:

          return google::protobuf::internal::TcParser::Error(a1, v19, v20, v21, a5, a6);
        }

        v15 = v22;
        v14 = *v24;
      }

      else
      {
        v14 = *v11 & 0x7FLL | (((*v11 >> 8) & 0x7FLL) << 7);
        v15 = (v11 + 2);
      }
    }

    else
    {
      v14 = *v11 & 0x7FLL;
      v15 = (v11 + 1);
    }

    v17 = *v12;
    v16 = *(v12 + 4);
    if (*v12 == v16)
    {
      google::protobuf::RepeatedField<long long>::Grow(v12, v16);
      v17 = *v12;
    }

    v18 = *(v12 + 8);
    *v12 = v17 + 1;
    *(v18 + 8 * v17) = v14;
    if (*a3 <= v15)
    {
      break;
    }

    v11 = (v15 + 1);
    LODWORD(v19) = *v15;
    if (*v15 < 0)
    {
      v19 = v19 + (*v11 << 7) - 128;
      if (*v11 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v19);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = (v15 + 2);
      }
    }
  }

  while (v19 == v8);
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return v15;
}

uint64_t google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned long long,(unsigned short)512>(uint64_t a1, google::protobuf::internal *a2, void *a3, unint64_t a4, _WORD *a5, int a6)
{
  v8 = a4;
  v11 = a2;
  v12 = a1 + *(a5 + HIDWORD(a4));
  do
  {
    *v24 = 0;
    v13 = *v11;
    if ((*v11 & 0x80) != 0)
    {
      if ((v13 & 0x8000) != 0)
      {
        v22 = google::protobuf::internal::VarintParseSlowArm(v11, v24, v13);
        if (!v22)
        {
LABEL_20:

          return google::protobuf::internal::TcParser::Error(a1, v19, v20, v21, a5, a6);
        }

        v15 = v22;
        v14 = *v24;
      }

      else
      {
        v14 = *v11 & 0x7FLL | (((*v11 >> 8) & 0x7FLL) << 7);
        v15 = (v11 + 2);
      }
    }

    else
    {
      v14 = *v11 & 0x7FLL;
      v15 = (v11 + 1);
    }

    v17 = *v12;
    v16 = *(v12 + 4);
    if (*v12 == v16)
    {
      google::protobuf::RepeatedField<long long>::Grow(v12, v16);
      v17 = *v12;
    }

    v18 = *(v12 + 8);
    *v12 = v17 + 1;
    *(v18 + 8 * v17) = -(v14 & 1) ^ (v14 >> 1);
    if (*a3 <= v15)
    {
      break;
    }

    v11 = (v15 + 1);
    LODWORD(v19) = *v15;
    if (*v15 < 0)
    {
      v19 = v19 + (*v11 << 7) - 128;
      if (*v11 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v19);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = (v15 + 2);
      }
    }
  }

  while (v19 == v8);
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return v15;
}

uint64_t google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)0>(uint64_t a1, google::protobuf::internal *a2, void *a3, unint64_t a4, _WORD *a5, int a6)
{
  v8 = a4;
  v11 = a2;
  v12 = (a1 + *(a5 + HIDWORD(a4)));
  do
  {
    *v24 = 0;
    v13 = *v11;
    if ((*v11 & 0x80) != 0)
    {
      if ((v13 & 0x8000) != 0)
      {
        v22 = google::protobuf::internal::VarintParseSlowArm(v11, v24, v13);
        if (!v22)
        {
LABEL_20:

          return google::protobuf::internal::TcParser::Error(a1, v19, v20, v21, a5, a6);
        }

        v15 = v22;
        LODWORD(v14) = *v24;
      }

      else
      {
        v14 = *v11 & 0x7FLL | (((*v11 >> 8) & 0x7FLL) << 7);
        v15 = (v11 + 2);
      }
    }

    else
    {
      LODWORD(v14) = v13 & 0x7F;
      v15 = (v11 + 1);
    }

    v16 = HIDWORD(*v12);
    v17 = *v12;
    if (v17 == v16)
    {
      google::protobuf::RepeatedField<int>::Grow(v12, v16, (v16 + 1));
      v17 = *v12;
    }

    v18 = v12[1];
    *v12 = v17 + 1;
    *(v18 + 4 * v17) = v14;
    if (*a3 <= v15)
    {
      break;
    }

    v11 = (v15 + 1);
    LODWORD(v19) = *v15;
    if (*v15 < 0)
    {
      v19 = v19 + (*v11 << 7) - 128;
      if (*v11 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v19);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = (v15 + 2);
      }
    }
  }

  while (v19 == v8);
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return v15;
}

uint64_t google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)512>(uint64_t a1, google::protobuf::internal *a2, void *a3, unint64_t a4, _WORD *a5, int a6)
{
  v8 = a4;
  v11 = a2;
  v12 = (a1 + *(a5 + HIDWORD(a4)));
  do
  {
    *v24 = 0;
    v13 = *v11;
    if ((*v11 & 0x80) != 0)
    {
      if ((v13 & 0x8000) != 0)
      {
        v22 = google::protobuf::internal::VarintParseSlowArm(v11, v24, v13);
        if (!v22)
        {
LABEL_20:

          return google::protobuf::internal::TcParser::Error(a1, v19, v20, v21, a5, a6);
        }

        v15 = v22;
        LODWORD(v14) = *v24;
      }

      else
      {
        v14 = *v11 & 0x7FLL | (((*v11 >> 8) & 0x7FLL) << 7);
        v15 = (v11 + 2);
      }
    }

    else
    {
      LODWORD(v14) = v13 & 0x7F;
      v15 = (v11 + 1);
    }

    v16 = HIDWORD(*v12);
    v17 = *v12;
    if (v17 == v16)
    {
      google::protobuf::RepeatedField<int>::Grow(v12, v16, (v16 + 1));
      v17 = *v12;
    }

    v18 = v12[1];
    *v12 = v17 + 1;
    *(v18 + 4 * v17) = -(v14 & 1) ^ (v14 >> 1);
    if (*a3 <= v15)
    {
      break;
    }

    v11 = (v15 + 1);
    LODWORD(v19) = *v15;
    if (*v15 < 0)
    {
      v19 = v19 + (*v11 << 7) - 128;
      if (*v11 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v19);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = (v15 + 2);
      }
    }
  }

  while (v19 == v8);
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return v15;
}

char *google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)1024>(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v8 = a4;
  v11 = this;
  v12 = (a5 + HIDWORD(a4));
  v13 = (a1 + *v12);
  v14 = *(&a5[4 * *(v12 + 4)] + *(a5 + 6));
  while (1)
  {
    *v35 = 0;
    v15 = *v11;
    if ((*v11 & 0x80) != 0)
    {
      if ((v15 & 0x8000) != 0)
      {
        v33 = v11;
        v30 = google::protobuf::internal::VarintParseSlowArm(v11, v35, v15);
        if (!v30)
        {
LABEL_28:

          return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
        }

        v17 = v30;
        v11 = v33;
        LODWORD(v16) = *v35;
      }

      else
      {
        v16 = *v11 & 0x7FLL | (((*v11 >> 8) & 0x7FLL) << 7);
        v17 = (v11 + 2);
      }
    }

    else
    {
      LODWORD(v16) = v15 & 0x7F;
      v17 = (v11 + 1);
    }

    v18 = *v14;
    v19 = v18 >> 16;
    v20 = v16 - v18;
    v21 = v20 >= v19;
    v22 = v20 - v19;
    if (!v21)
    {
      goto LABEL_7;
    }

    v29 = v14[1];
    if (v22 >= v29)
    {
      break;
    }

    if (((*(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFFCLL) + 8) >> v22) & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_7:
    v23 = HIDWORD(*v13);
    v24 = *v13;
    if (v24 == v23)
    {
      google::protobuf::RepeatedField<int>::Grow(v13, v23, (v23 + 1));
      v24 = *v13;
    }

    v25 = v13[1];
    *v13 = v24 + 1;
    *(v25 + 4 * v24) = v16;
    if (*a3 <= v17)
    {
LABEL_25:
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v17;
    }

    v11 = (v17 + 1);
    LODWORD(v26) = *v17;
    if (*v17 < 0)
    {
      v26 = v26 + (*v11 << 7) - 128;
      if (*v11 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v17, v26);
        if (!v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v11 = (v17 + 2);
      }
    }

    if (v26 != v8)
    {
      goto LABEL_25;
    }
  }

  v34 = v11;
  v31 = google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)1024>(v29, (v14 + 2), v16);
  v11 = v34;
  if ((v31 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_22:

  return google::protobuf::internal::TcParser::MpUnknownEnumFallback(a1, v11, a3, v8, a5, a6);
}

char *google::protobuf::internal::TcParser::MpRepeatedVarintT<false,unsigned int,(unsigned short)1536>(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v8 = a4;
  v12 = (a5 + HIDWORD(a4));
  v13 = (a1 + *v12);
  v14 = *(&a5[4 * *(v12 + 4)] + *(a5 + 6));
  v15 = v14;
  v16 = v14 + WORD1(v14);
  while (1)
  {
    *v32 = 0;
    v17 = *this;
    if ((*this & 0x80) != 0)
    {
      if ((v17 & 0x8000) != 0)
      {
        v31 = this;
        v29 = google::protobuf::internal::VarintParseSlowArm(this, v32, v17);
        if (!v29)
        {
LABEL_27:

          return google::protobuf::internal::TcParser::Error(a1, v24, v27, v28, a5, a6);
        }

        v19 = v29;
        this = v31;
        LODWORD(v18) = *v32;
      }

      else
      {
        v18 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
        v19 = this + 2;
      }
    }

    else
    {
      LODWORD(v18) = v17 & 0x7F;
      v19 = this + 1;
    }

    if (v15 > v18 || v16 <= v18)
    {
      break;
    }

    v21 = HIDWORD(*v13);
    v22 = *v13;
    if (v22 == v21)
    {
      google::protobuf::RepeatedField<int>::Grow(v13, v21, (v21 + 1));
      v22 = *v13;
    }

    v23 = v13[1];
    *v13 = v22 + 1;
    *(v23 + 4 * v22) = v18;
    if (*a3 <= v19)
    {
LABEL_24:
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v19;
    }

    this = (v19 + 1);
    LODWORD(v24) = *v19;
    if (*v19 < 0)
    {
      v25 = *this;
      v24 = v24 + (v25 << 7) - 128;
      if (v25 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v19, v24);
        if (!v26)
        {
          goto LABEL_27;
        }

        this = v26;
      }

      else
      {
        this = (v19 + 2);
      }
    }

    if (v24 != v8)
    {
      goto LABEL_24;
    }
  }

  return google::protobuf::internal::TcParser::MpUnknownEnumFallback(a1, this, a3, v8, a5, a6);
}

uint64_t google::protobuf::internal::TcParser::MpRepeatedVarintT<false,BOOL,(unsigned short)0>(uint64_t a1, google::protobuf::internal *a2, void *a3, unint64_t a4, _WORD *a5, int a6)
{
  v8 = a4;
  v11 = a2;
  v12 = a1 + *(a5 + HIDWORD(a4));
  do
  {
    *v24 = 0;
    v13 = *v11;
    if ((*v11 & 0x80) != 0)
    {
      if ((v13 & 0x8000) != 0)
      {
        v22 = google::protobuf::internal::VarintParseSlowArm(v11, v24, v13);
        if (!v22)
        {
LABEL_20:

          return google::protobuf::internal::TcParser::Error(a1, v19, v20, v21, a5, a6);
        }

        v15 = v22;
        v14 = *v24;
      }

      else
      {
        v14 = *v11 & 0x7FLL | (((*v11 >> 8) & 0x7FLL) << 7);
        v15 = (v11 + 2);
      }
    }

    else
    {
      v14 = *v11 & 0x7FLL;
      v15 = (v11 + 1);
    }

    v17 = *v12;
    v16 = *(v12 + 4);
    if (*v12 == v16)
    {
      google::protobuf::RepeatedField<BOOL>::Grow(v12, v16, (v16 + 1));
      v17 = *v12;
    }

    v18 = *(v12 + 8);
    *v12 = v17 + 1;
    *(v18 + v17) = v14 != 0;
    if (*a3 <= v15)
    {
      break;
    }

    v11 = (v15 + 1);
    LODWORD(v19) = *v15;
    if (*v15 < 0)
    {
      v19 = v19 + (*v11 << 7) - 128;
      if (*v11 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v19);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = (v15 + 2);
      }
    }
  }

  while (v19 == v8);
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return v15;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(google::protobuf::internal::EpsCopyInputStream *this, google::protobuf::internal *a2, int *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v6 = (a2 + 1);
    v7 = *(this + 1);
    v8 = v7 - (a2 + 1);
    if (v5 > v8)
    {
      goto LABEL_3;
    }

LABEL_22:
    v20 = (v6 + v5);
    if (v5 >= 1)
    {
      while (1)
      {
        *v46 = 0;
        v21 = *v6;
        if ((*v6 & 0x80) != 0)
        {
          if ((v21 & 0x8000) != 0)
          {
            v6 = google::protobuf::internal::VarintParseSlowArm(v6, v46, v21);
            if (!v6)
            {
              break;
            }

            v22 = *v46;
          }

          else
          {
            v22 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
            v6 = (v6 + 2);
          }
        }

        else
        {
          v22 = *v6 & 0x7FLL;
          v6 = (v6 + 1);
        }

        v24 = *a3;
        v23 = a3[1];
        if (*a3 == v23)
        {
          v26 = v6;
          google::protobuf::RepeatedField<long long>::Grow(a3, v23);
          v6 = v26;
          v27 = *a3;
          v28 = *(a3 + 1);
          ++*a3;
          *(v28 + 8 * v27) = v22;
          if (v26 >= v20)
          {
            break;
          }
        }

        else
        {
          v25 = *(a3 + 1);
          *a3 = v24 + 1;
          *(v25 + 8 * v24) = v22;
          if (v6 >= v20)
          {
            break;
          }
        }
      }
    }

    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  google::protobuf::internal::ReadSizeFallback(a2, *a2);
  if (!v6)
  {
    goto LABEL_51;
  }

  v5 = v30;
  v7 = *(this + 1);
  v8 = v7 - v6;
  if (v30 <= v7 - v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  while (v6 < v7)
  {
    do
    {
      while (1)
      {
        *v46 = 0;
        v9 = *v6;
        if ((*v6 & 0x80) != 0)
        {
          if ((v9 & 0x8000) != 0)
          {
            v6 = google::protobuf::internal::VarintParseSlowArm(v6, v46, v9);
            if (!v6)
            {
              goto LABEL_51;
            }

            v10 = *v46;
          }

          else
          {
            v10 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
            v6 = (v6 + 2);
          }
        }

        else
        {
          v10 = *v6 & 0x7FLL;
          v6 = (v6 + 1);
        }

        v12 = *a3;
        v11 = a3[1];
        if (*a3 == v11)
        {
          break;
        }

        v13 = *(a3 + 1);
        *a3 = v12 + 1;
        *(v13 + 8 * v12) = v10;
        if (v6 >= v7)
        {
          goto LABEL_18;
        }
      }

      v14 = v6;
      google::protobuf::RepeatedField<long long>::Grow(a3, v11);
      v6 = v14;
      v15 = *a3;
      v16 = *(a3 + 1);
      ++*a3;
      *(v16 + 8 * v15) = v10;
    }

    while (v14 < v7);
LABEL_18:
    v7 = *(this + 1);
    v17 = v6 - v7;
    v18 = v5 - v8;
    if (v5 - v8 <= 16)
    {
      goto LABEL_38;
    }

LABEL_19:
    if (*(this + 7) < 17)
    {
      goto LABEL_51;
    }

    v19 = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!v19)
    {
      goto LABEL_51;
    }

    v5 = v5 - v8 - v17;
    v6 = (v19 + v17);
    v7 = *(this + 1);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
      goto LABEL_22;
    }
  }

  if (!v6)
  {
    goto LABEL_51;
  }

  v17 = v6 - v7;
  v18 = v5 - v8;
  if (v5 - v8 > 16)
  {
    goto LABEL_19;
  }

LABEL_38:
  memset(v46, 0, sizeof(v46));
  v48 = 0;
  v47 = 0;
  *v46 = *v7;
  v31 = v18;
  v32 = &v46[v18];
  v33 = &v46[v17];
  if (v17 < v18)
  {
    while (1)
    {
      *v45 = 0;
      v34 = *v33;
      if ((*v33 & 0x80) != 0)
      {
        if ((v34 & 0x8000) != 0)
        {
          v41 = google::protobuf::internal::VarintParseSlowArm(v33, v45, v34);
          if (!v41)
          {
            goto LABEL_51;
          }

          v33 = v41;
          v35 = *v45;
        }

        else
        {
          v35 = *v33 & 0x7FLL | (((*v33 >> 8) & 0x7FLL) << 7);
          v33 = (v33 + 2);
        }
      }

      else
      {
        v35 = *v33 & 0x7FLL;
        v33 = (v33 + 1);
      }

      v37 = *a3;
      v36 = a3[1];
      if (*a3 == v36)
      {
        google::protobuf::RepeatedField<long long>::Grow(a3, v36);
        v39 = *a3;
        v40 = *(a3 + 1);
        ++*a3;
        *(v40 + 8 * v39) = v35;
        if (v33 >= v32)
        {
          break;
        }
      }

      else
      {
        v38 = *(a3 + 1);
        *a3 = v37 + 1;
        *(v38 + 8 * v37) = v35;
        if (v33 >= v32)
        {
          break;
        }
      }
    }
  }

  if (v33 == v32)
  {
    v43 = *(this + 1) + v31;
    v44 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_51:
    v42 = *MEMORY[0x277D85DE8];
  }
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(google::protobuf::internal::EpsCopyInputStream *this, google::protobuf::internal *a2, int *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v6 = (a2 + 1);
    v7 = *(this + 1);
    v8 = v7 - (a2 + 1);
    if (v5 > v8)
    {
      goto LABEL_3;
    }

LABEL_21:
    v18 = (v6 + v5);
    if (v5 >= 1)
    {
      do
      {
        *v40 = 0;
        v19 = *v6;
        if ((*v6 & 0x80) != 0)
        {
          if ((v19 & 0x8000) != 0)
          {
            v6 = google::protobuf::internal::VarintParseSlowArm(v6, v40, v19);
            if (!v6)
            {
              break;
            }

            v20 = *v40;
          }

          else
          {
            v20 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
            v6 = (v6 + 2);
          }
        }

        else
        {
          v20 = *v6 & 0x7FLL;
          v6 = (v6 + 1);
        }

        v22 = *a3;
        v21 = a3[1];
        if (*a3 == v21)
        {
          v24 = v6;
          google::protobuf::RepeatedField<long long>::Grow(a3, v21);
          v6 = v24;
          v22 = *a3;
        }

        v23 = *(a3 + 1);
        *a3 = v22 + 1;
        *(v23 + 8 * v22) = -(v20 & 1) ^ (v20 >> 1);
      }

      while (v6 < v18);
    }

    v25 = *MEMORY[0x277D85DE8];
    return;
  }

  google::protobuf::internal::ReadSizeFallback(a2, *a2);
  if (!v6)
  {
    goto LABEL_48;
  }

  v5 = v26;
  v7 = *(this + 1);
  v8 = v7 - v6;
  if (v26 <= v7 - v6)
  {
    goto LABEL_21;
  }

LABEL_3:
  while (v6 < v7)
  {
    do
    {
      *v40 = 0;
      v9 = *v6;
      if ((*v6 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v6 = google::protobuf::internal::VarintParseSlowArm(v6, v40, v9);
          if (!v6)
          {
            goto LABEL_48;
          }

          v10 = *v40;
        }

        else
        {
          v10 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
          v6 = (v6 + 2);
        }
      }

      else
      {
        v10 = *v6 & 0x7FLL;
        v6 = (v6 + 1);
      }

      v12 = *a3;
      v11 = a3[1];
      if (*a3 == v11)
      {
        v14 = v6;
        google::protobuf::RepeatedField<long long>::Grow(a3, v11);
        v6 = v14;
        v12 = *a3;
      }

      v13 = *(a3 + 1);
      *a3 = v12 + 1;
      *(v13 + 8 * v12) = -(v10 & 1) ^ (v10 >> 1);
    }

    while (v6 < v7);
    v7 = *(this + 1);
    v15 = v6 - v7;
    v16 = v5 - v8;
    if (v5 - v8 <= 16)
    {
      goto LABEL_36;
    }

LABEL_18:
    if (*(this + 7) < 17)
    {
      goto LABEL_48;
    }

    v17 = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!v17)
    {
      goto LABEL_48;
    }

    v5 = v5 - v8 - v15;
    v6 = (v17 + v15);
    v7 = *(this + 1);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
      goto LABEL_21;
    }
  }

  if (!v6)
  {
    goto LABEL_48;
  }

  v15 = v6 - v7;
  v16 = v5 - v8;
  if (v5 - v8 > 16)
  {
    goto LABEL_18;
  }

LABEL_36:
  memset(v40, 0, sizeof(v40));
  v42 = 0;
  v41 = 0;
  *v40 = *v7;
  v27 = v16;
  v28 = &v40[v16];
  v29 = &v40[v15];
  if (v15 < v16)
  {
    do
    {
      *v39 = 0;
      v30 = *v29;
      if ((*v29 & 0x80) != 0)
      {
        if ((v30 & 0x8000) != 0)
        {
          v35 = google::protobuf::internal::VarintParseSlowArm(v29, v39, v30);
          if (!v35)
          {
            goto LABEL_48;
          }

          v29 = v35;
          v31 = *v39;
        }

        else
        {
          v31 = *v29 & 0x7FLL | (((*v29 >> 8) & 0x7FLL) << 7);
          v29 = (v29 + 2);
        }
      }

      else
      {
        v31 = *v29 & 0x7FLL;
        v29 = (v29 + 1);
      }

      v33 = *a3;
      v32 = a3[1];
      if (*a3 == v32)
      {
        google::protobuf::RepeatedField<long long>::Grow(a3, v32);
        v33 = *a3;
      }

      v34 = *(a3 + 1);
      *a3 = v33 + 1;
      *(v34 + 8 * v33) = -(v31 & 1) ^ (v31 >> 1);
    }

    while (v29 < v28);
  }

  if (v29 == v28)
  {
    v37 = *(this + 1) + v27;
    v38 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_48:
    v36 = *MEMORY[0x277D85DE8];
  }
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(google::protobuf::internal::EpsCopyInputStream *this, google::protobuf::internal *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v6 = (a2 + 1);
    v7 = *(this + 1);
    v8 = v7 - (a2 + 1);
    if (v5 > v8)
    {
      goto LABEL_3;
    }

LABEL_22:
    v20 = (v6 + v5);
    if (v5 >= 1)
    {
      while (1)
      {
        *v46 = 0;
        v21 = *v6;
        if ((*v6 & 0x80) != 0)
        {
          if ((v21 & 0x8000) != 0)
          {
            v6 = google::protobuf::internal::VarintParseSlowArm(v6, v46, v21);
            if (!v6)
            {
              break;
            }

            LODWORD(v22) = *v46;
          }

          else
          {
            v22 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
            v6 = (v6 + 2);
          }
        }

        else
        {
          LODWORD(v22) = v21 & 0x7F;
          v6 = (v6 + 1);
        }

        v23 = HIDWORD(*a3);
        v24 = *a3;
        if (v24 == v23)
        {
          v26 = v6;
          google::protobuf::RepeatedField<int>::Grow(a3, v23, (v23 + 1));
          v6 = v26;
          v27 = *a3;
          v28 = a3[1];
          ++*a3;
          *(v28 + 4 * v27) = v22;
          if (v26 >= v20)
          {
            break;
          }
        }

        else
        {
          v25 = a3[1];
          *a3 = v24 + 1;
          *(v25 + 4 * v24) = v22;
          if (v6 >= v20)
          {
            break;
          }
        }
      }
    }

    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  google::protobuf::internal::ReadSizeFallback(a2, *a2);
  if (!v6)
  {
    goto LABEL_51;
  }

  v5 = v30;
  v7 = *(this + 1);
  v8 = v7 - v6;
  if (v30 <= v7 - v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  while (v6 < v7)
  {
    do
    {
      while (1)
      {
        *v46 = 0;
        v9 = *v6;
        if ((*v6 & 0x80) != 0)
        {
          if ((v9 & 0x8000) != 0)
          {
            v6 = google::protobuf::internal::VarintParseSlowArm(v6, v46, v9);
            if (!v6)
            {
              goto LABEL_51;
            }

            LODWORD(v10) = *v46;
          }

          else
          {
            v10 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
            v6 = (v6 + 2);
          }
        }

        else
        {
          LODWORD(v10) = v9 & 0x7F;
          v6 = (v6 + 1);
        }

        v11 = HIDWORD(*a3);
        v12 = *a3;
        if (v12 == v11)
        {
          break;
        }

        v13 = a3[1];
        *a3 = v12 + 1;
        *(v13 + 4 * v12) = v10;
        if (v6 >= v7)
        {
          goto LABEL_18;
        }
      }

      v14 = v6;
      google::protobuf::RepeatedField<int>::Grow(a3, v11, (v11 + 1));
      v6 = v14;
      v15 = *a3;
      v16 = a3[1];
      ++*a3;
      *(v16 + 4 * v15) = v10;
    }

    while (v14 < v7);
LABEL_18:
    v7 = *(this + 1);
    v17 = v6 - v7;
    v18 = v5 - v8;
    if (v5 - v8 <= 16)
    {
      goto LABEL_38;
    }

LABEL_19:
    if (*(this + 7) < 17)
    {
      goto LABEL_51;
    }

    v19 = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!v19)
    {
      goto LABEL_51;
    }

    v5 = v5 - v8 - v17;
    v6 = (v19 + v17);
    v7 = *(this + 1);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
      goto LABEL_22;
    }
  }

  if (!v6)
  {
    goto LABEL_51;
  }

  v17 = v6 - v7;
  v18 = v5 - v8;
  if (v5 - v8 > 16)
  {
    goto LABEL_19;
  }

LABEL_38:
  memset(v46, 0, sizeof(v46));
  v48 = 0;
  v47 = 0;
  *v46 = *v7;
  v31 = v18;
  v32 = &v46[v18];
  v33 = &v46[v17];
  if (v17 < v18)
  {
    while (1)
    {
      *v45 = 0;
      v34 = *v33;
      if ((*v33 & 0x80) != 0)
      {
        if ((v34 & 0x8000) != 0)
        {
          v41 = google::protobuf::internal::VarintParseSlowArm(v33, v45, v34);
          if (!v41)
          {
            goto LABEL_51;
          }

          v33 = v41;
          LODWORD(v35) = *v45;
        }

        else
        {
          v35 = *v33 & 0x7FLL | (((*v33 >> 8) & 0x7FLL) << 7);
          v33 = (v33 + 2);
        }
      }

      else
      {
        LODWORD(v35) = v34 & 0x7F;
        v33 = (v33 + 1);
      }

      v36 = HIDWORD(*a3);
      v37 = *a3;
      if (v37 == v36)
      {
        google::protobuf::RepeatedField<int>::Grow(a3, v36, (v36 + 1));
        v39 = *a3;
        v40 = a3[1];
        ++*a3;
        *(v40 + 4 * v39) = v35;
        if (v33 >= v32)
        {
          break;
        }
      }

      else
      {
        v38 = a3[1];
        *a3 = v37 + 1;
        *(v38 + 4 * v37) = v35;
        if (v33 >= v32)
        {
          break;
        }
      }
    }
  }

  if (v33 == v32)
  {
    v43 = *(this + 1) + v31;
    v44 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_51:
    v42 = *MEMORY[0x277D85DE8];
  }
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(google::protobuf::internal::EpsCopyInputStream *this, google::protobuf::internal *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v6 = (a2 + 1);
    v7 = *(this + 1);
    v8 = v7 - (a2 + 1);
    if (v5 > v8)
    {
      goto LABEL_3;
    }

LABEL_21:
    v18 = (v6 + v5);
    if (v5 >= 1)
    {
      do
      {
        *v40 = 0;
        v19 = *v6;
        if ((*v6 & 0x80) != 0)
        {
          if ((v19 & 0x8000) != 0)
          {
            v6 = google::protobuf::internal::VarintParseSlowArm(v6, v40, v19);
            if (!v6)
            {
              break;
            }

            LODWORD(v20) = *v40;
          }

          else
          {
            v20 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
            v6 = (v6 + 2);
          }
        }

        else
        {
          LODWORD(v20) = v19 & 0x7F;
          v6 = (v6 + 1);
        }

        v21 = HIDWORD(*a3);
        v22 = *a3;
        if (v22 == v21)
        {
          v24 = v6;
          google::protobuf::RepeatedField<int>::Grow(a3, v21, (v21 + 1));
          v6 = v24;
          v22 = *a3;
        }

        v23 = a3[1];
        *a3 = v22 + 1;
        *(v23 + 4 * v22) = -(v20 & 1) ^ (v20 >> 1);
      }

      while (v6 < v18);
    }

    v25 = *MEMORY[0x277D85DE8];
    return;
  }

  google::protobuf::internal::ReadSizeFallback(a2, *a2);
  if (!v6)
  {
    goto LABEL_48;
  }

  v5 = v26;
  v7 = *(this + 1);
  v8 = v7 - v6;
  if (v26 <= v7 - v6)
  {
    goto LABEL_21;
  }

LABEL_3:
  while (v6 < v7)
  {
    do
    {
      *v40 = 0;
      v9 = *v6;
      if ((*v6 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v6 = google::protobuf::internal::VarintParseSlowArm(v6, v40, v9);
          if (!v6)
          {
            goto LABEL_48;
          }

          LODWORD(v10) = *v40;
        }

        else
        {
          v10 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
          v6 = (v6 + 2);
        }
      }

      else
      {
        LODWORD(v10) = v9 & 0x7F;
        v6 = (v6 + 1);
      }

      v11 = HIDWORD(*a3);
      v12 = *a3;
      if (v12 == v11)
      {
        v14 = v6;
        google::protobuf::RepeatedField<int>::Grow(a3, v11, (v11 + 1));
        v6 = v14;
        v12 = *a3;
      }

      v13 = a3[1];
      *a3 = v12 + 1;
      *(v13 + 4 * v12) = -(v10 & 1) ^ (v10 >> 1);
    }

    while (v6 < v7);
    v7 = *(this + 1);
    v15 = v6 - v7;
    v16 = v5 - v8;
    if (v5 - v8 <= 16)
    {
      goto LABEL_36;
    }

LABEL_18:
    if (*(this + 7) < 17)
    {
      goto LABEL_48;
    }

    v17 = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!v17)
    {
      goto LABEL_48;
    }

    v5 = v5 - v8 - v15;
    v6 = (v17 + v15);
    v7 = *(this + 1);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
      goto LABEL_21;
    }
  }

  if (!v6)
  {
    goto LABEL_48;
  }

  v15 = v6 - v7;
  v16 = v5 - v8;
  if (v5 - v8 > 16)
  {
    goto LABEL_18;
  }

LABEL_36:
  memset(v40, 0, sizeof(v40));
  v42 = 0;
  v41 = 0;
  *v40 = *v7;
  v27 = v16;
  v28 = &v40[v16];
  v29 = &v40[v15];
  if (v15 < v16)
  {
    do
    {
      *v39 = 0;
      v30 = *v29;
      if ((*v29 & 0x80) != 0)
      {
        if ((v30 & 0x8000) != 0)
        {
          v35 = google::protobuf::internal::VarintParseSlowArm(v29, v39, v30);
          if (!v35)
          {
            goto LABEL_48;
          }

          v29 = v35;
          LODWORD(v31) = *v39;
        }

        else
        {
          v31 = *v29 & 0x7FLL | (((*v29 >> 8) & 0x7FLL) << 7);
          v29 = (v29 + 2);
        }
      }

      else
      {
        LODWORD(v31) = v30 & 0x7F;
        v29 = (v29 + 1);
      }

      v32 = HIDWORD(*a3);
      v33 = *a3;
      if (v33 == v32)
      {
        google::protobuf::RepeatedField<int>::Grow(a3, v32, (v32 + 1));
        v33 = *a3;
      }

      v34 = a3[1];
      *a3 = v33 + 1;
      *(v34 + 4 * v33) = -(v31 & 1) ^ (v31 >> 1);
    }

    while (v29 < v28);
  }

  if (v29 == v28)
  {
    v37 = *(this + 1) + v27;
    v38 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_48:
    v36 = *MEMORY[0x277D85DE8];
  }
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = (this + 1);
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 > v7 - v6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (v6)
  {
    v5 = v9;
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
LABEL_11:
      v16 = a3[1];
      v21 = *a3;
      v22 = v16;
      v23 = *(a3 + 4);
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v21);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v21 = *a3;
      v22 = v10;
      v23 = *(a3 + 4);
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v21);
      if (!v11)
      {
        break;
      }

      v12 = *(a1 + 8);
      v13 = v11 - v12;
      v14 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v26 = 0;
        v25 = 0;
        v24 = *v12;
        v18 = v14;
        v19 = a3[1];
        v21 = *a3;
        v22 = v19;
        v23 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v24 + v13), &v24 + v14, &v21) == (&v24 + v14))
        {
          v20 = *(a1 + 8) + v18;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v15 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v15)
      {
        break;
      }

      v5 = v5 - v8 - v13;
      v6 = (v15 + v13);
      v7 = *(a1 + 8);
      v8 = v7 - v6;
      if (v5 <= v7 - v6)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *result, unint64_t a2, unsigned int **a3)
{
  if (result < a2)
  {
    v30 = v3;
    v31 = v4;
    do
    {
      while (1)
      {
        *v29 = 0;
        v6 = *result;
        if ((*result & 0x80) != 0)
        {
          if ((v6 & 0x8000) != 0)
          {
            v22 = a2;
            result = google::protobuf::internal::VarintParseSlowArm(result, v29, v6);
            if (!result)
            {
              return result;
            }

            v7 = *v29;
            a2 = v22;
          }

          else
          {
            v7 = *result & 0x7FLL | (((*result >> 8) & 0x7FLL) << 7);
            result = (result + 2);
          }
        }

        else
        {
          v7 = *result & 0x7FLL;
          result = (result + 1);
        }

        v8 = *a3;
        v9 = **a3;
        v10 = v9 >> 16;
        v11 = v7 - v9;
        v12 = v11 >= v10;
        v13 = v11 - v10;
        if (!v12)
        {
          goto LABEL_6;
        }

        if (v13 < *(v8 + 4))
        {
          break;
        }

        v23 = result;
        v24 = *(v8 + 4);
        v25 = a2;
        v26 = *a3;
        v27 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>();
        a2 = v25;
        v28 = v27;
        result = v23;
        if (v28)
        {
          goto LABEL_14;
        }

LABEL_6:
        v14 = a3[4];
        v15 = HIDWORD(*v14);
        v16 = *v14;
        if (v16 == v15)
        {
          v20 = result;
          v21 = a2;
          google::protobuf::RepeatedField<int>::Grow(a3[4], HIDWORD(*v14), (v15 + 1));
          a2 = v21;
          result = v20;
          v16 = *v14;
        }

        v17 = *(v14 + 1);
        *v14 = v16 + 1;
        *(v17 + 4 * v16) = v7;
        if (result >= a2)
        {
          return result;
        }
      }

      if ((*(v8 + 4 * (v13 >> 5) + 8) >> v13))
      {
        goto LABEL_6;
      }

LABEL_14:
      v18 = result;
      v19 = a2;
      google::protobuf::internal::TcParser::AddUnknownEnum(a3[1], a3[2], *(a3 + 6), v7);
      a2 = v19;
      result = v18;
    }

    while (v18 < v19);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = (this + 1);
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 > v7 - v6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (v6)
  {
    v5 = v9;
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
LABEL_11:
      v16 = a3[1];
      v21 = *a3;
      v22 = v16;
      v23 = *(a3 + 4);
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v21);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v21 = *a3;
      v22 = v10;
      v23 = *(a3 + 4);
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v21);
      if (!v11)
      {
        break;
      }

      v12 = *(a1 + 8);
      v13 = v11 - v12;
      v14 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v26 = 0;
        v25 = 0;
        v24 = *v12;
        v18 = v14;
        v19 = a3[1];
        v21 = *a3;
        v22 = v19;
        v23 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v24 + v13), &v24 + v14, &v21) == (&v24 + v14))
        {
          v20 = *(a1 + 8) + v18;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v15 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v15)
      {
        break;
      }

      v5 = v5 - v8 - v13;
      v6 = (v15 + v13);
      v7 = *(a1 + 8);
      v8 = v7 - v6;
      if (v5 <= v7 - v6)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *this, unint64_t a2, uint64_t a3)
{
  for (i = this; i < a2; *(v13 + 4 * v12) = v7)
  {
    while (1)
    {
      *v15 = 0;
      v6 = *i;
      if ((*i & 0x80) != 0)
      {
        if ((v6 & 0x8000) != 0)
        {
          i = google::protobuf::internal::VarintParseSlowArm(i, v15, v6);
          if (!i)
          {
            return i;
          }

          v7 = *v15;
        }

        else
        {
          v7 = *i & 0x7FLL | (((*i >> 8) & 0x7FLL) << 7);
          i = (i + 2);
        }
      }

      else
      {
        v7 = *i & 0x7FLL;
        i = (i + 1);
      }

      v8 = *a3;
      if (v8 <= v7 && v8 + HIWORD(*a3) > v7)
      {
        break;
      }

      google::protobuf::internal::TcParser::AddUnknownEnum(*(a3 + 8), *(a3 + 16), *(a3 + 24), v7);
      if (i >= a2)
      {
        return i;
      }
    }

    v10 = *(a3 + 32);
    v11 = HIDWORD(*v10);
    v12 = *v10;
    if (v12 == v11)
    {
      google::protobuf::RepeatedField<int>::Grow(*(a3 + 32), v11, (v11 + 1));
      v12 = *v10;
    }

    v13 = v10[1];
    *v10 = v12 + 1;
  }

  return i;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(google::protobuf::internal::EpsCopyInputStream *this, google::protobuf::internal *a2, int *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v6 = (a2 + 1);
    v7 = *(this + 1);
    v8 = v7 - (a2 + 1);
    if (v5 > v8)
    {
      goto LABEL_3;
    }

LABEL_21:
    v18 = (v6 + v5);
    if (v5 >= 1)
    {
      do
      {
        *v40 = 0;
        v19 = *v6;
        if ((*v6 & 0x80) != 0)
        {
          if ((v19 & 0x8000) != 0)
          {
            v6 = google::protobuf::internal::VarintParseSlowArm(v6, v40, v19);
            if (!v6)
            {
              break;
            }

            v20 = *v40;
          }

          else
          {
            v20 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
            v6 = (v6 + 2);
          }
        }

        else
        {
          v20 = *v6 & 0x7FLL;
          v6 = (v6 + 1);
        }

        v22 = *a3;
        v21 = a3[1];
        if (*a3 == v21)
        {
          v24 = v6;
          google::protobuf::RepeatedField<BOOL>::Grow(a3, v21, (v21 + 1));
          v6 = v24;
          v22 = *a3;
        }

        v23 = *(a3 + 1);
        *a3 = v22 + 1;
        *(v23 + v22) = v20 != 0;
      }

      while (v6 < v18);
    }

    v25 = *MEMORY[0x277D85DE8];
    return;
  }

  google::protobuf::internal::ReadSizeFallback(a2, *a2);
  if (!v6)
  {
    goto LABEL_48;
  }

  v5 = v26;
  v7 = *(this + 1);
  v8 = v7 - v6;
  if (v26 <= v7 - v6)
  {
    goto LABEL_21;
  }

LABEL_3:
  while (v6 < v7)
  {
    do
    {
      *v40 = 0;
      v9 = *v6;
      if ((*v6 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v6 = google::protobuf::internal::VarintParseSlowArm(v6, v40, v9);
          if (!v6)
          {
            goto LABEL_48;
          }

          v10 = *v40;
        }

        else
        {
          v10 = *v6 & 0x7FLL | (((*v6 >> 8) & 0x7FLL) << 7);
          v6 = (v6 + 2);
        }
      }

      else
      {
        v10 = *v6 & 0x7FLL;
        v6 = (v6 + 1);
      }

      v12 = *a3;
      v11 = a3[1];
      if (*a3 == v11)
      {
        v14 = v6;
        google::protobuf::RepeatedField<BOOL>::Grow(a3, v11, (v11 + 1));
        v6 = v14;
        v12 = *a3;
      }

      v13 = *(a3 + 1);
      *a3 = v12 + 1;
      *(v13 + v12) = v10 != 0;
    }

    while (v6 < v7);
    v7 = *(this + 1);
    v15 = v6 - v7;
    v16 = v5 - v8;
    if (v5 - v8 <= 16)
    {
      goto LABEL_36;
    }

LABEL_18:
    if (*(this + 7) < 17)
    {
      goto LABEL_48;
    }

    v17 = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!v17)
    {
      goto LABEL_48;
    }

    v5 = v5 - v8 - v15;
    v6 = (v17 + v15);
    v7 = *(this + 1);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
      goto LABEL_21;
    }
  }

  if (!v6)
  {
    goto LABEL_48;
  }

  v15 = v6 - v7;
  v16 = v5 - v8;
  if (v5 - v8 > 16)
  {
    goto LABEL_18;
  }

LABEL_36:
  memset(v40, 0, sizeof(v40));
  v42 = 0;
  v41 = 0;
  *v40 = *v7;
  v27 = v16;
  v28 = &v40[v16];
  v29 = &v40[v15];
  if (v15 < v16)
  {
    do
    {
      *v39 = 0;
      v30 = *v29;
      if ((*v29 & 0x80) != 0)
      {
        if ((v30 & 0x8000) != 0)
        {
          v35 = google::protobuf::internal::VarintParseSlowArm(v29, v39, v30);
          if (!v35)
          {
            goto LABEL_48;
          }

          v29 = v35;
          v31 = *v39;
        }

        else
        {
          v31 = *v29 & 0x7FLL | (((*v29 >> 8) & 0x7FLL) << 7);
          v29 = (v29 + 2);
        }
      }

      else
      {
        v31 = *v29 & 0x7FLL;
        v29 = (v29 + 1);
      }

      v33 = *a3;
      v32 = a3[1];
      if (*a3 == v32)
      {
        google::protobuf::RepeatedField<BOOL>::Grow(a3, v32, (v32 + 1));
        v33 = *a3;
      }

      v34 = *(a3 + 1);
      *a3 = v33 + 1;
      *(v34 + v33) = v31 != 0;
    }

    while (v29 < v28);
  }

  if (v29 == v28)
  {
    v37 = *(this + 1) + v27;
    v38 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_48:
    v36 = *MEMORY[0x277D85DE8];
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::MpRepeatedFixed<false>(uint64_t a1, char *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = a4 & 7;
  if (v11 == 2)
  {

    return google::protobuf::internal::TcParser::MpPackedFixed<false>(a1, a2, a3, a4, a5, a6);
  }

  v13 = (a5 + HIDWORD(a4));
  if ((*(v13 + 5) & 0x1C0) == 0xC0)
  {
    if (v11 == 1)
    {
      v14 = (a1 + *v13);
      while (1)
      {
        v16 = *a2;
        v17 = *v14;
        if (*v14 == v14[1])
        {
          v24 = a2;
          google::protobuf::RepeatedField<long long>::Grow(v14, *v14);
          a2 = v24;
          v17 = *v14;
        }

        v18 = *(v14 + 1);
        *v14 = v17 + 1;
        *(v18 + 8 * v17) = v16;
        v19 = a2 + 8;
        if (*v9 <= (a2 + 8))
        {
          break;
        }

        LODWORD(v20) = a2[8];
        v15 = a2 + 9;
        if (a2[8] < 0)
        {
          v20 = (v20 + (*v15 << 7) - 128);
          if (*v15 < 0)
          {
            google::protobuf::internal::ReadTagFallback((a2 + 8), v20);
            if (!v15)
            {
              goto LABEL_37;
            }

            LODWORD(v20) = v21;
          }

          else
          {
            v15 = a2 + 10;
          }
        }

        a2 = v15;
        if (v20 != v8)
        {
          goto LABEL_29;
        }
      }

LABEL_34:
      if (*a5)
      {
        *(v10 + *a5) |= a6;
      }

      return v19;
    }
  }

  else if (v11 == 5)
  {
    v25 = (a1 + *v13);
    while (1)
    {
      v27 = *a2;
      v28 = *v25;
      if (*v25 == v25[1])
      {
        v31 = a2;
        google::protobuf::RepeatedField<int>::Grow(v25, *v25, v28 + 1);
        a2 = v31;
        v28 = *v25;
      }

      v29 = *(v25 + 1);
      *v25 = v28 + 1;
      *(v29 + 4 * v28) = v27;
      v19 = a2 + 4;
      if (*v9 <= (a2 + 4))
      {
        goto LABEL_34;
      }

      LODWORD(v30) = a2[4];
      v26 = a2 + 5;
      if (a2[4] < 0)
      {
        v30 = (v30 + (*v26 << 7) - 128);
        if (*v26 < 0)
        {
          google::protobuf::internal::ReadTagFallback((a2 + 4), v30);
          if (!v26)
          {
LABEL_37:

            return google::protobuf::internal::TcParser::Error(v10, v21, v22, v23, a5, a6);
          }

          LODWORD(v30) = v21;
        }

        else
        {
          v26 = a2 + 6;
        }
      }

      a2 = v26;
      if (v30 != v8)
      {
LABEL_29:
        if (*v9 <= v19)
        {
          goto LABEL_34;
        }

        v33 = *v19;
        v34 = &a5[(v33 & a5[4])];
        v32 = *(v34 + 6);
        a4 = *(v34 + 7) ^ v33;
        a1 = v10;
        a2 = v19;
        a3 = v9;
        goto LABEL_31;
      }
    }
  }

  v32 = *(a5 + 5);
LABEL_31:

  return v32(a1, a2, a3, a4, a5, a6);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
{
  v22 = a4;
  if (!a2)
  {
    return 0;
  }

  v5 = a3;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 < a3)
  {
    do
    {
      v8 = *a4;
      v9 = *a4 + (v7 >> 3);
      if (a4[1] < v9)
      {
        v12 = a2;
        google::protobuf::RepeatedField<long long>::Grow(a4, *a4);
        a2 = v12;
        v8 = *a4;
        v9 = *a4 + (v7 >> 3);
      }

      v10 = *(a4 + 1);
      *a4 = v9;
      memcpy((v10 + 8 * v8), a2, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      a2 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
    }

    while (v5 > v7);
  }

  v13 = v5 & 0xFFFFFFF8;
  if (v5 <= 7)
  {
    if (v5 == v13)
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  v14 = v5 >> 3;
  v15 = *a4;
  v16 = *a4 + (v5 >> 3);
  if (a4[1] >= v16)
  {
    v17 = *(a4 + 1);
    *a4 = v16;
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_21:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v21, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/parse_context.h", 1174);
    v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<unsigned long long> *,0>(v21, &v22);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, ",", 1uLL);
    v23 = v14;
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v20, &v23);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v21);
  }

  v19 = a2;
  google::protobuf::RepeatedField<long long>::Grow(a4, *a4);
  a2 = v19;
  v15 = *a4;
  v17 = *(a4 + 1);
  *a4 += v14;
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_17:
  v18 = a2;
  memcpy((v17 + 8 * v15), a2, v13);
  if (v5 == v13)
  {
    return &v18[v13];
  }

  else
  {
    return 0;
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, unsigned int *a4)
{
  v22 = a4;
  if (!a2)
  {
    return 0;
  }

  v5 = a3;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 < a3)
  {
    do
    {
      v8 = *a4;
      v9 = *a4 + (v7 >> 2);
      if (a4[1] < v9)
      {
        v12 = a2;
        google::protobuf::RepeatedField<int>::Grow(a4, *a4, v9);
        a2 = v12;
        v8 = *a4;
        LODWORD(v9) = *a4 + (v7 >> 2);
      }

      v10 = *(a4 + 1);
      *a4 = v9;
      memcpy((v10 + 4 * v8), a2, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      a2 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
    }

    while (v5 > v7);
  }

  v13 = v5 & 0xFFFFFFFC;
  if (v5 <= 3)
  {
    if (v5 == v13)
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  v14 = v5 >> 2;
  v15 = *a4;
  v16 = *a4 + (v5 >> 2);
  if (a4[1] >= v16)
  {
    v17 = *(a4 + 1);
    *a4 = v16;
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_21:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v21, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/parse_context.h", 1174);
    v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<unsigned int> *,0>(v21, &v22);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, ",", 1uLL);
    v23 = v14;
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v20, &v23);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v21);
  }

  v19 = a2;
  google::protobuf::RepeatedField<int>::Grow(a4, *a4, v16);
  a2 = v19;
  v15 = *a4;
  v17 = *(a4 + 1);
  *a4 += v14;
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_17:
  v18 = a2;
  memcpy((v17 + 4 * v15), a2, v13);
  if (v5 == v13)
  {
    return &v18[v13];
  }

  else
  {
    return 0;
  }
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<unsigned long long> *,0>(uint64_t a1, void *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9150](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CD5EB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD5EBA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<google::protobuf::RepeatedField<unsigned int> *,0>(uint64_t a1, void *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9150](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CD5EC0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD5EC20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::TcParser::MpRepeatedString<false>(uint64_t a1, google::protobuf::internal *a2, void *a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  v7 = a4;
  v8 = a3;
  if ((a4 & 7) != 2)
  {
    v19 = *(a5 + 5);
    goto LABEL_11;
  }

  v9 = (a5 + HIDWORD(a4));
  v10 = *(v9 + 5);
  v80 = a1;
  if ((v10 & 0x1C0) != 0x100)
  {
    v20 = a2;
LABEL_9:
    if (*v8 <= v20)
    {
LABEL_73:
      if (*a5)
      {
        *(v80 + *a5) |= a6;
      }

      return v20;
    }

    v21 = *v20;
    v22 = &a5[(v21 & a5[4])];
    v19 = *(v22 + 6);
    a4 = *(v22 + 7) ^ v21;
    a1 = v80;
    a2 = v20;
    a3 = v8;
LABEL_11:

    return v19(a1, a2, a3, a4, a5);
  }

  v11 = v10 & 0x600;
  v12 = a1 + *v9;
  if (!*(v12 + 16) || (v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(), *(v13 + 8) != *v14))
  {
    v17 = a2;
    while (1)
    {
LABEL_65:
      v75 = v17;
      v76 = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      v77 = google::protobuf::internal::InlineGreedyStringParser(v76, v75);
      if (!v77)
      {
        goto LABEL_59;
      }

      v20 = v77;
      v78 = v76[23];
      if (v78 < 0)
      {
        v79 = v76;
        v76 = *v76;
        v78 = *(v79 + 1);
      }

      if ((google::protobuf::internal::TcParser::MpVerifyUtf8(v76, v78, a5, a5 + HIDWORD(v7), v11) & 1) == 0)
      {
        goto LABEL_59;
      }

      if (*v8 <= v20)
      {
        goto LABEL_73;
      }

      v17 = (v20 + 1);
      LODWORD(v74) = *v20;
      if (*v20 < 0)
      {
        v74 = (v74 + (*v17 << 7) - 128);
        if (*v17 < 0)
        {
          google::protobuf::internal::ReadTagFallback(v20, v74);
        }

        else
        {
          v17 = (v20 + 2);
        }
      }

      if (v74 != v7)
      {
        goto LABEL_9;
      }
    }
  }

  v15 = v13;
  v16 = *v12;
  v17 = a2;
  if (*v12)
  {
    v18 = *(v16 - 1);
  }

  else
  {
    v18 = v16 != 0;
  }

  if (v18 != *(v12 + 8))
  {
    goto LABEL_65;
  }

  v24 = *(v15 + 16);
  while (1)
  {
    v25 = *v17;
    if (*v17 < 0)
    {
      google::protobuf::internal::ReadSizeFallback(v17, *v17);
      if (!v38)
      {
        goto LABEL_59;
      }

      v26 = v38;
      v25 = v32;
      v27 = *(v24 + 5);
      if (v27)
      {
LABEL_21:
        v28 = v27 - 24;
        *(v24 + 5) = v28;
        v29 = (*(v24 + 4) + v28 + 16);
        v29->__r_.__value_.__r.__words[0] = 0;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v30 = *(v12 + 8);
        if (v30 > *(v12 + 12))
        {
          goto LABEL_34;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v26 = v17 + 1;
      v27 = *(v24 + 5);
      if (v27)
      {
        goto LABEL_21;
      }
    }

    v29 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v24);
    v29->__r_.__value_.__r.__words[0] = 0;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v30 = *(v12 + 8);
    if (v30 > *(v12 + 12))
    {
LABEL_34:
      *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1) = v29;
      ++*(*v12 - 1);
      v30 = *(v12 + 8);
      goto LABEL_25;
    }

LABEL_22:
    if (*v12)
    {
      *(*v12 + 8 * v30 + 7) = v29;
      ++*(*v12 - 1);
    }

    else
    {
      *v12 = v29;
    }

LABEL_25:
    *(v12 + 8) = v30 + 1;
    String = google::protobuf::internal::EpsCopyInputStream::ReadString(v8, v26, v25, v29);
    if (!String)
    {
      goto LABEL_59;
    }

    v20 = String;
    v35 = *v12 + 8 * *(v12 + 8) - 1;
    if ((*v12 & 1) == 0)
    {
      v35 = v12;
    }

    v36 = *v35;
    v37 = *(*v35 + 23);
    if ((v37 & 0x8000000000000000) == 0)
    {
      break;
    }

    v36 = *v36;
    v37 = *(*v35 + 8);
    if (v11 == 1024)
    {
      goto LABEL_36;
    }

LABEL_37:
    if (*v8 <= v20)
    {
      goto LABEL_73;
    }

    v17 = (v20 + 1);
    LODWORD(v40) = *v20;
    if (*v20 < 0)
    {
      v40 = (v40 + (*v17 << 7) - 128);
      if (*v17 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v20, v40);
      }

      else
      {
        v17 = (v20 + 2);
      }
    }

    if (v40 != v7)
    {
      goto LABEL_9;
    }
  }

  if (v11 != 1024)
  {
    goto LABEL_37;
  }

LABEL_36:
  if (utf8_range::IsStructurallyValid(v36, v37))
  {
    goto LABEL_37;
  }

  v41 = &a5[4 * a5[11]] + *(a5 + 6);
  v42 = 0xAAAAAAAAAAAAAAABLL * ((HIDWORD(v7) - *(a5 + 4)) >> 2);
  v43 = __CFADD__(v42, 1);
  v44 = v42 + 1;
  v45 = &v41[v42 + 1];
  if (v43)
  {
    v46 = (a5[10] + 8) & 0x1FFF8;
  }

  else
  {
    if (v44 < 4)
    {
      v46 = (a5[10] + 8) & 0x1FFF8;
      v47 = &a5[4 * a5[11]] + *(a5 + 6);
      goto LABEL_57;
    }

    if (v44 >= 0x10)
    {
      v48 = v44 & 0xFFFFFFFFFFFFFFF0;
      v49 = 0uLL;
      v50 = ((a5[10] + 8) & 0x1FFF8);
      v39.i32[1] = -255;
      v51 = v44 & 0xFFFFFFFFFFFFFFF0;
      v52 = (&a5[4 * a5[11]] + *(a5 + 6));
      v53 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      do
      {
        v59 = *v52++;
        v60 = vqtbl1q_s8(v59, xmmword_23CE4EF60);
        v61 = vqtbl1q_s8(v59, xmmword_23CE4EF70);
        v62 = vqtbl1q_s8(v59, xmmword_23CE4EF80);
        v63 = vqtbl1q_s8(v59, xmmword_23CE4EF90);
        v49 = vaddw_high_u32(v49, v61);
        v54 = vaddw_high_u32(v54, v60);
        v53 = vaddw_u32(v53, *v60.i8);
        v50 = vaddw_u32(v50, *v61.i8);
        v55 = vaddw_u32(v55, *v62.i8);
        v56 = vaddw_high_u32(v56, v62);
        v57 = vaddw_u32(v57, *v63.i8);
        v58 = vaddw_high_u32(v58, v63);
        v51 -= 16;
      }

      while (v51);
      v46 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v50, v55), vaddq_s64(v53, v57)), vaddq_s64(vaddq_s64(v49, v56), vaddq_s64(v54, v58))));
      if (v44 != v48)
      {
        if ((v44 & 0xC) == 0)
        {
          v47 = &v41[v48];
          goto LABEL_57;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v48 = 0;
      v46 = (a5[10] + 8) & 0x1FFF8;
LABEL_52:
      v47 = &v41[v44 & 0xFFFFFFFFFFFFFFFCLL];
      v64 = 0uLL;
      v65 = v46;
      v66 = &v41[v48];
      v67 = v48 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
      v68.i64[0] = 255;
      v68.i64[1] = 255;
      do
      {
        v69 = *v66;
        v66 += 4;
        v39.i32[0] = v69;
        v70 = vmovl_u16(*&vmovl_u8(*v39.i8));
        v71.i64[0] = v70.u32[0];
        v71.i64[1] = v70.u32[1];
        v72 = vandq_s8(v71, v68);
        v71.i64[0] = v70.u32[2];
        v71.i64[1] = v70.u32[3];
        v39 = vandq_s8(v71, v68);
        v64 = vaddq_s64(v64, v39);
        v65 = vaddq_s64(v65, v72);
        v67 += 4;
      }

      while (v67);
      v46 = vaddvq_s64(vaddq_s64(v65, v64));
      if (v44 != (v44 & 0xFFFFFFFFFFFFFFFCLL))
      {
        do
        {
LABEL_57:
          v73 = *v47++;
          v46 += v73;
        }

        while (v47 != v45);
      }
    }
  }

  google::protobuf::internal::PrintUTF8ErrorLog(&v41[(a5[10] + 8) & 0x1FFF8], *v41, &v41[v46], *v45, "parsing");
LABEL_59:

  return google::protobuf::internal::TcParser::Error(v80, v32, v33, v34, a5, a6);
}

unsigned __int16 *google::protobuf::internal::TcParser::MpRepeatedMessageOrGroup<false,false>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  if ((a4 & 7) == 2)
  {
    v10 = (a5 + HIDWORD(a4));
    v11 = *v10;
    v12 = *(&a5[4 * *(v10 + 4)] + *(a5 + 6));
    v13 = *(v10 + 5) & 0x600;
    v14 = a5;
    if (v13 != 512)
    {
      if (v13 == 1024)
      {
        v16 = *(v12 + 4);
        while (1)
        {
          v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage((v9 + v11), v16);
          v20 = *v8;
          if ((v20 & 0x80) != 0)
          {
            v25 = v17;
            google::protobuf::internal::ReadSizeFallback(v8, v20);
            v21 = v26;
            if (!v26)
            {
              goto LABEL_38;
            }

            v17 = v25;
            v27 = *(v7 + 88);
            v23 = __OFSUB__(v27, 1);
            v24 = v27 - 1;
            if (v24 < 0 != v23)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v21 = (v8 + 1);
            v22 = *(v7 + 88);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v24 < 0 != v23)
            {
              goto LABEL_38;
            }
          }

          v28 = *(v7 + 8);
          v29 = v20 + v21 - v28;
          *v7 = v28 + (v29 & (v29 >> 31));
          LODWORD(v28) = *(v7 + 28);
          *(v7 + 28) = v29;
          v30 = v28 - v29;
          *(v7 + 88) = v24;
          result = google::protobuf::internal::TcParser::ParseLoop(v17, v21, v7, v12);
          ++*(v7 + 88);
          v32 = *(v7 + 28) + v30;
          *(v7 + 28) = v32;
          if (*(v7 + 80))
          {
            goto LABEL_38;
          }

          v33 = *(v7 + 8) + (v32 & (v32 >> 31));
          *v7 = v33;
          if (!result)
          {
            goto LABEL_38;
          }

          if (v33 <= result)
          {
            goto LABEL_35;
          }

          v8 = (result + 1);
          LODWORD(v20) = *result;
          if (*result < 0)
          {
            v20 = v20 + (*v8 << 7) - 128;
            if (*v8 < 0)
            {
              v34 = result;
              google::protobuf::internal::ReadTagFallback(result, v20);
              v8 = v35;
              if (!v35)
              {
                goto LABEL_38;
              }

              result = v34;
            }

            else
            {
              v8 = (result + 1);
            }
          }

          if (v20 != v6)
          {
            goto LABEL_30;
          }
        }
      }

      v12 = *v12;
    }

    while (1)
    {
      v37 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage((v9 + v11), v12);
      result = google::protobuf::internal::ParseContext::ParseMessage(v7, v37, v8);
      if (!result)
      {
        break;
      }

      if (*v7 <= result)
      {
        goto LABEL_35;
      }

      v8 = (result + 1);
      LODWORD(v20) = *result;
      if (*result < 0)
      {
        v20 = v20 + (*v8 << 7) - 128;
        if (*v8 < 0)
        {
          v38 = result;
          google::protobuf::internal::ReadTagFallback(result, v20);
          v8 = v39;
          if (!v39)
          {
            break;
          }

          result = v38;
        }

        else
        {
          v8 = (result + 1);
        }
      }

      if (v20 != v6)
      {
LABEL_30:
        if (*v7 > result)
        {
          v40 = *result;
          v41 = &v14[(v40 & v14[4])];
          v36 = *(v41 + 6);
          a4 = *(v41 + 7) ^ v40;
          a2 = result;
          a1 = v9;
          a3 = v7;
          a5 = v14;
          goto LABEL_32;
        }

LABEL_35:
        if (*v14)
        {
          *(v9 + *v14) |= a6;
        }

        return result;
      }
    }

LABEL_38:

    return google::protobuf::internal::TcParser::Error(v9, v20, v18, v19, v14, a6);
  }

  else
  {
    v36 = *(a5 + 5);
LABEL_32:

    return v36(a1, a2, a3, a4, a5);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::MpRepeatedMessageOrGroup<false,true>(uint64_t a1, unsigned __int16 *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  v6 = a4;
  if ((a4 & 7) == 3)
  {
    v10 = (a5 + HIDWORD(a4));
    v11 = *v10;
    v12 = *(&a5[4 * *(v10 + 4)] + *(a5 + 6));
    v13 = *(v10 + 5) & 0x600;
    if (v13 == 512)
    {
LABEL_25:
      while (1)
      {
        v29 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage((a1 + v11), v12);
        v30 = a3[11].i32[0];
        v22 = __OFSUB__(v30, 1);
        a3[11].i32[0] = --v30;
        if (v30 < 0 != v22)
        {
          break;
        }

        ++a3[11].i32[1];
        result = (*(*v29 + 56))(v29, a2, a3);
        a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
        v31 = a3[10].i32[0];
        a3[10].i32[0] = 0;
        if (v31 != v6 || result == 0)
        {
          break;
        }

        if (*a3 <= result)
        {
          goto LABEL_40;
        }

        a2 = (result + 1);
        LODWORD(v18) = *result;
        if (*result < 0)
        {
          v18 = v18 + (*a2 << 7) - 128;
          if (*a2 < 0)
          {
            v33 = result;
            google::protobuf::internal::ReadTagFallback(result, v18);
            a2 = v34;
            if (!v34)
            {
              break;
            }

            result = v33;
          }

          else
          {
            a2 = result + 1;
          }
        }

        if (v18 != v6)
        {
LABEL_38:
          if (*a3 > result)
          {
            v35 = *result;
            v36 = &a5[(v35 & a5[4])];
            v28 = *(v36 + 6);
            v37 = *(v36 + 7) ^ v35;
            goto LABEL_18;
          }

LABEL_40:
          if (*a5)
          {
            *(a1 + *a5) |= a6;
          }

          return result;
        }
      }
    }

    else
    {
      if (v13 != 1024)
      {
        v12 = *v12;
        goto LABEL_25;
      }

      v16 = *(v12 + 4);
      while (1)
      {
        v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage((a1 + v11), v16);
        v21 = a3[11].i32[0];
        v22 = __OFSUB__(v21, 1);
        a3[11].i32[0] = --v21;
        if (v21 < 0 != v22)
        {
          break;
        }

        ++a3[11].i32[1];
        result = google::protobuf::internal::TcParser::ParseLoop(v17, a2, a3, v12);
        a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
        v24 = a3[10].i32[0];
        a3[10].i32[0] = 0;
        if (v24 != v6 || result == 0)
        {
          break;
        }

        if (*a3 <= result)
        {
          goto LABEL_40;
        }

        a2 = (result + 1);
        LODWORD(v18) = *result;
        if (*result < 0)
        {
          v18 = v18 + (*a2 << 7) - 128;
          if (*a2 < 0)
          {
            v26 = result;
            google::protobuf::internal::ReadTagFallback(result, v18);
            a2 = v27;
            if (!v27)
            {
              break;
            }

            result = v26;
          }

          else
          {
            a2 = result + 1;
          }
        }

        if (v18 != v6)
        {
          goto LABEL_38;
        }
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v18, v19, v20, a5, a6);
  }

  else
  {
    v28 = *(a5 + 5);
LABEL_18:

    return v28();
  }
}

uint64_t google::protobuf::internal::KeyMapBase<BOOL>::InsertOrReplaceNode(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 4);
  v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 8) ^ v4 & 1u);
  v7 = (v5 - 1) & (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v6));
  v8 = *(*(a1 + 16) + 8 * v7);
  if (v8)
  {
    v9 = (*(*(a1 + 16) + 8 * v7) & 1) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    do
    {
      if (((*(v8 + 8) ^ v4) & 1) == 0)
      {
        break;
      }

      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v7, 0, v4 & 1, 0);
    v7 = v10;
  }

  if (v8)
  {
    google::protobuf::internal::KeyMapBase<BOOL>::erase_no_destroy(a1, v7, v8);
    v11 = *(a1 + 16);
    v12 = v7;
    v13 = *(v11 + 8 * v7);
    if (!v13)
    {
      goto LABEL_32;
    }

LABEL_17:
    if (v13)
    {
      goto LABEL_21;
    }

    v16 = 0;
    v17 = v13;
    do
    {
      ++v16;
      v17 = *v17;
    }

    while (v17);
    if (v16 > 7)
    {
LABEL_21:
      google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(a1, v7, google::protobuf::internal::KeyMapBase<BOOL>::NodeToVariantKey, a2);
    }

    else
    {
      *a2 = v13;
      *(v11 + 8 * v12) = a2;
    }

    goto LABEL_35;
  }

  v5 = *(a1 + 4);
LABEL_13:
  v14 = (*a1 + 1);
  v15 = (v5 & 0xFFFFFFFE) - ((v5 >> 2) & 0x3FFFFFFC);
  if (v15 < v14)
  {
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_31;
    }

    v18 = 2 * v5;
LABEL_36:
    google::protobuf::internal::KeyMapBase<BOOL>::Resize(a1, v18);
    v23 = *(a2 + 8) & 1;
    v24 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 8) ^ v23);
    v7 = (*(a1 + 4) - 1) & (((v24 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v24));
    if (*(*(a1 + 16) + 8 * v7))
    {
      google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v7, 0, v23, 0);
      v7 = v25;
    }

LABEL_31:
    v8 = 0;
    v11 = *(a1 + 16);
    v12 = v7;
    v13 = *(v11 + 8 * v7);
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  v8 = 0;
  if (v5 >= 3 && v15 >> 2 >= v14)
  {
    v19 = 0;
    v20 = v14 + (v14 >> 2) + 1;
    do
    {
      ++v19;
    }

    while (v20 << v19 < v15);
    if (v5 >> v19 <= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v5 >> v19;
    }

    if (v18 == v5)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v11 = *(a1 + 16);
  v12 = v7;
  v13 = *(v11 + 8 * v7);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_32:
  *a2 = 0;
  *(v11 + 8 * v12) = a2;
  v21 = *(a1 + 12);
  if (v21 >= v7)
  {
    v21 = v7;
  }

  *(a1 + 12) = v21;
LABEL_35:
  ++*a1;
  return v8;
}

uint64_t google::protobuf::internal::KeyMapBase<unsigned int>::InsertOrReplaceNode(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 4);
  v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 8) ^ v4);
  v7 = (v5 - 1) & (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v6));
  v8 = *(*(a1 + 16) + 8 * v7);
  if (v8)
  {
    v9 = (*(*(a1 + 16) + 8 * v7) & 1) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    do
    {
      if (*(v8 + 8) == v4)
      {
        break;
      }

      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v7, 0, v4, 0);
    v7 = v10;
  }

  if (v8)
  {
    google::protobuf::internal::KeyMapBase<unsigned int>::erase_no_destroy(a1, v7, v8);
    v11 = *(a1 + 16);
    v12 = v7;
    v13 = *(v11 + 8 * v7);
    if (!v13)
    {
      goto LABEL_32;
    }

LABEL_17:
    if (v13)
    {
      goto LABEL_21;
    }

    v16 = 0;
    v17 = v13;
    do
    {
      ++v16;
      v17 = *v17;
    }

    while (v17);
    if (v16 > 7)
    {
LABEL_21:
      google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(a1, v7, google::protobuf::internal::KeyMapBase<unsigned int>::NodeToVariantKey, a2);
    }

    else
    {
      *a2 = v13;
      *(v11 + 8 * v12) = a2;
    }

    goto LABEL_35;
  }

  v5 = *(a1 + 4);
LABEL_13:
  v14 = (*a1 + 1);
  v15 = (v5 & 0xFFFFFFFE) - ((v5 >> 2) & 0x3FFFFFFC);
  if (v15 < v14)
  {
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_31;
    }

    v18 = 2 * v5;
LABEL_36:
    google::protobuf::internal::KeyMapBase<unsigned int>::Resize(a1, v18);
    v23 = *(a2 + 8);
    v24 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 8) ^ v23);
    v7 = (*(a1 + 4) - 1) & (((v24 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v24));
    if (*(*(a1 + 16) + 8 * v7))
    {
      google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v7, 0, v23, 0);
      v7 = v25;
    }

LABEL_31:
    v8 = 0;
    v11 = *(a1 + 16);
    v12 = v7;
    v13 = *(v11 + 8 * v7);
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  v8 = 0;
  if (v5 >= 3 && v15 >> 2 >= v14)
  {
    v19 = 0;
    v20 = v14 + (v14 >> 2) + 1;
    do
    {
      ++v19;
    }

    while (v20 << v19 < v15);
    if (v5 >> v19 <= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v5 >> v19;
    }

    if (v18 == v5)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v11 = *(a1 + 16);
  v12 = v7;
  v13 = *(v11 + 8 * v7);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_32:
  *a2 = 0;
  *(v11 + 8 * v12) = a2;
  v21 = *(a1 + 12);
  if (v21 >= v7)
  {
    v21 = v7;
  }

  *(a1 + 12) = v21;
LABEL_35:
  ++*a1;
  return v8;
}

uint64_t google::protobuf::internal::KeyMapBase<unsigned long long>::InsertOrReplaceNode(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = *(a1 + 4);
  v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v4 ^ *(a1 + 8));
  v7 = (v5 - 1) & (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v6));
  v8 = *(*(a1 + 16) + 8 * v7);
  if (v8)
  {
    v9 = (*(*(a1 + 16) + 8 * v7) & 1) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    do
    {
      if (*(v8 + 8) == v4)
      {
        break;
      }

      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v7, 0, v4, 0);
    v7 = v10;
  }

  if (v8)
  {
    google::protobuf::internal::KeyMapBase<unsigned long long>::erase_no_destroy(a1, v7, v8);
    v11 = *(a1 + 16);
    v12 = v7;
    v13 = *(v11 + 8 * v7);
    if (!v13)
    {
      goto LABEL_32;
    }

LABEL_17:
    if (v13)
    {
      goto LABEL_21;
    }

    v16 = 0;
    v17 = v13;
    do
    {
      ++v16;
      v17 = *v17;
    }

    while (v17);
    if (v16 > 7)
    {
LABEL_21:
      google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(a1, v7, google::protobuf::internal::KeyMapBase<unsigned long long>::NodeToVariantKey, a2);
    }

    else
    {
      *a2 = v13;
      *(v11 + 8 * v12) = a2;
    }

    goto LABEL_35;
  }

  v5 = *(a1 + 4);
LABEL_13:
  v14 = (*a1 + 1);
  v15 = (v5 & 0xFFFFFFFE) - ((v5 >> 2) & 0x3FFFFFFC);
  if (v15 < v14)
  {
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_31;
    }

    v18 = 2 * v5;
LABEL_36:
    google::protobuf::internal::KeyMapBase<unsigned long long>::Resize(a1, v18);
    v23 = a2[1];
    v24 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v23 ^ *(a1 + 8));
    v7 = (*(a1 + 4) - 1) & (((v24 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v24));
    if (*(*(a1 + 16) + 8 * v7))
    {
      google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v7, 0, v23, 0);
      v7 = v25;
    }

LABEL_31:
    v8 = 0;
    v11 = *(a1 + 16);
    v12 = v7;
    v13 = *(v11 + 8 * v7);
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  v8 = 0;
  if (v5 >= 3 && v15 >> 2 >= v14)
  {
    v19 = 0;
    v20 = v14 + (v14 >> 2) + 1;
    do
    {
      ++v19;
    }

    while (v20 << v19 < v15);
    if (v5 >> v19 <= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v5 >> v19;
    }

    if (v18 == v5)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v11 = *(a1 + 16);
  v12 = v7;
  v13 = *(v11 + 8 * v7);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_32:
  *a2 = 0;
  *(v11 + 8 * v12) = a2;
  v21 = *(a1 + 12);
  if (v21 >= v7)
  {
    v21 = v7;
  }

  *(a1 + 12) = v21;
LABEL_35:
  ++*a1;
  return v8;
}

uint64_t google::protobuf::internal::KeyMapBase<std::string>::InsertOrReplaceNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const unint64_t *a5)
{
  v7 = (a2 + 8);
  v8 = *(a2 + 31);
  if ((v8 & 0x8000000000000000) != 0)
  {
    Helper = google::protobuf::internal::KeyMapBase<std::string>::FindHelper(a1, *(a2 + 8), *(a2 + 16), 0, a5);
    v13 = v18;
    if (Helper)
    {
LABEL_3:
      v14 = Helper;
      google::protobuf::internal::KeyMapBase<std::string>::erase_no_destroy(a1, v13, Helper, v10, v11);
      v15 = *(a1 + 16);
      v16 = v13;
      v17 = *(v15 + 8 * v13);
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_14;
      }

      v22 = 0;
      v23 = v17;
      do
      {
        ++v22;
        v23 = *v23;
      }

      while (v23);
      if (v22 > 7)
      {
LABEL_14:
        google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(a1, v13, google::protobuf::internal::KeyMapBase<std::string>::NodeToVariantKey, a2);
      }

      else
      {
        *a2 = v17;
        *(v15 + 8 * v16) = a2;
      }

      goto LABEL_28;
    }
  }

  else
  {
    Helper = google::protobuf::internal::KeyMapBase<std::string>::FindHelper(a1, (a2 + 8), v8, 0, a5);
    v13 = v12;
    if (Helper)
    {
      goto LABEL_3;
    }
  }

  v19 = *(a1 + 4);
  v20 = (*a1 + 1);
  v21 = (v19 & 0xFFFFFFFE) - ((v19 >> 2) & 0x3FFFFFFC);
  if (v21 < v20)
  {
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_24;
    }

    v24 = 2 * v19;
    goto LABEL_29;
  }

  v14 = 0;
  if (v19 >= 3 && v21 >> 2 >= v20)
  {
    v25 = 0;
    v26 = v20 + (v20 >> 2) + 1;
    do
    {
      ++v25;
    }

    while (v26 << v25 < v21);
    if (v19 >> v25 <= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v19 >> v25;
    }

    if (v24 == v19)
    {
LABEL_24:
      v14 = 0;
      v15 = *(a1 + 16);
      v16 = v13;
      v17 = *(v15 + 8 * v13);
      if (v17)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_29:
    google::protobuf::internal::KeyMapBase<std::string>::Resize(a1, v24);
    v30 = *(a2 + 31);
    if ((v30 & 0x8000000000000000) != 0)
    {
      v7 = *(a2 + 8);
      v30 = *(a2 + 16);
    }

    google::protobuf::internal::KeyMapBase<std::string>::FindHelper(a1, v7, v30, 0, v29);
    v13 = v31;
    v14 = 0;
    v15 = *(a1 + 16);
    v16 = v31;
    v17 = *(v15 + 8 * v31);
    if (!v17)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  v15 = *(a1 + 16);
  v16 = v13;
  v17 = *(v15 + 8 * v13);
  if (v17)
  {
    goto LABEL_10;
  }

LABEL_25:
  *a2 = 0;
  *(v15 + 8 * v16) = a2;
  v27 = *(a1 + 12);
  if (v27 >= v13)
  {
    v27 = v13;
  }

  *(a1 + 12) = v27;
LABEL_28:
  ++*a1;
  return v14;
}

void *google::protobuf::internal::KeyMapBase<BOOL>::erase_no_destroy(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v23 = 0;
  LODWORD(v24) = -1;
  v4 = *(a1 + 4) - 1;
  v5 = v4 & a2;
  v6 = v5;
  v7 = *(a1 + 16);
  v8 = *(v7 + 8 * v5);
  if (v8 != a3)
  {
    if (!v8 || (*(v7 + 8 * v5) & 1) != 0)
    {
      goto LABEL_14;
    }

    v10 = *(v7 + 8 * v5);
    do
    {
      v10 = *v10;
    }

    while (v10 != a3 && v10 != 0);
    if (!v10)
    {
LABEL_14:
      v12 = *(a3 + 8) & 1;
      v13 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 8) ^ v12);
      v14 = ((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v13);
      v6 = v4 & v14;
      v8 = *(v7 + 8 * (v4 & v14));
      if (v8)
      {
        v15 = a3;
        google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v4 & v14, 0, v12, &v23);
        v6 = v16;
        v8 = *(*(a1 + 16) + 8 * v16);
        if (v8)
        {
          result = google::protobuf::internal::UntypedMapBase::EraseFromTree(a1, v6, v23, v24);
          --*a1;
          if (v6 != *(a1 + 12))
          {
            return result;
          }

          goto LABEL_21;
        }

        v5 = v6;
        a3 = v15;
      }

      else
      {
        v5 = v4 & v14;
      }
    }
  }

  result = google::protobuf::internal::EraseFromLinkedList(a3, v8);
  *(*(a1 + 16) + 8 * v5) = result;
  --*a1;
  if (v6 != *(a1 + 12))
  {
    return result;
  }

LABEL_21:
  v18 = *(a1 + 4);
  if (v6 < v18)
  {
    v19 = (*(a1 + 16) + 8 * v6);
    v20 = v18 - v6;
    v21 = v6 + 1;
    do
    {
      if (*v19++)
      {
        break;
      }

      *(a1 + 12) = v21++;
      --v20;
    }

    while (v20);
  }

  return result;
}

absl::lts_20240722::hash_internal::MixingHashState *absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(absl::lts_20240722::hash_internal::MixingHashState *result, absl::lts_20240722::hash_internal::MixingHashState *a2, unint64_t a3, unint64_t a4, const unint64_t *a5)
{
  if (a3 < 0x11)
  {
    if (a3 >= 9)
    {
      v8 = result + __ROR8__(*a2, 53) - 0x622015F714C7D297;
      v9 = *(a2 + a3 - 8) ^ (result - 0x622015F714C7D297);
      v10 = v9 * v8;
      v11 = (v9 * v8) >> 64;
      return (v11 ^ v10);
    }

    if (a3 < 4)
    {
      if (!a3)
      {
        return result;
      }

      v7 = (*(a2 + (a3 >> 1)) << ((4 * a3) & 0xF8)) | *a2 | (*(a2 + a3 - 1) << (8 * (a3 - 1)));
    }

    else
    {
      v7 = (*(a2 + a3 - 4) << (8 * a3 - 32)) | *a2;
    }

LABEL_10:
    v12 = result + v7;
    v10 = 0x9DDFEA08EB382D69 * v12;
    v11 = (v12 * 0x9DDFEA08EB382D69) >> 64;
    return (v11 ^ v10);
  }

  if (a3 < 0x401)
  {
    v6 = result;
    v7 = absl::lts_20240722::hash_internal::MixingHashState::LowLevelHashImpl(a2, a3, a3, a4, a5);
    result = v6;
    goto LABEL_10;
  }

  return absl::lts_20240722::hash_internal::MixingHashState::CombineLargeContiguousImpl64(result, a2, a3, a4, a5);
}

uint64_t *google::protobuf::internal::EraseFromLinkedList(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (a2 == a1)
  {
    return v3;
  }

  *a2 = google::protobuf::internal::EraseFromLinkedList();
  return a2;
}

void *google::protobuf::internal::KeyMapBase<unsigned int>::erase_no_destroy(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v23 = 0;
  LODWORD(v24) = -1;
  v4 = *(a1 + 4) - 1;
  v5 = v4 & a2;
  v6 = v5;
  v7 = *(a1 + 16);
  v8 = *(v7 + 8 * v5);
  if (v8 != a3)
  {
    if (!v8 || (*(v7 + 8 * v5) & 1) != 0)
    {
      goto LABEL_14;
    }

    v10 = *(v7 + 8 * v5);
    do
    {
      v10 = *v10;
    }

    while (v10 != a3 && v10 != 0);
    if (!v10)
    {
LABEL_14:
      v12 = *(a3 + 8);
      v13 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 8) ^ v12);
      v14 = ((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v13);
      v6 = v4 & v14;
      v8 = *(v7 + 8 * (v4 & v14));
      if (v8)
      {
        v15 = a3;
        google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v4 & v14, 0, v12, &v23);
        v6 = v16;
        v8 = *(*(a1 + 16) + 8 * v16);
        if (v8)
        {
          result = google::protobuf::internal::UntypedMapBase::EraseFromTree(a1, v6, v23, v24);
          --*a1;
          if (v6 != *(a1 + 12))
          {
            return result;
          }

          goto LABEL_21;
        }

        v5 = v6;
        a3 = v15;
      }

      else
      {
        v5 = v4 & v14;
      }
    }
  }

  result = google::protobuf::internal::EraseFromLinkedList(a3, v8);
  *(*(a1 + 16) + 8 * v5) = result;
  --*a1;
  if (v6 != *(a1 + 12))
  {
    return result;
  }

LABEL_21:
  v18 = *(a1 + 4);
  if (v6 < v18)
  {
    v19 = (*(a1 + 16) + 8 * v6);
    v20 = v18 - v6;
    v21 = v6 + 1;
    do
    {
      if (*v19++)
      {
        break;
      }

      *(a1 + 12) = v21++;
      --v20;
    }

    while (v20);
  }

  return result;
}

void *google::protobuf::internal::KeyMapBase<unsigned long long>::erase_no_destroy(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v23 = 0;
  LODWORD(v24) = -1;
  v4 = *(a1 + 4) - 1;
  v5 = v4 & a2;
  v6 = v5;
  v7 = *(a1 + 16);
  v8 = *(v7 + 8 * v5);
  if (v8 != a3)
  {
    if (!v8 || (*(v7 + 8 * v5) & 1) != 0)
    {
      goto LABEL_14;
    }

    v10 = *(v7 + 8 * v5);
    do
    {
      v10 = *v10;
    }

    while (v10 != a3 && v10 != 0);
    if (!v10)
    {
LABEL_14:
      v12 = a3[1];
      v13 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v12 ^ *(a1 + 8));
      v14 = ((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v13);
      v6 = v4 & v14;
      v8 = *(v7 + 8 * (v4 & v14));
      if (v8)
      {
        v15 = a3;
        google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v4 & v14, 0, v12, &v23);
        v6 = v16;
        v8 = *(*(a1 + 16) + 8 * v16);
        if (v8)
        {
          result = google::protobuf::internal::UntypedMapBase::EraseFromTree(a1, v6, v23, v24);
          --*a1;
          if (v6 != *(a1 + 12))
          {
            return result;
          }

          goto LABEL_21;
        }

        v5 = v6;
        a3 = v15;
      }

      else
      {
        v5 = v4 & v14;
      }
    }
  }

  result = google::protobuf::internal::EraseFromLinkedList(a3, v8);
  *(*(a1 + 16) + 8 * v5) = result;
  --*a1;
  if (v6 != *(a1 + 12))
  {
    return result;
  }

LABEL_21:
  v18 = *(a1 + 4);
  if (v6 < v18)
  {
    v19 = (*(a1 + 16) + 8 * v6);
    v20 = v18 - v6;
    v21 = v6 + 1;
    do
    {
      if (*v19++)
      {
        break;
      }

      *(a1 + 12) = v21++;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t google::protobuf::internal::KeyMapBase<std::string>::FindHelper(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, unint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v9 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, a3, a4, a5);
  v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + ((((v9 + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + a3)) ^ *(a1 + 8));
  v11 = (*(a1 + 4) - 1) & (((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v10));
  v12 = *(*(a1 + 16) + 8 * v11);
  if (v12)
  {
    v13 = (*(*(a1 + 16) + 8 * v11) & 1) == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    do
    {
      v14 = *(v12 + 31);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v12 + 16);
      }

      if (v14 == a3)
      {
        v16 = v15 >= 0 ? (v12 + 8) : *(v12 + 8);
        if (!memcmp(v16, a2, a3))
        {
          break;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  else if (v12)
  {
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = &byte_23CE7F131;
    }

    return google::protobuf::internal::UntypedMapBase::FindFromTree(a1, v11, v17, a3, a4);
  }

  else
  {
    return 0;
  }

  return v12;
}

void *google::protobuf::internal::KeyMapBase<std::string>::erase_no_destroy(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, const unint64_t *a5)
{
  v22 = 0;
  LODWORD(v23) = -1;
  v6 = (*(a1 + 4) - 1) & a2;
  v7 = v6;
  v8 = *(*(a1 + 16) + 8 * v6);
  if (v8 != a3)
  {
    if (!v8 || (*(*(a1 + 16) + 8 * v6) & 1) != 0)
    {
      goto LABEL_14;
    }

    v10 = *(*(a1 + 16) + 8 * v6);
    do
    {
      v10 = *v10;
    }

    while (v10 != a3 && v10 != 0);
    if (!v10)
    {
LABEL_14:
      v12 = *(a3 + 31);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v14 = *(a3 + 8);
        v12 = *(a3 + 16);
        v13 = a3;
      }

      else
      {
        v13 = a3;
        v14 = (a3 + 8);
      }

      google::protobuf::internal::KeyMapBase<std::string>::FindHelper(a1, v14, v12, &v22, a5);
      v7 = v15;
      v8 = *(*(a1 + 16) + 8 * v15);
      if (v8)
      {
        result = google::protobuf::internal::UntypedMapBase::EraseFromTree(a1, v7, v22, v23);
        --*a1;
        if (v7 != *(a1 + 12))
        {
          return result;
        }

        goto LABEL_22;
      }

      v6 = v7;
      a3 = v13;
    }
  }

  result = google::protobuf::internal::EraseFromLinkedList(a3, v8);
  *(*(a1 + 16) + 8 * v6) = result;
  --*a1;
  if (v7 != *(a1 + 12))
  {
    return result;
  }

LABEL_22:
  v17 = *(a1 + 4);
  if (v7 < v17)
  {
    v18 = (*(a1 + 16) + 8 * v7);
    v19 = v17 - v7;
    v20 = v7 + 1;
    do
    {
      if (*v18++)
      {
        break;
      }

      *(a1 + 12) = v20++;
      --v19;
    }

    while (v19);
  }

  return result;
}

void *google::protobuf::internal::KeyMapBase<std::string>::TransferList(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  do
  {
    v8 = a2;
    v9 = *(a2 + 31);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = a2[1];
      v9 = a2[2];
    }

    else
    {
      v10 = (a2 + 1);
    }

    a2 = *a2;
    result = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v10, v9, a4, a5);
    v11 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + ((((result + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (result + v9)) ^ *(a1 + 8));
    v12 = (*(a1 + 4) - 1) & (((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v11));
    v13 = *(a1 + 16);
    v14 = *(v13 + 8 * v12);
    if (v14)
    {
      if (v14)
      {
        goto LABEL_2;
      }

      v15 = 0;
      v16 = *(v13 + 8 * v12);
      do
      {
        ++v15;
        v16 = *v16;
      }

      while (v16);
      if (v15 > 7)
      {
LABEL_2:
        result = google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(a1, v12, google::protobuf::internal::KeyMapBase<std::string>::NodeToVariantKey, v8);
      }

      else
      {
        *v8 = v14;
        *(v13 + 8 * v12) = v8;
      }
    }

    else
    {
      *v8 = 0;
      *(v13 + 8 * v12) = v8;
      v17 = *(a1 + 12);
      if (v17 >= v12)
      {
        v17 = v12;
      }

      *(a1 + 12) = v17;
    }
  }

  while (a2);
  return result;
}

char *google::protobuf::internal::KeyMapBase<std::string>::NodeToVariantKey(uint64_t a1)
{
  v3 = *(a1 + 8);
  v1 = a1 + 8;
  v2 = v3;
  if (*(v1 + 23) < 0)
  {
    v4 = *(v1 + 8);
  }

  else
  {
    v2 = v1;
    v4 = *(v1 + 23);
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return &byte_23CE7F131;
  }
}

void google::protobuf::internal::TcParser::MpRepeatedVarint<true>(uint64_t a1, google::protobuf::internal *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a4 & 7) != 0)
  {
    if ((a4 & 7) == 2)
    {
      google::protobuf::internal::TcParser::MpPackedVarint<true>(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      (*(a5 + 40))(a1, a2, a3);
    }
  }

  else
  {
    v6 = (*(a5 + HIDWORD(a4) + 10) >> 6) & 7;
    if (v6)
    {
      if (v6 == 2)
      {
        google::protobuf::internal::TcParser::MpRepeatedVarintT<true,unsigned int,(unsigned short)0>(a1, a2, a3, a4, a5, a6);
      }

      else
      {
        google::protobuf::internal::TcParser::MpRepeatedVarintT<true,unsigned long long,(unsigned short)0>(a1, a2, a3, a4, a5, a6);
      }
    }

    else
    {
      google::protobuf::internal::TcParser::MpRepeatedVarintT<true,BOOL,(unsigned short)0>(a1, a2, a3, a4, a5, a6);
    }
  }
}

char *google::protobuf::internal::TcParser::MpRepeatedVarintT<true,unsigned long long,(unsigned short)0>(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v6 = a4;
  v9 = (a5 + HIDWORD(a4));
  v10 = *(v9 + 5);
  v11 = a5 + *(a5 + 6);
  v12 = *(v11 + 2);
  v13 = *(*(a5 + 4) + v12);
  v14 = *(a1 + v12);
  if (v14 != v13)
  {
    v15 = *v9;
    v16 = *&v14[v15];
    if (v16 != &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_3;
    }

LABEL_11:
    v21 = *(a1 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      if (v21)
      {
LABEL_13:
        v16 = google::protobuf::Arena::Allocate(v21);
        *v16 = 0;
        *(v16 + 8) = v21;
        *&v14[v15] = v16;
        if ((v10 & 0x400) == 0)
        {
          goto LABEL_4;
        }

LABEL_14:
        v17 = *(&a5[4 * *(v9 + 4)] + *(a5 + 6));
        goto LABEL_15;
      }
    }

    else if (v21)
    {
      goto LABEL_13;
    }

    operator new();
  }

  v18 = *(v11 + 4);
  v19 = *(a1 + 8);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    if (v19)
    {
      goto LABEL_7;
    }
  }

  else if (v19)
  {
LABEL_7:
    v20 = google::protobuf::Arena::Allocate(v19);
    goto LABEL_10;
  }

  v20 = operator new(v18);
LABEL_10:
  *(a1 + v12) = v20;
  memcpy(v20, v13, v18);
  v14 = *(a1 + v12);
  v15 = *v9;
  v16 = *&v14[v15];
  if (v16 == &google::protobuf::internal::kZeroBuffer)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v10 & 0x400) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v17 = 0;
LABEL_15:
  v22 = v10 & 0x600;
  while (1)
  {
    *v38 = 0;
    v23 = *this;
    if ((*this & 0x80) != 0)
    {
      if ((v23 & 0x8000) != 0)
      {
        v33 = google::protobuf::internal::VarintParseSlowArm(this, v38, v23);
        if (!v33)
        {
LABEL_49:

          return google::protobuf::internal::TcParser::Error(a1, v30, v23, v32, a5, a6);
        }

        v25 = v33;
        v24 = *v38;
      }

      else
      {
        v24 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
        v25 = this + 2;
      }
    }

    else
    {
      v24 = *this & 0x7FLL;
      v25 = this + 1;
    }

    if ((v10 & 0x400) == 0)
    {
      if (v22 == 512)
      {
        v24 = -(v24 & 1) ^ (v24 >> 1);
      }

      goto LABEL_32;
    }

    if (v22 == 1536)
    {
      break;
    }

    if (!google::protobuf::internal::ValidateEnum(v24, v17, v23))
    {
      goto LABEL_46;
    }

LABEL_32:
    v28 = *v16;
    v27 = *(v16 + 4);
    if (*v16 == v27)
    {
      google::protobuf::RepeatedField<long long>::Grow(v16, v27);
      v28 = *v16;
    }

    v29 = *(v16 + 8);
    *v16 = v28 + 1;
    *(v29 + 8 * v28) = v24;
    if (*a3 <= v25)
    {
LABEL_43:
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v25;
    }

    this = (v25 + 1);
    LODWORD(v30) = *v25;
    if (*v25 < 0)
    {
      v30 = v30 + (*this << 7) - 128;
      if (*this < 0)
      {
        google::protobuf::internal::ReadTagFallback(v25, v30);
        if (!v31)
        {
          goto LABEL_49;
        }

        this = v31;
      }

      else
      {
        this = (v25 + 2);
      }
    }

    if (v30 != v6)
    {
      goto LABEL_43;
    }
  }

  if (v17 <= v24 && (v17 + (v17 >> 16)) > v24)
  {
    goto LABEL_32;
  }

LABEL_46:

  return google::protobuf::internal::TcParser::MpUnknownEnumFallback(a1, this, a3, v6, a5, a6);
}

char *google::protobuf::internal::TcParser::MpRepeatedVarintT<true,unsigned int,(unsigned short)0>(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v6 = a4;
  v9 = (a5 + HIDWORD(a4));
  v10 = *(v9 + 5);
  v11 = a5 + *(a5 + 6);
  v12 = *(v11 + 2);
  v13 = *(*(a5 + 4) + v12);
  v14 = *(a1 + v12);
  if (v14 != v13)
  {
    v15 = *v9;
    v16 = *&v14[v15];
    if (v16 != &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_3;
    }

LABEL_11:
    v21 = *(a1 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      if (v21)
      {
LABEL_13:
        v16 = google::protobuf::Arena::Allocate(v21);
        *v16 = 0;
        *(v16 + 8) = v21;
        *&v14[v15] = v16;
        if ((v10 & 0x400) == 0)
        {
          goto LABEL_4;
        }

LABEL_14:
        v17 = *(&a5[4 * *(v9 + 4)] + *(a5 + 6));
        goto LABEL_15;
      }
    }

    else if (v21)
    {
      goto LABEL_13;
    }

    operator new();
  }

  v18 = *(v11 + 4);
  v19 = *(a1 + 8);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    if (v19)
    {
      goto LABEL_7;
    }
  }

  else if (v19)
  {
LABEL_7:
    v20 = google::protobuf::Arena::Allocate(v19);
    goto LABEL_10;
  }

  v20 = operator new(v18);
LABEL_10:
  *(a1 + v12) = v20;
  memcpy(v20, v13, v18);
  v14 = *(a1 + v12);
  v15 = *v9;
  v16 = *&v14[v15];
  if (v16 == &google::protobuf::internal::kZeroBuffer)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v10 & 0x400) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v17 = 0;
LABEL_15:
  v22 = v10 & 0x600;
  while (1)
  {
    *v38 = 0;
    v23 = *this;
    if ((*this & 0x80) != 0)
    {
      if ((v23 & 0x8000) != 0)
      {
        v33 = google::protobuf::internal::VarintParseSlowArm(this, v38, v23);
        if (!v33)
        {
LABEL_49:

          return google::protobuf::internal::TcParser::Error(a1, v30, v23, v32, a5, a6);
        }

        v25 = v33;
        v24 = *v38;
      }

      else
      {
        v24 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
        v25 = this + 2;
      }
    }

    else
    {
      v24 = *this & 0x7FLL;
      v25 = this + 1;
    }

    if ((v10 & 0x400) == 0)
    {
      if (v22 == 512)
      {
        LODWORD(v24) = -(v24 & 1) ^ (v24 >> 1);
      }

      goto LABEL_32;
    }

    if (v22 == 1536)
    {
      break;
    }

    if (!google::protobuf::internal::ValidateEnum(v24, v17, v23))
    {
      goto LABEL_46;
    }

LABEL_32:
    v27 = HIDWORD(*v16);
    v28 = *v16;
    if (v28 == v27)
    {
      google::protobuf::RepeatedField<int>::Grow(v16, v27, (v27 + 1));
      v28 = *v16;
    }

    v29 = *(v16 + 8);
    *v16 = v28 + 1;
    *(v29 + 4 * v28) = v24;
    if (*a3 <= v25)
    {
LABEL_43:
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v25;
    }

    this = (v25 + 1);
    LODWORD(v30) = *v25;
    if (*v25 < 0)
    {
      v30 = v30 + (*this << 7) - 128;
      if (*this < 0)
      {
        google::protobuf::internal::ReadTagFallback(v25, v30);
        if (!v31)
        {
          goto LABEL_49;
        }

        this = v31;
      }

      else
      {
        this = (v25 + 2);
      }
    }

    if (v30 != v6)
    {
      goto LABEL_43;
    }
  }

  if (v17 <= v24 && (v17 + (v17 >> 16)) > v24)
  {
    goto LABEL_32;
  }

LABEL_46:

  return google::protobuf::internal::TcParser::MpUnknownEnumFallback(a1, this, a3, v6, a5, a6);
}

char *google::protobuf::internal::TcParser::MpRepeatedVarintT<true,BOOL,(unsigned short)0>(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v6 = a4;
  v9 = (a5 + HIDWORD(a4));
  v10 = *(v9 + 5);
  v11 = a5 + *(a5 + 6);
  v12 = *(v11 + 2);
  v13 = *(*(a5 + 4) + v12);
  v14 = *(a1 + v12);
  if (v14 != v13)
  {
    v15 = *v9;
    v16 = *&v14[v15];
    if (v16 != &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_3;
    }

LABEL_11:
    v21 = *(a1 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      if (v21)
      {
LABEL_13:
        v16 = google::protobuf::Arena::Allocate(v21);
        *v16 = 0;
        *(v16 + 8) = v21;
        *&v14[v15] = v16;
        if ((v10 & 0x400) == 0)
        {
          goto LABEL_4;
        }

LABEL_14:
        v17 = *(&a5[4 * *(v9 + 4)] + *(a5 + 6));
        goto LABEL_15;
      }
    }

    else if (v21)
    {
      goto LABEL_13;
    }

    operator new();
  }

  v18 = *(v11 + 4);
  v19 = *(a1 + 8);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    if (v19)
    {
      goto LABEL_7;
    }
  }

  else if (v19)
  {
LABEL_7:
    v20 = google::protobuf::Arena::Allocate(v19);
    goto LABEL_10;
  }

  v20 = operator new(v18);
LABEL_10:
  *(a1 + v12) = v20;
  memcpy(v20, v13, v18);
  v14 = *(a1 + v12);
  v15 = *v9;
  v16 = *&v14[v15];
  if (v16 == &google::protobuf::internal::kZeroBuffer)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v10 & 0x400) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v17 = 0;
LABEL_15:
  v22 = v10 & 0x600;
  while (1)
  {
    *v38 = 0;
    v23 = *this;
    if ((*this & 0x80) != 0)
    {
      if ((v23 & 0x8000) != 0)
      {
        v33 = google::protobuf::internal::VarintParseSlowArm(this, v38, v23);
        if (!v33)
        {
LABEL_49:

          return google::protobuf::internal::TcParser::Error(a1, v30, v23, v32, a5, a6);
        }

        v25 = v33;
        v24 = *v38;
      }

      else
      {
        v24 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
        v25 = this + 2;
      }
    }

    else
    {
      v24 = *this & 0x7FLL;
      v25 = this + 1;
    }

    if ((v10 & 0x400) == 0)
    {
      if (v22 == 512)
      {
        v24 = (-(v24 & 1) ^ (v24 >> 1));
      }

      goto LABEL_32;
    }

    if (v22 == 1536)
    {
      break;
    }

    if (!google::protobuf::internal::ValidateEnum(v24, v17, v23))
    {
      goto LABEL_46;
    }

LABEL_32:
    v28 = *v16;
    v27 = *(v16 + 4);
    if (*v16 == v27)
    {
      google::protobuf::RepeatedField<BOOL>::Grow(v16, v27, (v27 + 1));
      v28 = *v16;
    }

    v29 = *(v16 + 8);
    *v16 = v28 + 1;
    *(v29 + v28) = v24 != 0;
    if (*a3 <= v25)
    {
LABEL_43:
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v25;
    }

    this = (v25 + 1);
    LODWORD(v30) = *v25;
    if (*v25 < 0)
    {
      v30 = v30 + (*this << 7) - 128;
      if (*this < 0)
      {
        google::protobuf::internal::ReadTagFallback(v25, v30);
        if (!v31)
        {
          goto LABEL_49;
        }

        this = v31;
      }

      else
      {
        this = (v25 + 2);
      }
    }

    if (v30 != v6)
    {
      goto LABEL_43;
    }
  }

  if (v17 <= v24 && (v17 + (v17 >> 16)) > v24)
  {
    goto LABEL_32;
  }

LABEL_46:

  return google::protobuf::internal::TcParser::MpUnknownEnumFallback(a1, this, a3, v6, a5, a6);
}

void google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(uint64_t a1, google::protobuf::internal *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = (a5 + HIDWORD(a4));
  v11 = *(v10 + 5);
  v12 = *(a5 + 24) + a5;
  v13 = *(v12 + 8);
  v14 = *(*(a5 + 32) + v13);
  v15 = *(a1 + v13);
  if (v15 != v14)
  {
    v16 = *v10;
    v17 = *&v15[v16];
    if (v17 != &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = *(a1 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      if (v22)
      {
LABEL_15:
        v17 = google::protobuf::Arena::Allocate(v22);
        *v17 = 0;
        *(v17 + 8) = v22;
        *&v15[v16] = v17;
        v18 = v11 & 0x600;
        if ((v11 & 0x400) == 0)
        {
          goto LABEL_4;
        }

LABEL_16:
        v23 = *(*(a5 + 24) + a5 + 8 * *(v10 + 4));
        LOWORD(v24) = v18;
        *(&v24 + 1) = v23;
        v25 = a1;
        v26 = a5;
        v27 = a4;
        v28 = v17;
        google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, a2, &v24);
        return;
      }
    }

    else if (v22)
    {
      goto LABEL_15;
    }

    operator new();
  }

  v19 = *(v12 + 16);
  v20 = *(a1 + 8);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    if (v20)
    {
      goto LABEL_9;
    }
  }

  else if (v20)
  {
LABEL_9:
    v21 = google::protobuf::Arena::Allocate(v20);
    goto LABEL_12;
  }

  v21 = operator new(v19);
LABEL_12:
  *(a1 + v13) = v21;
  memcpy(v21, v14, v19);
  v15 = *(a1 + v13);
  v16 = *v10;
  v17 = *&v15[v16];
  if (v17 == &google::protobuf::internal::kZeroBuffer)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = v11 & 0x600;
  if ((v11 & 0x400) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:

  google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, a2, v17, v18 == 512);
}

void google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(uint64_t a1, google::protobuf::internal *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = (a5 + HIDWORD(a4));
  v11 = *(v10 + 5);
  v12 = *(a5 + 24) + a5;
  v13 = *(v12 + 8);
  v14 = *(*(a5 + 32) + v13);
  v15 = *(a1 + v13);
  if (v15 != v14)
  {
    v16 = *v10;
    v17 = *&v15[v16];
    if (v17 != &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = *(a1 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      if (v22)
      {
LABEL_15:
        v17 = google::protobuf::Arena::Allocate(v22);
        *v17 = 0;
        *(v17 + 8) = v22;
        *&v15[v16] = v17;
        v18 = v11 & 0x600;
        if ((v11 & 0x400) == 0)
        {
          goto LABEL_4;
        }

LABEL_16:
        v23 = *(*(a5 + 24) + a5 + 8 * *(v10 + 4));
        LOWORD(v24) = v18;
        *(&v24 + 1) = v23;
        v25 = a1;
        v26 = a5;
        v27 = a4;
        v28 = v17;
        google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, a2, &v24);
        return;
      }
    }

    else if (v22)
    {
      goto LABEL_15;
    }

    operator new();
  }

  v19 = *(v12 + 16);
  v20 = *(a1 + 8);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    if (v20)
    {
      goto LABEL_9;
    }
  }

  else if (v20)
  {
LABEL_9:
    v21 = google::protobuf::Arena::Allocate(v20);
    goto LABEL_12;
  }

  v21 = operator new(v19);
LABEL_12:
  *(a1 + v13) = v21;
  memcpy(v21, v14, v19);
  v15 = *(a1 + v13);
  v16 = *v10;
  v17 = *&v15[v16];
  if (v17 == &google::protobuf::internal::kZeroBuffer)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = v11 & 0x600;
  if ((v11 & 0x400) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:

  google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, a2, v17, v18 == 512);
}

void google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(uint64_t a1, google::protobuf::internal *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = (a5 + HIDWORD(a4));
  v11 = *(v10 + 5);
  v12 = *(a5 + 24) + a5;
  v13 = *(v12 + 8);
  v14 = *(*(a5 + 32) + v13);
  v15 = *(a1 + v13);
  if (v15 != v14)
  {
    v16 = *v10;
    v17 = *&v15[v16];
    if (v17 != &google::protobuf::internal::kZeroBuffer)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = *(a1 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      if (v22)
      {
LABEL_15:
        v17 = google::protobuf::Arena::Allocate(v22);
        *v17 = 0;
        *(v17 + 8) = v22;
        *&v15[v16] = v17;
        v18 = v11 & 0x600;
        if ((v11 & 0x400) == 0)
        {
          goto LABEL_4;
        }

LABEL_16:
        v23 = *(*(a5 + 24) + a5 + 8 * *(v10 + 4));
        LOWORD(v24) = v18;
        *(&v24 + 1) = v23;
        v25 = a1;
        v26 = a5;
        v27 = a4;
        v28 = v17;
        google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, a2, &v24);
        return;
      }
    }

    else if (v22)
    {
      goto LABEL_15;
    }

    operator new();
  }

  v19 = *(v12 + 16);
  v20 = *(a1 + 8);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    if (v20)
    {
      goto LABEL_9;
    }
  }

  else if (v20)
  {
LABEL_9:
    v21 = google::protobuf::Arena::Allocate(v20);
    goto LABEL_12;
  }

  v21 = operator new(v19);
LABEL_12:
  *(a1 + v13) = v21;
  memcpy(v21, v14, v19);
  v15 = *(a1 + v13);
  v16 = *v10;
  v17 = *&v15[v16];
  if (v17 == &google::protobuf::internal::kZeroBuffer)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = v11 & 0x600;
  if ((v11 & 0x400) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:

  google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, a2, v17, v18 == 512);
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = (this + 1);
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 > v7 - v6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (v6)
  {
    v5 = v9;
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
LABEL_11:
      v16 = a3[1];
      v22 = *a3;
      v23 = v16;
      v24 = a3[2];
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v22);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v22 = *a3;
      v23 = v10;
      v24 = a3[2];
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v22);
      if (!v11)
      {
        break;
      }

      v12 = *(a1 + 8);
      v13 = v11 - v12;
      v14 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v27 = 0;
        v26 = 0;
        v18 = *v12;
        v19 = v14;
        v20 = a3[1];
        v22 = *a3;
        v23 = v20;
        v24 = a3[2];
        v25 = v18;
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v25 + v13), &v25 + v14, &v22) == (&v25 + v14))
        {
          v21 = *(a1 + 8) + v19;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v15 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v15)
      {
        break;
      }

      v5 = v5 - v8 - v13;
      v6 = (v15 + v13);
      v7 = *(a1 + 8);
      v8 = v7 - v6;
      if (v5 <= v7 - v6)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *this, unint64_t a2, uint64_t a3)
{
  for (i = this; i < a2; *(v13 + 8 * v12) = v7)
  {
    while (1)
    {
      *v15 = 0;
      v6 = *i;
      if ((*i & 0x80) != 0)
      {
        if ((v6 & 0x8000) != 0)
        {
          i = google::protobuf::internal::VarintParseSlowArm(i, v15, v6);
          if (!i)
          {
            return i;
          }

          v7 = *v15;
        }

        else
        {
          v7 = (*i & 0x7FLL | (((*i >> 8) & 0x7FLL) << 7));
          i = (i + 2);
        }
      }

      else
      {
        v7 = (*i & 0x7FLL);
        i = (i + 1);
      }

      v8 = *(a3 + 8);
      if (*a3 == 1536)
      {
        break;
      }

      if (google::protobuf::internal::ValidateEnum(v7, v8, v6))
      {
        goto LABEL_13;
      }

LABEL_3:
      google::protobuf::internal::TcParser::AddUnknownEnum(*(a3 + 16), *(a3 + 24), *(a3 + 32), v7);
      if (i >= a2)
      {
        return i;
      }
    }

    if (v8 > v7 || (v8 + (v8 >> 16)) <= v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v10 = *(a3 + 40);
    v12 = *v10;
    v11 = v10[1];
    if (*v10 == v11)
    {
      google::protobuf::RepeatedField<long long>::Grow(*(a3 + 40), v11);
      v12 = *v10;
    }

    v13 = *(v10 + 1);
    *v10 = v12 + 1;
  }

  return i;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, _DWORD *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v8 = (this + 1);
    v9 = *(a1 + 8);
    v10 = v9 - v8;
    if (v7 > v9 - v8)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (v8)
  {
    v7 = v11;
    v9 = *(a1 + 8);
    v10 = v9 - v8;
    if (v7 <= v9 - v8)
    {
LABEL_11:
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(v8, v8 + v7, a3, a4);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v12 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(v8, v9, a3, a4);
      if (!v12)
      {
        break;
      }

      v13 = *(a1 + 8);
      v14 = v12 - v13;
      v15 = v7 - v10;
      if (v7 - v10 <= 16)
      {
        v22 = 0;
        v21 = 0;
        v20 = *v13;
        v18 = v15;
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>((&v20 + v14), &v20 + v15, a3, a4) == (&v20 + v15))
        {
          v19 = *(a1 + 8) + v18;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v16 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v16)
      {
        break;
      }

      v7 = v7 - v10 - v14;
      v8 = (v16 + v14);
      v9 = *(a1 + 8);
      v10 = v9 - v8;
      if (v7 <= v9 - v8)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(google::protobuf::internal *result, unint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (result < a2)
  {
    v20 = v4;
    v21 = v5;
    do
    {
      *v19 = 0;
      v6 = *result;
      if ((*result & 0x80) != 0)
      {
        if ((v6 & 0x8000) != 0)
        {
          v17 = a3;
          v18 = a2;
          v16 = a4;
          result = google::protobuf::internal::VarintParseSlowArm(result, v19, v6);
          if (!result)
          {
            return result;
          }

          a2 = v18;
          v7 = *v19;
          a4 = v16;
          a3 = v17;
        }

        else
        {
          v7 = *result & 0x7FLL | (((*result >> 8) & 0x7FLL) << 7);
          result = (result + 2);
        }
      }

      else
      {
        v7 = *result & 0x7FLL;
        result = (result + 1);
      }

      v9 = *a3;
      v8 = a3[1];
      if (*a3 == v8)
      {
        v12 = a3;
        v13 = result;
        v14 = a2;
        v15 = a4;
        google::protobuf::RepeatedField<long long>::Grow(a3, v8);
        a2 = v14;
        a3 = v12;
        a4 = v15;
        result = v13;
        v9 = *v12;
      }

      v10 = -(v7 & 1) ^ (v7 >> 1);
      if ((a4 & 1) == 0)
      {
        v10 = v7;
      }

      v11 = *(a3 + 1);
      *a3 = v9 + 1;
      *(v11 + 8 * v9) = v10;
    }

    while (result < a2);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = (this + 1);
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 > v7 - v6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (v6)
  {
    v5 = v9;
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
LABEL_11:
      v16 = a3[1];
      v22 = *a3;
      v23 = v16;
      v24 = a3[2];
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v22);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v22 = *a3;
      v23 = v10;
      v24 = a3[2];
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v22);
      if (!v11)
      {
        break;
      }

      v12 = *(a1 + 8);
      v13 = v11 - v12;
      v14 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v27 = 0;
        v26 = 0;
        v18 = *v12;
        v19 = v14;
        v20 = a3[1];
        v22 = *a3;
        v23 = v20;
        v24 = a3[2];
        v25 = v18;
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v25 + v13), &v25 + v14, &v22) == (&v25 + v14))
        {
          v21 = *(a1 + 8) + v19;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v15 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v15)
      {
        break;
      }

      v5 = v5 - v8 - v13;
      v6 = (v15 + v13);
      v7 = *(a1 + 8);
      v8 = v7 - v6;
      if (v5 <= v7 - v6)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *this, unint64_t a2, uint64_t a3)
{
  for (i = this; i < a2; *(v13 + 4 * v12) = v7)
  {
    while (1)
    {
      *v15 = 0;
      v6 = *i;
      if ((*i & 0x80) != 0)
      {
        if ((v6 & 0x8000) != 0)
        {
          i = google::protobuf::internal::VarintParseSlowArm(i, v15, v6);
          if (!i)
          {
            return i;
          }

          v7 = *v15;
        }

        else
        {
          v7 = (*i & 0x7FLL | (((*i >> 8) & 0x7FLL) << 7));
          i = (i + 2);
        }
      }

      else
      {
        v7 = (*i & 0x7FLL);
        i = (i + 1);
      }

      v8 = *(a3 + 8);
      if (*a3 == 1536)
      {
        break;
      }

      if (google::protobuf::internal::ValidateEnum(v7, v8, v6))
      {
        goto LABEL_13;
      }

LABEL_3:
      google::protobuf::internal::TcParser::AddUnknownEnum(*(a3 + 16), *(a3 + 24), *(a3 + 32), v7);
      if (i >= a2)
      {
        return i;
      }
    }

    if (v8 > v7 || (v8 + (v8 >> 16)) <= v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v10 = *(a3 + 40);
    v11 = HIDWORD(*v10);
    v12 = *v10;
    if (v12 == v11)
    {
      google::protobuf::RepeatedField<int>::Grow(*(a3 + 40), v11, (v11 + 1));
      v12 = *v10;
    }

    v13 = v10[1];
    *v10 = v12 + 1;
  }

  return i;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v8 = (this + 1);
    v9 = *(a1 + 8);
    v10 = v9 - v8;
    if (v7 > v9 - v8)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (v8)
  {
    v7 = v11;
    v9 = *(a1 + 8);
    v10 = v9 - v8;
    if (v7 <= v9 - v8)
    {
LABEL_11:
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(v8, v8 + v7, a3, a4);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v12 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(v8, v9, a3, a4);
      if (!v12)
      {
        break;
      }

      v13 = *(a1 + 8);
      v14 = v12 - v13;
      v15 = v7 - v10;
      if (v7 - v10 <= 16)
      {
        v22 = 0;
        v21 = 0;
        v20 = *v13;
        v18 = v15;
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>((&v20 + v14), &v20 + v15, a3, a4) == (&v20 + v15))
        {
          v19 = *(a1 + 8) + v18;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v16 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v16)
      {
        break;
      }

      v7 = v7 - v10 - v14;
      v8 = (v16 + v14);
      v9 = *(a1 + 8);
      v10 = v9 - v8;
      if (v7 <= v9 - v8)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(google::protobuf::internal *result, unint64_t a2, void *a3, uint64_t a4)
{
  if (result < a2)
  {
    v20 = v4;
    v21 = v5;
    do
    {
      *v19 = 0;
      v6 = *result;
      if ((*result & 0x80) != 0)
      {
        if ((v6 & 0x8000) != 0)
        {
          v17 = a3;
          v18 = a2;
          v16 = a4;
          result = google::protobuf::internal::VarintParseSlowArm(result, v19, v6);
          if (!result)
          {
            return result;
          }

          a2 = v18;
          LODWORD(v7) = *v19;
          a4 = v16;
          a3 = v17;
        }

        else
        {
          v7 = *result & 0x7FLL | (((*result >> 8) & 0x7FLL) << 7);
          result = (result + 2);
        }
      }

      else
      {
        LODWORD(v7) = v6 & 0x7F;
        result = (result + 1);
      }

      v8 = HIDWORD(*a3);
      v9 = *a3;
      if (v9 == v8)
      {
        v12 = a3;
        v13 = result;
        v14 = a2;
        v15 = a4;
        google::protobuf::RepeatedField<int>::Grow(a3, v8, (v8 + 1));
        a2 = v14;
        a3 = v12;
        a4 = v15;
        result = v13;
        v9 = *v12;
      }

      v10 = -(v7 & 1) ^ (v7 >> 1);
      if ((a4 & 1) == 0)
      {
        v10 = v7;
      }

      v11 = a3[1];
      *a3 = v9 + 1;
      *(v11 + 4 * v9) = v10;
    }

    while (result < a2);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = (this + 1);
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 > v7 - v6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (v6)
  {
    v5 = v9;
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v5 <= v7 - v6)
    {
LABEL_11:
      v16 = a3[1];
      v22 = *a3;
      v23 = v16;
      v24 = a3[2];
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v6 + v5, &v22);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v10 = a3[1];
      v22 = *a3;
      v23 = v10;
      v24 = a3[2];
      v11 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(v6, v7, &v22);
      if (!v11)
      {
        break;
      }

      v12 = *(a1 + 8);
      v13 = v11 - v12;
      v14 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v27 = 0;
        v26 = 0;
        v18 = *v12;
        v19 = v14;
        v20 = a3[1];
        v22 = *a3;
        v23 = v20;
        v24 = a3[2];
        v25 = v18;
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>((&v25 + v13), &v25 + v14, &v22) == (&v25 + v14))
        {
          v21 = *(a1 + 8) + v19;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v15 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v15)
      {
        break;
      }

      v5 = v5 - v8 - v13;
      v6 = (v15 + v13);
      v7 = *(a1 + 8);
      v8 = v7 - v6;
      if (v5 <= v7 - v6)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(google::protobuf::internal *this, unint64_t a2, uint64_t a3)
{
  for (i = this; i < a2; *(v13 + v12) = v7 != 0)
  {
    while (1)
    {
      *v15 = 0;
      v6 = *i;
      if ((*i & 0x80) != 0)
      {
        if ((v6 & 0x8000) != 0)
        {
          i = google::protobuf::internal::VarintParseSlowArm(i, v15, v6);
          if (!i)
          {
            return i;
          }

          v7 = *v15;
        }

        else
        {
          v7 = (*i & 0x7FLL | (((*i >> 8) & 0x7FLL) << 7));
          i = (i + 2);
        }
      }

      else
      {
        v7 = (*i & 0x7FLL);
        i = (i + 1);
      }

      v8 = *(a3 + 8);
      if (*a3 == 1536)
      {
        break;
      }

      if (google::protobuf::internal::ValidateEnum(v7, v8, v6))
      {
        goto LABEL_13;
      }

LABEL_3:
      google::protobuf::internal::TcParser::AddUnknownEnum(*(a3 + 16), *(a3 + 24), *(a3 + 32), v7);
      if (i >= a2)
      {
        return i;
      }
    }

    if (v8 > v7 || (v8 + (v8 >> 16)) <= v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v10 = *(a3 + 40);
    v12 = *v10;
    v11 = v10[1];
    if (*v10 == v11)
    {
      google::protobuf::RepeatedField<BOOL>::Grow(*(a3 + 40), v11, (v11 + 1));
      v12 = *v10;
    }

    v13 = *(v10 + 1);
    *v10 = v12 + 1;
  }

  return i;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, _DWORD *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v8 = (this + 1);
    v9 = *(a1 + 8);
    v10 = v9 - v8;
    if (v7 > v9 - v8)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (v8)
  {
    v7 = v11;
    v9 = *(a1 + 8);
    v10 = v9 - v8;
    if (v7 <= v9 - v8)
    {
LABEL_11:
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(v8, v8 + v7, a3, a4);
      goto LABEL_12;
    }

LABEL_6:
    while (1)
    {
      v12 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(v8, v9, a3, a4);
      if (!v12)
      {
        break;
      }

      v13 = *(a1 + 8);
      v14 = v12 - v13;
      v15 = v7 - v10;
      if (v7 - v10 <= 16)
      {
        v22 = 0;
        v21 = 0;
        v20 = *v13;
        v18 = v15;
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>((&v20 + v14), &v20 + v15, a3, a4) == (&v20 + v15))
        {
          v19 = *(a1 + 8) + v18;
        }

        break;
      }

      if (*(a1 + 28) < 17)
      {
        break;
      }

      v16 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v16)
      {
        break;
      }

      v7 = v7 - v10 - v14;
      v8 = (v16 + v14);
      v9 = *(a1 + 8);
      v10 = v9 - v8;
      if (v7 <= v9 - v8)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::TcParser::MpPackedVarintT<true,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(google::protobuf::internal *result, unint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (result < a2)
  {
    v19 = v4;
    v20 = v5;
    do
    {
      *v18 = 0;
      v6 = *result;
      if ((*result & 0x80) != 0)
      {
        if ((v6 & 0x8000) != 0)
        {
          v16 = a3;
          v17 = a2;
          v15 = a4;
          result = google::protobuf::internal::VarintParseSlowArm(result, v18, v6);
          if (!result)
          {
            return result;
          }

          a2 = v17;
          v7 = *v18;
          a4 = v15;
          a3 = v16;
        }

        else
        {
          v7 = *result & 0x7FLL | (((*result >> 8) & 0x7FLL) << 7);
          result = (result + 2);
        }
      }

      else
      {
        v7 = *result & 0x7FLL;
        result = (result + 1);
      }

      if (a4)
      {
        v7 = (-(v7 & 1) ^ (v7 >> 1));
      }

      v9 = *a3;
      v8 = a3[1];
      if (*a3 == v8)
      {
        v11 = a3;
        v12 = result;
        v13 = a2;
        v14 = a4;
        google::protobuf::RepeatedField<BOOL>::Grow(a3, v8, (v8 + 1));
        a2 = v13;
        a3 = v11;
        a4 = v14;
        result = v12;
        v9 = *v11;
      }

      v10 = *(a3 + 1);
      *a3 = v9 + 1;
      *(v10 + v9) = v7 != 0;
    }

    while (result < a2);
  }

  return result;
}